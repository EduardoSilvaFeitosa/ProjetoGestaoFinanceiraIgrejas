unit View.Reports.Master;

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
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  System.Actions,
  Vcl.ActnList,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Vcl.WinXCtrls,
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  Components.Button,
  Vcl.StdCtrls,
  View.Base.Master,
  View.Base.Master.Grid,
  Factory.Report.Intf;

type
  TFrmMasterReports = class(TFrmBaseMaster)
    ActionList1: TActionList;
    btnFirst: TAction;
    btnLast: TAction;
    btnNext: TAction;
    btnPrevious: TAction;
    btnNew: TAction;
    IconEnter: TAction;
    IconLeave: TAction;
    mtMain: TFDMemTable;
    pnBackground: TPanel;
    pnContentPrincipal: TPanel;
    pnHeader: TPanel;
    pnIdentForm: TPanel;
    lbNameForm: TLabel;
    lbDescForm: TLabel;
    pnGrpAddFilter: TPanel;
    pnBtnAdd: TPanel;
    btnAdd: TFrmButton;
    pnIconFilter: TPanel;
    IconFilter: TImage;
    pnControls: TPanel;
    pnCtrlIdentPage: TPanel;
    pnIdentActualPage: TLabel;
    pnCtrlBotoes: TPanel;
    lbIdentPages: TLabel;
    pnLast: TPanel;
    IconLast: TImage;
    pnFirst: TPanel;
    IconFirst: TImage;
    pnPrevious: TPanel;
    IconPrevious: TImage;
    pnNext: TPanel;
    IconNext: TImage;
    pnContent: TPanel;
    pnGridHeader: TPanel;
    pnGridDetalhes: TPanel;
    spvFilters: TSplitView;
    pnContentFilters: TPanel;
    pnTitleFilters: TPanel;
    lbTitleFilters: TLabel;
    GridPanel1: TGridPanel;
    pnEntriesReport: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    Panel4: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    pnWithdrawalsReport: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Image2: TImage;
    Panel8: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    pnTithesReport: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Image3: TImage;
    Panel12: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    pnCampaignsReport: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Image4: TImage;
    Panel16: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    pnCashFlowReport: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Image5: TImage;
    Panel20: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure OnEntriesReportClick(Sender: TObject);
    procedure OnCampaignsReportClick(Sender: TObject);
    procedure OnCashFlowReportClick(Sender: TObject);
    procedure OnTithesReportClick(Sender: TObject);
    procedure OnWithdrawalsReportClick(Sender: TObject);
  private
    FFactory: IFactory_Report;
  public
    procedure LoadFactory(const AFactory: IFactory_Report);
    property FactoryReport: IFactory_Report read FFactory;
  end;

implementation

{$R *.dfm}

procedure TFrmMasterReports.FormCreate(Sender: TObject);
begin
  inherited;
  lbNameForm.Caption := 'Relatórios';
  lbDescForm.Caption := 'Informações dos relatórios';
  pnGrpAddFilter.Visible := False;
  pnControls.Visible := False;
end;

procedure TFrmMasterReports.LoadFactory(const AFactory: IFactory_Report);
begin
  FFactory := AFactory;
end;

procedure TFrmMasterReports.OnCampaignsReportClick(Sender: TObject);
begin
  inherited;
  FactoryReport.Campaigns;
end;

procedure TFrmMasterReports.OnCashFlowReportClick(Sender: TObject);
begin
  inherited;
  FactoryReport.CashFlow;
end;

procedure TFrmMasterReports.OnEntriesReportClick(Sender: TObject);
begin
  inherited;
  FactoryReport.Entries;
end;

procedure TFrmMasterReports.OnTithesReportClick(Sender: TObject);
begin
  inherited;
  FactoryReport.Tithes;
end;

procedure TFrmMasterReports.OnWithdrawalsReportClick(Sender: TObject);
begin
  inherited;
  FactoryReport.Withdrawals;
end;

end.
