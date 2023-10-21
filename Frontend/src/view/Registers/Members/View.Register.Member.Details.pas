unit View.Register.Member.Details;

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
  View.Base.Master.Details,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  Vcl.WinXPanels,
  Components.Button,
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  View.Base.Master.Step,
  Service.Entity.Details.Intf;

type
  TFrmRegMemberDetails = class(TTFrmBaseMasterDetails)
    mtMain: TFDMemTable;
    pnBackground: TPanel;
    pnLeftContent: TPanel;
    pnContainerCtrlOptions: TPanel;
    pnCtrlOptions: TPanel;
    shpPointerActivePage: TShape;
    btnAccountsDetails: TPanel;
    lbBtnAccountsDetails: TLabel;
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
    btnConfirm: TFrmButton;
    pnIconBottom: TPanel;
    IconBottom: TImage;
    pnContent: TPanel;
    cpMain: TCardPanel;
    crdAccountDetail: TCard;
    pnEmbedContent: TPanel;
    mtMainid: TLargeintField;
    mtMainnome: TWideStringField;
    mtMainemail: TWideStringField;
    mtMaintelefone: TWideStringField;
    mtMaincargo: TWideStringField;
    mtMaincreationDate: TSQLTimeStampField;
    mtMainstatus: TSmallintField;
    mtMaindtingresso: TDateField;
    mtMainlastUpdate: TSQLTimeStampField;
    procedure btnRecordClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure mtMainlastUpdateChange(Sender: TField);
  private
    procedure SetActiveTab(Sender: TObject);
  protected
    function ShowForm(const AFormClass: TComponentClass; var AForm)
      : TFrmBaseMasterStep;
    procedure ShowRegistrationData;
  public
    procedure DoAfterSetService; override;
    procedure ReadOnlyMode; override;
  end;

implementation

uses
  System.DateUtils,
  View.Register.Member.Data.Step;

{$R *.dfm}
{ TFrmRegMemberDetails }

procedure TFrmRegMemberDetails.btnRecordClick(Sender: TObject);
begin
  inherited;
  SetActiveTab(Sender);
end;

procedure TFrmRegMemberDetails.btnSaveClick(Sender: TObject);
begin
  inherited;
  pnBtnBottomContainer.SetFocus;
  Service.Save;
end;

procedure TFrmRegMemberDetails.DoAfterSetService;
begin
  Service.QueryRegister(mtMain);
end;

procedure TFrmRegMemberDetails.FormCreate(Sender: TObject);
begin
  inherited;
  ShowRegistrationData;
end;

procedure TFrmRegMemberDetails.mtMainlastUpdateChange(Sender: TField);
var
  LDate: TDateTime;
begin
  inherited;
  LDate := mtMainlastUpdate.AsDateTime;
  if (LDate < 10) then
    LDate := mtMaincreationDate.AsDateTime;
  lbLastUpdate.Caption := GetLastUpdateFormat(LDate);
end;

procedure TFrmRegMemberDetails.ReadOnlyMode;
begin
  inherited;
  pnBtnBottomContainer.Visible := False;
end;

procedure TFrmRegMemberDetails.SetActiveTab(Sender: TObject);
begin
  shpPointerActivePage.Top := GetTopActiveTab(Sender);
end;

procedure TFrmRegMemberDetails.ShowRegistrationData;
var
  LForm: TFrmStepDataMember;
begin
  FActiveStep := ShowForm(TFrmStepDataMember, LForm);
  LForm.AsDetails;
end;

function TFrmRegMemberDetails.ShowForm(const AFormClass: TComponentClass;
  var AForm): TFrmBaseMasterStep;
begin
  CreateForm(AFormClass, AForm, pnEmbedContent);
  TFrmBaseMasterStep(AForm).dtsMain.DataSet := mtMain;
  TForm(AForm).Show;
  Result := TFrmBaseMasterStep(AForm);
end;

end.
