unit Controller.Campaigns;

interface

uses
  Data.DB,
  Controller.Register,
  Service.Register.Campaign.Intf,
  Controller.Register.Campaign.Intf;

type
  TControllerRegisterCampaign = class(TControllerRegister, IControllerRegisterCampaign)
  public
    class function New(const AService: IServiceRegisterCampaign)
      : IControllerRegisterCampaign;
  end;

implementation

{ TControllerRegisterCampaign }

class function TControllerRegisterCampaign.New(const AService: IServiceRegisterCampaign)
  : IControllerRegisterCampaign;
begin
  Result := Self.Create(AService);
end;

end.
