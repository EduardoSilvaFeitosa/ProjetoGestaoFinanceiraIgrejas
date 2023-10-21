unit View.Register.User.Grid;

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
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Vcl.WinXCtrls,
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.DBCtrls,
  Vcl.DBCGrids,
  System.Actions,
  Vcl.ActnList,
  Components.Button;

type
  TFrmRegUserGrid = class(TFrmBaseMasterGrid)
    dbGrdUsers: TDBCtrlGrid;
    pnGridContent: TPanel;
    shpRowLimit: TShape;
    gpContent: TGridPanel;
    pnCellPhoto: TPanel;
    ImgUser: TImage;
    pnCellName: TPanel;
    pnGrpCellName: TPanel;
    dbName: TDBText;
    dbUser: TDBText;
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
    mtMaincreation_date: TSQLTimeStampField;
    mtMainlast_update: TSQLTimeStampField;
    mtMainid: TLargeintField;
    mtMainname: TWideStringField;
    mtMainemail: TWideStringField;
    mtMainusername: TWideStringField;
    mtMainpassword: TWideStringField;
    mtMainidacesso: TLargeintField;
    mtMainstatus: TSmallintField;
    DBText1: TDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mtMainstatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure mtMaincreation_dateGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure dbGrdUsersPaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure dbGrdUsersClick(Sender: TObject);
    procedure RepaintStatusExecute(Sender: TObject);
  private
    procedure RepaintStatus;
  end;

implementation

{$R *.dfm}

procedure TFrmRegUserGrid.dbGrdUsersClick(Sender: TObject);
begin
  if (mtMain.RecordCount = 0) then
    RepaintStatus;
end;

procedure TFrmRegUserGrid.dbGrdUsersPaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
  inherited;
  RepaintStatus;
end;

procedure TFrmRegUserGrid.FormCreate(Sender: TObject);
begin
  inherited;
  mtMain.CreateDataSet;
  mtMain.Open;
  EnableFilter := False;
{$IFDEF Debug}
  DBText1.Visible := True;
{$ENDIF}
end;

procedure TFrmRegUserGrid.FormShow(Sender: TObject);
begin
  inherited;
  try
    ReloadList;
  finally
    if (mtMain.RecordCount = 0) then
      dtsMain.DataSet.Close;
  end;
end;

procedure TFrmRegUserGrid.mtMaincreation_dateGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := GetCreationDate(Sender.AsDateTime);
end;

procedure TFrmRegUserGrid.mtMainstatusGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  Text := 'Ativo';
  if (Sender.AsInteger = 0) then
    Text := 'Inativo';
end;

procedure TFrmRegUserGrid.RepaintStatus;
begin
  if (dbStatus.Field.AsString.Equals('1')) then
  begin
    shpCollStatus.Brush.Color := $00D0FBD9;
    dbStatus.Font.Color := $00157340;
  end
  else
  begin
    shpCollStatus.Brush.Color := $00CAEFFF;
    dbStatus.Font.Color := $006A58BC;
  end;
end;

procedure TFrmRegUserGrid.RepaintStatusExecute(Sender: TObject);
begin
  inherited;
  RepaintStatus;
end;

end.
