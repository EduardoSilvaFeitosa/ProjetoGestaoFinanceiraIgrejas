unit DTO.Transaction;

interface

uses
  System.JSON,
  DTO.Register,
  Common.types;

type
  TDTOTransaction = class(TDTORegister)
  private
    Fdescricao: string;
    Fdtfato: TDate;
    Fcompetencia: string;
    Fvalor: Double;
    Fobservacao: string;
    Fnatureza: char;
    Ftipo: integer;
    Fidmembro: Int64;
    Fidcampanha: Int64;
  public
    property descricao: string    read Fdescricao   write Fdescricao;
    property dtFato: TDate        read Fdtfato      write Fdtfato;
    property competencia: string  read Fcompetencia write Fcompetencia;
    property natureza: char       read Fnatureza    write Fnatureza;
    property tipo: integer        read Ftipo        write Ftipo;
    property valor: Double        read Fvalor       write Fvalor;
    property observacao: string   read Fobservacao  write Fobservacao;
    property idmembro: Int64      read Fidmembro    write Fidmembro;
    property idcampanha: Int64    read Fidcampanha  write Fidcampanha;

    class function LoadInstance(const AJSON: TJSONObject): TDTOTransaction;
    class function TryLoadInstance(var LDTO: TDTOTransaction;
      const AJSON: TJSONObject): Boolean;
    procedure ValidateOperationRules(const AOperation: tpOperation); override;
  end;

implementation

uses
  REST.JSON,
  System.SysUtils;

{ TDTOTransaction }

class function TDTOTransaction.LoadInstance(const AJSON: TJSONObject)
  : TDTOTransaction;
begin
  inherited LoadInstance(AJSON);
  Result := TJSOn.JsonToObject<TDTOTransaction>(AJSON);
end;

class function TDTOTransaction.TryLoadInstance(var LDTO: TDTOTransaction;
  const AJSON: TJSONObject): Boolean;
begin
  try
    LDTO := TDTOTransaction.LoadInstance(AJSON);
    Result := Assigned(LDTO);
  except
    on E: Exception do
    begin
      Result := False;
      Log(E, 'Generate Transaction objects', Self.ClassName);
    end;
  end;
end;

procedure TDTOTransaction.ValidateOperationRules(const AOperation: tpOperation);
begin
  inherited;
  if (valor = 0) then
    AddNotification('Não é permitido lançamento de movimentação zerada',
      tpUnsatisfiedRule);

  if not checkDate(Fdtfato) then
    AddNotification('A data informada é inválida', tpUnsatisfiedRule);

  if competencia.IsEmpty then
    competencia := FormatDateTime('yyyy-dd', Fdtfato);

  if not(CharInSet(natureza, ['C', 'D'])) then
    AddNotification
      ('A natureza da movimentação deve ser "C" - Crédito ou "D" - Débito',
      tpUnsatisfiedRule);

  if (not(tipo in [0, 1, 2])) then
    AddNotification
      ('O tipo de movimentação deve ser: 0 - Padrão; 1 - Campanhas; 2 - Dízimos.',
      tpUnsatisfiedRule);

  if (tipo = 1) and (idmembro > 0) then
    idmembro := 0;

  if (tipo = 2) and (idcampanha > 0) then
    idcampanha := 0;
end;

end.
