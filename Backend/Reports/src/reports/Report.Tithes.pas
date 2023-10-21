unit Report.Tithes;

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
  TFrmReportTithes = class(TFrmReportBase)
    dbHeaderMain: TRLBand;
    RLLabel1: TRLLabel;
    bdMemberInfo: TRLBand;
    RLLabel2: TRLLabel;
    txtName: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel9: TRLLabel;
    sbdTithes: TRLSubDetail;
    bdTithesInfo: TRLBand;
    RLDBText2: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText3: TRLDBText;
    bdTitheDetails: TRLBand;
    RLLabel7: TRLLabel;
    RLDBResult1: TRLDBResult;
    QryTrMembers: TFDQuery;
    QryTrMembersdescription: TWideStringField;
    QryTrMembersidmembro: TLargeintField;
    QryTrMembersnumyear: TFMTBCDField;
    QryTrMembersvalor: TFMTBCDField;
    QryMembers: TFDQuery;
    QryMembersid: TLargeintField;
    QryMembersnome: TWideStringField;
    QryMembersdtingresso: TDateField;
    QryMemberscargo: TWideStringField;
    QryMembersstatus: TWideStringField;
    dtsMembers: TDataSource;
    dtsTrMembers: TDataSource;
    RLDBText8: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText5: TRLDBText;
    QryMembersnumyear: TIntegerField;
    QryMembersnstatus: TIntegerField;
    QryMemberstotal: TWideStringField;
    QryMembersvalor: TFMTBCDField;
    QryMembersdeleted_date: TSQLTimeStampField;
    RLLabel8: TRLLabel;
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
{ TFrmReportTithes }

function TFrmReportTithes.CanBeGenerated(const AParams
  : THorseCoreParam): Boolean;
var
  LWithBalance: Boolean;
begin
  if AParams.ContainsKey('member') then
  begin
    QryMembers.SQL.Add(' AND id = :idmembro ');
    QryTrMembers.SQL.Add(' AND idmembro = :idmembro ');

    QryMembers.ParamByName('idmembro').AsInteger :=
      StrToIntDef(AParams.Items['member'], 0);

    QryTrMembers.ParamByName('idmembro').AsInteger :=
      QryMembers.ParamByName('idmembro').AsInteger;
  end;

  if AParams.ContainsKey('year') then
  begin
    QryMembers.SQL.Add(' AND numyear = :numyear ');
    QryMembers.ParamByName('numyear').AsInteger :=
      StrToIntDef(AParams.Items['year'], 0);
  end;

  if AParams.ContainsKey('onlywithbalance') then
  begin
    LWithBalance := GetBool(AParams.Items['onlywithbalance']);
    if LWithBalance then
      QryMembers.SQL.Add(' AND ABS(COALESCE(valor, 0)) > 0 ');
  end;

  QryMembers.SQL.Add('ORDER BY id');
  QryMembers.Open();

  if ((QryMembers.RecordCount = 0) or (QryMembers.IsEmpty)) then
    Exit(False);

  QryTrMembers.Open();

  Result := inherited;
end;

procedure TFrmReportTithes.ConnectQuery;
begin
  SetConnection(QryMembers);
  SetConnection(QryTrMembers);
end;

procedure TFrmReportTithes.DoAfterCreate;
begin
  inherited;
  ConnectQuery;
end;

function TFrmReportTithes.GetFileName: string;
begin
  Result := 'Dizimos';
end;

end.
