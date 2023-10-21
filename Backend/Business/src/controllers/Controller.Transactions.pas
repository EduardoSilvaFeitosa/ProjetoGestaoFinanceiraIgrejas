unit Controller.Transactions;

interface

uses
  Data.DB,
  Controller.Register,
  Service.Register.Transaction.Intf,
  Controller.Register.Transaction.Intf;

type
  TControllerRegisterTransaction = class(TControllerRegister, IControllerRegisterTransaction)
  public
    class function New(const AService: IServiceRegisterTransaction)
      : IControllerRegisterTransaction;
  end;

implementation

{ TControllerRegisterTransaction }

class function TControllerRegisterTransaction.New(const AService: IServiceRegisterTransaction)
  : IControllerRegisterTransaction;
begin
  Result := Self.Create(AService);
end;
end.
