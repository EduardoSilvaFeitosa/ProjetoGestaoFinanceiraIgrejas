unit Factory.Interfaces.Intf;

interface

uses
  Utils.Types,
  Factory.Entity.Intf;

type
  IFactory_Interfaces = interface
    ['{D7B92A66-4AF7-4094-A61C-B1DD2322D5BA}']
    function Campaigns   : IFactory_Entity;
    function Churchs     : IFactory_Entity;
    function Dashboard   : IFactory_Entity;
    function Members     : IFactory_Entity;
    function Reports     : IFactory_Entity;
    function Schedules   : IFactory_Entity;
    function Transactions: IFactory_Entity;
    function Users       : IFactory_Entity;


    procedure SetOnShowDetails   (const Value: TEventOnShowFormMaster);
    procedure SetOnShowMaster    (const Value: TEventOnShowFormMaster);
    procedure SetOnShowWorkflow  (const Value: TEventOnShowFormMaster);
    procedure SetOnEndShowDetails(const Value: TCustomNotifyEvent);

    property OnShowMaster: TEventOnShowFormMaster   write SetOnShowMaster;
    property OnShowDetails: TEventOnShowFormMaster  write SetOnShowDetails;
    property OnShowWorkflow: TEventOnShowFormMaster write SetOnShowWorkflow;
    property OnEndShowDetails: TCustomNotifyEvent   write SetOnEndShowDetails;
  end;

implementation

end.
