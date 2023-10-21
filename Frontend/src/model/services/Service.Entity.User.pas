unit Service.Entity.User;

interface

uses
  Service.Entity.Details.Intf,
  Service.Base.Entity.Details;

type
  TService_User = class(TService_EntityBase)
  private
    constructor Create;
  public
    class function New: IService_EntityGrid;
  end;

implementation

{ TService_User }

constructor TService_User.create;
begin
  inherited Create('users');
end;

class function TService_User.New: IService_EntityGrid;
begin
  Result := Self.create;
end;

end.
