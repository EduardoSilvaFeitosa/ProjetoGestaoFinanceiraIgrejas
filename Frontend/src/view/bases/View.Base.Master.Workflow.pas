unit View.Base.Master.Workflow;

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
  View.Base.Master,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Imaging.pngimage,
  Utils.Types,
  System.Generics.Collections,
  Service.Entity.Details.Intf,
  Components.Button,
  View.Base.Master.Step;

type
  TFrmBaseMasterWorkflow = class(TFrmBaseMaster)
    pnBackground: TPanel;
    pnLeft: TPanel;
    iconOn: TImage;
    iconOff: TImage;
    Panel7: TPanel;
    Image1: TImage;
    lbTitle: TLabel;
    Label1: TLabel;
    Shape1: TShape;
    Panel8: TPanel;
    Image2: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Panel9: TPanel;
    Image3: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Shape5: TShape;
    pnRight: TPanel;
    pnHead: TPanel;
    lbHeaderTitle: TLabel;
    IconClose: TImage;
    pnFooter: TPanel;
    pnBtnBottomBack: TPanel;
    shpBtnBack: TShape;
    pnBtnBack: TPanel;
    pnContent: TPanel;
    pnBtnBottomContainer: TPanel;
    btnConfirm: TFrmButton;
    pnEmbedContent: TPanel;
    btnBack: TPanel;
    Image4: TImage;
    procedure IconCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OnBtnBackClick(Sender: TObject);
  private
    LOuvintesOnClose: TList<TCustomNotifyEvent>;
    FService: IService_EntityDetail;
    procedure SetService(const Value: IService_EntityDetail);
  protected
    FActiveStep: TFrmBaseMasterStep;
    function CreateForm(const AFormClass: TComponentClass; var AForm;
      const AParent: TWinControl): TFrmBaseMasterStep;
    procedure DoAfterSetService; virtual;
    procedure NotifyClose; override;
    procedure RepaintPanelIcon(const APanel: TPanel); override;
    procedure DoOnBtnBackClick(Sender: TObject);virtual;
  public
    procedure AddOuvinteOnClose(AOuvinte: TCustomNotifyEvent);
    property Service: IService_EntityDetail read FService write SetService;
  end;

var
  FrmBaseMasterWorkflow: TFrmBaseMasterWorkflow;

implementation

{$R *.dfm}

procedure TFrmBaseMasterWorkflow.AddOuvinteOnClose
  (AOuvinte: TCustomNotifyEvent);
begin
  if Assigned(AOuvinte) then
    LOuvintesOnClose.Add(AOuvinte);
end;

procedure TFrmBaseMasterWorkflow.DoAfterSetService;
begin

end;

procedure TFrmBaseMasterWorkflow.DoOnBtnBackClick(Sender: TObject);
begin

end;

procedure TFrmBaseMasterWorkflow.FormCreate(Sender: TObject);
begin
  inherited;
  LOuvintesOnClose := TList<TCustomNotifyEvent>.Create;
end;

procedure TFrmBaseMasterWorkflow.FormDestroy(Sender: TObject);
begin
  inherited;
  LOuvintesOnClose.Free;
end;

procedure TFrmBaseMasterWorkflow.FormShow(Sender: TObject);
begin
  inherited;
  btnConfirm.txtBtn.Caption := 'Salvar';
end;

procedure TFrmBaseMasterWorkflow.IconCloseClick(Sender: TObject);
begin
  inherited;
  Close;
  NotifyClose;
end;

procedure TFrmBaseMasterWorkflow.NotifyClose;
var
  LOuvinte: TCustomNotifyEvent;
begin
  for LOuvinte in LOuvintesOnClose do
  begin
    LOuvinte();
  end;
end;

procedure TFrmBaseMasterWorkflow.OnBtnBackClick(Sender: TObject);
begin
  inherited;
  DoOnBtnBackClick(Sender);
end;

procedure TFrmBaseMasterWorkflow.RepaintPanelIcon(const APanel: TPanel);
begin
  inherited;
  APanel.ParentBackground := False;
  APanel.Color := $00FBF7F6;
end;

procedure TFrmBaseMasterWorkflow.SetService(const Value: IService_EntityDetail);
begin
  FService := Value;
  DoAfterSetService;
end;

function TFrmBaseMasterWorkflow.CreateForm(const AFormClass: TComponentClass;
  var AForm; const AParent: TWinControl): TFrmBaseMasterStep;
begin
  if Assigned(FActiveStep) then
    FActiveStep.Close;

  Application.CreateForm(AFormClass, AForm);
  TForm(AForm).Parent := AParent;
  TForm(AForm).Align := alClient;
  TForm(AForm).WindowState := TWindowState.wsMaximized;
  Result := TFrmBaseMasterStep(AForm);
end;

end.
