unit Handle.Base.Details;

interface

uses
  Utils.Types,
  Handle.Details.Intf,
  System.Generics.Collections,
  Service.Entity.Details.Intf;

type
  {
    - cria o formulário de detalhes no modo ReadOnly
    - cria o formulário de cadastro no modo WorkFlow
  }
  THandle_DetailsBase = class(TInterfacedObject, IHandle_DetailsEvents,
    IHandle_Details)
  private
    LOuvintesOnClose: TList<TCustomNotifyEvent>;
    FService: IService_EntityDetail;
    procedure SetService(const Value: IService_EntityDetail);
  protected
    FOnShowDetails: TEventOnShowFormMaster;
    FOnShowWorkflow: TEventOnShowFormMaster;
    procedure SetOnShowDetails(const Value: TEventOnShowFormMaster);
    procedure SetOnShowWorkflow(const Value: TEventOnShowFormMaster);
    procedure NotifyClose;
    procedure OnDetailsClose;
    constructor Create(const AService: IService_EntityDetail);
  public
    procedure Add; virtual;
    procedure Show; virtual;
    procedure Edit; virtual;
    procedure Delete; virtual;
    destructor Destroy; override;
    procedure AddOuvinteOnClose(AOuvinte: TCustomNotifyEvent);
    procedure AddListenerCloseDetails(AListener: TCustomNotifyEvent);

    property OnShowDetails: TEventOnShowFormMaster       write SetOnShowDetails;
    property OnShowWorkflow: TEventOnShowFormMaster      write SetOnShowWorkflow;
    property Service:IService_EntityDetail read FService write SetService;
  End;

implementation

{ THandle_DetailsBase }

procedure THandle_DetailsBase.Add;
begin
  // Deve abrir o formulário para cadastrar
end;

procedure THandle_DetailsBase.Edit;
begin

end;

constructor THandle_DetailsBase.Create(const AService: IService_EntityDetail);
begin
  FService := AService;
  LOuvintesOnClose := TList<TCustomNotifyEvent>.Create;
end;

procedure THandle_DetailsBase.Delete;
begin

end;

destructor THandle_DetailsBase.Destroy;
begin
  FService := nil;
  LOuvintesOnClose.Free;
  inherited;
end;

procedure THandle_DetailsBase.Show;
begin
  // Abrir o formuláro para editar ou visualizar
end;

procedure THandle_DetailsBase.AddListenerCloseDetails(
  AListener: TCustomNotifyEvent);
begin
  if Assigned(AListener) then
    LOuvintesOnClose.Add(AListener);
end;

procedure THandle_DetailsBase.AddOuvinteOnClose(AOuvinte: TCustomNotifyEvent);
begin
  if Assigned(AOuvinte) then
    LOuvintesOnClose.Add(AOuvinte);
end;

procedure THandle_DetailsBase.NotifyClose;
var
  LOuvinte: TCustomNotifyEvent;
begin
  for LOuvinte in LOuvintesOnClose do
  begin
    LOuvinte();
  end;
end;

procedure THandle_DetailsBase.OnDetailsClose;
begin
  NotifyClose;
end;

procedure THandle_DetailsBase.SetOnShowDetails(const Value: TEventOnShowFormMaster);
begin
  FOnShowDetails := Value;
end;

procedure THandle_DetailsBase.SetOnShowWorkflow(const Value: TEventOnShowFormMaster);
begin
  FOnShowWorkflow := Value;
end;

procedure THandle_DetailsBase.SetService(const Value: IService_EntityDetail);
begin
  FService := Value;
end;

end.
