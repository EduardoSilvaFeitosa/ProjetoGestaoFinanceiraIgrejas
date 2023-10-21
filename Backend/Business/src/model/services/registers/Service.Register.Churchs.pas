unit Service.Register.Churchs;

interface

uses
  Service.Register,
  Service.Register.Church.Intf;

type
  TServiceRegisterChurch = class(TServiceRegister, IServiceRegisterChurch)
  protected
    procedure StartQryData; override;
    procedure StartQryRegs; override;
    procedure StartQryRegister; override;
    procedure DoAfterListAll; override;
  public
    class function New: IServiceRegisterChurch;
  end;

implementation

{ TServiceRegisterChurch }

procedure TServiceRegisterChurch.DoAfterListAll;
begin
  SetInvisible(QryData, 'deleted_date', True);
end;

class function TServiceRegisterChurch.New: IServiceRegisterChurch;
begin
  Result := Self.Create;
end;

procedure TServiceRegisterChurch.StartQryData;
const
  LSQL =
  ' SELECT ' + sLineBreak +
  '  I.id ' + sLineBreak +
  ' ,I.nome ' + sLineBreak +
  ' ,I.cnpj ' + sLineBreak +
  ' ,I.status ' + sLineBreak +
  ' ,I.cep ' + sLineBreak +
  ' ,I.numero ' + sLineBreak +
  ' ,I.logradouro ' + sLineBreak +
  ' ,I.creation_date ' + sLineBreak +
  ' ,I.last_update ' + sLineBreak +
  ' FROM igrejas I ' + sLineBreak +
  ' WHERE I.deleted_date IS NULL ' + sLineBreak;
begin
  inherited;
  QryData.Close;
  QryData.SQL.Text := LSQL;
end;

procedure TServiceRegisterChurch.StartQryRegister;
const
  LSQL =
  ' SELECT ' + sLineBreak +
  ' I.id ' + sLineBreak +
  ' ,I.nome ' + sLineBreak +
  ' ,I.cnpj ' + sLineBreak +
  ' ,I.status ' + sLineBreak +
  ' ,I.cep ' + sLineBreak +
  ' ,I.numero ' + sLineBreak +
  ' ,I.logradouro ' + sLineBreak +
  ' ,I.creation_date ' + sLineBreak +
  ' ,I.deleted_date ' + sLineBreak +
  ' ,I.last_update ' + sLineBreak +
  ' FROM igrejas I ' + sLineBreak +
  ' WHERE I.deleted_date IS NULL ' + sLineBreak;
begin
  inherited;
  QryRegister.Close;
  QryRegister.sql.Text := LSQL;
  QryRegister.BeforePost := DoBeforePostRegister;
end;

procedure TServiceRegisterChurch.StartQryRegs;
const
  LSQL =
  ' SELECT ' + sLineBreak +
  ' COUNT(I.id) COUNT ' + sLineBreak +
  ' FROM igrejas I ' + sLineBreak +
  ' WHERE I.deleted_date IS NULL ' + sLineBreak;
begin
  inherited;
  QryRegs.Close;
  QryRegs.SQL.Text := LSQL;
end;
end.
