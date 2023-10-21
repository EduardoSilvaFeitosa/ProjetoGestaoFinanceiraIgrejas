unit View.Register.Member.Workflow;

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
  TFrmRegMemberWorkflow = class(TFrmBaseMasterWorkflow)
    mtMain: TFDMemTable;
    mtMainid: TLargeintField;
    mtMainnome: TWideStringField;
    mtMainemail: TWideStringField;
    mtMaintelefone: TWideStringField;
    mtMaincargo: TWideStringField;
    mtMaincreation_date: TSQLTimeStampField;
    mtMainstatus: TSmallintField;
    mtMainlast_update: TSQLTimeStampField;
    mtMaindtingresso: TDateField;
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
  View.Register.Member.Data.Step;

{$R *.dfm}

procedure TFrmRegMemberWorkflow.pnBtnBottomClick(Sender: TObject);
begin
  inherited;
  Save;
end;

procedure TFrmRegMemberWorkflow.DoAfterSetService;
begin
  inherited;
  Service.QueryRegister(mtMain);
end;

procedure TFrmRegMemberWorkflow.FormCreate(Sender: TObject);
begin
  inherited;
  lbHeaderTitle.Caption := 'Membros';
  btnConfirm.txtBtn.OnClick := pnBtnBottomClick;
  mtMain.CreateDataSet;
  ShowStepDados;
end;

procedure TFrmRegMemberWorkflow.FormShow(Sender: TObject);
begin
  inherited;
  Panel8.Visible := false;
  Panel9.Visible := false;
  Shape1.Visible := false;
  btnConfirm.txtBtn.Caption := 'Salvar';
  lbTitle.Caption := 'Novo';
end;

procedure TFrmRegMemberWorkflow.Save;
begin
  btnConfirm.pnBtn.SetFocus;
  if FActiveStep.ValidateRules then
  begin
    Service.Save;
    IconCloseClick(Self);
  end;
end;

function TFrmRegMemberWorkflow.ShowForm(const AFormClass: TComponentClass;
  var AForm): TFrmBaseMasterStep;
begin
  CreateForm(AFormClass, AForm, pnEmbedContent);
  TFrmBaseMasterStep(AForm).dtsMain.DataSet := mtMain;
  TForm(AForm).Show;
  Result := TFrmBaseMasterStep(AForm);
end;

procedure TFrmRegMemberWorkflow.ShowStepDados;
var
  LForm: TFrmStepDataMember;
begin
  FActiveStep := ShowForm(TFrmStepDataMember, LForm);
end;

end.
