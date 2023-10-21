unit DTO.Member;

interface

uses
  System.JSON,
  DTO.Register,
  Common.types;

type
  TDTOMember = class(TDTORegister)
  private
    Fnome: string;
    Femail: string;
    Ftelefone: string;
    FdtIngresso: TDate;
    Fcargo: string;
    Fstatus: Int8;
  public
    property nome: string      read Fnome       write Fnome;
    property email: string     read Femail      write Femail;
    property status: Int8      read Fstatus     write Fstatus;
    property telefone: string  read Ftelefone   write Ftelefone;
    property dtIngresso: TDate read FdtIngresso write FdtIngresso;
    property cargo: string     read Fcargo      write Fcargo;

    class function LoadInstance(const AJSON: TJSONObject): TDTOMember;
    class function TryLoadInstance(var LDTO: TDTOMember;
      const AJSON: TJSONObject): Boolean;
    procedure ValidateOperationRules(const AOperation: tpOperation); override;
  end;

implementation

uses
  REST.JSON,
  System.SysUtils;

{ TDTOMember }

class function TDTOMember.LoadInstance(const AJSON: TJSONObject): TDTOMember;
begin
  inherited LoadInstance(AJSON);
  Result := TJSOn.JsonToObject<TDTOMember>(AJSON);
end;

class function TDTOMember.TryLoadInstance(var LDTO: TDTOMember;
  const AJSON: TJSONObject): Boolean;
begin
  try
    LDTO := TDTOMember.LoadInstance(AJSON);
    Result := Assigned(LDTO);
  except
    on E: Exception do
    begin
      Result := False;
      Log(E, 'Generate member objects', Self.ClassName);
    end;
  end;
end;

procedure TDTOMember.ValidateOperationRules(const AOperation: tpOperation);
begin
  inherited;
  if (nome.Length < 3) then
    AddNotification('O nome deve ter no mínimo 3 caracteres',
      tpUnsatisfiedRule);

  if not(email.IsEmpty) and not checkEmail(email) then
    AddNotification('O email informado é inválido', tpUnsatisfiedRule);

  if not(cargo.IsEmpty) and (cargo.Length < 3) then
    AddNotification('O cargo deve ter no mínimo 3 caracteres',
      tpUnsatisfiedRule);

  if not(status in [0, 1]) then
    AddNotification('O status informado é inválido', tpUnsatisfiedRule);
end;

end.
