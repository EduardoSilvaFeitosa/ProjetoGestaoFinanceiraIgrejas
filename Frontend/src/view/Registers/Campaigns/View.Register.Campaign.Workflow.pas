unit View.Register.Campaign.Workflow;

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
  View.Base.Master.Workflow,
  Components.Button,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Imaging.pngimage,
  View.Base.Master.Step,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmRegCampaignWorkflow = class(TFrmBaseMasterWorkflow)
    mtMain: TFDMemTable;
    mtMaindescricao: TWideStringField;
    mtMaindtinicio: TDateField;
    mtMaindtfinal: TDateField;
    mtMainvlralvo: TFMTBCDField;
    mtMaincreationDate: TSQLTimeStampField;
    mtMainlastUpdate: TSQLTimeStampField;
    mtMainobservacao: TWideStringField;
    mtMainstatus: TSmallintField;
    mtMainid: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure pnBtnBottomClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure ShowStepDados;
    procedure Save;
    function ShowForm(const AFormClass: TComponentClass; var AForm)
      : TFrmBaseMasterStep;
  protected
    procedure DoAfterSetService; override;
  end;

implementation

uses
  View.Register.Campaign.Data.Step;

{$R *.dfm}
{ TFrmRegCampaignWorkflow }

procedure TFrmRegCampaignWorkflow.DoAfterSetService;
begin
  inherited;
  Service.QueryRegister(mtMain);
end;

procedure TFrmRegCampaignWorkflow.FormCreate(Sender: TObject);
begin
  inherited;
  btnConfirm.txtBtn.OnClick := pnBtnBottomClick;
  mtMain.CreateDataSet;
  ShowStepDados;
end;

procedure TFrmRegCampaignWorkflow.FormShow(Sender: TObject);
begin
  inherited;
  Panel8.Visible := false;
  Panel9.Visible := false;
  Shape1.Visible := false;
  btnConfirm.txtBtn.Caption := 'Salvar';
  lbHeaderTitle.Caption := 'Campanhas';
  lbTitle.Caption := 'Novo';
  Label1.Caption := 'Informar os dados da campanha';
end;

procedure TFrmRegCampaignWorkflow.pnBtnBottomClick(Sender: TObject);
begin
  inherited;
  Save;
end;

procedure TFrmRegCampaignWorkflow.Save;
begin
  btnConfirm.pnBtn.SetFocus;
  if FActiveStep.ValidateRules then
  begin
    Service.Save;
    IconCloseClick(Self);
  end;
end;

function TFrmRegCampaignWorkflow.ShowForm(const AFormClass: TComponentClass;
  var AForm): TFrmBaseMasterStep;
begin
  CreateForm(AFormClass, AForm, pnEmbedContent);
  TFrmBaseMasterStep(AForm).dtsMain.DataSet := mtMain;
  TForm(AForm).Show;
  Result := TFrmBaseMasterStep(AForm);
end;

procedure TFrmRegCampaignWorkflow.ShowStepDados;
var
  LForm: TFrmStepDataCampaign;
begin
  FActiveStep := ShowForm(TFrmStepDataCampaign, LForm);
end;

end.
