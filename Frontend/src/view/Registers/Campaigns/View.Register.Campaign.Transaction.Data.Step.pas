unit View.Register.Campaign.Transaction.Data.Step;

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
  View.Base.Master.Step,
  Data.DB,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.DBCtrls,
  Vcl.Imaging.pngimage,
  Vcl.DBCGrids,
  Utils.Types,
  Service.Detail.Campaign.Trasaction,

  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmStepDataCampaignTransaction = class(TFrmBaseMasterStep)
    pnBack: TPanel;
    pnGrid: TPanel;
    grdMain: TDBCtrlGrid;
    pnRow: TPanel;
    Shape2: TShape;
    Panel4: TPanel;
    Image2: TImage;
    Panel5: TPanel;
    Panel8: TPanel;
    dbDescription: TDBText;
    Panel9: TPanel;
    ckbLink: TDBCheckBox;
    Panel2: TPanel;
    lbAlert: TLabel;
    pnNote: TPanel;
    Panel6: TPanel;
    Shape1: TShape;
    Panel7: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Panel10: TPanel;
    Image3: TImage;
    mtMain: TFDMemTable;
    mtMainid: TLargeintField;
    mtMainflag: TSmallintField;
    mtMainAmountChecked: TAggregateField;
    mtMaindescricao: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OnCkbLinkClick(Sender: TObject);
  private
    LAmount: Integer;
    FOnUpdateFlag: TNotifyEvent;
    LService: IServiceCampaignTransaction;
    FCheckedId: Int64;
    FOnChangeCheckedCampaignId: TNotifyToggleStep;
    procedure LoadGrid;
    procedure UpdateAmount;
    procedure LoadAmount;
    procedure EventScape(Sender: TObject);
    procedure HandleAmount(Sender: TObject);
    procedure SetOnUpdateFlag(const Value: TNotifyEvent);
    procedure SetCheckedId(const Value: Int64);
    procedure SetOnChangeCheckedCampaignId(const Value: TNotifyToggleStep);
  public
    property OnUpdateFlag: TNotifyEvent read FOnUpdateFlag
      write SetOnUpdateFlag;
    property CheckedId: Int64 read FCheckedId write SetCheckedId;
    property OnChangeCheckedCampaignId: TNotifyToggleStep
      write SetOnChangeCheckedCampaignId;
  end;

implementation

{$R *.dfm}
{ TFrmStepDataCampaignTransaction }

procedure TFrmStepDataCampaignTransaction.EventScape(Sender: TObject);
begin
  OnUpdateFlag := HandleAmount;
end;

procedure TFrmStepDataCampaignTransaction.FormCreate(Sender: TObject);
begin
  inherited;
  FCheckedId := 0;
  OnUpdateFlag := HandleAmount;
  LService := TServiceCampaignTransaction.New;
  mtMain.CreateDataSet;
  mtMain.Open;
  LService.RegisterDataSet(mtMain);
end;

procedure TFrmStepDataCampaignTransaction.FormResize(Sender: TObject);
begin
  inherited;
  grdMain.RowCount := Trunc(grdMain.Height / 36);
end;

procedure TFrmStepDataCampaignTransaction.FormShow(Sender: TObject);
begin
  inherited;
  LoadGrid;
  lbAlert.Visible := (mtMain.RecordCount = 0);
  LoadAmount;
end;

procedure TFrmStepDataCampaignTransaction.HandleAmount(Sender: TObject);
begin
  if (LAmount = 1) then
  begin

    if (not ckbLink.Checked) then
    begin
      LAmount := Pred(LAmount);
      CheckedId := 0;
      Exit;
    end;

    OnUpdateFlag := EventScape;
    ckbLink.Checked := False;
    Exit;
  end;
  UpdateAmount;
end;

procedure TFrmStepDataCampaignTransaction.LoadAmount;
begin
  mtMain.DisableControls;
  try
    mtMain.Filter := 'Flag = 1';
    mtMain.Filtered := True;

    if (mtMain.RecordCount > 0) then
    begin
      LAmount := mtMain.RecordCount;
      CheckedId := mtMainid.Value;
    end;

    mtMain.Filter := '';
    mtMain.Filtered := False;

  finally
    mtMain.EnableControls;
  end;

end;

procedure TFrmStepDataCampaignTransaction.LoadGrid;
begin
  LService.SetCheckedId(CheckedId);
  LService.LoadData;
end;

procedure TFrmStepDataCampaignTransaction.OnCkbLinkClick(Sender: TObject);
begin
  OnUpdateFlag(Sender);
end;

procedure TFrmStepDataCampaignTransaction.SetCheckedId(const Value: Int64);
begin
  FCheckedId := Value;
  if Assigned(FOnChangeCheckedCampaignId) then
    FOnChangeCheckedCampaignId(Value);
end;

procedure TFrmStepDataCampaignTransaction.SetOnChangeCheckedCampaignId
  (const Value: TNotifyToggleStep);
begin
  FOnChangeCheckedCampaignId := Value;
end;

procedure TFrmStepDataCampaignTransaction.SetOnUpdateFlag
  (const Value: TNotifyEvent);
begin
  FOnUpdateFlag := Value;
end;

procedure TFrmStepDataCampaignTransaction.UpdateAmount;
begin
  if ckbLink.Checked then
  begin
    Inc(LAmount);
    CheckedId := mtMainid.Value;
  end
  else
    LAmount := Pred(LAmount);

  if (LAmount > 1) then
  begin
    ckbLink.Checked := False;
    LAmount := Pred(LAmount);
  end;
end;

end.
