unit Service.Auth.Login;

interface

uses
  Service.Base,
  FireDAC.Comp.Client,
  Service.Auth.Login.Intf;

type
  TServiceAuthLogin = class(TServiceBase, IServiceAuthLogin)
  private
    LUserId: string;
    LQryAuth: TFDQuery;
    constructor Create;
  public
    function IsAuthenticated(const AUsername, APassword: string): Boolean;
    function GetUserId: string;
    class function New: IServiceAuthLogin;
    destructor Destroy; override;
  end;

implementation

uses
  BCrypt,
  Data.DB,
  FireDAC.DApt,
  FireDAC.DatS,
  FireDAC.Stan.Intf,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.Stan.Async,
  FireDAC.Stan.Option,
  FireDAC.Comp.DataSet;

{ TServiceAuthLogin }

constructor TServiceAuthLogin.Create;
begin
  inherited;
  LQryAuth := TFDQuery.Create(nil);
  LQryAuth.Connection := Connection;
end;

destructor TServiceAuthLogin.Destroy;
begin
  LQryAuth.Free;
  inherited;
end;

function TServiceAuthLogin.GetUserId: string;
begin
  Result := LUserId;
end;

function TServiceAuthLogin.IsAuthenticated(const AUsername,
  APassword: string): Boolean;
const
  LSQL =
  ' SELECT ' + sLineBreak +
  ' U.id, ' + sLineBreak +
  ' U.password ' + sLineBreak +
  ' FROM usuarios u ' + sLineBreak +
  ' WHERE U.username = :usuario ' + sLineBreak +
  ' AND U.status = 1 ' + sLineBreak +
  ' AND U.deleted_date IS NULL ' + sLineBreak;
begin
  LQryAuth.Close;
  LQryAuth.SQL.Text := LSQL;
  LQryAuth.ParamByName('usuario').AsString := AUsername;
  LQryAuth.Open();

  if LQryAuth.IsEmpty then
    Exit(False);

  LUserId := LQryAuth.FieldByName('id').AsString;

  Result := TBCrypt.CompareHash(APassword, LQryAuth.FieldByName('password')
    .AsString);
end;

class function TServiceAuthLogin.New: IServiceAuthLogin;
begin
  Result := Self.Create;
end;

end.
