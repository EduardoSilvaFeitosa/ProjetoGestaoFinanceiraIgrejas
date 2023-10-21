unit View.Base.Popup.Message;

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
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  Components.Button,
  Vcl.StdCtrls,
  Vcl.WinXPanels;

type
  TFrmBaseMessage = class(TFrmBaseMaster)
    pnBackground: TPanel;
    pnDescription: TPanel;
    lbDescription: TLabel;
    pnControls: TPanel;
    pnHeader: TPanel;
    pnImage: TPanel;
    Image1: TImage;
    procedure ExecuteCloseForm(Sender: TObject); virtual;
    procedure ExecuteConfirmClick(Sender: TObject); virtual;
    procedure FormCreate(Sender: TObject);
  private
    FOnConfirmClick: TNotifyEvent;
    FOnExecuteClose: TNotifyEvent;
    procedure SetOnConfirmClick(const Value: TNotifyEvent);
    procedure SetOnExecuteClose(const Value: TNotifyEvent);
  public
    procedure Init(const AHeader, ADesc: string);
    property OnExecuteClose: TNotifyEvent write SetOnExecuteClose;
    property OnConfirmClick: TNotifyEvent write SetOnConfirmClick;
  end;

implementation

{$R *.dfm}
{ TFrmBaseMessage }

procedure TFrmBaseMessage.ExecuteCloseForm(Sender: TObject);
begin
  Close;
  if Assigned(FOnExecuteClose) then
    FOnExecuteClose(Sender);
end;

procedure TFrmBaseMessage.ExecuteConfirmClick(Sender: TObject);
begin
  if Assigned(FOnConfirmClick) then
    FOnConfirmClick(Sender);
end;

procedure TFrmBaseMessage.FormCreate(Sender: TObject);
begin
  inherited;
  FOnConfirmClick := nil;
  FOnExecuteClose := nil;
end;

procedure TFrmBaseMessage.Init(const AHeader, ADesc: string);
begin
  if (not AHeader.IsEmpty) then
    pnHeader.Caption := AHeader;

  if (not ADesc.IsEmpty) then
    lbDescription.Caption := ADesc;
end;

procedure TFrmBaseMessage.SetOnConfirmClick(const Value: TNotifyEvent);
begin
  FOnConfirmClick := Value;
end;

procedure TFrmBaseMessage.SetOnExecuteClose(const Value: TNotifyEvent);
begin
  FOnExecuteClose := Value;
end;

end.
