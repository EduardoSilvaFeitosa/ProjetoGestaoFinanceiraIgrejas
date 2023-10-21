unit Service.Register.Users;

interface

uses
  Data.DB,
  Service.Register,
  Service.Register.User.Intf;

type
  TServiceRegisterUser = class(TServiceRegister, IServiceRegisterUser)
  protected
    procedure StartQryData; override;
    procedure StartQryRegs; override;
    procedure StartQryRegister; override;
    procedure DoAfterListAll; override;
    procedure DoBeforePostRegister(DataSet: TDataSet); override;
  public
    class function New: IServiceRegisterUser;
  end;

implementation

uses
  BCrypt,
  System.SysUtils;

{ TServiceRegisterUser }

procedure TServiceRegisterUser.DoAfterListAll;
begin
  SetInvisible(QryData, 'deleted_date', True);
end;

procedure TServiceRegisterUser.DoBeforePostRegister(DataSet: TDataSet);
var
  LSenha: TField;
begin
  LSenha := QryRegister.FindField('password');
  if (LSenha.OldValue <> LSenha.NewValue) and (not LSenha.AsString.Trim.IsEmpty)
  then
    LSenha.AsString := TBCrypt.GenerateHash(LSenha.AsString);

  QryRegister.BeforePost := nil;
end;

class function TServiceRegisterUser.New: IServiceRegisterUser;
begin
  Result := Self.Create;
end;

procedure TServiceRegisterUser.StartQryData;
const
  LSQL =
  ' SELECT ' + sLineBreak +
  ' U.id, ' + sLineBreak +
  ' U.name, ' + sLineBreak +
  ' U.email, ' + sLineBreak +
  ' U.username, ' + sLineBreak +
  ' U.idacesso, ' + sLineBreak +
  ' U.status, ' + sLineBreak +
  ' U.creation_date, ' + sLineBreak +
  ' U.last_update, ' + sLineBreak +
  ' U.deleted_date ' + sLineBreak +
  ' FROM Usuarios U ' + sLineBreak +
  ' WHERE U.deleted_date IS NULL ' + sLineBreak;
begin
  inherited;
  QryData.Close;
  QryData.SQL.Text := LSQL;
end;

procedure TServiceRegisterUser.StartQryRegister;
const
  LSQL =
  ' SELECT ' + sLineBreak +
  ' U.id, ' + sLineBreak +
  ' U.name, ' + sLineBreak +
  ' U.email, ' + sLineBreak +
  ' U.username, ' + sLineBreak +
  ' U.password, ' + sLineBreak +
  ' U.idacesso, ' + sLineBreak +
  ' U.status, ' + sLineBreak +
  ' U.creation_date, ' + sLineBreak +
  ' U.last_update, ' + sLineBreak +
  ' U.deleted_date ' + sLineBreak +
  ' FROM Usuarios U ' + sLineBreak +
  ' WHERE U.deleted_date IS NULL ' + sLineBreak;
begin
  inherited;
  QryRegister.Close;
  QryRegister.sql.Text := LSQL;
  QryRegister.BeforePost := DoBeforePostRegister;
end;

procedure TServiceRegisterUser.StartQryRegs;
const
  LSQL =
  ' SELECT ' + sLineBreak +
  ' COUNT(U.id) COUNT ' + sLineBreak +
  ' FROM Usuarios U ' + sLineBreak +
  ' WHERE U.deleted_date IS NULL ' + sLineBreak;
begin
  inherited;
  QryRegs.Close;
  QryRegs.SQL.Text := LSQL;
end;

end.
