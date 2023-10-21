unit View.Register.Member.Data.Step;

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
  Vcl.Imaging.pngimage,
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
  TFrmStepDataMember = class(TFrmBaseMasterStep)
    pnContainerName: TPanel;
    Panel3: TPanel;
    Shape1: TShape;
    edtName: TDBEdit;
    Panel4: TPanel;
    Label2: TLabel;
    lbAlertName: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    Shape2: TShape;
    edtEmail: TDBEdit;
    Panel7: TPanel;
    Label4: TLabel;
    lbAlertEmail: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    Shape3: TShape;
    edtCellPhone: TDBEdit;
    Panel10: TPanel;
    Label6: TLabel;
    lbAlertCellPhone: TLabel;
    Panel11: TPanel;
    Panel12: TPanel;
    Shape4: TShape;
    edtJobName: TDBEdit;
    Panel13: TPanel;
    Label8: TLabel;
    lbAlertJobName: TLabel;
    Panel1: TPanel;
    Panel14: TPanel;
    Shape5: TShape;
    Panel15: TPanel;
    Label1: TLabel;
    lbAlertEntryDate: TLabel;
    edtEntryDate: TDateTimePicker;
    pnContainerStatus: TPanel;
    pnCkbStatus: TPanel;
    lbStatusMember: TLabel;
    iconCkb: TImage;
    iconCkbOf: TImage;
    iconCkbOn: TImage;
    procedure edtNameChange(Sender: TObject);
    procedure edtEmailChange(Sender: TObject);
    procedure edtCellPhoneChange(Sender: TObject);
    procedure edtJobNameChange(Sender: TObject);
    procedure edtEntryDateChange(Sender: TObject);
    procedure btnStatusClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FStatus: boolean;
    FCheckBoxIcon: Array [0 .. 1] of TPicture;
    procedure SetStatus(const Value: boolean);
    procedure ToggleStatus(const Avalue: boolean);
    procedure BindDataSetStatus;
  protected
    property Status: boolean read FStatus write SetStatus;
  public
    function ValidateRules: boolean; override;
    procedure AsDetails; override;
  end;

implementation

{$R *.dfm}
{ TFrmStepDataMember }

procedure TFrmStepDataMember.AsDetails;
begin

end;

procedure TFrmStepDataMember.BindDataSetStatus;
begin
  TrySetValue('status', Status.ToInteger, 'status');
end;

procedure TFrmStepDataMember.edtJobNameChange(Sender: TObject);
begin
  inherited;
  lbAlertJobName.Visible := False;
end;

procedure TFrmStepDataMember.btnStatusClick(Sender: TObject);
begin
  inherited;
  Status := (not Status);
end;

procedure TFrmStepDataMember.edtCellPhoneChange(Sender: TObject);
begin
  inherited;
  lbAlertCellPhone.Visible := False;
end;

procedure TFrmStepDataMember.edtEmailChange(Sender: TObject);
begin
  inherited;
  lbAlertEmail.Visible := False;
end;

procedure TFrmStepDataMember.edtEntryDateChange(Sender: TObject);
begin
  inherited;
  TrySetValue('dtingresso', edtEntryDate.DateTime, 'data de ingresso');
end;

procedure TFrmStepDataMember.edtNameChange(Sender: TObject);
begin
  inherited;
  lbAlertName.Visible := False;
end;

procedure TFrmStepDataMember.FormCreate(Sender: TObject);
begin
  inherited;
  FCheckBoxIcon[0] := iconCkbOf.Picture;
  FCheckBoxIcon[1] := iconCkbOn.Picture;
end;

procedure TFrmStepDataMember.FormShow(Sender: TObject);
begin
  inherited;
  edtName.SetFocus;
  TrySetValue('cargo', 'Membro', 'cargo');
  if Assigned(dtsMain.DataSet) and Assigned(dtsMain.DataSet.FindField('status'))
    and (not VarToStr(dtsMain.DataSet.FindField('status').Value).IsEmpty) then
    Status := boolean(dtsMain.DataSet.FieldByName('status').Value)
  else
    Status := True;
end;

procedure TFrmStepDataMember.SetStatus(const Value: boolean);
begin
  FStatus := Value;
  ToggleStatus(Value);
  BindDataSetStatus;
end;

procedure TFrmStepDataMember.ToggleStatus(const Avalue: boolean);
begin
  iconCkb.Picture := FCheckBoxIcon[Avalue.ToInteger];
end;

function TFrmStepDataMember.ValidateRules: boolean;
begin
  if (edtName.EditText.Length < 3) then
  begin
    lbAlertName.Caption := 'O nome deve ter no mínimo 3 dígitos.';
    lbAlertName.Visible := True;
    edtName.SetFocus;
    Exit(False);
  end;

  if (not edtEmail.EditText.IsEmpty) and (not CheckEmail(edtEmail.EditText))
  then
  begin
    lbAlertEmail.Caption := 'O email informado é inválido.';
    lbAlertEmail.Visible := True;
    edtEmail.SetFocus;
    Exit(False);
  end;

  if (not edtCellPhone.EditText.IsEmpty) and
    (not CheckCellPhone(edtCellPhone.EditText)) then
  begin
    lbAlertCellPhone.Caption := 'O telefone informado é inválido.';
    lbAlertCellPhone.Visible := True;
    edtCellPhone.SetFocus;
    Exit(False);
  end;

  if (not edtJobName.EditText.IsEmpty) and
    (not(edtJobName.EditText.Trim.Length > 3)) then
  begin
    lbAlertJobName.Caption := 'O cargo deve ter no mínimo 3 dígitos.';
    lbAlertJobName.Visible := True;
    edtJobName.SetFocus;
    Exit(False);
  end;

  Result := True;
end;

end.
