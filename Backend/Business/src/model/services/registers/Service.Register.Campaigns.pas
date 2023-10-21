unit Service.Register.Campaigns;

interface

uses
  Data.DB,
  Service.Register,
  Service.Register.Campaign.Intf;

type
  TServiceRegisterCampaign = class(TServiceRegister, IServiceRegisterCampaign)
  protected
    procedure StartQryData; override;
    procedure StartQryRegs; override;
    procedure StartQryRegister; override;
    procedure DoAfterListAll; override;
  public
    class function New: IServiceRegisterCampaign;
  end;

implementation

uses
  BCrypt,
  System.SysUtils;

{ TServiceRegisterCampaign }

procedure TServiceRegisterCampaign.DoAfterListAll;
begin
  SetInvisible(QryData, 'deleted_date', True);
end;

class function TServiceRegisterCampaign.New: IServiceRegisterCampaign;
begin
  Result := Self.Create;
end;

procedure TServiceRegisterCampaign.StartQryData;
const
  LSQL =
  ' SELECT ' + sLineBreak +
  ' C.id, ' + sLineBreak +
  ' C.descricao, ' + sLineBreak +
  ' C.dtinicio, ' + sLineBreak +
  ' C.dtfinal, ' + sLineBreak +
  ' C.vlralvo, ' + sLineBreak +
  ' C.status, ' + sLineBreak +
  ' C.observacao ' + sLineBreak +
  ' FROM campanhas C ' + sLineBreak +
  ' WHERE C.deleted_date IS NULL ' + sLineBreak;
begin
  inherited;
  QryData.Close;
  QryData.SQL.Text := LSQL;
end;

procedure TServiceRegisterCampaign.StartQryRegister;
const
  LSQL =
  ' SELECT ' + sLineBreak +
  ' C.id, ' + sLineBreak +
  ' C.descricao, ' + sLineBreak +
  ' C.dtinicio, ' + sLineBreak +
  ' C.dtfinal, ' + sLineBreak +
  ' C.vlralvo, ' + sLineBreak +
  ' C.status, ' + sLineBreak +
  ' C.observacao, ' + sLineBreak +
  ' C.creation_date, ' + sLineBreak +
  ' C.deleted_date, ' + sLineBreak +
  ' C.last_update ' + sLineBreak +
  ' FROM campanhas C ' + sLineBreak +
  ' WHERE C.deleted_date IS NULL ' + sLineBreak;
begin
  inherited;
  QryRegister.Close;
  QryRegister.sql.Text := LSQL;
  QryRegister.BeforePost := DoBeforePostRegister;
end;

procedure TServiceRegisterCampaign.StartQryRegs;
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
