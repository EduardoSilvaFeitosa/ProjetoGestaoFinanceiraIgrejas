unit Utils.Types;

interface

uses
  System.Classes, System.SysUtils;

type
  TShowMode = (smShow, smEdit);
  TCustomNotifyEvent = procedure of object;
  TEventOnShowForm = procedure(const AFormClass: TComponentClass; var AForm)
    of object;
  TEventIntercept = procedure(const AForm) of object;
  TEventOnShowFormMaster = procedure(const AFormClass: TComponentClass;
    var AForm; Callback: TEventIntercept) of object;
  TEventNotifyError = procedure(E: Exception; const AMessage: string);
  TpTransaction = (tpDefault, tpCampaign, tpTithe);
  TNotifyToggleStep = procedure(const AStepIndex: Integer) of object;

  THelperTpTransaction = record helper for TpTransaction
    function GetTextByInt(const Avalue: Integer): string;
  end;

implementation

{ THelperTpTransaction }

function THelperTpTransaction.GetTextByInt(const Avalue: Integer): string;
const
  LDescriptions: array of string = ['Padrão', 'Campanhas', 'Dízimo', 'Oferta'];
begin
  if (Avalue in [0, 1, 2, 3]) then
    Result := LDescriptions[Avalue];
end;

end.
