unit View.Main;

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
  View.Base,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.WinXCtrls,
  System.Actions,
  Vcl.ActnList,
  Utils.Types,
  Vcl.Imaging.pngimage,
  Factory.Interfaces,
  Factory.Interfaces.Intf;

type
  TFrmMain = class(TFrmBase)
    ActionList1: TActionList;
    btnToggleMenu: TAction;
    pnMouseEnter: TAction;
    pnMouseLeave: TAction;
    btnDashboard: TAction;
    btnAgendamentos: TAction;
    btnCampanhas: TAction;
    btnMembros: TAction;
    btnMovimentacao: TAction;
    btnUsuarios: TAction;
    btnRelatorios: TAction;
    pnBackgroundMain: TPanel;
    pnHeaderMain: TPanel;
    shpHeaderMain: TShape;
    pnFormIdentification: TPanel;
    Label2: TLabel;
    pnNotifications: TPanel;
    pnContIconNotificationMain: TPanel;
    pnIconNotificationMain: TPanel;
    iconNotification: TImage;
    pnUserInfo: TPanel;
    pnIconUserHeaderMain: TPanel;
    Image2: TImage;
    pnUserName: TPanel;
    lbUserName: TLabel;
    npIconSetaDown: TPanel;
    Image3: TImage;
    pnContent: TPanel;
    spvDetalhes: TSplitView;
    pnDetalhes: TPanel;
    pnContentCrud: TPanel;
    spvMenu: TSplitView;
    shpIndClicado: TShape;
    Panel2: TPanel;
    Image4: TImage;
    Shape1: TShape;
    pnBkgdBotoes: TPanel;
    pnBtnDashboard: TPanel;
    Image5: TImage;
    Label3: TLabel;
    pnBtnAgendamento: TPanel;
    Image6: TImage;
    Label4: TLabel;
    pnBtnCampanhas: TPanel;
    Image7: TImage;
    Label5: TLabel;
    pnBtnMembros: TPanel;
    Image8: TImage;
    Label6: TLabel;
    pnBtnMovimentacao: TPanel;
    Image9: TImage;
    Label7: TLabel;
    pnBtnUsuarios: TPanel;
    Image10: TImage;
    Label8: TLabel;
    pnBtnRelatorios: TPanel;
    Image11: TImage;
    Label9: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnDashboardExecute(Sender: TObject);
    procedure btnAgendamentosExecute(Sender: TObject);
    procedure btnCampanhasExecute(Sender: TObject);
    procedure btnMembrosExecute(Sender: TObject);
    procedure btnMovimentacaoExecute(Sender: TObject);
    procedure btnUsuariosExecute(Sender: TObject);
    procedure btnRelatoriosExecute(Sender: TObject);
    procedure pnMouseEnterExecute(Sender: TObject);
    procedure pnMouseLeaveExecute(Sender: TObject);
    procedure btnToggleMenuExecute(Sender: TObject);
  private
    FFactory: IFactory_Interfaces;
    FActiveMaster, FFundo: TForm;
    procedure DoLogin;
    procedure SetActiveTab(Sender: TObject);
    procedure DoOnEndShowDetails;
    procedure DoBeforeShowDetails;
    function ShowForm(const AFormClass: TComponentClass; var AForm;
      const AParent: TWinControl): TForm;
  protected
    procedure ShowDetails(const AFormClass: TComponentClass; var AForm;
      Callback: TEventIntercept);
    procedure ShowMaster(const AFormClass: TComponentClass; var AForm;
      Callback: TEventIntercept);
    procedure ShowWorkflow(const AFormClass: TComponentClass; var AForm;
      Callback: TEventIntercept);
  public
    property Factory: IFactory_Interfaces read FFactory;
  end;

var
  FrmMain: TFrmMain;

implementation

uses
  View.Base.Fundo, View.Login;

{$R *.dfm}
{ TFrmMain }

procedure TFrmMain.btnAgendamentosExecute(Sender: TObject);
begin
  inherited;
  SetActiveTab(Sender);
//  Factory.Schedules;
  Factory.Churchs;
end;

procedure TFrmMain.btnCampanhasExecute(Sender: TObject);
begin
  inherited;
  SetActiveTab(Sender);
  Factory.Campaigns;
end;

procedure TFrmMain.btnDashboardExecute(Sender: TObject);
begin
  inherited;
  SetActiveTab(Sender);
  Factory.Dashboard;
end;

procedure TFrmMain.btnMembrosExecute(Sender: TObject);
begin
  inherited;
  SetActiveTab(Sender);
  Factory.Members;
end;

procedure TFrmMain.btnMovimentacaoExecute(Sender: TObject);
begin
  inherited;
  SetActiveTab(Sender);
  Factory.Transactions;
end;

procedure TFrmMain.btnRelatoriosExecute(Sender: TObject);
begin
  inherited;
  SetActiveTab(Sender);
  Factory.Reports;
end;

