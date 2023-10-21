unit View.Register.Member.Transaction.Data.Step;

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
  Vcl.Imaging.pngimage,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.DBCtrls,
  Vcl.DBCGrids,

  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Service.Detail.Members.Trasaction,
  Utils.Types;

type
  TFrmStepDataMemberTransaction = class(TFrmBaseMasterStep)
    pnNote: TPanel;
    Panel6: TPanel;
    Shape1: TShape;
    Panel7: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Panel10: TPanel;
    Image3: TImage;
    pnBack: TPanel;
    pnGrid: TPanel;
    grdMain: TDBCtrlGrid;
    pnRow: TPanel;
    Panel4: TPanel;
    Image2: TImage;
    Panel5: TPanel;
    Panel8: TPanel;
    dbName: TDBText;
    Panel9: TPanel;
    ckbLink: TDBCheckBox;
    mtMain: TFDMemTable;
    mtMainid: TLargeintField;
    mtMainflag: TSmallintField;
    mtMainnome: TWideStringField;
    mtMainAmountChecked: TAggregateField;
    Panel2: TPanel;
    lbAlert: TLabel;
    Shape2: TShape;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OnCkbLinkClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    LAmount: Integer;
    FOnUpdateFlag: TNotifyEvent;
    LService: IServiceMemberTransaction;
    FCheckedId: Int64;
    FOnChangeCheckedMemberId: TNotifyToggleStep;
    procedure LoadGrid;
    procedure UpdateAmount;
    procedure LoadAmount;
    procedure EventScape(Sender: TObject);
    procedure HandleAmount(Sender: TObject);
    procedure SetOnUpdateFlag(const Value: TNotifyEvent);
    procedure SetCheckedId(const Value: Int64);
    procedure SetOnChangeCheckedMemberId(const Value: TNotifyToggleStep);
  public
    property OnUpdateFlag: TNotifyEvent read FOnUpdateFlag
      write SetOnUpdateFlag;
    property CheckedId: Int64 read FCheckedId write SetCheckedId;
    property OnChangeCheckedMemberId: TNotifyToggleStep
      write SetOnChangeCheckedMemberId;
  end;

implementation

{$R *.dfm}

procedure TFrmStepDataMemberTransaction.EventScape(Sender: TObject);
begin
  OnUpdateFlag := HandleAmount;
end;

procedure TFrmStepDataMemberTransaction.FormCreate(Sender: TObject);
begin
  inherited;
  FCheckedId := 0;
  OnUpdateFlag := HandleAmount;
  LService := TServiceMemberTransaction.New;
  mtMain.CreateDataSet;
  mtMain.Open;
  LService.RegisterDataSet(mtMain);
end;

procedure TFrmStepDataMemberTransaction.FormResize(Sender: TObject);
begin
  inherited;
  grdMain.RowCount := Trunc(grdMain.Height / 36);
end;

procedure TFrmStepDataMemberTransaction.FormShow(Sender: TObject);
begin
  inherited;
  LoadGrid;
  lbAlert.Visible := (mtMain.RecordCount = 0);
  LoadAmount;
end;

procedure TFrmStepDataMemberTransaction.HandleAmount(Sender: TObject);
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

procedure TFrmStepDataMemberTransaction.LoadAmount;
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

procedure TFrmStepDataMemberTransaction.LoadGrid;
begin
  LService.SetCheckedId(CheckedId);
  LService.LoadData;
end;

procedure TFrmStepDataMemberTransaction.OnCkbLinkClick(Sender: TObject);
begin
  // inherited;
  OnUpdateFlag(Sender);
end;

procedure TFrmStepDataMemberTransaction.SetCheckedId(const Value: Int64);
begin
  FCheckedId := Value;
  if Assigned(FOnChangeCheckedMemberId) then
    FOnChangeCheckedMemberId(Value);
end;

procedure TFrmStepDataMemberTransaction.SetOnChangeCheckedMemberId
  (const Value: TNotifyToggleStep);
begin
  FOnChangeCheckedMemberId := Value;
end;

procedure TFrmStepDataMemberTransaction.SetOnUpdateFlag
  (const Value: TNotifyEvent);
begin
  FOnUpdateFlag := Value;
end;

procedure TFrmStepDataMemberTransaction.UpdateAmount;
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
