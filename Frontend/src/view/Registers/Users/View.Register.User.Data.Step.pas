unit View.Register.User.Data.Step;

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
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Mask,
  Vcl.DBCtrls,
  Data.DB,
  Vcl.Imaging.pngimage,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Utils.Types;

type
  TFrmStepDataUser = class(TFrmBaseMasterStep)
    pnContainerStatus: TPanel;
    pnCkbStatus: TPanel;
    lbRememberMe: TLabel;
    iconCkb: TImage;
    pnContainerEmail: TPanel;
    pnInptEmail: TPanel;
    Shape1: TShape;
    edtEmail: TDBEdit;
    pnContainerUsername: TPanel;
    Panel4: TPanel;
    Shape2: TShape;
    edtUserName: TDBEdit;
    pnContainerPassword: TPanel;
    pnInptPassword: TPanel;
    Shape3: TShape;
    edtPassword: TDBEdit;
    pnContainerName: TPanel;
    pnInptFirstName: TPanel;
    shpFirstName: TShape;
    edtName: TDBEdit;
    pnContainerAccessGroup: TPanel;
    lbAccessGroup: TLabel;
    pnInptAccessGroup: TPanel;
    shpAccessGroup: TShape;
    edtAccessGroup: TEdit;
    iconEye: TImage;
    iconCkbOf: TImage;
    iconCkbOn: TImage;
    Panel1: TPanel;
    Label4: TLabel;
    lbAlertName: TLabel;
    Panel2: TPanel;
    Label5: TLabel;
    lbAlertUsername: TLabel;
    Panel7: TPanel;
    Label2: TLabel;
    lbAlertEmail: TLabel;
    Panel3: TPanel;
    Label1: TLabel;
    lbAlertPassword: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnStatusClick(Sender: TObject);
    procedure btnShowHidePasswordClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtNameChange(Sender: TObject);
    procedure edtUserNameChange(Sender: TObject);
    procedure edtEmailChange(Sender: TObject);
    procedure edtPasswordChange(Sender: TObject);
  private
    FCheckBoxIcon: Array [0 .. 1] of TPicture;
    FStatus: Boolean;
    FOnToggleViewPassword: TNotifyEvent;
    FBeforeShowMessage: TNotifyEvent;
    procedure HidePassword(Sender: TObject);
    procedure ShowPassword(Sender: TObject);
    procedure SetStatus(const Value: Boolean);
    procedure ToggleStatus(const Avalue: Boolean);
    procedure BindDataSetStatus;
    function GetOnToggleViewPassword: TNotifyEvent;
    procedure SetBeforeShowMessage(const Value: TNotifyEvent);
  public
    property Status: Boolean read FStatus write SetStatus;
    property BeforeShowMessage: TNotifyEvent read FBeforeShowMessage write SetBeforeShowMessage;
    property OnToggleViewPassword: TNotifyEvent read GetOnToggleViewPassword;
    function ValidateRules: Boolean; override;
    procedure AsDetails; override;
    procedure ReadOnlyMode; override;
  end;

implementation

{$R *.dfm}

procedure TFrmStepDataUser.AsDetails;
begin
  pnContainerPassword.Visible := False;
  edtUserName.ReadOnly := True;
end;

procedure TFrmStepDataUser.BindDataSetStatus;
begin
  try
    if Assigned(dtsMain.DataSet) then
      dtsMain.DataSet.FieldByName('status').Value := Status.ToInteger;
  except
    on E: Exception do
    begin
      Log(E, 'TFrmStepDataUser.SetStatus', Self.ClassInfo);
      raise Exception.Create('Erro ao configurar o status');
    end;
  end;
end;

procedure TFrmStepDataUser.btnShowHidePasswordClick(Sender: TObject);
begin
  inherited;
  OnToggleViewPassword(Sender);
end;

procedure TFrmStepDataUser.btnStatusClick(Sender: TObject);
begin
  inherited;
  Status := (not Status);
end;

procedure TFrmStepDataUser.edtEmailChange(Sender: TObject);
begin
  inherited;
  lbAlertEmail.Visible := False;
