unit View.Register.Campaign.Data.Step;

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
  Vcl.Mask,
  Vcl.DBCtrls,
  Vcl.ComCtrls,
  Vcl.Imaging.pngimage;

type
  TFrmStepDataCampaign = class(TFrmBaseMasterStep)
    pnContainerDescription: TPanel;
    Panel3: TPanel;
    Shape1: TShape;
    edtDescription: TDBEdit;
    Panel4: TPanel;
    lbDescription: TLabel;
    lbAlertDescription: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    lbAlertPeriod: TLabel;
    Panel6: TPanel;
    Panel7: TPanel;
    Shape3: TShape;
    edtTargetValue: TDBEdit;
    Panel8: TPanel;
    Label3: TLabel;
    lbAlertTargetValue: TLabel;
    Panel9: TPanel;
    Panel10: TPanel;
    Shape4: TShape;
    Panel11: TPanel;
    Label5: TLabel;
    gpPeriod: TGridPanel;
    Panel15: TPanel;
    Label9: TLabel;
    Panel16: TPanel;
    Shape2: TShape;
    edtStartDate: TDateTimePicker;
    Panel17: TPanel;
    Label10: TLabel;
    Panel18: TPanel;
    Shape6: TShape;
    edtEndDate: TDateTimePicker;
    pnContainerStatus: TPanel;
    pnCkbStatus: TPanel;
    lbStatusMember: TLabel;
    iconCkb: TImage;
    iconCkbOf: TImage;
    iconCkbOn: TImage;
    dbComments: TDBMemo;
    procedure btnDoneClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtStartDateExit(Sender: TObject);
    procedure edtEndDateExit(Sender: TObject);
    procedure edtDescriptionChange(Sender: TObject);
    procedure edtEndDateChange(Sender: TObject);
  private
    FDone: Boolean;
    FCheckBoxIcon: Array [0 .. 1] of TPicture;
    procedure ToggleStatus(const Avalue: Boolean);
    procedure BindDataSetStatus;
    procedure SetDone(const Value: Boolean);
    procedure UpdateDates;
    function GetDate(const AFieldName: string; const ADefault: TDateTime)
      : TDateTime;
  public
    property Done: Boolean read FDone write SetDone;
    function ValidateRules: Boolean; override;
  end;

implementation

{$R *.dfm}

procedure TFrmStepDataCampaign.BindDataSetStatus;
begin
  TrySetValue('status', Done.ToInteger, 'status');
end;

procedure TFrmStepDataCampaign.btnDoneClick(Sender: TObject);
begin
  inherited;
  Done := Not Done;
end;

procedure TFrmStepDataCampaign.edtDescriptionChange(Sender: TObject);
begin
  inherited;
  lbAlertDescription.Visible := False;
end;

procedure TFrmStepDataCampaign.edtEndDateChange(Sender: TObject);
begin
  inherited;
  lbAlertPeriod.Visible := False;
end;

procedure TFrmStepDataCampaign.edtEndDateExit(Sender: TObject);
begin
  inherited;
  lbAlertPeriod.Visible := False;
  UpdateDates;
end;

procedure TFrmStepDataCampaign.edtStartDateExit(Sender: TObject);
begin
  inherited;
  lbAlertPeriod.Visible := False;
  UpdateDates;
end;

procedure TFrmStepDataCampaign.FormCreate(Sender: TObject);
begin
  inherited;
  FCheckBoxIcon[0] := iconCkbOf.Picture;
  FCheckBoxIcon[1] := iconCkbOn.Picture;
end;

procedure TFrmStepDataCampaign.FormShow(Sender: TObject);
begin
  inherited;
  edtDescription.SetFocus;
  if Assigned(dtsMain.DataSet) and Assigned(dtsMain.DataSet.FindField('status'))
    and (not VarToStr(dtsMain.DataSet.FindField('status').Value).IsEmpty) then
    Done := Boolean(dtsMain.DataSet.FieldByName('status').Value)
  else
    Done := True;
  edtStartDate.DateTime := GetDate('dtinicio', Now);
  edtEndDate.DateTime := GetDate('dtfinal', Now);
end;

function TFrmStepDataCampaign.GetDate(const AFieldName: string;
  const ADefault: TDateTime): TDateTime;
begin
  try
    Result := ADefault;
    if Assigned(dtsMain.DataSet) and
      Assigned(dtsMain.DataSet.FindField(AFieldName)) and
      (not VarToStr(dtsMain.DataSet.FindField(AFieldName).Value).IsEmpty) then
      Result := dtsMain.DataSet.FieldByName(AFieldName).AsDateTime;
  except
    on E: Exception do
    begin
      Result := ADefault;
      Log(E, 'TFrmStepDataCampaign.GetDate', Self.ClassInfo);
    end;
  end;
end;

procedure TFrmStepDataCampaign.SetDone(const Value: Boolean);
begin
  FDone := Value;
  ToggleStatus(Value);
  BindDataSetStatus;
end;

procedure TFrmStepDataCampaign.ToggleStatus(const Avalue: Boolean);
begin
  iconCkb.Picture := FCheckBoxIcon[Avalue.ToInteger];
end;

procedure TFrmStepDataCampaign.UpdateDates;
begin
  TrySetValue('dtinicio', edtStartDate.DateTime, 'data de início');
  TrySetValue('dtfinal', edtEndDate.DateTime, 'data de término');
end;

function TFrmStepDataCampaign.ValidateRules: Boolean;
begin
  UpdateDates;
  if (edtDescription.EditText.Length < 3) then
  begin
    lbAlertDescription.Caption := 'O nome deve ter no mínimo 3 dígitos.';
    lbAlertDescription.Visible := True;
    edtDescription.SetFocus;
    Exit(False);
  end;

  if (edtStartDate.DateTime > edtEndDate.DateTime) then
  begin
    lbAlertPeriod.Caption := 'O ínicio deve ser menor que o término';
    lbAlertPeriod.Visible := True;
    edtStartDate.SetFocus;
    Exit(False);
  end;

  if edtTargetValue.EditText.IsEmpty then
  begin
    lbAlertTargetValue.Caption := 'Obrigatótio';
    if (Self.Width > 300) then
      lbAlertTargetValue.Caption := 'Campo obrigatótio';
    lbAlertTargetValue.Visible := True;
    edtTargetValue.SetFocus;
    Exit(False);
  end;

  if (not(StrToFloatDef(edtTargetValue.Field.AsString, 0) > 0)) then
  begin
    lbAlertTargetValue.Caption := 'O valor deve ser maior que zero';
    lbAlertTargetValue.Visible := True;
    edtTargetValue.SetFocus;
    Exit(False);
  end;

  Result := True;
end;

end.
