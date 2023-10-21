unit Report.Base;

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
  RLFilters,
  RLPDFFilter,
  RLReport,
  Horse.OctetStream,
  FireDAC.Comp.Client,
  Horse.Core.Param,
  FireDAC.Phys.PGDef,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.PG,
  FireDAC.VCLUI.Wait,
  Data.DB;

type
  TFrmReportBase = class(TForm)
    Report: TRLReport;
    PDFFilter: TRLPDFFilter;
    bdFooterMain: TRLBand;
    lbEmitidoEm: TRLLabel;
    siEmitidoEm: TRLSystemInfo;
    PgDriver: TFDPhysPgDriverLink;
    Connection: TFDConnection;
  private
    FName, FDirectory: string;
    procedure SetToNonVisualMode;
    function GetFilePath: string;
    function GetFileStream: TMemoryStream;
    function GetDirectory: string;
    procedure DeleteReport;
  protected
    function GetFileName: string; virtual;
    procedure SetConnection(const AQry: TFDQuery);
    procedure DoAfterCreate; virtual;
    function GetBool(const AValue: string): Boolean;
  public
    constructor Create(AOwner: TComponent); override;
    function CanBeGenerated(const AParams: THorseCoreParam): Boolean; virtual;
    function GenerateReport: TFileReturn;
    property FileName: string read GetFileName;
    destructor Destroy; override;
  end;

implementation

{$R *.dfm}

{ TFrmReportBase }

function TFrmReportBase.CanBeGenerated(const AParams: THorseCoreParam): Boolean;
begin
  Result := True;
end;

constructor TFrmReportBase.Create(AOwner: TComponent);
begin
  inherited;
  FName := Format('Temp_%s%s.pdf',
    [GetFileName, FormatDateTime('ddmmyyhhmmss', Now)]);
  FDirectory := GetDirectory;
  DoAfterCreate;
end;

procedure TFrmReportBase.DeleteReport;
begin
  if FileExists(GetFilePath) then
    DeleteFile(GetFilePath);
end;

destructor TFrmReportBase.Destroy;
begin
  DeleteReport;
  inherited;
end;

procedure TFrmReportBase.DoAfterCreate;
begin

end;

function TFrmReportBase.GenerateReport: TFileReturn;
begin
  SetToNonVisualMode;
  Report.Prepare;
  Report.SaveToFile(GetFilePath);
  Result := TFileReturn.Create(FileName + '.pdf', GetFileStream);
end;

function TFrmReportBase.GetDirectory: string;
var
  LDirectory: Array [0 .. MAX_PATH] of Char;
begin
  GetTempPath(MAX_PATH, @LDirectory);
  Result := StrPas(LDirectory);
  if not Result.EndsWith('\') then
    Result.Insert(Result.Length, '\');
end;

function TFrmReportBase.GetFileName: string;
begin
  Result := 'UnnamedReport';
end;

function TFrmReportBase.GetFilePath: string;
begin
  Result := FDirectory + FName;
end;

function TFrmReportBase.GetFileStream: TMemoryStream;
begin
  Result := TMemoryStream.Create;
  Result.LoadFromFile(GetFilePath);
end;

procedure TFrmReportBase.SetConnection(const AQry: TFDQuery);
begin
  AQry.Connection := Connection;
end;

procedure TFrmReportBase.SetToNonVisualMode;
begin
  PDFFilter.ShowProgress := False;
  Report.PrintDialog := False;
  Report.ShowProgress := False;
end;

function TFrmReportBase.GetBool(const AValue: string): Boolean;
var
  LAux: string;
const
  LOpt: array of string = ['1', 'true', 's', 'y'];
begin
  Result := False;
  for LAux in LOpt do
  begin
    if LAux.Trim.Equals(AValue.ToLower.Trim) then
      Exit(True);
  end;
end;

end.
