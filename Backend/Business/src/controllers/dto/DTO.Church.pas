unit DTO.Church;

interface

uses
  System.JSON,
  DTO.Register,
  Common.types;

type
  TDTOChurch = class(TDTORegister)
  private
    Fnome: string;
    Fstatus: Int8;
    Flogradouro: string;
    Fnumero: string;
    Fcep: string;
    Fcnpj: string;
    procedure CheckData;
    procedure SetCnpj(const value: string);
    procedure SetCep(const value: string);
  public
    constructor Create;
    property nome: string read Fnome write Fnome;
    property cnpj: string read Fcnpj write SetCnpj;
    property status: Int8 read Fstatus write Fstatus;
    property cep: string read Fcep write SetCep;
    property numero: string read Fnumero write Fnumero;
    property logradouro: string read Flogradouro write Flogradouro;

    class function LoadInstance(const AJSON: TJSONObject): TDTOChurch;
    class function TryLoadInstance(var LDTO: TDTOChurch;
      const AJSON: TJSONObject): Boolean;
    procedure ValidateOperationRules(const AOperation: tpOperation); override;
  end;

implementation

uses
  REST.JSON,
  System.SysUtils;

{ TDTOChurch }

procedure TDTOChurch.CheckData;
begin
  SetCep(Fcep);
  SetCnpj(Fcnpj);
end;

constructor TDTOChurch.Create;
begin
  inherited;
  Fnumero := 'S/N';
  Fstatus := 1;
end;

class function TDTOChurch.LoadInstance(const AJSON: TJSONObject): TDTOChurch;
begin
  inherited LoadInstance(AJSON);
  Result := TJSOn.JsonToObject<TDTOChurch>(AJSON);
end;

procedure TDTOChurch.SetCep(const value: string);
begin
  Fcep := OnlyNumbers(value);
end;

procedure TDTOChurch.SetCnpj(const value: string);
begin
  Fcnpj := OnlyNumbers(value);
end;

class function TDTOChurch.TryLoadInstance(var LDTO: TDTOChurch;
  const AJSON: TJSONObject): Boolean;
begin
  try
    LDTO := TDTOChurch.LoadInstance(AJSON);
    Result := Assigned(LDTO);
  except
    on E: Exception do
    begin
      Result := False;
      Log(E, 'Generate church objects', Self.ClassName);
    end;
  end;
end;

procedure TDTOChurch.ValidateOperationRules(const AOperation: tpOperation);
begin
  inherited;
  CheckData;
  if (nome.Length < 3) then
    AddNotification('O nome deve ter no mínimo 3 caracteres',
      tpUnsatisfiedRule);

  if (not cep.IsEmpty) and (not checkCep(cep)) then
    AddNotification('O CEP deve ter no mínimo 8 caracteres', tpUnsatisfiedRule);

  if (not cnpj.IsEmpty) and (not checkCnpj(cnpj)) then
    AddNotification('O CNPJ informado é inválido', tpUnsatisfiedRule);

  if (logradouro.IsEmpty) then
    AddNotification('O logradouro é obrigatório', tpUnsatisfiedRule);

  if (logradouro.Length < 3) then
    AddNotification('O logradouro deve ter no mínimo 3 caracteres',
      tpUnsatisfiedRule);
end;

end.
