unit View.Base.Master.Grid;

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
  View.Base.Master,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  Vcl.WinXCtrls,
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  System.Actions,
  Vcl.ActnList,
  Factory.Entity.Intf,
  Controller.Base.Entity.Intf,
  Utils.Types, Components.Button;

type
  TFrmBaseMasterGrid = class(TFrmBaseMaster)
    mtMain: TFDMemTable;
    pnBackground: TPanel;
    pnContentPrincipal: TPanel;
    pnHeader: TPanel;
    pnIdentForm: TPanel;
    lbNameForm: TLabel;
    lbDescForm: TLabel;
    pnGrpAddFilter: TPanel;
    pnBtnAdd: TPanel;
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
    dtsMain: TDataSource;
    ActionList1: TActionList;
    btnNext: TAction;
    btnFirst: TAction;
    btnPrevious: TAction;
    btnLast: TAction;
    btnNew: TAction;
    IconEnter: TAction;
    IconLeave: TAction;
    btnAdd: TFrmButton;
    procedure FormShow(Sender: TObject);
    procedure btnNextExecute(Sender: TObject);
    procedure btnFirstExecute(Sender: TObject);
    procedure btnLastExecute(Sender: TObject);
    procedure btnPreviousExecute(Sender: TObject);
    procedure btnNewExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
  private
    FEnableFilter: Boolean;
    FController: IController_Entity;
    procedure SetEnableFilter(const Value: Boolean);
    procedure SetController(const Value: IController_Entity);
  protected
    procedure ReloadList;
    procedure RefreshActivePage;
    procedure Edit;
    procedure Delete;
    procedure Show;
    function GetCreationDate(const ADate: TDateTime): string;
  public
    procedure DoOnEndShowDetails; virtual;
    property EnableFilter: Boolean read FEnableFilter write SetEnableFilter;
    property Controller: IController_Entity read FController
      write SetController;
  end;

var
  FrmBaseMasterGrid: TFrmBaseMasterGrid;

implementation

{$R *.dfm}
{ TFrmBaseMasterGrid }

procedure TFrmBaseMasterGrid.btnDeleteClick(Sender: TObject);
begin
  inherited;
  Delete;
  if (mtMain.RecordCount = 0) then
    dtsMain.DataSet.Close;
end;

procedure TFrmBaseMasterGrid.btnEditClick(Sender: TObject);
begin
  inherited;
  Edit;
end;

procedure TFrmBaseMasterGrid.btnFirstExecute(Sender: TObject);
begin
  inherited;
  Controller.First;
  RefreshActivePage;
end;

procedure TFrmBaseMasterGrid.btnLastExecute(Sender: TObject);
begin
  inherited;
  Controller.Last;
  RefreshActivePage;
end;

procedure TFrmBaseMasterGrid.btnNewExecute(Sender: TObject);
begin
  inherited;
  Controller.Add;
end;

procedure TFrmBaseMasterGrid.btnNextExecute(Sender: TObject);
begin
  inherited;
  Controller.Next;
  RefreshActivePage;
end;

procedure TFrmBaseMasterGrid.btnPreviousExecute(Sender: TObject);
begin
  inherited;
  Controller.Previous;
  RefreshActivePage;
end;

procedure TFrmBaseMasterGrid.btnSearchClick(Sender: TObject);
begin
  inherited;
  Show;
end;

procedure TFrmBaseMasterGrid.Delete;
begin
  Controller.Delete;
end;

procedure TFrmBaseMasterGrid.DoOnEndShowDetails;
begin
  Controller.RefreshData;
end;

procedure TFrmBaseMasterGrid.Edit;
begin
  Controller.Edit;
end;

procedure TFrmBaseMasterGrid.FormCreate(Sender: TObject);
begin
  inherited;
  // mtMain.CreateDataSet;
  // mtMain.Open;
  EnableFilter := False;
end;

procedure TFrmBaseMasterGrid.FormShow(Sender: TObject);
begin
  inherited;
  Controller.QueryData(mtMain);
  btnAdd.txtBtn.Caption := 'Adicionar';
  btnAdd.txtBtn.OnClick := btnNewExecute;
end;

function TFrmBaseMasterGrid.GetCreationDate(const ADate: TDateTime): string;
var
  LText: string;
begin
  LText := FormatDateTime('dd of mmm of yyyy', ADate);
  Result := LText.Replace('of', 'de');
end;

procedure TFrmBaseMasterGrid.RefreshActivePage;
const
  Layout = ' %d  ..  %d';
  Layout1 = 'Página %d de %d';
begin
  lbIdentPages.Caption := Format(Layout, [Controller.Page, Controller.Pages]);
  pnIdentActualPage.Caption :=
    Format(Layout1, [Controller.Page, Controller.Pages]);
end;

procedure TFrmBaseMasterGrid.ReloadList;
begin
  Controller.RefreshData;
  RefreshActivePage;
end;

procedure TFrmBaseMasterGrid.SetController(const Value: IController_Entity);
begin
  FController := Value;
end;

procedure TFrmBaseMasterGrid.SetEnableFilter(const Value: Boolean);
begin
  FEnableFilter := Value;
  pnIconFilter.Visible := Value;
end;

procedure TFrmBaseMasterGrid.Show;
begin
  Controller.Show;
end;

end.
