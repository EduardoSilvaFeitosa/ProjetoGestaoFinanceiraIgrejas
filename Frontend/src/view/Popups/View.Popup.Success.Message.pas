unit View.Popup.Success.Message;

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
  TFrmSuccessMessage = class(TFrmBaseMessage)
    btnClose: TFrmButton;
    procedure FormCreate(Sender: TObject);
  end;

implementation

{$R *.dfm}

procedure TFrmSuccessMessage.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Init('Sucesso!', 'Processo concluído com sucesso!');
end;

end.
