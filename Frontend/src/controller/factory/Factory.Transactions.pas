 unit Factory.Transactions;

interface

uses
  Factory.Base.Entity,
  Factory.Transaction.Intf;

type
  TFactory_Transaction = class(TFactory_Entity, IFactory_Transaction)
  protected
    procedure StartController; override;
  public
    class function New: IFactory_Transaction;
  end;

implementation

uses
  Handle.Details.Intf,
  Handle.Details.Transaction,
  Service.Entity.Transaction,
  Controller.Entity.Transaction,
  Service.Entity.Details.Intf;

{ TFactory_Transaction }

procedure TFactory_Transaction.StartController;
var
  LService: IService_EntityGrid;
  LDetail: IHandle_DetailsEvents;
begin
  LService := TService_Transaction.New;
  LDetail := THandle_TransactionDetails.New(LService.Details);
  BindEvents(LDetail);
  FController := TController_Transaction.New(LService, LDetail);
end;

class function TFactory_Transaction.New: IFactory_Transaction;
begin
  Result := Self.Create;
end;

end.
