unit Service.Register.Members.Transactions;

interface

uses
  Data.DB,
  Service.Register,
  Horse.Core.Param,
  Service.Register.Member.Transaction.Intf;

type
  TServiceRegisterMemberTransaction = class(TServiceRegister,
    IServiceRegisterMemberTransaction)
  protected
    procedure StartQryData; override;
    procedure StartQryRegs; override;
    procedure OrderQryData; override;
  public
    function ListAll(const AParams: THorseCoreParam): TDataSet; override;
    class function New: IServiceRegisterMemberTransaction;
  end;

implementation

uses
  System.SysUtils,
  FireDAC.Stan.Param;

{ TServiceRegisterMemberTransaction }

function TServiceRegisterMemberTransaction.ListAll(const AParams
  : THorseCoreParam): TDataSet;
var
  LCheckedId: Integer;
begin
  LCheckedId := 0;
  if AParams.ContainsKey('checkedid') then
    LCheckedId := StrToIntDef(AParams.Items['checkedid'], 0);

  QryData.ParamByName('checkedid').AsInteger := LCheckedId;
  Result := inherited;
end;

class function TServiceRegisterMemberTransaction.New
  : IServiceRegisterMemberTransaction;
begin
  Result := Self.Create;
end;

procedure TServiceRegisterMemberTransaction.OrderQryData;
begin
  QryData.SQL.Add('ORDER BY CM.FLAG DESC, id');
end;

procedure TServiceRegisterMemberTransaction.StartQryData;
const
  LSQL =
  ' WITH CTE_MEMBROS AS ( ' + sLineBreak +
  ' SELECT ' + sLineBreak +
  ' M.id, ' + sLineBreak +
  ' cast(case when :checkedid = M.id then 1' + sLineBreak +
  ' else 0 end AS SMALLINT) flag, ' + sLineBreak +
  ' M.nome ' + sLineBreak +
  ' FROM membros M ' + sLineBreak +
  ' WHERE M.deleted_date IS NULL ' + sLineBreak +
  ' )SELECT ' + sLineBreak +
  '  CM.id ' + sLineBreak +
  ' ,CM.flag ' + sLineBreak +
  ' ,CM.nome ' + sLineBreak +
  ' FROM CTE_MEMBROS CM ' + sLineBreak;
begin
  inherited;
  QryData.Close;
  QryData.SQL.Text := LSQL;
end;

procedure TServiceRegisterMemberTransaction.StartQryRegs;
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
