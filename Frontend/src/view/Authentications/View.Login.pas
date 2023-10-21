unit View.Login;

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
  View.Base.Master,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Imaging.pngimage,
  Vcl.WinXCtrls,
  Vcl.WinXPanels,
  Service.Authentications.Login.Intf;

type
  TFrmLogin = class(TFrmBaseMaster)
    pnBackGround: TPanel;
    pnLoginGroup: TPanel;
    pnContentLogin: TPanel;
    pnMain: TPanel;
    pnHeader: TPanel;
    pnTitulo: TPanel;
    pnDescricao: TPanel;
    Panel4: TPanel;
    pnGpInput: TPanel;
    inptEmail: TPanel;
    pnUser: TPanel;
    lbUser: TLabel;
    pnInptUser: TPanel;
    Shape1: TShape;
    edtUser: TEdit;
    inptSenha: TPanel;
    pnSenha: TPanel;
    lbSenha: TLabel;
    pnInptSenha: TPanel;
    Shape4: TShape;
    iconEye: TImage;
    edtSenha: TEdit;
    inptTermos: TPanel;
    Panel6: TPanel;
    lbRememberMe: TLabel;
    iconKeepConn: TImage;
    lbForgotPassword: TLabel;
    pnCtrlContinue: TPanel;
    pnBtnContinual: TPanel;
    Shape5: TShape;
    lbNameForm: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    panel13: TPanel;
    iconKeepConnOf: TImage;
    iconKeepConnOn: TImage;
    Panel10: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure lbNameFormClick(Sender: TObject);
    procedure iconEyeClick(Sender: TObject);
    procedure lbRememberMeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FService: IService_Login;
    FKeepConnected: Boolean;
    FKeepConnectedIcon: Array [0 .. 1] of TPicture;
    FOnToggleViewPassword: TNotifyEvent;
    function GetOnToggleViewPassword: TNotifyEvent;

    procedure CheckKeepConnected;
    procedure DoLogin(const AUser, APassword: string);
    procedure HidePassword(Sender: TObject);
    procedure ToggleKeepConnected(const AStatus: Boolean);
    procedure SetKeepConnected(const Avalue: Boolean);
    procedure ShowPassword(Sender: TObject);
    procedure UpdateLastLoggedInUser;
  protected
    property KeepConnected: Boolean             read FKeepConnected write SetKeepConnected;
    property OnToggleViewPassword: TNotifyEvent read GetOnToggleViewPassword;
    property Service: IService_Login            read FService;
  end;

implementation

uses
  Config.URL,
  Win.Registry,
  Service.Authentications.Login;

{$R *.dfm}

procedure TFrmLogin.DoLogin(const AUser, APassword: string);
begin
  Service.Login(AUser, APassword);
  UpdateLastLoggedInUser;
  Close;
  ModalResult := mrOk;
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
  FOnToggleViewPassword := ShowPassword;
  FKeepConnectedIcon[0] := iconKeepConnOf.Picture;
  FKeepConnectedIcon[1] := iconKeepConnOn.Picture;
  FService := TService_Login.New;
  KeepConnected := True;
  CheckKeepConnected;
end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin
  inherited;
  if (not String(edtUser.Text).IsEmpty) then
    edtSenha.SetFocus;
end;

function TFrmLogin.GetOnToggleViewPassword: TNotifyEvent;
begin
  Result := FOnToggleViewPassword;
end;

procedure TFrmLogin.HidePassword(Sender: TObject);
begin
  FOnToggleViewPassword := ShowPassword;
  edtSenha.PasswordChar := '*';
end;

procedure TFrmLogin.iconEyeClick(Sender: TObject);
begin
  inherited;
  OnToggleViewPassword(Sender);
end;

procedure TFrmLogin.lbNameFormClick(Sender: TObject);
begin
  inherited;
  DoLogin(edtUser.Text, edtSenha.Text);
end;

procedure TFrmLogin.lbRememberMeClick(Sender: TObject);
begin
  inherited;
  KeepConnected := (not KeepConnected);
end;

procedure TFrmLogin.SetKeepConnected(const Avalue: Boolean);
begin
  FKeepConnected := Avalue;
  ToggleKeepConnected(Avalue);
end;

procedure TFrmLogin.ShowPassword(Sender: TObject);
begin
  FOnToggleViewPassword := HidePassword;
  edtSenha.PasswordChar := Chr(0);
end;

procedure TFrmLogin.ToggleKeepConnected(const AStatus: Boolean);
begin
  iconKeepConn.Picture := FKeepConnectedIcon[AStatus.ToInteger];
end;

procedure TFrmLogin.CheckKeepConnected;
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKeyReadOnly(APP_REGEDIT_NAME) then
    begin
      edtUser.Text := Reg.ReadString('LastUser');
      KeepConnected := Reg.ReadBool('KeepConnected');
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
end;

procedure TFrmLogin.UpdateLastLoggedInUser;
var
  Reg: TRegistry;
  LUser: string;
begin
  Reg := TRegistry.Create;
  try
    LUser := edtUser.Text;
    if (not KeepConnected) then
      LUser := '';

    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(APP_REGEDIT_NAME, True) then
    begin
      Reg.WriteString('LastUser', LUser);
      Reg.WriteBool('KeepConnected', KeepConnected);
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
end;

end.
