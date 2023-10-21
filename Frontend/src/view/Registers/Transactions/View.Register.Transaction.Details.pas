unit View.Register.Transaction.Details;

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
  View.Register.Transaction.Data.Step;

type
  TFrmRegTransactionDetails = class(TTFrmBaseMasterDetails)
    mtMain: TFDMemTable;
    mtMainlastUpdate: TSQLTimeStampField;
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
    ImgTransaction: TImage;
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
    mtMaindtfato: TDateField;
    mtMaincompetencia: TWideStringField;
    mtMainnatureza: TWideStringField;
    mtMaintipo: TSmallintField;
    mtMainvalor: TFMTBCDField;
    mtMaincreationDate: TSQLTimeStampField;
    mtMainobservacao: TWideStringField;
    mtMainidmembro: TLargeintField;
    mtMainidcampanha: TLargeintField;
    btnDetailsLink: TPanel;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure mtMainlastUpdateChange(Sender: TField);
    procedure btnRegistrationDataClick(Sender: TObject);
    procedure btnLinkedDataClick(Sender: TObject);
    procedure mtMaintipoChange(Sender: TField);
  private
    LFormDetails: TFrmStepDataTransaction;
    FDoOnGoToPreviousStep: TNotifyEvent;
    procedure SetActiveTab(Sender: TObject);
    procedure SetDoOnGoToPreviousStep(const Value: TNotifyEvent);
  protected
    function ShowForm(const AFormClass: TComponentClass; var AForm)
      : TFrmStepDataTransaction;
    procedure ShowRegistrationData;
    property DoOnGoToPreviousStep: TNotifyEvent write SetDoOnGoToPreviousStep;
  public
    procedure DoAfterSetService; override;
    procedure ReadOnlyMode; override;
  end;

implementation

{$R *.dfm}
{ TFrmRegTransactionDetails }

procedure TFrmRegTransactionDetails.btnSaveClick(Sender: TObject);
begin
  inherited;
  pnBtnBottomContainer.SetFocus;
  Service.Save;
end;

procedure TFrmRegTransactionDetails.DoAfterSetService;
begin
  Service.QueryRegister(mtMain);
end;

procedure TFrmRegTransactionDetails.FormCreate(Sender: TObject);
begin
  inherited;
  ShowRegistrationData;
end;

procedure TFrmRegTransactionDetails.btnLinkedDataClick(Sender: TObject);
begin
  inherited;
  SetActiveTab(Sender);
  LFormDetails.ShowFormDetails;
end;

procedure TFrmRegTransactionDetails.btnRegistrationDataClick(Sender: TObject);
begin
  inherited;
  SetActiveTab(Sender);
  if Assigned(FDoOnGoToPreviousStep) then
    FDoOnGoToPreviousStep(Sender);
end;

procedure TFrmRegTransactionDetails.mtMainlastUpdateChange(Sender: TField);
var
  LDate: TDateTime;
begin
  inherited;
  LDate := mtMainlastUpdate.AsDateTime;
  if (LDate < 10) then
    LDate := mtMaincreationDate.AsDateTime;
  lbLastUpdate.Caption := GetLastUpdateFormat(LDate);
end;

procedure TFrmRegTransactionDetails.mtMaintipoChange(Sender: TField);
begin
  inherited;
  btnDetailsLink.Visible := LFormDetails.HasDetails;
end;

procedure TFrmRegTransactionDetails.ReadOnlyMode;
begin
  inherited;
  pnBtnBottomContainer.Visible := False;
end;

procedure TFrmRegTransactionDetails.SetActiveTab(Sender: TObject);
begin
  shpPointerActivePage.Top := GetTopActiveTab(Sender);
end;

procedure TFrmRegTransactionDetails.SetDoOnGoToPreviousStep
  (const Value: TNotifyEvent);
begin
  FDoOnGoToPreviousStep := Value;
end;

procedure TFrmRegTransactionDetails.ShowRegistrationData;
var
  LForm: TFrmStepDataTransaction;
begin
  LFormDetails := ShowForm(TFrmStepDataTransaction, LForm);
  LForm.AsDetails;
  Self.FDoOnGoToPreviousStep := LForm.OnGoToPreviousStep;
end;

function TFrmRegTransactionDetails.ShowForm(const AFormClass: TComponentClass;
  var AForm): TFrmStepDataTransaction;
begin
  CreateForm(AFormClass, AForm, pnEmbedContent);
  TFrmBaseMasterStep(AForm).dtsMain.DataSet := mtMain;
  TForm(AForm).Show;
  Result := TFrmStepDataTransaction(AForm);
end;

end.
