unit Common.types;

interface

type
  tpOperation = (tpCreate, tpUpdate, tpDelete, tpConsulta, tpConsultaPorId);

  tpLevel = (tpWarning, tpError, tpInternalError, tpUnsatisfiedRule);

  tpWeek = (tpDomingo, tpSegunda, tpTerca, tpQuarta, tpQuinta, tpSexta,
    tpSabado);

  tpAppRoutes = (tpCampanha, tpLogin, tpMembros, tpMovimentacao, tpParcelas,
    tpUsuarios);

  TEventOnNotification = procedure(const AMsg: string; const ALevel: tpLevel)
    of object;

  THelperLevel = record helper for tpLevel
    function Name: string;
  end;

implementation

{ THelperLevel }

function THelperLevel.Name: string;
begin
  case Self of
    tpWarning:
      Result := 'warning';
    tpUnsatisfiedRule:
      Result := 'rule';
  else
    Result := 'error';
  end;
end;

end.
