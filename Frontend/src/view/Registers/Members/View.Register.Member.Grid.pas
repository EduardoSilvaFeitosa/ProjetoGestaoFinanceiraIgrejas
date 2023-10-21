unit View.Register.Member.Grid;

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
  Vcl.StdCtrls,
  Vcl.DBCtrls,
  Vcl.DBCGrids,
  Components.Button;

type
  TFrmRegMemberGrid = class(TFrmBaseMasterGrid)
    dbGrdMembers: TDBCtrlGrid;
    pnGridContent: TPanel;
    shpRowLimit: TShape;
    gpContent: TGridPanel;
    pnCellPhoto: TPanel;
    ImgUser: TImage;
    pnCellName: TPanel;
    pnGrpCellName: TPanel;
    dbName: TDBText;
    pnCellEmail: TPanel;
    dbEmail: TDBText;
    pnCellCreatedAt: TPanel;
    dbCreatedAt: TDBText;
    pnCellStatus: TPanel;
    pnGrpCellStatus: TPanel;
    shpCollStatus: TShape;
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
    gpHeader: TGridPanel;
    pnTitlePhoto: TPanel;
    lbPhoto: TLabel;
    pnTitleName: TPanel;
    lbName: TLabel;
    pnTitleEmail: TPanel;
    lbEmail: TLabel;
    pnTitleCreatedAt: TPanel;
    lbCreatedAt: TLabel;
    pnTitleStatus: TPanel;
    lbStatus: TLabel;
    pnTitleOperation: TPanel;
    lbOperation: TLabel;
    mtMainnome: TWideStringField;
    mtMainemail: TWideStringField;
    mtMaintelefone: TWideStringField;
    mtMaindtingresso: TDateField;
    mtMaincargo: TWideStringField;
    mtMaincreation_date: TSQLTimeStampField;
    mtMainlast_update: TSQLTimeStampField;
    mtMainstatus: TSmallintField;
    mtMainid: TLargeintField;
    DBText2: TDBText;
    procedure FormCreate(Sender: TObject);
    procedure mtMainstatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure mtMaincreation_dateGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRegMemberGrid: TFrmRegMemberGrid;

implementation

{$R *.dfm}

procedure TFrmRegMemberGrid.FormCreate(Sender: TObject);
begin
  inherited;
{$IFDEF Debug}
  DBText2.Visible := True;
{$ENDIF}
  mtMain.CreateDataSet;
  mtMain.Open;
end;

procedure TFrmRegMemberGrid.FormShow(Sender: TObject);
begin
  inherited;
  try
    ReloadList;
  finally
    if (mtMain.RecordCount = 0) then
      dtsMain.DataSet.Close;
  end;
end;

procedure TFrmRegMemberGrid.mtMaincreation_dateGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := GetCreationDate(Sender.AsDateTime);
end;

procedure TFrmRegMemberGrid.mtMainstatusGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := 'Ativo';
  if (Sender.AsInteger = 0) then
    Text := 'Inativo';
end;

end.
