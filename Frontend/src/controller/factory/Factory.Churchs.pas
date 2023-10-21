unit Factory.Churchs;

interface

uses
  Factory.Base.Entity,
  Factory.Church.Intf;

type
  TFactory_Church = class(TFactory_Entity, IFactory_Church)
  protected
    procedure StartController; override;
  public
    class function New: IFactory_Church;
  end;

implementation

uses
  Handle.Details.Intf,
  Handle.Details.Church,
  Service.Entity.Church,
  Controller.Entity.Church,
  Service.Entity.Details.Intf;

{ TFactory_Church }

procedure TFactory_Church.StartController;
var
  LService: IService_EntityGrid;
  LDetail: IHandle_DetailsEvents;
begin
  LService := TService_Church.New;
  LDetail := THandle_ChurchDetails.New(LService.Details);
  BindEvents(LDetail);
  FController := TController_Church.New(LService, LDetail);
end;

class function TFactory_Church.New: IFactory_Church;
begin
  Result := Self.Create;
end;

end.
