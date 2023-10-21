unit Factory.Base.Entity;

interface

uses
  Utils.Types,
  Factory.Entity.Intf,
  Handle.Details.Intf,
  Controller.Base.Entity.Intf;

type
  TFactory_Entity = class(TInterfacedObject, IFactory_Entity)
  private
    FOnShowDetails: TEventOnShowFormMaster;
    FOnShowWorkflow: TEventOnShowFormMaster;
    FOnEndShowDetails: TCustomNotifyEvent;
    FListenerCloseDetails:TCustomNotifyEvent;
    procedure SetOnShowDetails(const Value: TEventOnShowFormMaster);
    procedure SetOnShowWorkflow(const Value: TEventOnShowFormMaster);
    procedure SetOnEndShowDetails(const Value: TCustomNotifyEvent);
  protected
    FController: IController_Entity;
    procedure StartController; virtual; abstract;
    procedure BindEvents(const AHandle: IHandle_DetailsEvents);
  public
    procedure AddListenerCloseDetails(AListener: TCustomNotifyEvent);
    function GetEntityInstance: IController_Entity; virtual;
    property OnShowDetails: TEventOnShowFormMaster read FOnShowDetails
      write SetOnShowDetails;
    property OnShowWorkflow: TEventOnShowFormMaster read FOnShowWorkflow
      write SetOnShowWorkflow;
    property OnEndShowDetails: TCustomNotifyEvent read FOnEndShowDetails
      write SetOnEndShowDetails;
  end;

implementation

{ TFactory_Entity }

procedure TFactory_Entity.AddListenerCloseDetails(
  AListener: TCustomNotifyEvent);
begin
  FListenerCloseDetails := AListener;
end;

procedure TFactory_Entity.BindEvents(const AHandle: IHandle_DetailsEvents);
begin
  AHandle.OnShowDetails  := OnShowDetails;
  AHandle.OnShowWorkflow := OnShowWorkflow;
  AHandle.AddOuvinteOnClose(OnEndShowDetails);
  AHandle.AddListenerCloseDetails(FListenerCloseDetails);
end;

function TFactory_Entity.GetEntityInstance: IController_Entity;
begin
  Self.StartController;
  Result := FController;
end;

procedure TFactory_Entity.SetOnEndShowDetails(const Value: TCustomNotifyEvent);
begin
  FOnEndShowDetails := Value;
end;

procedure TFactory_Entity.SetOnShowDetails(const Value: TEventOnShowFormMaster);
begin
  FOnShowDetails := Value;
end;

procedure TFactory_Entity.SetOnShowWorkflow(const Value: TEventOnShowFormMaster);
begin
  FOnShowWorkflow := Value;
end;

end.
