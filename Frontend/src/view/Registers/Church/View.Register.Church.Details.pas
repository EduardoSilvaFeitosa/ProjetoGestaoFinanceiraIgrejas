unit View.Register.Church.Details;

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
  TFrmRegChurchDetails = class(TTFrmBaseMasterDetails)
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
    mtMaincreationDate: TSQLTimeStampField;
    mtMainnome: TWideStringField;
    mtMaincnpj: TWideStringField;
    mtMainstatus: TSmallintField;
    mtMaincep: TWideStringField;
    mtMainnumero: TWideStringField;
    mtMainlogradouro: TWideStringField;
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
  View.Register.Church.Data.Step;

{$R *.dfm}
{ TFrmRegChurchDetails }

procedure TFrmRegChurchDetails.btnRecordClick(Sender: TObject);
begin
  inherited;
  SetActiveTab(Sender);
end;

procedure TFrmRegChurchDetails.btnSaveClick(Sender: TObject);
begin
  inherited;
  pnBtnBottomContainer.SetFocus;
  Service.Save;
end;

procedure TFrmRegChurchDetails.DoAfterSetService;
begin
  Service.QueryRegister(mtMain);
end;

procedure TFrmRegChurchDetails.FormCreate(Sender: TObject);
begin
  inherited;
  ShowRegistrationData;
  btnConfirm.txtBtn.OnClick := btnSaveClick;
end;

procedure TFrmRegChurchDetails.mtMainlastUpdateChange(Sender: TField);
var
  LDate: TDateTime;
begin
  inherited;
  LDate := mtMainlastUpdate.AsDateTime;
  if (LDate < 10) then
    LDate := mtMaincreationDate.AsDateTime;
  lbLastUpdate.Caption := GetLastUpdateFormat(LDate);
end;

procedure TFrmRegChurchDetails.ReadOnlyMode;
begin
  inherited;
  pnBtnBottomContainer.Visible := False;
end;

procedure TFrmRegChurchDetails.SetActiveTab(Sender: TObject);
begin
  shpPointerActivePage.Top := GetTopActiveTab(Sender);
end;

procedure TFrmRegChurchDetails.ShowRegistrationData;
var
  LForm: TFrmStepDataChurch;
begin
  FActiveStep := ShowForm(TFrmStepDataChurch, LForm);
  LForm.AsDetails;
end;

function TFrmRegChurchDetails.ShowForm(const AFormClass: TComponentClass;
  var AForm): TFrmBaseMasterStep;
begin
  CreateForm(AFormClass, AForm, pnEmbedContent);
  TFrmBaseMasterStep(AForm).dtsMain.DataSet := mtMain;
  TForm(AForm).Show;
  Result := TFrmBaseMasterStep(AForm);
end;

end.
