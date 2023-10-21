unit Router.Authorization;

interface

procedure Registry;

implementation

uses
  Horse,
  Horse.JWT,
  System.JSON,
  JOSE.Core.JWT,
  Utils.Constants,
  System.SysUtils,
  System.DateUtils,
  JOSE.Core.Builder,
  Service.Auth.Login,
  Service.Auth.Login.Intf;

function GetToken(const AIdUsuario: string; const AExpiration: TDate): string;
var
  LJWT: TJWT;
begin
  LJWT := TJWT.Create;
  try
    LJWT.Claims.IssuedAt := Now;
    LJWT.Claims.Expiration := AExpiration;
    LJWT.Claims.Subject := AIdUsuario;

    Result := TJOSE.SHA256CompactToken(JWT_KEY, LJWT);
  finally
    LJWT.Free;
  end;
end;

procedure Login(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LContent, LToken: TJSONObject;
  LUsuario, LSenha: string;
  LService: IServiceAuthLogin;
begin
  LContent := Req.Body<TJSONObject>;
  if not LContent.TryGetValue<string>('username', LUsuario) then
    raise EHorseException.New.Error(USERNAME_NOT_INFORMED)
      .Status(THTTPStatus.BadRequest);

  if not LContent.TryGetValue<string>('password', LSenha) then
    raise EHorseException.New.Error(PASSWORD_NOT_INFORMED)
      .Status(THTTPStatus.BadRequest);

  LService := TServiceAuthLogin.New;
  try
    if not LService.IsAuthenticated(LUsuario, LSenha) then
      raise EHorseException.New.Error(UNAUTHORIZED_USER)
        .Status(THTTPStatus.Unauthorized);

    LToken := TJSONObject.Create;
    LToken.AddPair('access', GetToken(LService.GetUserId, IncHour(Now)));
    LToken.AddPair('refresh', GetToken(LService.GetUserId, IncMonth(Now)));
    Res.Send(LToken);
  finally
    LService := Nil;
  end;
end;

procedure ReloadToken(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LSub, LToken: string;
begin
  LSub := Req.Session<TJSONObject>.GetValue('sub').Value;
  LToken := GetToken(LSub, IncMonth(Now));
  Res.Send(TJSONObject.Create(TJSONPair.Create('access', LToken)));
end;

procedure Registry;
begin
  THorse.Post('/login', Login);
  THorse.AddCallback(HorseJWT(JWT_KEY)).Get('/refresh', ReloadToken)
end;

end.
