unit DTO.Register;

interface

uses
  System.JSON,
  Common.types,
  System.SysUtils;

const
  ERROR_INVALID_DTO = 'Invalid data transfer object!';

type
  TDTORegister = class abstract
  private
    Fid: int64;
    FHasNotification: Boolean;
    FOnNotification: TEventOnNotification;
    procedure SetOnNotification(const Value: TEventOnNotification);
  protected
    function checkCep(const ACep: string): Boolean;
    function checkCnpj(const ACnpj: string): Boolean;
    function checkEmail(const AEmail: string): Boolean;
    function checkDate(const ADate: TDate): Boolean;
    procedure AddNotification(const AMsg: string; const ALevel: tpLevel);
    class procedure Log(const E: Exception; const AOperacao: string;
      const AClass: String);
    function OnlyNumbers(const AText: string): string;

  const
    REGEX_CEP = '^\d{5}(-?\d{3})?$';
    REGEX_EMAIL = '^[a-z0-9.]+@[a-z0-9]+\.[a-z]+$';
    DEFAULT_NUMBER = (-1);
  public
    constructor Create;
    class procedure LoadInstance(const AJSON: TJSONObject);
    procedure ValidateOperationRules(const AOperation: tpOperation); virtual;
    function AsJSON: TJSONObject; virtual;
    property id: int64 read Fid write Fid;
    property HasNotification: Boolean read FHasNotification;
    property OnNotification: TEventOnNotification read FOnNotification
      write SetOnNotification;
  end;

implementation

uses
  Rest.JSON,
  System.RegularExpressions;

{ TDTORegister }

procedure TDTORegister.AddNotification(const AMsg: string;
  const ALevel: tpLevel);
begin
  FHasNotification := True;
  if Assigned(OnNotification) then
    OnNotification(AMsg, ALevel);
end;

function TDTORegister.AsJSON: TJSONObject;
begin
  Result := TJson.ObjectToJsonObject(Self);
end;

function TDTORegister.checkCep(const ACep: string): Boolean;
begin
  Result := TRegEx.IsMatch(ACep, REGEX_CEP);
end;

function TDTORegister.checkCnpj(const ACnpj: string): Boolean;
var
  LCnpj: string;
var
  I, LNum, LSum, LWeight, LDigit1, LDigit2: Integer;
begin
  LCnpj := OnlyNumbers(ACnpj);
  LSum := 0;
  LWeight := 5;

  // Dígito 1
  for I := 1 to 12 do
  begin
    LNum := String(LCnpj[I]).ToInteger();
    LSum := LSum + (LNum * LWeight);

    LWeight := Pred(LWeight);
    if (LWeight = 1) then
      LWeight := 9;
  end;

  LDigit1 := (LSum mod 11);

  if (LDigit1 < 2) then
    LDigit1 := 0
  else
    LDigit1 := 11 - LDigit1;

  if (String(LCnpj[13]).ToInteger() <> LDigit1) then
    Exit(False);

  LSum := 0;
  LWeight := 6;
  // Dígito 2
  for I := 1 to 13 do
  begin
    LNum := String(LCnpj[I]).ToInteger();
    LSum := LSum + (LNum * LWeight);

    LWeight := Pred(LWeight);
    if (LWeight = 1) then
      LWeight := 9;
  end;

  LDigit2 := (LSum mod 11);

  if (LDigit2 < 2) then
    LDigit2 := 0
  else
    LDigit2 := 11 - LDigit2;

  if (String(LCnpj[14]).ToInteger() <> LDigit2) then
      Exit(False);

  Result := True;
end;

function TDTORegister.checkDate(const ADate: TDate): Boolean;
begin
  Result := not(ADate < 10);
end;

function TDTORegister.checkEmail(const AEmail: string): Boolean;
begin
  Result := TRegEx.IsMatch(AEmail, REGEX_EMAIL);
end;

constructor TDTORegister.Create;
begin
  Fid := DEFAULT_NUMBER;
  FHasNotification := False;
end;

class procedure TDTORegister.LoadInstance(const AJSON: TJSONObject);
begin
  if not Assigned(AJSON) then
    raise Exception.Create(ERROR_INVALID_DTO);
end;

class procedure TDTORegister.Log(const E: Exception; const AOperacao: string;
  const AClass: String);
begin

end;

function TDTORegister.OnlyNumbers(const AText: string): string;
var
  LStr: Char;
begin
  for LStr in AText do
  begin
    if CharInSet(LStr, ['0' .. '9']) then
      Result.Insert(Result.Length, LStr);
  end;
end;

procedure TDTORegister.SetOnNotification(const Value: TEventOnNotification);
begin
  FOnNotification := Value;
end;

procedure TDTORegister.ValidateOperationRules(const AOperation: tpOperation);
begin
  // This method will be overwritten.
end;

end.
