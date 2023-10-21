unit View.Reports.Settings.Master;

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
  Vcl.ExtCtrls,
  Vcl.Imaging.pngimage,
  Vcl.StdCtrls,
  Vcl.FileCtrl,
  Components.Button,
  View.Base.Master,
  Providers.Request.Intf,
  Vcl.Mask,
  Vcl.WinXCtrls,
  Vcl.WinXPanels;

type
  TFrmReportSettingsMaster = class(TFrmBaseMaster)
    pnBackground: TPanel;
    pnHead: TPanel;
    lbHeaderTitle: TLabel;
    IconClose: TImage;
    pnContent: TPanel;
    pnControls: TPanel;
    btnClose: TFrmButton;
    iconCkbOf: TImage;
    iconCkbOn: TImage;
    pnDirectoryGroup: TPanel;
    pnReloadDir: TPanel;
    Image1: TImage;
    pnDir: TPanel;
    edtDirectory: TEdit;
    shpFirstName: TShape;
    spvMessages: TSplitView;
    cpMessage: TCardPanel;
    CardSucess: TCard;
    pnContainerMsg: TPanel;
    pnContainerIconSucessMsg: TPanel;
    IconSucessMsg: TImage;
    pnContainerIconDescSucessMsg: TPanel;
    lbSucessMsg: TLabel;
    lbDescSucessMsg: TLabel;
    pnContainerIconOkSucessMsg: TPanel;
    IconOkSucessMsg: TImage;
    pnContainerIconOkSucessMsg2: TPanel;
    CardWarning: TCard;
    Panel5: TPanel;
    Panel7: TPanel;
    Image2: TImage;
    Panel8: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Panel9: TPanel;
    Panel10: TPanel;
    Image3: TImage;
    procedure btnExecuteCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnClosetxtBtnClick(Sender: TObject);
    procedure pnMouseEnterExecute(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
    procedure OnChoseDirectoryClick(Sender: TObject);
    procedure IconOkSucessMsgClick(Sender: TObject);
  private
    FCheckBoxIcon: Array [0 .. 1] of TPicture;
    FDirectoryFromWindowKey: string;
    FStatus: Boolean;
    FRequest: IProvider_Request;
    procedure SetStatus(const Value: Boolean);
    procedure LoadDirectoryFromWindowKey;
    procedure UpdateDirectoryFromWindowKey(const APath: string);
    function ChooseDirectory: Boolean;
    function UpdateDirectory: Boolean;
    function GetFileName: string;
  protected
    function GetReportName: string; virtual;
    procedure DoBeforeGetReport; virtual;
    function GetReportResource: string; virtual; // abstract;
    procedure ToggleStatus(const Avalue: Boolean); virtual;
    function GetSttIcon(const APos: Boolean): TPicture;
    property Status: Boolean read FStatus write SetStatus;
    property Request: IProvider_Request read FRequest;
  end;

implementation

uses
  Config.URL,
  System.JSON,
  Providers.Request,
  System.Win.Registry,
  Providers.Response.Intf;

{$R *.dfm}

procedure TFrmReportSettingsMaster.btnClosetxtBtnClick(Sender: TObject);
var
  LResponse: IProvider_Response;
begin
  spvMessages.Opened := False;
  inherited;
  if not ChooseDirectory then
    Exit;

  Request.ResourceSuffix(EmptyStr);
  Request.ClearParams;
  DoBeforeGetReport;
  LResponse := Request.Get;

  if (LResponse.StatusCode = 200) then
  begin
    TMemoryStream(LResponse.ContentStream).SaveToFile(GetFileName);
    CardSucess.Show;
    spvMessages.Opened := True;
  end
  else if (LResponse.StatusCode = 204) then
  begin
    CardWarning.Show;
    spvMessages.Opened := True;
  end
  else
    raise Exception.Create(LResponse.Content);
end;

procedure TFrmReportSettingsMaster.btnExecuteCloseClick(Sender: TObject);
begin
  inherited;
  Close;
  NotifyClose;
end;

procedure TFrmReportSettingsMaster.DoBeforeGetReport;
begin

end;

procedure TFrmReportSettingsMaster.FormCreate(Sender: TObject);
begin
  inherited;
  FStatus := True;
  spvMessages.Opened := False;
  FRequest := TProvider_Request.New;
  FRequest.BaseURL(BS_URL_REPORT).Resource(GetReportResource);
  FCheckBoxIcon[0] := iconCkbOf.Picture;
  FCheckBoxIcon[1] := iconCkbOn.Picture;
  LoadDirectoryFromWindowKey;
end;

function TFrmReportSettingsMaster.GetFileName: string;
var
  LDirectory: string;
  LReportName: string;
  LReportExists: Boolean;
  LCont: Integer;
const
  Layout = '%s\%s.pdf';
  Layout2 = '%s\%s (%d).pdf';
begin
  LDirectory := edtDirectory.Text;
  if LDirectory.EndsWith('\') then
    LDirectory := Copy(LDirectory, 0, Pred(LDirectory.Length));

  LReportName := GetReportName;

  Result := Format(Layout, [LDirectory, LReportName]);
  if (not FileExists(Result)) then
    Exit(Result);

  LCont := 0;
  LReportExists := True;
  while LReportExists do
  begin
    Inc(LCont);
    Result := Format(Layout2, [LDirectory, LReportName, LCont]);
    LReportExists := (FileExists(Result));
  end;
end;

function TFrmReportSettingsMaster.GetReportName: string;
begin
  Result := 'UnamedReport';
end;

function TFrmReportSettingsMaster.GetReportResource: string;
begin

end;

function TFrmReportSettingsMaster.GetSttIcon(const APos: Boolean): TPicture;
begin
  Result := FCheckBoxIcon[APos.ToInteger];
end;

function TFrmReportSettingsMaster.UpdateDirectory: Boolean;
var
  LDirectory: string;
begin
  if (not SelectDirectory('Informe onde salvar o arquivo', '', LDirectory,
    [sdNewFolder, sdShowEdit, sdShowShares, sdNewUI, sdValidateDir])) then
    Exit(False);

  if not FDirectoryFromWindowKey.Equals(LDirectory) then
    UpdateDirectoryFromWindowKey(LDirectory);

  edtDirectory.Text := LDirectory;
  Result := (not Trim(edtDirectory.Text).IsEmpty);
end;

function TFrmReportSettingsMaster.ChooseDirectory: Boolean;
begin
  if not Trim(edtDirectory.Text).IsEmpty then
    Exit(True);

  Result := UpdateDirectory;
end;

procedure TFrmReportSettingsMaster.IconOkSucessMsgClick(Sender: TObject);
begin
  inherited;
  spvMessages.Opened := False;
end;

procedure TFrmReportSettingsMaster.Image1MouseLeave(Sender: TObject);
begin
  inherited;
  ResetPanelHover(Sender);
end;

procedure TFrmReportSettingsMaster.LoadDirectoryFromWindowKey;
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKeyReadOnly(APP_REGEDIT_NAME) then
    begin
      FDirectoryFromWindowKey := Reg.ReadString('ReportDirectory');
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
  edtDirectory.Text := FDirectoryFromWindowKey;
end;

procedure TFrmReportSettingsMaster.OnChoseDirectoryClick(Sender: TObject);
begin
  UpdateDirectory;
end;

procedure TFrmReportSettingsMaster.pnMouseEnterExecute(Sender: TObject);
begin
  inherited;
  ActivePanelHover(Sender);
end;

procedure TFrmReportSettingsMaster.SetStatus(const Value: Boolean);
begin
  FStatus := Value;
  ToggleStatus(Value);
end;

procedure TFrmReportSettingsMaster.ToggleStatus(const Avalue: Boolean);
begin
  // Nothing to execute
end;

procedure TFrmReportSettingsMaster.UpdateDirectoryFromWindowKey
  (const APath: string);
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(APP_REGEDIT_NAME, True) then
    begin
      Reg.WriteString('ReportDirectory', edtDirectory.Text);
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
end;

end.
