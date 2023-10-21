unit View.Register.Church.Grid;

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
  TFrmRegChurchGrid = class(TFrmBaseMasterGrid)
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
    dbGrd: TDBCtrlGrid;
    pnGridContent: TPanel;
    shpRowLimit: TShape;
    gpContent: TGridPanel;
    pnCellIcon: TPanel;
    ImgTargetIcon: TImage;
    pnCellDescription: TPanel;
    pnGrpCellDescription: TPanel;
    dbName: TDBText;
    dbCnpj: TDBText;
    pnCellStartDate: TPanel;
    dbAdress: TDBText;
    DBText2: TDBText;
    pnCellEndDate: TPanel;
    dbCreatedDate: TDBText;
    pnCellTargetValue: TPanel;
    pnGrpCellTargetValue: TPanel;
    shpCollTargetValue: TShape;
    dbStatus: TDBText;
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
    mtMainid: TLargeintField;
    mtMaincreationDate: TSQLTimeStampField;
    mtMainlastUpdate: TSQLTimeStampField;
    mtMainnome: TWideStringField;
    mtMaincnpj: TWideStringField;
    mtMainstatus: TSmallintField;
    mtMaincep: TWideStringField;
    mtMainnumero: TWideStringField;
    mtMainlogradouro: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mtMaincreationDateGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure mtMainstatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrmRegChurchGrid.FormCreate(Sender: TObject);
begin
  inherited;
{$IFDEF Debug}
  DBText2.Visible := True;
{$ENDIF}
  lbNameForm.Caption := 'Igrejas';
  lbDescForm.Caption := 'Informações das igrejas';
  mtMain.CreateDataSet;
  mtMain.Open;
  EnableFilter := False;
end;

procedure TFrmRegChurchGrid.FormShow(Sender: TObject);
begin
  inherited;
  try
    ReloadList;
  finally
    if (mtMain.RecordCount = 0) then
      dtsMain.DataSet.Close;
  end;
end;

procedure TFrmRegChurchGrid.mtMaincreationDateGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := GetCreationDate(Sender.AsDateTime);
end;

procedure TFrmRegChurchGrid.mtMainstatusGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := 'Ativo';
  if (Sender.AsInteger = 0) then
    Text := 'Inativo';
end;

end.
