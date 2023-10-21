 unit Factory.Campaigns;

interface

uses
  Factory.Base.Entity,
  Factory.Campaign.Intf;

type
  TFactory_Campaign = class(TFactory_Entity, IFactory_Campaign)
  protected
    procedure StartController; override;
  public
    class function New: IFactory_Campaign;
  end;

implementation

uses
  Handle.Details.Intf,
  Handle.Details.Campaign,
  Service.Entity.Campaign,
  Controller.Entity.Campaign,
  Service.Entity.Details.Intf;

{ TFactory_Campaign }

procedure TFactory_Campaign.StartController;
var
  LService: IService_EntityGrid;
  LDetail: IHandle_DetailsEvents;
begin
  LService := TService_Campaign.New;
  LDetail := THandle_CampaignDetails.New(LService.Details);
  BindEvents(LDetail);
  FController := TController_Campaign.New(LService, LDetail);
end;

class function TFactory_Campaign.New: IFactory_Campaign;
begin
  Result := Self.Create;
end;

end.
