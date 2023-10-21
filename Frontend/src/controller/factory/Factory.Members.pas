unit Factory.Members;

interface

uses
  Factory.Base.Entity,
  Factory.Member.Intf;

type
  TFactory_Member = class(TFactory_Entity, IFactory_Member)
  protected
    procedure StartController; override;
  public
    class function New: IFactory_Member;
  end;

implementation

uses
  Handle.Details.Intf,
  Handle.Details.Member,
  Service.Entity.Member,
  Controller.Entity.Member,
  Service.Entity.Details.Intf;

{ TFactory_Member }

procedure TFactory_Member.StartController;
var
  LService: IService_EntityGrid;
  LDetail: IHandle_DetailsEvents;
begin
  LService := TService_Member.New;
  LDetail := THandle_MemberDetails.New(LService.Details);
  BindEvents(LDetail);
  FController := TController_Member.New(LService, LDetail);
end;

class function TFactory_Member.New: IFactory_Member;
begin
  Result := Self.Create;
end;

end.
