unit Handle.Details.Intf;

interface

uses
  Utils.Types;

type
  IHandle_Details = Interface
    ['{CE930473-EE42-4005-83B1-DC2520079812}']
    procedure Add;
    procedure Show;
    procedure Edit;
    procedure Delete;
    procedure AddListenerCloseDetails(AListener: TCustomNotifyEvent);
  End;

  IHandle_DetailsEvents = Interface(IHandle_Details)
    ['{C9E46851-887B-43DE-B043-C42BFB6E9848}']
    procedure SetOnShowDetails(const Value: TEventOnShowFormMaster);
    procedure SetOnShowWorkflow(const Value: TEventOnShowFormMaster);

    property OnShowDetails: TEventOnShowFormMaster  write SetOnShowDetails;
    property OnShowWorkflow: TEventOnShowFormMaster write SetOnShowWorkflow;
    procedure AddOuvinteOnClose(AOuvinte: TCustomNotifyEvent);
  End;

implementation

end.
