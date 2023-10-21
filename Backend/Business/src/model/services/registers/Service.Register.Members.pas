unit Service.Register.Members;

interface

uses
  Data.DB,
  Service.Register,
  Service.Register.Member.Intf;

type
  TServiceRegisterMember = class(TServiceRegister, IServiceRegisterMember)
  protected
    procedure StartQryData; override;
    procedure StartQryRegs; override;
    procedure StartQryRegister; override;
    procedure DoAfterListAll; override;
  public
    class function New: IServiceRegisterMember;
  end;

implementation

uses
  System.SysUtils;

{ TServiceRegisterMember }

procedure TServiceRegisterMember.DoAfterListAll;
begin
  SetInvisible(QryData, 'deleted_date', True);
end;

class function TServiceRegisterMember.New: IServiceRegisterMember;
begin
  Result := Self.Create;
end;

procedure TServiceRegisterMember.StartQryData;
const
  LSQL =
  ' SELECT ' + sLineBreak +
  ' M.id, ' + sLineBreak +
  ' M.nome, ' + sLineBreak +
  ' M.email, ' + sLineBreak +
  ' M.status, ' + sLineBreak +
  ' M.telefone, ' + sLineBreak +
  ' M.dtingresso, ' + sLineBreak +
  ' M.cargo, ' + sLineBreak +
  ' M.creation_date ' + sLineBreak +
  ' FROM public.membros M ' + sLineBreak +
  ' WHERE M.deleted_date IS NULL ' + sLineBreak;
begin
  inherited;
  QryData.Close;
  QryData.SQL.Text := LSQL;
end;

procedure TServiceRegisterMember.StartQryRegister;
const
  LSQL =
  ' SELECT ' + sLineBreak +
  ' M.id, ' + sLineBreak +
  ' M.nome, ' + sLineBreak +
  ' M.email, ' + sLineBreak +
  ' M.status, ' + sLineBreak +
  ' M.telefone, ' + sLineBreak +
  ' M.dtingresso, ' + sLineBreak +
  ' M.cargo, ' + sLineBreak +
  ' M.creation_date, ' + sLineBreak +
  ' M.deleted_date, ' + sLineBreak +
  ' M.last_update ' + sLineBreak +
  ' FROM membros M ' + sLineBreak +
  ' WHERE M.deleted_date IS NULL ' + sLineBreak;
begin
  inherited;
  QryRegister.Close;
  QryRegister.sql.Text := LSQL;
  QryRegister.BeforePost := DoBeforePostRegister;
end;

procedure TServiceRegisterMember.StartQryRegs;
const
  LSQL =
  ' SELECT ' + sLineBreak +
  ' COUNT(M.id) COUNT ' + sLineBreak +
  ' FROM  membros M  ' + sLineBreak +
  ' WHERE M.deleted_date IS NULL ' + sLineBreak;
begin
  inherited;
  QryRegs.Close;
  QryRegs.SQL.Text := LSQL;
end;

end.
