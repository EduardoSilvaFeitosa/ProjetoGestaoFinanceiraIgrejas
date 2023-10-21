unit View.Register.Church.Workflow;

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
  TFrmRegChurchWorkflow = class(TFrmBaseMasterWorkflow)
    mtMain: TFDMemTable;
    mtMainid: TLargeintField;
    mtMaincreationDate: TSQLTimeStampField;
    mtMainnome: TWideStringField;
    mtMaincnpj: TWideStringField;
    mtMainstatus: TSmallintField;
    mtMaincep: TWideStringField;
    mtMainnumero: TWideStringField;
    mtMainlogradouro: TWideStringField;
    mtMainlastUpdate: TSQLTimeStampField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pnBtnBottomClick(Sender: TObject);
  private
    function ShowForm(const AFormClass: TComponentClass; var AForm)
      : TFrmBaseMasterStep;
  protected
    procedure Save;
    procedure ShowStepDados;
    procedure DoAfterSetService; override;
  end;

implementation

uses
  View.Register.Church.Data.Step;

{$R *.dfm}
{ TFrmRegChurchWorkflow }

procedure TFrmRegChurchWorkflow.pnBtnBottomClick(Sender: TObject);
begin
  inherited;
  Save;
end;

procedure TFrmRegChurchWorkflow.DoAfterSetService;
begin
  inherited;
  Service.QueryRegister(mtMain);
end;

procedure TFrmRegChurchWorkflow.FormCreate(Sender: TObject);
begin
  inherited;
  lbHeaderTitle.Caption := 'Igrejas';
  btnConfirm.txtBtn.OnClick := pnBtnBottomClick;
  mtMain.CreateDataSet;
  ShowStepDados;
end;

procedure TFrmRegChurchWorkflow.FormShow(Sender: TObject);
begin
  inherited;
  Panel8.Visible := false;
  Panel9.Visible := false;
  Shape1.Visible := false;
  btnConfirm.txtBtn.Caption := 'Salvar';
  lbTitle.Caption := 'Novo';
end;

procedure TFrmRegChurchWorkflow.Save;
begin
  btnConfirm.pnBtn.SetFocus;
  if FActiveStep.ValidateRules then
  begin
    Service.Save;
    IconCloseClick(Self);
  end;
end;

function TFrmRegChurchWorkflow.ShowForm(const AFormClass: TComponentClass;
  var AForm): TFrmBaseMasterStep;
begin
  CreateForm(AFormClass, AForm, pnEmbedContent);
  TFrmBaseMasterStep(AForm).dtsMain.DataSet := mtMain;
  TForm(AForm).Show;
  Result := TFrmBaseMasterStep(AForm);
end;

procedure TFrmRegChurchWorkflow.ShowStepDados;
var
  LForm: TFrmStepDataChurch;
begin
  FActiveStep := ShowForm(TFrmStepDataChurch, LForm);
end;

end.
