unit Service.Register.Transactions;

interface

uses
  Data.DB,
  Service.Register,
  Service.Register.Transaction.Intf;

type
  TServiceRegisterTransaction = class(TServiceRegister, IServiceRegisterTransaction)
  protected
    procedure StartQryData; override;
    procedure StartQryRegs; override;
    procedure StartQryRegister; override;
    procedure DoAfterListAll; override;
  public
    class function New: IServiceRegisterTransaction;
  end;

implementation

uses
  BCrypt,
  System.SysUtils;

{ TServiceRegisterTransaction }

procedure TServiceRegisterTransaction.DoAfterListAll;
begin
  SetInvisible(QryData, 'deleted_date', True);
end;

class function TServiceRegisterTransaction.New: IServiceRegisterTransaction;
begin
  Result := Self.Create;
end;

procedure TServiceRegisterTransaction.StartQryData;
const
  LSQL =
  ' SELECT ' + sLineBreak +
  '  M.id ' + sLineBreak +
  ' ,M.descricao ' + sLineBreak +
  ' ,M.dtfato ' + sLineBreak +
  ' ,M.competencia ' + sLineBreak +
  ' ,M.natureza ' + sLineBreak +
  ' ,M.tipo ' + sLineBreak +
  ' ,M.valor ' + sLineBreak +
  ' ,M.observacao ' + sLineBreak +
  ' ,M.idmembro ' + sLineBreak +
  ' ,M.idcampanha ' + sLineBreak +
  ' FROM movimentacoes M ' + sLineBreak +
  ' WHERE M.deleted_date IS NULL ' + sLineBreak;
begin
  inherited;
  QryData.Close;
  QryData.SQL.Text := LSQL;
end;

procedure TServiceRegisterTransaction.StartQryRegister;
const
  LSQL =
  ' SELECT ' + sLineBreak +
  '  M.id ' + sLineBreak +
  ' ,M.descricao ' + sLineBreak +
  ' ,M.dtfato ' + sLineBreak +
  ' ,M.competencia ' + sLineBreak +
  ' ,M.natureza ' + sLineBreak +
  ' ,M.tipo ' + sLineBreak +
  ' ,M.valor ' + sLineBreak +
  ' ,M.observacao ' + sLineBreak +
  ' ,M.idmembro ' + sLineBreak +
  ' ,M.idcampanha ' + sLineBreak +
  ' ,M.creation_date ' + sLineBreak +
  ' ,M.deleted_date ' + sLineBreak +
  ' ,M.last_update ' + sLineBreak +
  ' FROM movimentacoes M ' + sLineBreak +
  ' WHERE M.deleted_date IS NULL ' + sLineBreak;
begin
  inherited;
  QryRegister.Close;
  QryRegister.sql.Text := LSQL;
  QryRegister.BeforePost := DoBeforePostRegister;
end;

procedure TServiceRegisterTransaction.StartQryRegs;
const
  LSQL =
  ' SELECT ' + sLineBreak +
  ' COUNT(M.id) COUNT ' + sLineBreak +
  ' FROM  movimentacoes M  ' + sLineBreak +
  ' WHERE M.deleted_date IS NULL ' + sLineBreak;
begin
  inherited;
  QryRegs.Close;
  QryRegs.SQL.Text := LSQL;
end;

end.
