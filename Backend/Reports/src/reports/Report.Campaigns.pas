unit Report.Campaigns;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Report.Base,
  FireDAC.Phys.PGDef,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.PG,
  FireDAC.VCLUI.Wait,
  Data.DB,
  FireDAC.Comp.Client,
  RLFilters,
  RLPDFFilter,
  RLReport,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  Horse.Core.Param;

type
  TFrmReportCampaigns = class(TFrmReportBase)
    bdHeaderMain: TRLBand;
    RLLabel1: TRLLabel;
    dtsCampaing: TDataSource;
    dtsTrCampaing: TDataSource;
    QryCampaing: TFDQuery;
    QryCampaingid: TLargeintField;
    QryCampaingdescricao: TWideStringField;
    QryCampaingdtinicio: TDateField;
    QryCampaingdtfinal: TDateField;
    QryCampaingvlralvo: TFMTBCDField;
    QryCampaingtotal: TWideStringField;
    QryCampaingstatus: TWideStringField;
    QryCampaingobservacao: TWideStringField;
    QryTrCampaing: TFDQuery;
    QryTrCampaingidcampanha: TLargeintField;
    QryTrCampaingid: TLargeintField;
    QryTrCampaingdescricao: TWideStringField;
    QryTrCampaingvalor: TFMTBCDField;
    QryTrCampaingvalormoeda: TWideStringField;
    bdTitleCampaign: TRLBand;
    txtName: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel9: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel10: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText7: TRLDBText;
    sbdCampaign: TRLSubDetail;
    RLBand3: TRLBand;
    RLDBText2: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText10: TRLDBText;
    RLBand4: TRLBand;
    RLLabel7: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLLabel11: TRLLabel;
    RLDBText8: TRLDBText;
  private
    procedure ConnectQuery;
  protected
    procedure DoAfterCreate; override;
    function GetFileName: string; override;
  public
    function CanBeGenerated(const AParams: THorseCoreParam): Boolean; override;
  end;

implementation

{$R *.dfm}


{ TFrmReportCampaigns }

function TFrmReportCampaigns.CanBeGenerated(const AParams
  : THorseCoreParam): Boolean;
var
  LWithBalance: Boolean;
begin
  if AParams.ContainsKey('campaign') then
  begin
    QryCampaing.SQL.Add(' AND id = :idcampanha ');
    QryTrCampaing.SQL.Add(' AND idcampanha = :idcampanha ');

    QryCampaing.ParamByName('idcampanha').AsInteger :=
      StrToIntDef(AParams.Items['campaign'], 0);
    QryTrCampaing.ParamByName('idcampanha').AsInteger :=
      QryCampaing.ParamByName('idcampanha').AsInteger;
  end;

  if AParams.ContainsKey('year') then
  begin
    QryCampaing.SQL.Add(' AND :numyear BETWEEN cast(date_part(''year'',dtinicio) as int) ');
    QryCampaing.SQL.Add(' AND  cast(date_part(''year'', dtfinal) as int) ');
    QryTrCampaing.SQL.Add(' AND :numyear BETWEEN cast(date_part(''year'',dtinicio) as int) ');
    QryTrCampaing.SQL.Add(' AND  cast(date_part(''year'', dtfinal) as int) ');

    QryCampaing.ParamByName('numyear').AsInteger :=
      StrToIntDef(AParams.Items['year'], 0);
    QryTrCampaing.ParamByName('numyear').AsInteger :=
      QryCampaing.ParamByName('numyear').AsInteger;
  end;

  if AParams.ContainsKey('month') then
  begin
    QryCampaing.SQL.Add(' AND :idmonth BETWEEN cast(date_part(''month'',dtinicio) as int) ');
    QryCampaing.SQL.Add(' AND  cast(date_part(''month'', dtfinal) as int) ');

    QryTrCampaing.SQL.Add(' AND :idmonth BETWEEN cast(date_part(''month'',dtinicio) as int) ');
    QryTrCampaing.SQL.Add(' AND  cast(date_part(''month'', dtfinal) as int) ');

    QryCampaing.ParamByName('idmonth').AsInteger :=
      StrToIntDef(AParams.Items['month'], 0);

    QryTrCampaing.ParamByName('idmonth').AsInteger :=
      QryCampaing.ParamByName('idmonth').AsInteger;
  end;

  if AParams.ContainsKey('onlywithbalance') then
  begin
    LWithBalance := GetBool(AParams.Items['onlywithbalance']);
    if LWithBalance then
      QryCampaing.SQL.Add('AND ABS(COALESCE(valor, 0)) > 0');
  end;

  QryCampaing.SQL.Add('ORDER BY id ');
  QryCampaing.Open();

  if ((QryCampaing.RecordCount = 0) or (QryCampaing.IsEmpty)) then
    Exit(False);

  QryTrCampaing.Open();
  Result := inherited;
end;

procedure TFrmReportCampaigns.ConnectQuery;
begin
  SetConnection(QryCampaing);
  SetConnection(QryTrCampaing);
end;

procedure TFrmReportCampaigns.DoAfterCreate;
begin
  inherited;
  ConnectQuery;
end;

function TFrmReportCampaigns.GetFileName: string;
begin
  Result := 'Campanhas';
end;

end.
