unit Service.Entity.Church;

interface

uses
  Service.Entity.Details.Intf,
  Service.Base.Entity.Details;

type
  TService_Church = class(TService_EntityBase)
  private
    constructor Create;
  public
    class function New: IService_EntityGrid;
  end;

implementation

{ TService_Church }

constructor TService_Church.create;
begin
  inherited Create('churchs');
end;

class function TService_Church.New: IService_EntityGrid;
begin
  Result := Self.create;
end;

end.
