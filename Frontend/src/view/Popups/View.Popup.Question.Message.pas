unit View.Popup.Question.Message;

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
  View.Base.Popup.Message,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Imaging.pngimage,
  Components.Button;

type
  TFrmQuestionMessage = class(TFrmBaseMessage)
    btnClose: TFrmButton;
    btnConfirm: TFrmButton;
  end;

implementation

{$R *.dfm}
{ TFrmDeleteMessage }

end.
