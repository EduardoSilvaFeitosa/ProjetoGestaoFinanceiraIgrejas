unit View.Register.Church.Data.Step;

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
  TFrmStepDataChurch = class(TFrmBaseMasterStep)
    pnContainerName: TPanel;
    Panel3: TPanel;
    Shape1: TShape;
    edtName: TDBEdit;
    Panel4: TPanel;
    Label2: TLabel;
    lbAlertName: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Shape2: TShape;
    edtCnpj: TDBEdit;
    Panel5: TPanel;
    Label1: TLabel;
    lbAlertCnpj: TLabel;
    Panel6: TPanel;
    Panel7: TPanel;
    Shape3: TShape;
    edtAdress: TDBEdit;
    Panel8: TPanel;
    Label4: TLabel;
    lbAlertAdress: TLabel;
    Panel9: TPanel;
    Panel12: TPanel;
    Panel14: TPanel;
    Shape5: TShape;
    edtStartDate: TDateTimePicker;
    Panel15: TPanel;
    Label8: TLabel;
    lbAlertEntryDate: TLabel;
    pnContainerStatus: TPanel;
    pnCkbStatus: TPanel;
    lbStatusMember: TLabel;
    iconCkb: TImage;
    iconCkbOf: TImage;
    iconCkbOn: TImage;
    gpCep: TGridPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Panel13: TPanel;
    Shape4: TShape;
    edtCep: TDBEdit;
    Panel16: TPanel;
    Panel17: TPanel;
    lbNumber: TLabel;
    Panel18: TPanel;
    Shape6: TShape;
    edtNumber: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FStatus: Boolean;
    FCheckBoxIcon: Array [0 .. 1] of TPicture;
    procedure ToggleStatus(const Avalue: Boolean);
    procedure BindDataSetStatus;
    procedure SetStatus(const Value: Boolean);
    procedure UpdateDates;
    function GetDate(const AFieldName: string; const ADefault: TDateTime)
      : TDateTime;
    function OnlyNumbers(const Value: string): string;
    function CheckCnpj(const Value: string): Boolean;
    function CheckCep(const Value: string): Boolean;
  public
    property Status: Boolean read FStatus write SetStatus;
    function ValidateRules: Boolean; override;
  end;

implementation

uses
  System.RegularExpressions;

{$R *.dfm}
{ TFrmStepDataChurch }

procedure TFrmStepDataChurch.BindDataSetStatus;
begin
  TrySetValue('status', Status.ToInteger, 'status');
end;

function TFrmStepDataChurch.CheckCep(const Value: string): Boolean;
const
  REGEX_CEP = '^\d{5}(-\d{3})?$';
begin
  Result := TRegEx.IsMatch(Value, REGEX_CEP);
end;

function TFrmStepDataChurch.CheckCnpj(const Value: string): Boolean;
var
  LCnpj: string;
var
  I, LNum, LSum, LWeight, LDigit1, LDigit2: Integer;
begin
  LCnpj := OnlyNumbers(Value);
  LSum := 0;
  LWeight := 5;

  if LCnpj.IsEmpty then
    Exit(False);

  // Dígito 1
  for I := 1 to 12 do
  begin
    LNum := String(LCnpj[I]).ToInteger();
    LSum := LSum + (LNum * LWeight);

    LWeight := Pred(LWeight);
    if (LWeight = 1) then
      LWeight := 9;
  end;

  LDigit1 := (LSum mod 11);

  if (LDigit1 < 2) then
    LDigit1 := 0
  else
    LDigit1 := 11 - LDigit1;

  if (String(LCnpj[13]).ToInteger() <> LDigit1) then
    Exit(False);

  LSum := 0;
  LWeight := 6;
  // Dígito 2
  for I := 1 to 13 do
  begin
    LNum := String(LCnpj[I]).ToInteger();
    LSum := LSum + (LNum * LWeight);

    LWeight := Pred(LWeight);
    if (LWeight = 1) then
      LWeight := 9;
  end;

  LDigit2 := (LSum mod 11);

  if (LDigit2 < 2) then
    LDigit2 := 0
  else
    LDigit2 := 11 - LDigit2;

  if (String(LCnpj[14]).ToInteger() <> LDigit2) then
      Exit(False);

  Result := True;
end;

procedure TFrmStepDataChurch.FormCreate(Sender: TObject);
begin
  inherited;
  FCheckBoxIcon[0] := iconCkbOf.Picture;
  FCheckBoxIcon[1] := iconCkbOn.Picture;
end;

procedure TFrmStepDataChurch.FormShow(Sender: TObject);
begin
  inherited;
  edtName.SetFocus;
  if Assigned(dtsMain.DataSet) and Assigned(dtsMain.DataSet.FindField('status'))
    and (not VarToStr(dtsMain.DataSet.FindField('status').Value).IsEmpty) then
    Status := Boolean(dtsMain.DataSet.FieldByName('status').Value)
  else
    Status := True;
  edtStartDate.DateTime := GetDate('dtInicio', Now);
end;

function TFrmStepDataChurch.GetDate(const AFieldName: string;
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
      Log(E, 'TFrmStepDataChurch.GetDate', Self.ClassInfo);
    end;
  end;
end;

function TFrmStepDataChurch.OnlyNumbers(const Value: string): string;
begin

end;

procedure TFrmStepDataChurch.SetStatus(const Value: Boolean);
begin
  FStatus := Value;
  ToggleStatus(Value);
  BindDataSetStatus;
end;

procedure TFrmStepDataChurch.ToggleStatus(const Avalue: Boolean);
begin
  iconCkb.Picture := FCheckBoxIcon[Avalue.ToInteger];
end;

procedure TFrmStepDataChurch.UpdateDates;
begin
  // TrySetValue('dtinicio', edtStartDate.DateTime, 'data de início');
end;

function TFrmStepDataChurch.ValidateRules: Boolean;
begin
  UpdateDates;
  if (edtName.EditText.Trim.Length < 3) then
  begin
    lbAlertName.Caption := 'O nome deve ter no mínimo 3 dígitos.';

    lbAlertName.Visible := True;
    edtName.SetFocus;
    Exit(False);
  end;

  if (not(trim(edtCnpj.Text).IsEmpty)) and (not CheckCnpj(edtCnpj.EditText)) then
  begin
    lbAlertCnpj.Caption := 'CNPJ inválido.';
    if (Self.Width > 300) then
      lbAlertCnpj.Caption := 'O CNPJ informado é inválido.';

    lbAlertCnpj.Visible := True;
    edtCnpj.SetFocus;
    Exit(False);
  end;

  if (edtAdress.EditText.Trim.Length < 3) then
  begin
    lbAlertAdress.Caption := 'O logradouro deve ter no mínimo 3 dígitos.';
    lbAlertAdress.Visible := True;
    edtAdress.SetFocus;
    Exit(False);
  end;

  if (not edtCep.EditText.IsEmpty) and (not CheckCep(edtCep.EditText)) then
  begin
    lbAlertAdress.Caption := 'CEP inválido.';
    if (Self.Width > 300) then
      lbAlertAdress.Caption := 'O CEP informado é inválido.';

    lbAlertAdress.Visible := True;
    edtCep.SetFocus;
    Exit(False);
  end;

  Result := True;
end;

end.
