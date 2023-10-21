unit View.Register.User.Details;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  View.Base.Master.Details,
  Vcl.StdCtrls,
  Vcl.WinXPanels,
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Service.Entity.Details.Intf,
  Vcl.DBCtrls,
  Components.Button,
  View.Base.Master.Step, View.Register.User.Password.Step;

type
  TFrmRegUserDetails = class(TTFrmBaseMasterDetails)
    pnBackground: TPanel;
    pnLeftContent: TPanel;
    pnContainerCtrlOptions: TPanel;
    pnCtrlOptions: TPanel;
    shpPointerActivePage: TShape;
    btnAccountsDetails: TPanel;
    lbBtnAccountsDetails: TLabel;
    btnPassordAuth: TPanel;
    lbBtnPassordAuth: TLabel;
    pnCtrlOptionsBottom: TPanel;
    lbLastUpdate: TLabel;
    pnContainerImgUser: TPanel;
    ImgUser: TImage;
    pnCtrlUserImg: TPanel;
    IconCamera: TImage;
    pnRightContent: TPanel;
    pnHeader: TPanel;
    pnHeaderContainer: TPanel;
    IconClose: TImage;
    lbTitle: TLabel;
    pnControls: TPanel;
    pnBtnBottomContainer: TPanel;
    pnIconBottom: TPanel;
    IconBottom: TImage;
    pnContent: TPanel;
    cpMain: TCardPanel;
    crdAccountDetail: TCard;
    pnEmbedContent: TPanel;
    mtMain: TFDMemTable;
    mtMainid: TLargeintField;
    mtMainname: TWideStringField;
    mtMainemail: TWideStringField;
    mtMainusername: TWideStringField;
    mtMainpassword: TWideStringField;
    mtMainidacesso: TLargeintField;
    mtMainstatus: TSmallintField;
    mtMaincreation_date: TSQLTimeStampField;
    mtMainlast_update: TSQLTimeStampField;
    btnConfirm: TFrmButton;
    crdAuthPass: TCard;
    pnEmbedPassAuth: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure mtMainlast_updateChange(Sender: TField);
    procedure btnAccontDetailsClick(Sender: TObject);
    procedure btnPasswordAuthenticationClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    LFormAuth: TFrmStepPasswordUser;
    procedure SetActiveTab(Sender: TObject);
  protected
    function ShowForm(const AFormClass: TComponentClass; var AForm;
      const AParent: TWinControl): TFrmBaseMasterStep;
    procedure ShowAccountDetails;
  public
    procedure DoAfterSetService; override;
    procedure ReadOnlyMode; override;
  end;

implementation

uses
  System.SysUtils,
  System.DateUtils,
  View.Register.User.Data.Step;

{$R *.dfm}
{ TTFrmRegUserDetails }

procedure TFrmRegUserDetails.btnAccontDetailsClick(Sender: TObject);
begin
  inherited;
  SetActiveTab(btnAccountsDetails);
  crdAccountDetail.Show;
  lbTitle.Caption := lbBtnAccountsDetails.Caption;
end;

procedure TFrmRegUserDetails.btnPasswordAuthenticationClick(Sender: TObject);
begin
  inherited;
  SetActiveTab(btnPassordAuth);
  crdAuthPass.Show;
  lbTitle.Caption := lbBtnPassordAuth.Caption;
end;

procedure TFrmRegUserDetails.btnSaveClick(Sender: TObject);
begin
  inherited;
  if (LFormAuth.ValidateRules and FActiveStep.ValidateRules) then
  begin
    pnBtnBottomContainer.SetFocus;
    Service.Save;
  end;
end;

procedure TFrmRegUserDetails.DoAfterSetService;
begin
  Service.QueryRegister(mtMain);
end;

procedure TFrmRegUserDetails.FormCreate(Sender: TObject);
begin
  inherited;
  ShowAccountDetails;
end;

procedure TFrmRegUserDetails.FormShow(Sender: TObject);
begin
  inherited;
  btnConfirm.txtBtn.Caption := 'Salvar';
  btnConfirm.txtBtn.OnClick := btnSaveClick;
end;

procedure TFrmRegUserDetails.mtMainlast_updateChange(Sender: TField);
var
  LDate: TDateTime;
begin
  inherited;
  LDate := mtMainlast_update.AsDateTime;
  if (LDate < 10) then
    LDate := mtMaincreation_date.AsDateTime;
  lbLastUpdate.Caption := GetLastUpdateFormat(LDate);
end;

procedure TFrmRegUserDetails.ReadOnlyMode;
begin
  inherited;
  btnPassordAuth.Visible := False;
  pnBtnBottomContainer.Visible := False;
end;

procedure TFrmRegUserDetails.SetActiveTab(Sender: TObject);
begin
  shpPointerActivePage.Top := GetTopActiveTab(Sender);
end;

procedure TFrmRegUserDetails.ShowAccountDetails;
var
  LForm: TFrmStepDataUser;
begin
  FActiveStep := ShowForm(TFrmStepDataUser, LForm, pnEmbedContent);
  LForm.BeforeShowMessage := btnAccontDetailsClick;
  LForm.AsDetails;

  ShowForm(TFrmStepPasswordUser, LFormAuth, pnEmbedPassAuth);
  LFormAuth.BeforeShowMessage := btnPasswordAuthenticationClick;
  LFormAuth.AsDetails;
end;

function TFrmRegUserDetails.ShowForm(const AFormClass: TComponentClass;
  var AForm; const AParent: TWinControl): TFrmBaseMasterStep;
begin
  CreateForm(AFormClass, AForm, AParent);
  TFrmBaseMasterStep(AForm).dtsMain.DataSet := mtMain;
  TForm(AForm).Show;
  Result := TFrmBaseMasterStep(AForm);
end;

end.
