unit Service.Entity.Member;

interface

uses
  Service.Entity.Details.Intf,
  Service.Base.Entity.Details;

type
  TService_Member = class(TService_EntityBase)
  private
    constructor Create;
  public
    class function New: IService_EntityGrid;
  end;

implementation

{ TService_Member }

constructor TService_Member.Create;
begin
  inherited Create('members');
end;

class function TService_Member.New: IService_EntityGrid;
begin
  Result := Self.create;
end;

end.