end;

procedure TFrmStepDataUser.edtNameChange(Sender: TObject);
begin
  inherited;
  lbAlertName.Visible := False;
end;

procedure TFrmStepDataUser.edtPasswordChange(Sender: TObject);
begin
  inherited;
  lbAlertPassword.Visible := False;
end;

procedure TFrmStepDataUser.edtUserNameChange(Sender: TObject);
begin
  inherited;
  lbAlertUsername.Visible := False;
end;

procedure TFrmStepDataUser.FormCreate(Sender: TObject);
begin
  inherited;
  FOnToggleViewPassword := ShowPassword;
  FCheckBoxIcon[0] := iconCkbOf.Picture;
  FCheckBoxIcon[1] := iconCkbOn.Picture;
end;

procedure TFrmStepDataUser.FormShow(Sender: TObject);
begin
  inherited;
  edtName.SetFocus;
  if Assigned(dtsMain.DataSet) and Assigned(dtsMain.DataSet.FindField('status'))
    and (not VarToStr(dtsMain.DataSet.FindField('status').Value).IsEmpty) then
    Status := Boolean(dtsMain.DataSet.FieldByName('status').Value)
  else
    Status := True;
end;

function TFrmStepDataUser.GetOnToggleViewPassword: TNotifyEvent;
begin
  Result := FOnToggleViewPassword;
end;

procedure TFrmStepDataUser.HidePassword(Sender: TObject);
begin
  FOnToggleViewPassword := ShowPassword;
  edtPassword.PasswordChar := '*';
end;

procedure TFrmStepDataUser.ReadOnlyMode;
begin
  edtEmail.ReadOnly := True;
  edtUserName.ReadOnly := True;
  edtPassword.ReadOnly := True;
  edtName.ReadOnly := True;
  iconCkb.OnClick := nil;
  lbRememberMe.OnClick := nil;
end;

procedure TFrmStepDataUser.SetBeforeShowMessage(const Value: TNotifyEvent);
begin
  FBeforeShowMessage := Value;
end;

procedure TFrmStepDataUser.SetStatus(const Value: Boolean);
begin
  FStatus := Value;
  ToggleStatus(Value);
  BindDataSetStatus;
end;

procedure TFrmStepDataUser.ShowPassword(Sender: TObject);
begin
  FOnToggleViewPassword := HidePassword;
  edtPassword.PasswordChar := Chr(0);
end;

procedure TFrmStepDataUser.ToggleStatus(const Avalue: Boolean);
begin
  iconCkb.Picture := FCheckBoxIcon[Avalue.ToInteger];
end;

function TFrmStepDataUser.ValidateRules: Boolean;

  procedure BoBeforeSetFocus;
  begin
    if Assigned(BeforeShowMessage) then
      BeforeShowMessage(nil);
  end;

begin
  // Checks that all rules are met
  if (edtName.EditText.Length < 3) then
  begin
    lbAlertName.Caption := 'O nome deve ter no mínimo 3 dígitos.';
    lbAlertName.Visible := True;
    BoBeforeSetFocus;
    edtName.SetFocus;
    Exit(False);
  end;

  if (edtUserName.EditText.Length < 3) then
  begin
    lbAlertUsername.Caption := 'O usuário deve ter no mínimo 3 dígitos.';
    lbAlertUsername.Visible := True;
    BoBeforeSetFocus;
    edtUserName.SetFocus;
    Exit(False);
  end;

  if not CheckEmail(edtEmail.EditText) then
  begin
    lbAlertEmail.Caption := 'O email informado é inválido.';
    lbAlertEmail.Visible := True;
    BoBeforeSetFocus;
    edtEmail.SetFocus;
    Exit(False);
  end;

  if (edtPassword.EditText.Length < 8) then
  begin
    lbAlertPassword.Caption := 'A senha deve ter no mínimo 8 dígitos.';
    lbAlertPassword.Visible := True;
    BoBeforeSetFocus;
    edtPassword.SetFocus;
    Exit(False);
  end;

  Result := True;
end;

end.
