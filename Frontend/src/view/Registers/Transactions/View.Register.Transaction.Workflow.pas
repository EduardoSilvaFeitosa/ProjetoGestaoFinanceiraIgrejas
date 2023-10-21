unit View.Register.Transaction.Workflow;

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
  View.Base.Master.Step;

type
  TFrmRegTransactionWorkflow = class(TFrmBaseMasterWorkflow)
    mtMain: TFDMemTable;
    mtMainid: TLargeintField;
    mtMaindescricao: TWideStringField;
    mtMaindtfato: TDateField;
    mtMaincompetencia: TWideStringField;
    mtMainnatureza: TWideStringField;
    mtMaintipo: TSmallintField;
    mtMainvalor: TFMTBCDField;
    mtMaincreationDate: TSQLTimeStampField;
    mtMainlastUpdate: TSQLTimeStampField;
    mtMainobservacao: TWideStringField;
    mtMainidmembro: TLargeintField;
    mtMainidcampanha: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pnBtnBottomClick(Sender: TObject);
  private
    FDoOnGoToPreviousStep: TNotifyEvent;
    function ShowForm(const AFormClass: TComponentClass; var AForm)
      : TFrmBaseMasterStep;
  protected
    procedure Save;
    procedure ShowStepDados;
    procedure DoAfterSetService; override;
    procedure DoOnBtnBackClick(Sender: TObject); override;
    procedure OnGoToNextStep(const AStepIndex: Integer);
    property DoOnGoToPreviousStep: TNotifyEvent read FDoOnGoToPreviousStep;
  end;

implementation

uses
  View.Register.Transaction.Data.Step;

{$R *.dfm}
{ TFrmRegTransactionWorkflow }

procedure TFrmRegTransactionWorkflow.DoAfterSetService;
begin
  inherited;
  Service.QueryRegister(mtMain);
end;

procedure TFrmRegTransactionWorkflow.DoOnBtnBackClick(Sender: TObject);
begin
  if Assigned(FDoOnGoToPreviousStep) then
    DoOnGoToPreviousStep(Sender);
end;

procedure TFrmRegTransactionWorkflow.FormCreate(Sender: TObject);
begin
  inherited;
  lbHeaderTitle.Caption := 'Movimentações';
  Label1.Caption := 'Informar os dados da movimentação';
  mtMain.CreateDataSet;
  ShowStepDados;
end;

procedure TFrmRegTransactionWorkflow.FormShow(Sender: TObject);
begin
  inherited;
  Panel8.Visible := false;
  Panel9.Visible := false;
  Shape1.Visible := false;
  btnConfirm.txtBtn.Caption := 'Salvar';
  lbTitle.Caption := 'Novo';
end;

procedure TFrmRegTransactionWorkflow.OnGoToNextStep(const AStepIndex: Integer);
begin
  btnBack.Visible := (AStepIndex > 1);
end;

procedure TFrmRegTransactionWorkflow.pnBtnBottomClick(Sender: TObject);
begin
  inherited;
  DoOnBtnBackClick(Sender);
  Save;
end;

procedure TFrmRegTransactionWorkflow.Save;
begin
  btnConfirm.pnBtn.SetFocus;
  if FActiveStep.ValidateRules then
  begin
    Service.Save;
    IconCloseClick(Self);
  end;
end;

function TFrmRegTransactionWorkflow.ShowForm(const AFormClass: TComponentClass;
  var AForm): TFrmBaseMasterStep;
begin
  CreateForm(AFormClass, AForm, pnEmbedContent);
  TFrmBaseMasterStep(AForm).dtsMain.DataSet := mtMain;
  TForm(AForm).Show;
  Result := TFrmBaseMasterStep(AForm);
end;

procedure TFrmRegTransactionWorkflow.ShowStepDados;
var
  LForm: TFrmStepDataTransaction;
begin
  FActiveStep := ShowForm(TFrmStepDataTransaction, LForm);
  LForm.AddListernerNextStep(OnGoToNextStep);
  FDoOnGoToPreviousStep := LForm.OnGoToPreviousStep;
end;

end.
