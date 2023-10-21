unit Factory.User;

interface

uses
  Factory.User.Intf,
  Factory.Entity.Intf,
  Factory.Base.Entity,
  Controller.Base.Entity.Intf;

type
  TFactory_User = class(TFactory_Entity, IFactory_User)
  protected
    procedure StartController; override;
  public
    class function New: IFactory_User;
  end;

implementation

uses
  Service.Entity.User,
  Handle.Details.User,
  Handle.Details.Intf,
  Controller.Entity.User,
  Service.Entity.Details.Intf;

{ TFactory_User }

procedure TFactory_User.StartController;
var
  LService: IService_EntityGrid;
  LDetail: IHandle_DetailsEvents;
begin
  LService := TService_User.New;
  LDetail := THandle_UserDetails.New(LService.Details);
  BindEvents(LDetail);
  FController := TController_User.New(LService, LDetail);
end;

class function TFactory_User.New: IFactory_User;
begin
  Result := Self.Create;
end;

end.
