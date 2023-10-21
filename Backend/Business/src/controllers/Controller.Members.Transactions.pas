unit Controller.Members.Transactions;

interface

uses
  Controller.Register,
  Service.Register.Member.Transaction.Intf,
  Controller.Register.Member.Transaction.Intf;

type
  TControllerRegisterMemberTransaction = class(TControllerRegister,
    IControllerRegisterMemberTransaction)
  public
    class function New(const AService: IServiceRegisterMemberTransaction)
      : IControllerRegisterMemberTransaction;
  end;

implementation

{ TControllerRegisterMemberTransaction }

class function TControllerRegisterMemberTransaction.New(const AService
  : IServiceRegisterMemberTransaction): IControllerRegisterMemberTransaction;
begin
  Result := Self.Create(AService);
end;

end.
