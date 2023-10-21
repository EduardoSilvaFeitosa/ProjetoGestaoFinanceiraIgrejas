unit View.Reports.Settings.Entries;

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
  Vcl.DBCtrls,
  Vcl.ComCtrls,
  Data.DB,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Vcl.WinXPanels,
  Vcl.WinXCtrls, Vcl.Mask;

type
  TFrmReportEntries = class(TFrmReportSettingsMaster)
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
    pnContainerStatus: TPanel;
    pnCkbStatus: TPanel;
    lbStatus: TLabel;
    iconCkb: TImage;
    mtEntries: TFDMemTable;
    mtEntriesidmonth: TIntegerField;
    mtMonth: TFDMemTable;
    mtMonthidmonth: TIntegerField;
    mtMonthdescription: TWideStringField;
    dtsMonth: TDataSource;
    dtsEntries: TDataSource;
    edtYear: TEdit;
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

procedure TFrmReportEntries.DoBeforeGetReport;
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

procedure TFrmReportEntries.FormCreate(Sender: TObject);
begin
  inherited;
  lbHeaderTitle.Caption := 'Relatório de Entradas';
  mtEntries.CreateDataSet;
  mtEntries.Open;
  LoadMonths;

  if not(mtEntries.State in [dsEdit, dsInsert]) then
    mtEntries.Edit;

  cbMonth.Field.Value := 0;
end;

function TFrmReportEntries.GetReportName: string;
begin
  Result := 'Relatório de Entradas';
end;

function TFrmReportEntries.GetReportResource: string;
begin
  Result := 'entries';
end;

procedure TFrmReportEntries.lbStatusClick(Sender: TObject);
begin
  inherited;
  Status := (not Status);
end;

procedure TFrmReportEntries.LoadMonths;

  procedure AddMonth(const AId: Integer; const ADesc: String);
  begin
    mtMonth.Append;
    mtMonthidmonth.Value := AId;
    mtMonthdescription.Value := ADesc;
    mtMonth.Post;
  end;

begin
  mtMonth.CreateDataSet;
  mtMonth.Open;
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
  mtMonth.Open;
end;

procedure TFrmReportEntries.ToggleStatus(const Avalue: Boolean);
begin
  inherited;
  iconCkb.Picture := GetSttIcon(Avalue);
end;

end.
