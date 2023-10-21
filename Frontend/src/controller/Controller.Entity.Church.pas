unit Controller.Entity.Church;

interface

uses
  Handle.Details.Intf,
  Controller.Base.Entity,
  Controller.Base.Entity.Intf,
  Service.Entity.Details.Intf;

type
  TController_Church = class(TController_BaseEntity, IController_Entity)
    class function New(const AService: IService_EntityGrid;
      const AHDetails: IHandle_Details): IController_Entity;
  end;

implementation

{ TController_Church }

class function TController_Church.New(const AService: IService_EntityGrid;
  const AHDetails: IHandle_Details): IController_Entity;
begin
  Result := Self.Create(AService, AHDetails);
end;

end.
