unit View.Base.Popup;

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
  Components.Button,
  Vcl.StdCtrls,
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  View.Base.Popup.Message;

type
  TFrmBasePopup = class(TFrmBaseMaster)
    pnBackGround: TPanel;
    pnHeaderClose: TPanel;
    IconClose: TImage;
    pnContent: TPanel;
    procedure btnCloseClick(Sender: TObject);
  private
    procedure CreateForm(const AFormClass: TComponentClass; var AForm);
    procedure SetActiveForm(const Value: TFrmBaseMessage);
  protected
    FActiveForm: TFrmBaseMessage;
    procedure EmbedQuestion(const AMessage: string);
    procedure EmbedSuccess(const AMessage: string);
    procedure EmbedError(E: Exception; const AMessage: string);
    procedure ReloadActiveFormEvents; virtual;
    property ActiveForm: TFrmBaseMessage write SetActiveForm;
  public
  end;

implementation

uses
  View.Popup.Success.Message,
  View.Popup.Question.Message;

{$R *.dfm}

procedure TFrmBasePopup.btnCloseClick(Sender: TObject);
begin
  inherited;
  Self.Close;
  NotifyClose;
end;

procedure TFrmBasePopup.CreateForm(const AFormClass: TComponentClass;
  var AForm);
begin
  if Assigned(FActiveForm) then
    FActiveForm.Close;

  Application.CreateForm(AFormClass, AForm);

  TForm(AForm).Parent := pnContent;
  TForm(AForm).Align := alClient;
  TForm(AForm).WindowState := TWindowState.wsMaximized;
end;

procedure TFrmBasePopup.EmbedError(E: Exception; const AMessage: string);
begin

end;

procedure TFrmBasePopup.EmbedQuestion(const AMessage: string);
var
  LForm: TFrmQuestionMessage;
begin
  CreateForm(TFrmQuestionMessage, LForm);
  LForm.Init('Alerta!', AMessage);
  LForm.Show;
  ActiveForm := LForm;
end;

procedure TFrmBasePopup.EmbedSuccess(const AMessage: string);
var
  LForm: TFrmSuccessMessage;
begin
  CreateForm(TFrmSuccessMessage, LForm);
  LForm.Init('Sucesso!', AMessage);
  LForm.Show;
  ActiveForm := LForm;
end;

procedure TFrmBasePopup.ReloadActiveFormEvents;
begin
end;

procedure TFrmBasePopup.SetActiveForm(const Value: TFrmBaseMessage);
begin
  FActiveForm := Value;
  ReloadActiveFormEvents;
end;

end.