procedure TFrmMain.btnToggleMenuExecute(Sender: TObject);
begin
  inherited;
  if spvMenu.Opened then
    spvMenu.Close
  else
    spvMenu.Open;
end;

procedure TFrmMain.btnUsuariosExecute(Sender: TObject);
begin
  inherited;
  SetActiveTab(Sender);
  Factory.Users;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  inherited;
  DoLogin;
  FFactory := TFactory_Interfaces.New;
  FFactory.OnShowMaster := ShowMaster;
  FFactory.OnShowDetails := ShowDetails;
  FFactory.OnShowWorkflow := ShowWorkflow;
  FFactory.OnEndShowDetails := DoOnEndShowDetails;
end;

procedure TFrmMain.DoBeforeShowDetails;
var
  LForm: TFrmFundo;
begin
  if Assigned(FFundo) then
    FFundo.Close;

  spvMenu.Opened := False;
  pnBkgdBotoes.Enabled := False;
  pnBkgdBotoes.Cursor := crNo;

  FFundo := ShowForm(TFrmFundo, LForm, pnContent);
end;

procedure TFrmMain.DoLogin;
var
  LForm: TFrmLogin;
begin
  LForm := TFrmLogin.Create(Self);
  try
    if (LForm.ShowModal <> mrOk) then
      Application.Terminate;

    lbUserName.Caption := LForm.edtUser.Text;
  finally
    LForm.Free;
  end;
end;

procedure TFrmMain.DoOnEndShowDetails;
begin
  pnBkgdBotoes.Enabled := True;
  pnBkgdBotoes.Cursor := crDefault;
  pnContentCrud.Visible := False;

  if Assigned(FFundo) then
    FFundo.Close;

  spvDetalhes.Opened := False;
end;

procedure TFrmMain.pnMouseEnterExecute(Sender: TObject);
begin
  inherited;
  ActivePanelHover(Sender);
end;

procedure TFrmMain.pnMouseLeaveExecute(Sender: TObject);
begin
  inherited;
  ResetPanelHover(Sender);
end;

procedure TFrmMain.SetActiveTab(Sender: TObject);

  function GetTop(const AStart: Integer = 78): Integer;
  begin
    if (Sender is TPanel) then
      Exit(AStart + TPanel(Sender).Top);

    if (Sender is TLabel) then
      Exit(AStart + TPanel(TLabel(Sender).Parent).Top);

    if (Sender is TImage) then
      Exit(AStart + TPanel(TImage(Sender).Parent).Top);

    Result := AStart;
  end;

begin
  shpIndClicado.Top := GetTop;
end;

{$REGION 'Show Forms'}

procedure TFrmMain.ShowDetails(const AFormClass: TComponentClass; var AForm;
  Callback: TEventIntercept);
begin
  spvDetalhes.BringToFront;
  Application.CreateForm(AFormClass, AForm);

  TForm(AForm).Parent := pnDetalhes;
  TForm(AForm).Align := alClient;
  TForm(AForm).WindowState := TWindowState.wsMaximized;

  if Assigned(Callback) then
    Callback(AForm);

  spvDetalhes.Opened := True;
  TForm(AForm).Show;
  DoBeforeShowDetails;
end;

procedure TFrmMain.ShowMaster(const AFormClass: TComponentClass; var AForm;
  Callback: TEventIntercept);
begin
  if Assigned(FActiveMaster) then
    FActiveMaster.Close;

  Application.CreateForm(AFormClass, AForm);

  TForm(AForm).Parent := pnContent;
  TForm(AForm).Align := alClient;
  TForm(AForm).WindowState := TWindowState.wsMaximized;

  if Assigned(Callback) then
    Callback(AForm);

  TForm(AForm).Show;
end;

procedure TFrmMain.ShowWorkflow(const AFormClass: TComponentClass; var AForm;
  Callback: TEventIntercept);
begin
  DoBeforeShowDetails;
  Application.CreateForm(AFormClass, AForm);
  pnContentCrud.Width := TForm(AForm).Width;
  pnContentCrud.Height := TForm(AForm).Height;

  TForm(AForm).Parent := pnContentCrud;
  TForm(AForm).Align := alClient;
  TForm(AForm).WindowState := TWindowState.wsMaximized;

  pnContentCrud.Top := pnContent.Top +
    Trunc((pnContent.Height - TForm(AForm).Height) / 2);

  pnContentCrud.Left := spvMenu.Width +
    Trunc((pnContent.Width - TForm(AForm).Width) / 2);

  if Assigned(Callback) then
    Callback(AForm);

  TForm(AForm).Show;

  pnContentCrud.Visible := True;
end;

function TFrmMain.ShowForm(const AFormClass: TComponentClass; var AForm;
  const AParent: TWinControl): TForm;
begin
  Application.CreateForm(AFormClass, AForm);

  TForm(AForm).Parent := AParent;
  TForm(AForm).Align := alClient;
  TForm(AForm).WindowState := TWindowState.wsMaximized;
  TForm(AForm).Show;

  Result := TForm(AForm);
end;
{$ENDREGION}

end.
