unit View.Register.Campaign.Grid;

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
  TFrmRegCampaignGrid = class(TFrmBaseMasterGrid)
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
    dbDescription: TDBText;
    dbComments: TDBText;
    pnCellStartDate: TPanel;
    dbStartDate: TDBText;
    pnCellEndDate: TPanel;
    dbEndDate: TDBText;
    pnCellTargetValue: TPanel;
    pnGrpCellTargetValue: TPanel;
    shpCollTargetValue: TShape;
    dbTargetValue: TDBText;
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
    mtMaindescricao: TWideStringField;
    mtMaindtinicio: TDateField;
    mtMaindtfinal: TDateField;
    mtMainvlralvo: TFMTBCDField;
    mtMainobservacao: TWideStringField;
    mtMaincreationDate: TSQLTimeStampField;
    mtMainlastUpdate: TSQLTimeStampField;
    mtMainstatus: TSmallintField;
    mtMainid: TLargeintField;
    DBText2: TDBText;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mtMaincreationDateGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure mtMaindtinicioGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure mtMaindtfinalGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrmRegCampaignGrid.FormCreate(Sender: TObject);
begin
  inherited;
{$IFDEF Debug}
  DBText2.Visible := True;
{$ENDIF}
  lbNameForm.Caption := 'Campanhas';
  lbDescForm.Caption := 'Informações das campanhas';
  mtMain.CreateDataSet;
  mtMain.Open;
  EnableFilter := False;
end;

procedure TFrmRegCampaignGrid.FormShow(Sender: TObject);
begin
  inherited;
  try
    ReloadList;
  finally
    if (mtMain.RecordCount = 0) then
      dtsMain.DataSet.Close;
  end;
end;

procedure TFrmRegCampaignGrid.mtMaincreationDateGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := GetCreationDate(Sender.AsDateTime);
end;

procedure TFrmRegCampaignGrid.mtMaindtfinalGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := GetCreationDate(Sender.AsDateTime);
end;

procedure TFrmRegCampaignGrid.mtMaindtinicioGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := GetCreationDate(Sender.AsDateTime);
end;

end.
