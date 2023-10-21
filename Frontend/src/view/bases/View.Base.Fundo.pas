unit View.Base.Fundo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TFrmFundo = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
  public
  end;

implementation

{$R *.dfm}

procedure TFrmFundo.FormCreate(Sender: TObject);
begin
  self.AlphaBlend := True;
  self.AlphaBlendValue := 90;
end;

end.
