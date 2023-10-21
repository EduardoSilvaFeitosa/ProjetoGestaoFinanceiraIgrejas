unit Controller.Campaigns.Transactions;

interface

uses
  Controller.Register,
  Service.Register.Campaign.Transaction.Intf,
  Controller.Register.Campaign.Transaction.Intf;

type
  TControllerRegisterCampaignTransaction = class(TControllerRegister,
    IControllerRegisterCampaignTransaction)
  public
    class function New(const AService: IServiceRegisterCampaignTransaction)
      : IControllerRegisterCampaignTransaction;
  end;

implementation

{ TControllerRegisterCampaignTransaction }

class function TControllerRegisterCampaignTransaction.New(const AService
  : IServiceRegisterCampaignTransaction): IControllerRegisterCampaignTransaction;
begin
  Result := Self.Create(AService);
end;

end.
