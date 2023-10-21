unit View.Base;

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
  Vcl.Dialogs;

type
  TFrmBase = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  protected
    procedure ActivePanelHover(Sender: TObject);
    procedure ResetPanelHover(Sender: TObject); virtual;
  end;

var
  FFrmBase: TFrmBase;

implementation

{$R *.dfm}

uses
  Vcl.ExtCtrls, Vcl.StdCtrls;

procedure TFrmBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmBase.ActivePanelHover(Sender: TObject);

  procedure Repaint(const APanel: TPanel);
  begin
    APanel.ParentBackground := False;
    APanel.Color := $00FBF7F6;
  end;

begin
  if (Sender is TPanel) then
  begin
    Repaint(TPanel(Sender));
    Exit;
  end;

  if (Sender is TLabel) then
  begin
    Repaint(TPanel(TLabel(Sender).Parent));
    Exit;
  end;

  if (Sender is TImage) then
  begin
    Repaint(TPanel(TImage(Sender).Parent));
    Exit;
  end;
end;

procedure TFrmBase.ResetPanelHover(Sender: TObject);
begin
  if (Sender is TPanel) then
  begin
    TPanel(Sender).ParentColor := True;
    Exit;
  end;

  if (Sender is TLabel) then
  begin
    TPanel(TLabel(Sender).Parent).ParentColor := True;
    Exit;
  end;

  if (Sender is TImage) then
    TPanel(TImage(Sender).Parent).ParentColor := True;
end;

end.
