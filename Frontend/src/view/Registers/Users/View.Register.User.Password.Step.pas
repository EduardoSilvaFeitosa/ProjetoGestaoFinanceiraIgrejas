unit View.Register.User.Password.Step;

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
  Vcl.Imaging.pngimage;

type
  TFrmStepPasswordUser = class(TFrmBaseMasterStep)
    pnContainerPassword: TPanel;
    pnInptPassword: TPanel;
    Shape3: TShape;
    iconEye: TImage;
    edtPassword: TEdit;
    pnContainerPassword2: TPanel;
    pnInptPassword2: TPanel;
    shpRepeatPassword: TShape;
    iconRepeatPassword: TImage;
    edtRepeatePassword: TEdit;
    Panel3: TPanel;
    Label1: TLabel;
    lbAlertPassword: TLabel;
    Panel1: TPanel;
    lbRepeatePassword: TLabel;
    Label3: TLabel;
    procedure ToggleViewPasswordClick(Sender: TObject);
    procedure ToggleViewRepeatePasswordClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtPasswordExit(Sender: TObject);
    procedure edtPasswordChange(Sender: TObject);
    procedure edtRepeatePasswordChange(Sender: TObject);
  private
    FOnToggleViewPassword: TNotifyEvent;
    FOnToggleViewResetPassword: TNotifyEvent;
    FBeforeShowMessage: TNotifyEvent;
    procedure HidePassword(Sender: TObject);
    procedure ShowPassword(Sender: TObject);
    procedure HideRepeatPassword(Sender: TObject);
    procedure ShowRepeatPassword(Sender: TObject);
    function GetOnToggleViewPassword: TNotifyEvent;
    function GetOnToggleViewResetPassword: TNotifyEvent;
    procedure UpdatePassword;
    procedure SetBeforeShowMessage(const Value: TNotifyEvent);
  public
    function ValidateRules: Boolean; override;
    property BeforeShowMessage: TNotifyEvent read FBeforeShowMessage
      write SetBeforeShowMessage;
    property OnToggleViewPassword: TNotifyEvent read GetOnToggleViewPassword;
    property OnToggleViewResetPassword: TNotifyEvent
      read GetOnToggleViewResetPassword;
  end;

var
  FrmStepPasswordUser: TFrmStepPasswordUser;

implementation

{$R *.dfm}
{ TFrmBaseMasterStep1 }

procedure TFrmStepPasswordUser.edtPasswordChange(Sender: TObject);
begin
  inherited;
  lbAlertPassword.Visible := False;
end;

procedure TFrmStepPasswordUser.edtPasswordExit(Sender: TObject);
begin
  inherited;
  lbAlertPassword.Visible := False;
  // A senha deve ter no mínimo 8 dígitos
  if ((not string(edtPassword.Text).IsEmpty) and
    (string(edtPassword.Text).Length < 8)) then
  begin
    lbAlertPassword.Caption := 'A senha deve ter no mínimo 8 dígitos.';
    lbAlertPassword.Visible := True;
  end;
end;

procedure TFrmStepPasswordUser.edtRepeatePasswordChange(Sender: TObject);
begin
  inherited;
  Label3.Visible := False;
end;

procedure TFrmStepPasswordUser.FormCreate(Sender: TObject);
begin
  inherited;
  FOnToggleViewPassword := ShowPassword;
  FOnToggleViewResetPassword := ShowRepeatPassword;
end;

function TFrmStepPasswordUser.GetOnToggleViewPassword: TNotifyEvent;
begin
  Result := FOnToggleViewPassword;
end;

function TFrmStepPasswordUser.GetOnToggleViewResetPassword: TNotifyEvent;
begin
  Result := FOnToggleViewResetPassword;
end;

procedure TFrmStepPasswordUser.HidePassword(Sender: TObject);
begin
  FOnToggleViewPassword := ShowPassword;
  edtPassword.PasswordChar := '*';
end;

procedure TFrmStepPasswordUser.HideRepeatPassword(Sender: TObject);
begin
  FOnToggleViewResetPassword := ShowRepeatPassword;
  edtRepeatePassword.PasswordChar := '*';
end;

procedure TFrmStepPasswordUser.SetBeforeShowMessage(const Value: TNotifyEvent);
begin
  FBeforeShowMessage := Value;
end;

procedure TFrmStepPasswordUser.ShowPassword(Sender: TObject);
begin
  FOnToggleViewPassword := HidePassword;
  edtPassword.PasswordChar := Chr(0);
end;

procedure TFrmStepPasswordUser.ShowRepeatPassword(Sender: TObject);
begin
  FOnToggleViewResetPassword := HideRepeatPassword;
  edtRepeatePassword.PasswordChar := Chr(0);
end;

procedure TFrmStepPasswordUser.ToggleViewPasswordClick(Sender: TObject);
begin
  inherited;
  FOnToggleViewPassword(Sender);
end;

procedure TFrmStepPasswordUser.ToggleViewRepeatePasswordClick(Sender: TObject);
begin
  inherited;
  FOnToggleViewResetPassword(Sender);
end;

procedure TFrmStepPasswordUser.UpdatePassword;
begin
  if (string(edtPassword.Text).IsEmpty) then
    Exit;

  if (not string(edtRepeatePassword.Text).Equals(string(edtPassword.Text))) then
    Exit;

  try
    if Assigned(dtsMain.DataSet) then
      dtsMain.DataSet.FieldByName('password').Value := edtPassword.Text;
  except
    on E: Exception do
      raise Exception.Create('Erro ao atualizar senha');
  end;
end;

function TFrmStepPasswordUser.ValidateRules: Boolean;
begin
  if ((not string(edtPassword.Text).IsEmpty) and
    (string(edtPassword.Text).Length < 8)) then
  begin
    lbAlertPassword.Caption := 'A senha deve ter no mínimo 8 dígitos.';
    lbAlertPassword.Visible := True;
    if Assigned(BeforeShowMessage) then
      BeforeShowMessage(nil);
    edtPassword.SetFocus;
    Exit(False);
  end;

  if (not string(edtPassword.Text).IsEmpty) and (string(edtRepeatePassword.Text).IsEmpty) then
  begin
    Label3.Caption := 'Campo obrigatório';
    Label3.Visible := True;
    if Assigned(BeforeShowMessage) then
      BeforeShowMessage(nil);
    edtRepeatePassword.SetFocus;
    Exit(False);
  end;


  if (not string(edtRepeatePassword.Text).Equals(string(edtPassword.Text))) then
  begin
    Label3.Caption := 'As senhas não coincidem';
    Label3.Visible := True;
    if Assigned(BeforeShowMessage) then
      BeforeShowMessage(nil);
    edtRepeatePassword.SetFocus;
    Exit(False);
  end;

  UpdatePassword;
  Result := True;
end;

end.
