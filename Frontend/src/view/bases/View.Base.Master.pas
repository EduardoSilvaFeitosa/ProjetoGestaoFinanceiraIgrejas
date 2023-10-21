unit View.Base.Master;

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
  View.Base,
  Utils.Types,
  System.Generics.Collections,
  Vcl.ExtCtrls;

type
  TFrmBaseMaster = class(TFrmBase)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure IconEnterExecute(Sender: TObject);
    procedure IconLeaveExecute(Sender: TObject);
  private
    LListenersOnClose: TList<TCustomNotifyEvent>;
  protected
    procedure OnMouseEnterIcon(Sender: TObject);
    procedure OnMouseLeaveIcon(Sender: TObject);
    procedure Log(const E: Exception; const AMethod: string;
      AClassInfo: Pointer);
    procedure NotifyClose; virtual;
    procedure RepaintPanelIcon(const APanel: TPanel); virtual;
  public
    procedure AddListenerCloseDetails(AListener: TCustomNotifyEvent);
  end;

implementation

uses
  Vcl.StdCtrls;

{$R *.dfm}
{ TFrmBaseMaster }

procedure TFrmBaseMaster.AddListenerCloseDetails(AListener: TCustomNotifyEvent);
begin
  if Assigned(AListener) then
    LListenersOnClose.Add(AListener);
end;

procedure TFrmBaseMaster.FormCreate(Sender: TObject);
begin
  inherited;
  LListenersOnClose := TList<TCustomNotifyEvent>.Create;
end;

procedure TFrmBaseMaster.FormDestroy(Sender: TObject);
begin
  inherited;
  LListenersOnClose.Free;
end;

procedure TFrmBaseMaster.Log(const E: Exception; const AMethod: string;
  AClassInfo: Pointer);
begin

end;

procedure TFrmBaseMaster.NotifyClose;
var
  LListener: TCustomNotifyEvent;
begin
  for LListener in LListenersOnClose do
  begin
    LListener();
  end;
end;

procedure TFrmBaseMaster.OnMouseEnterIcon(Sender: TObject);
begin
  if (Sender is TPanel) then
  begin
    RepaintPanelIcon(TPanel(Sender));
    Exit;
  end;

  if (Sender is TLabel) then
  begin
    RepaintPanelIcon(TPanel(TLabel(Sender).Parent));
    Exit;
  end;

  if (Sender is TImage) then
  begin
    RepaintPanelIcon(TPanel(TImage(Sender).Parent));
  end;
end;

procedure TFrmBaseMaster.OnMouseLeaveIcon(Sender: TObject);

  procedure Repaint(const APanel: TPanel);
  begin
    APanel.ParentColor := True;
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
  end;
end;

procedure TFrmBaseMaster.RepaintPanelIcon(const APanel: TPanel);
begin
  APanel.ParentBackground := False;
  APanel.Color := $00B5A59D;
end;

procedure TFrmBaseMaster.IconEnterExecute(Sender: TObject);
begin
  inherited;
  Self.OnMouseEnterIcon(Sender);
end;

procedure TFrmBaseMaster.IconLeaveExecute(Sender: TObject);
begin
  inherited;
  Self.OnMouseLeaveIcon(Sender);
end;

end.
