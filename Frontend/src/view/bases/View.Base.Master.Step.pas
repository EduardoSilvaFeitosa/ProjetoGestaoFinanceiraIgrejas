unit View.Base.Master.Step;

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
  Data.DB;

type
  TFrmBaseMasterStep = class(TFrmBaseMaster)
    pnBackground: TPanel;
    dtsMain: TDataSource;
  protected
    function CheckEmail(const AEmail: string): boolean;
    function CheckCellPhone(const ANumber: string): boolean;
    procedure TrySetValue(const AFieldName: string; const Value: Variant;
      const ADesc: string);
  public
    function ValidateRules: boolean; virtual;
    procedure ReadOnlyMode; virtual;
    procedure AsDetails; virtual;
  end;

implementation

{$R *.dfm}

uses
  System.RegularExpressions;

{ TFrmBaseMasterStep }

procedure TFrmBaseMasterStep.AsDetails;
begin

end;

function TFrmBaseMasterStep.CheckCellPhone(const ANumber: string): boolean;
const
  REGEX_CELL = '^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$';
begin
  Result := TRegEx.IsMatch(ANumber.Trim, REGEX_CELL);
end;

function TFrmBaseMasterStep.CheckEmail(const AEmail: string): boolean;
const
  REGEX_EMAIL = '^[a-z0-9.]+@[a-z0-9]+\.[a-z]+$';
begin
  Result := TRegEx.IsMatch(AEmail, REGEX_EMAIL);
end;

procedure TFrmBaseMasterStep.ReadOnlyMode;
begin

end;

procedure TFrmBaseMasterStep.TrySetValue(const AFieldName: string;
  const Value: Variant; const ADesc: string);
begin
  try
    if Assigned(dtsMain.DataSet) then
      dtsMain.DataSet.FieldByName(AFieldName).Value := Value;
  except
    on E: Exception do
    begin
      Log(E, 'TFrmBaseMasterStep.TrySetValue', Self.ClassInfo);
      raise Exception.Create('Erro ao configurar ' + ADesc);
    end;
  end;
end;

function TFrmBaseMasterStep.ValidateRules: boolean;
begin
  Result := True;
end;

end.
