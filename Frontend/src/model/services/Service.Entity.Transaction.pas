unit Service.Entity.Transaction;

interface

uses
  Service.Entity.Details.Intf,
  Service.Base.Entity.Details;

type
  TService_Transaction = class(TService_EntityBase)
  private
    constructor Create;
  public
    class function New: IService_EntityGrid;
  end;

implementation

{ TService_Transaction }

constructor TService_Transaction.Create;
begin
  inherited Create('transactions');
end;

class function TService_Transaction.New: IService_EntityGrid;
begin
  Result := Self.Create;
end;

end.
