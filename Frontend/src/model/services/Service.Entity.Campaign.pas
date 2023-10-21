unit Service.Entity.Campaign;

interface

uses
  Service.Entity.Details.Intf,
  Service.Base.Entity.Details;

type
  TService_Campaign = class(TService_EntityBase)
  private
    constructor Create;
  public
    class function New: IService_EntityGrid;
  end;

implementation

{ TService_Campaign }

constructor TService_Campaign.create;
begin
  inherited Create('campaigns');
end;

class function TService_Campaign.New: IService_EntityGrid;
begin
  Result := Self.create;
end;

end.
