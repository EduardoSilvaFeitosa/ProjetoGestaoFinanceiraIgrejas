unit Factory.Entity.Intf;

interface

uses
  Utils.Types,
  Controller.Base.Entity.Intf;

type
  IFactory_Entity = interface
    ['{6285D71C-D9FE-4548-BBE3-167197DC4595}']
    function GetEntityInstance: IController_Entity;
    procedure SetOnShowDetails(const Value: TEventOnShowFormMaster);
    procedure SetOnShowWorkflow(const Value: TEventOnShowFormMaster);
    procedure SetOnEndShowDetails(const Value: TCustomNotifyEvent);

    property OnShowDetails: TEventOnShowFormMaster  write SetOnShowDetails;
    property OnShowWorkflow: TEventOnShowFormMaster write SetOnShowWorkflow;
    property OnEndShowDetails: TCustomNotifyEvent   write SetOnEndShowDetails;
    procedure AddListenerCloseDetails(AListener: TCustomNotifyEvent);
  end;

implementation

end.
