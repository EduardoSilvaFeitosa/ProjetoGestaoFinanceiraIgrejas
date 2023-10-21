unit View.Register.Transaction.Grid;

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
  View.Base.Master.Grid,
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
  Vcl.DBCtrls,
  Vcl.DBCGrids;

type
  TFrmRegTransactionGrid = class(TFrmBaseMasterGrid)
    gpHeader: TGridPanel;
    pnTitleIcon: TPanel;
    lbIcon: TLabel;
    pnTitleDescription: TPanel;
    lbDescription: TLabel;
    pnTitleStartDate: TPanel;
    lbStartDate: TLabel;
    pnTitleEndDate: TPanel;
    lbEndDate: TLabel;
    pnTitleTargetValue: TPanel;
    lbTargetValue: TLabel;
    pnTitleOperation: TPanel;
    lbOperation: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    dbGrd: TDBCtrlGrid;
    pnGridContent: TPanel;
    shpRowLimit: TShape;
    gpContent: TGridPanel;
    pnCellIcon: TPanel;
    ImgTargetIcon: TImage;
    pnCellDescription: TPanel;
    pnGrpCellDescription: TPanel;
    pnCellStartDate: TPanel;
    dbDate: TDBText;
    DBText1: TDBText;
    pnCellEndDate: TPanel;
    dbValue: TDBText;
    pnCellTargetValue: TPanel;
    pnGrpCellTargetValue: TPanel;
    shpCollTargetValue: TShape;
    dbNature: TDBText;
    pnCellOperation: TPanel;
    pnGrpCellOperation: TPanel;
    pnGrpCellOperationContainer: TPanel;
    pnCellIconSearch: TPanel;
    shpIconSearch: TShape;
    IconSearch: TImage;
    pnCellIconEdit: TPanel;
    shpIconEdit: TShape;
    IconEdit: TImage;
    pnCellIconDelete: TPanel;
    shpIconDelete: TShape;
    IconDelete: TImage;
    Panel2: TPanel;
    dbKind: TDBText;
    mtMaincreation_date: TSQLTimeStampField;
    mtMainlast_update: TSQLTimeStampField;
    dbDescription: TDBText;
    mtMainid: TLargeintField;
    mtMaindescricao: TWideStringField;
    mtMaindtfato: TDateField;
    mtMaincompetencia: TWideStringField;
    mtMainnatureza: TWideStringField;
    mtMaintipo: TSmallintField;
    mtMainvalor: TFMTBCDField;
    mtMainobservacao: TWideStringField;
    mtMainidmembro: TLargeintField;
    mtMainidcampanha: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mtMaindtfatoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure mtMainnaturezaGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure mtMaintipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  end;

implementation

uses
  Utils.Types;

{$R *.dfm}

procedure TFrmRegTransactionGrid.FormCreate(Sender: TObject);
begin
  inherited;
  lbNameForm.Caption := 'Movimentações';
  lbDescForm.Caption := 'Informações das movimentações';
  EnableFilter := False;
  mtMain.CreateDataSet;
  mtMain.Open;
end;

procedure TFrmRegTransactionGrid.FormShow(Sender: TObject);
begin
  inherited;
  try
    ReloadList;
  finally
    if (mtMain.RecordCount = 0) then
      dtsMain.DataSet.Close;
  end;
end;

procedure TFrmRegTransactionGrid.mtMaindtfatoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := GetCreationDate(Sender.AsDateTime);
end;

procedure TFrmRegTransactionGrid.mtMainnaturezaGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString.Trim.Equals('C') then
    Text := 'Crédito'
  else if Sender.AsString.Trim.Equals('D') then
    Text := 'Débito';
end;

procedure TFrmRegTransactionGrid.mtMaintipoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
var
  LTransaction: TpTransaction;
begin
  inherited;
  Text := LTransaction.GetTextByInt(Sender.AsInteger);
end;

end.
