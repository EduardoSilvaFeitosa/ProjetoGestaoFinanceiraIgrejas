unit View.Reports.Settings.Campaigns;

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
  View.Reports.Settings.Master,
  Components.Button,
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.WinXPanels,
  Vcl.WinXCtrls,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Vcl.DBCtrls,
  Service.Entity.Details.Intf;

type
  TFrmReportCampaigns = class(TFrmReportSettingsMaster)
    mtListCampaigns: TFDMemTable;
    dtsListCampaigns: TDataSource;
    mtCampaign: TFDMemTable;
    LargeintField1: TLargeintField;
    dtsCampaign: TDataSource;
    pnContainerCampaign: TPanel;
    Panel2: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    Panel16: TPanel;
    Shape2: TShape;
    cbCampaign: TDBLookupComboBox;
    pnContainerMonthYear: TPanel;
    gpMonthYear: TGridPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    Panel4: TPanel;
    Shape1: TShape;
    cbMonth: TDBLookupComboBox;
    Panel11: TPanel;
    Panel12: TPanel;
    Label5: TLabel;
    Panel13: TPanel;
    Shape3: TShape;
    edtYear: TEdit;
    pnContainerStatus: TPanel;
    pnCkbStatus: TPanel;
    lbStatus: TLabel;
    iconCkb: TImage;
    dtsListMonths: TDataSource;
    mtListMonth: TFDMemTable;
    mtListMonthidmonth: TIntegerField;
    mtListMonthdescription: TWideStringField;
    mtMonths: TFDMemTable;
    mtMonthsidmonth: TIntegerField;
    dtsMonths: TDataSource;
    mtListCampaignsid: TLargeintField;
    mtListCampaignsdescricao: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure lbStatusClick(Sender: TObject);
  private
    FService: IService_EntityGrid;
    procedure LoadMonths;
    procedure LoadCampaigns;
  protected
    procedure DoBeforeGetReport; override;
    function GetReportName: string; override;
    function GetReportResource: string; override;
    procedure ToggleStatus(const Avalue: Boolean); override;
  end;

implementation

uses
  Service.Entity.Campaign;

{$R *.dfm}
{ TFrmReportCampaigns }

procedure TFrmReportCampaigns.DoBeforeGetReport;
var
  LMonth, LCampaign: Integer;
begin
  inherited;
  LCampaign := StrToIntDef(VarToStr(cbCampaign.Field.Value), 0);
  if (LCampaign > 0) then
    Request.AddParam('campaign', LCampaign.ToString);

  LMonth := StrToIntDef(VarToStr(cbMonth.Field.Value), 0);
  if (LMonth > 0) then
    Request.AddParam('month', LMonth.ToString);

  if (not String(edtYear.Text).IsEmpty) then
    Request.AddParam('year', String(edtYear.Text));

  if Status then
    Request.AddParam('onlywithbalance', 'true');
end;

procedure TFrmReportCampaigns.FormCreate(Sender: TObject);
begin
  inherited;
  lbHeaderTitle.Caption := 'Relatório de Campanhas';
  FService := TService_Campaign.New;

  mtMonths.CreateDataSet;
  mtMonths.Open;
  LoadMonths;
  if not(mtMonths.State in [dsEdit, dsInsert]) then
    mtMonths.Edit;

  cbMonth.Field.Value := 0;

  mtCampaign.CreateDataSet;
  mtCampaign.Open;
  LoadCampaigns;
  if not(mtCampaign.State in [dsEdit, dsInsert]) then
    mtCampaign.Edit;

  cbCampaign.Field.Value := (-1);
end;

function TFrmReportCampaigns.GetReportName: string;
begin
  Result := 'Relatório de Campanhas';
end;

function TFrmReportCampaigns.GetReportResource: string;
begin
  Result := 'campaigns';
end;

procedure TFrmReportCampaigns.lbStatusClick(Sender: TObject);
begin
  inherited;
  Status := (not Status);
end;

procedure TFrmReportCampaigns.LoadCampaigns;
begin
  with FService do
  begin
    QueryData(mtListCampaigns);
    RefreshData;
  end;

  mtListCampaigns.Append;
  mtListCampaignsid.Value := (-1);
  mtListCampaignsdescricao.Value := 'Todas';
  mtListCampaigns.Post;
end;

procedure TFrmReportCampaigns.LoadMonths;

  procedure AddMonth(const AId: Integer; const ADesc: String);
  begin
    mtListMonth.Append;
    mtListMonthidmonth.Value := AId;
    mtListMonthdescription.Value := ADesc;
    mtListMonth.Post;
  end;

begin
  mtListMonth.CreateDataSet;
  mtListMonth.Open;
  AddMonth(0, 'Todos');
  AddMonth(1, 'Janeiro');
  AddMonth(2, 'Fevereiro');
  AddMonth(3, 'Março');
  AddMonth(4, 'Abril');
  AddMonth(5, 'Maio');
  AddMonth(6, 'Junho');
  AddMonth(7, 'Julho');
  AddMonth(8, 'Agosto');
  AddMonth(9, 'Setembro');
  AddMonth(10, 'Outubro');
  AddMonth(11, 'Novembro');
  AddMonth(12, 'Dezembro');
  mtListMonth.Open;
end;

procedure TFrmReportCampaigns.ToggleStatus(const Avalue: Boolean);
begin
  inherited;
  iconCkb.Picture := GetSttIcon(Avalue);
end;

end.
