unit View.Reports.Settings.CashFlow;

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
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.WinXPanels, Vcl.WinXCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmReportCashFlow = class(TFrmReportSettingsMaster)
    pnContainerMonthYear: TPanel;
    gpMonthYear: TGridPanel;
    Panel2: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    Panel16: TPanel;
    Shape2: TShape;
    cbMonth: TDBLookupComboBox;
    Panel1: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    Panel4: TPanel;
    Shape1: TShape;
    edtYear: TEdit;
    pnContainerStatus: TPanel;
    pnCkbStatus: TPanel;
    lbStatus: TLabel;
    iconCkb: TImage;
    mtListMonth: TFDMemTable;
    mtListMonthidmonth: TIntegerField;
    mtListMonthdescription: TWideStringField;
    dtsListMonths: TDataSource;
    dtsMonths: TDataSource;
    mtMonths: TFDMemTable;
    mtMonthsidmonth: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure lbStatusClick(Sender: TObject);
  private
    procedure LoadMonths;
  protected
    procedure DoBeforeGetReport; override;
    function GetReportName: string; override;
    function GetReportResource: string; override;
    procedure ToggleStatus(const Avalue: Boolean); override;
  end;

implementation

{$R *.dfm}

  { TFrmReportCashFlow }

procedure TFrmReportCashFlow.DoBeforeGetReport;
var
  LMonth: Integer;
begin
  inherited;
  LMonth := StrToIntDef(VarToStr(cbMonth.Field.Value), 0);
  if (LMonth > 0) then
    Request.AddParam('month', LMonth.ToString);

  if (not String(edtYear.Text).IsEmpty) then
    Request.AddParam('year', String(edtYear.Text));

  if Status then
    Request.AddParam('onlywithbalance', 'true');
end;

procedure TFrmReportCashFlow.FormCreate(Sender: TObject);
begin
  inherited;
  lbHeaderTitle.Caption := 'Relatório de Fluxo de Caixa';
  mtMonths.CreateDataSet;
  mtMonths.Open;
  LoadMonths;

  if not(mtMonths.State in [dsEdit, dsInsert]) then
    mtMonths.Edit;

  cbMonth.Field.Value := 0;
end;

function TFrmReportCashFlow.GetReportName: string;
begin
  Result := 'Relatório de Fluxo de Caixa';
end;

function TFrmReportCashFlow.GetReportResource: string;
begin
  Result := 'cashflow';
end;

procedure TFrmReportCashFlow.lbStatusClick(Sender: TObject);
begin
  inherited;
  Status := (not Status);
end;

procedure TFrmReportCashFlow.LoadMonths;

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

procedure TFrmReportCashFlow.ToggleStatus(const Avalue: Boolean);
begin
  inherited;
  iconCkb.Picture := GetSttIcon(Avalue);
end;

end.
