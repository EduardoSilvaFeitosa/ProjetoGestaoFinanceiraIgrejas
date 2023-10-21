unit Service.Register.Campaigns.Transactions;

interface

uses
  Data.DB,
  Service.Register,
  Horse.Core.Param,
  Service.Register.Campaign.Transaction.Intf;

type
  TServiceRegisterCampaignTransaction = class(TServiceRegister,
    IServiceRegisterCampaignTransaction)
  protected
    procedure StartQryData; override;
    procedure StartQryRegs; override;
    procedure OrderQryData; override;
  public
    function ListAll(const AParams: THorseCoreParam): TDataSet; override;
    class function New: IServiceRegisterCampaignTransaction;
  end;

implementation

uses
  System.SysUtils,
  FireDAC.Stan.Param;

{ TServiceRegisterCampaignTransaction }

function TServiceRegisterCampaignTransaction.ListAll(const AParams
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

class function TServiceRegisterCampaignTransaction.New
  : IServiceRegisterCampaignTransaction;
begin
  Result := Self.Create;
end;

procedure TServiceRegisterCampaignTransaction.OrderQryData;
begin
  QryData.SQL.Add('ORDER BY CC.FLAG DESC, id');
end;

procedure TServiceRegisterCampaignTransaction.StartQryData;
const
  LSQL =
  ' WITH CTE_CAMPANHAS AS ( ' + sLineBreak +
  ' SELECT ' + sLineBreak +
  ' C.id, ' + sLineBreak +
  ' cast(case when :checkedid = C.id then 1' + sLineBreak +
  ' else 0 end AS SMALLINT) flag, ' + sLineBreak +
  ' C.descricao ' + sLineBreak +
  ' FROM campanhas C ' + sLineBreak +
  ' WHERE C.deleted_date IS NULL ' + sLineBreak +
  ' )SELECT ' + sLineBreak +
  '  CC.id ' + sLineBreak +
  ' ,CC.flag ' + sLineBreak +
  ' ,CC.descricao ' + sLineBreak +
  ' FROM CTE_CAMPANHAS CC ' + sLineBreak;
begin
  inherited;
  QryData.Close;
  QryData.SQL.Text := LSQL;
end;

procedure TServiceRegisterCampaignTransaction.StartQryRegs;
const
  LSQL =
  ' SELECT ' + sLineBreak +
  ' COUNT(C.id) COUNT ' + sLineBreak +
  ' FROM  campanhas C  ' + sLineBreak +
  ' WHERE C.deleted_date IS NULL ' + sLineBreak;
begin
  inherited;
  QryRegs.Close;
  QryRegs.SQL.Text := LSQL;
end;

end.
