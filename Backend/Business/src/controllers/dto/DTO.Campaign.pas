unit DTO.Campaign;

interface

uses
  System.JSON,
  DTO.Register, Common.types;

type
  TDTOCampaign = class(TDTORegister)
  private
    Fdescricao: string;
    Fdtinicio: TDate;
    Fdtfinal: TDate;
    Fvlralvo: Double;
    Fobservacao: string;
    Fstatus: int8;
  public
    property descricao: string  read Fdescricao  write Fdescricao;
    property dtInicio: TDate    read Fdtinicio   write Fdtinicio;
    property dtFinal: TDate     read Fdtfinal    write Fdtfinal;
    property vlrAlvo: Double    read Fvlralvo    write Fvlralvo;
    property observacao: string read Fobservacao write Fobservacao;
    property status: int8       read Fstatus     write Fstatus;

    procedure ValidateOperationRules(const AOperation: tpOperation); override;
    class function LoadInstance(const AJSON: TJSONObject): TDTOCampaign;
    class function TryLoadInstance(var LDTO: TDTOCampaign;
      const AJSON: TJSONObject): Boolean;
  end;

implementation

uses
  Rest.JSON,
  System.SysUtils;

{ TDTOCampaign }

class function TDTOCampaign.LoadInstance(const AJSON: TJSONObject)
  : TDTOCampaign;
begin
  inherited LoadInstance(AJSON);
  Result := TJSOn.JsonToObject<TDTOCampaign>(AJSON);
end;

class function TDTOCampaign.TryLoadInstance(var LDTO: TDTOCampaign;
  const AJSON: TJSONObject): Boolean;
begin
  try
    LDTO := TDTOCampaign.LoadInstance(AJSON);
    Result := Assigned(LDTO);
  except
    on E: Exception do
    begin
      Result := False;
      Log(E, 'Generate campaign objects', Self.ClassName);
    end;
  end;
end;

procedure TDTOCampaign.ValidateOperationRules(const AOperation: tpOperation);
begin
  inherited;
  if (descricao.Length < 3) then
    AddNotification('A descri��o deve ter no m�nimo 3 caracteres',
      tpUnsatisfiedRule);

  if (vlrAlvo <= 0) then
    AddNotification
      ('O valor do alvo da campanha n�o pode ser menor ou igual a zero',
      tpUnsatisfiedRule);

  if not checkDate(Fdtinicio) then
    AddNotification('A data de in�cio da campanha � inv�lida',
      tpUnsatisfiedRule);

  if checkDate(Fdtinicio) and checkDate(Fdtfinal) and (Fdtinicio > Fdtfinal)
  then
    AddNotification
      ('A data de in�cio da campanha n�o pode ser posterior a data de t�rmino',
      tpUnsatisfiedRule);

  if not(status in [0, 1]) then
    AddNotification('O status informado � inv�lido', tpUnsatisfiedRule);
end;

end.
