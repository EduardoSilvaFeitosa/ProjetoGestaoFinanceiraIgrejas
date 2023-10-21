unit View.Register.User.Workflow;

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
  FireDAC.Comp.Client, Components.Button;

type
  TFrmRegUserWorkflow = class(TFrmBaseMasterWorkflow)
    mtMain: TFDMemTable;
    mtMainid: TLargeintField;
    mtMainname: TWideStringField;
    mtMainemail: TWideStringField;
    mtMainusername: TWideStringField;
    mtMainpassword: TWideStringField;
    mtMainidacesso: TLargeintField;
    mtMainstatus: TSmallintField;
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
  public

  end;

implementation

uses
  View.Register.User.Data.Step;

{$R *.dfm}

procedure TFrmRegUserWorkflow.DoAfterSetService;
begin
  inherited;
  Service.QueryRegister(mtMain);
end;

procedure TFrmRegUserWorkflow.FormCreate(Sender: TObject);
begin
  inherited;
  btnConfirm.txtBtn.OnClick := pnBtnBottomClick;
  mtMain.CreateDataSet;
  ShowStepDados;
end;

procedure TFrmRegUserWorkflow.FormShow(Sender: TObject);
begin
  inherited;
  Panel8.Visible := false;
  Panel9.Visible := false;
  Shape1.Visible := false;
  btnConfirm.txtBtn.Caption := 'Salvar';
end;

procedure TFrmRegUserWorkflow.pnBtnBottomClick(Sender: TObject);
begin
  inherited;
  Save;
end;

procedure TFrmRegUserWorkflow.Save;
begin
  btnConfirm.pnBtn.SetFocus;
  if FActiveStep.ValidateRules then
  begin
    Service.Save;
    IconCloseClick(Self);
  end;
end;

function TFrmRegUserWorkflow.ShowForm(const AFormClass: TComponentClass;
  var AForm): TFrmBaseMasterStep;
begin
  CreateForm(AFormClass, AForm, pnEmbedContent);
  TFrmBaseMasterStep(AForm).dtsMain.DataSet := mtMain;
  TForm(AForm).Show;
  Result := TFrmBaseMasterStep(AForm);
end;

procedure TFrmRegUserWorkflow.ShowStepDados;
var
  LForm: TFrmStepDataUser;
begin
  FActiveStep := ShowForm(TFrmStepDataUser, LForm);
end;

end.
