unit Service.Authentications.Login;

interface

uses
  Service.Authentications.Login.Intf;

type
  TService_Login = class(TInterfacedObject, IService_Login)
  private
    constructor Create;
  public
    class function New: IService_Login;
    procedure Login(const AUsername, APassword: string);
  end;

implementation

uses
  Config.URL,
  System.JSON,
  System.SysUtils,
  Providers.Request,
  Providers.Session,
  Providers.Response.Intf;

{ TService_Login }

constructor TService_Login.Create;
begin

end;

procedure TService_Login.Login(const AUsername, APassword: string);
var
  LJSON: TJSONObject;
  LResponse: IProvider_Response;
begin
  if AUsername.Trim.IsEmpty or APassword.Trim.IsEmpty then
    raise Exception.Create('Informe usuário e senha!');

  LJSON := TJSONObject.Create;
  LJSON.AddPair('username', AUsername);
  LJSON.AddPair('password', APassword);

  LResponse := TProvider_Request.New.BaseURL(BS_URL_LOGIN).Resource('login')
    .AddBody(LJSON).Post;

  if (LResponse.StatusCode <> 200) then
    raise Exception.Create(LResponse.JSONValue.GetValue<string>('error'));

  TProvider_Session.GetInstance.Token.Access := LResponse.JSONValue.GetValue<string>
    ('access');
  TProvider_Session.GetInstance.Token.Refresh := LResponse.JSONValue.GetValue<string>
    ('refresh');
end;

class function TService_Login.New: IService_Login;
begin
  Result := Self.Create;
end;

end.
