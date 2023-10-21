unit View.Register.Campaign.Details;

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
  View.Base.Master.Step;

type
  TFrmRegCampaignDetails = class(TTFrmBaseMasterDetails)
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
    ImgCampaign: TImage;
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
    mtMaindescricao: TWideStringField;
    mtMaindtinicio: TDateField;
    mtMaindtfinal: TDateField;
    mtMainvlralvo: TFMTBCDField;
    mtMaincreationDate: TSQLTimeStampField;
    mtMainlastUpdate: TSQLTimeStampField;
    mtMainstatus: TSmallintField;
    mtMainobservacao: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure mtMainlastUpdateChange(Sender: TField);
    procedure btnRegistrationDataClick(Sender: TObject);
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
  View.Register.Campaign.Data.Step;

{$R *.dfm}
{ TFrmRegCampaignDetails }

procedure TFrmRegCampaignDetails.btnSaveClick(Sender: TObject);
begin
  inherited;
  pnBtnBottomContainer.SetFocus;
  Service.Save;
end;

procedure TFrmRegCampaignDetails.DoAfterSetService;
begin
  Service.QueryRegister(mtMain);
end;

procedure TFrmRegCampaignDetails.FormCreate(Sender: TObject);
begin
  inherited;
  ShowRegistrationData;
end;

procedure TFrmRegCampaignDetails.btnRegistrationDataClick(Sender: TObject);
begin
  inherited;
  SetActiveTab(Sender);
end;

procedure TFrmRegCampaignDetails.mtMainlastUpdateChange(Sender: TField);
var
  LDate: TDateTime;
begin
  inherited;
  LDate := mtMainlastUpdate.AsDateTime;
  if (LDate < 10) then
    LDate := mtMaincreationDate.AsDateTime;
  lbLastUpdate.Caption := GetLastUpdateFormat(LDate);
end;

procedure TFrmRegCampaignDetails.ReadOnlyMode;
begin
  inherited;
  pnBtnBottomContainer.Visible := False;
end;

procedure TFrmRegCampaignDetails.SetActiveTab(Sender: TObject);
begin
  shpPointerActivePage.Top := GetTopActiveTab(Sender);
end;

procedure TFrmRegCampaignDetails.ShowRegistrationData;
var
  LForm: TFrmStepDataCampaign;
begin
  FActiveStep := ShowForm(TFrmStepDataCampaign, LForm);
  LForm.AsDetails;
end;

function TFrmRegCampaignDetails.ShowForm(const AFormClass: TComponentClass;
  var AForm): TFrmBaseMasterStep;
begin
  CreateForm(AFormClass, AForm, pnEmbedContent);
  TFrmBaseMasterStep(AForm).dtsMain.DataSet := mtMain;
  TForm(AForm).Show;
  Result := TFrmBaseMasterStep(AForm);
end;

end.
