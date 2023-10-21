unit Controller.Churchs;

interface

uses
  Data.DB,
  Controller.Register,
  Service.Register.Church.Intf,
  Controller.Register.Church.Intf;

type
  TControllerRegisterChurch = class(TControllerRegister, IControllerRegisterChurch)
  public
    class function New(const AService: IServiceRegisterChurch)
      : IControllerRegisterChurch;
  end;

implementation

{ TControllerRegisterChurch }

class function TControllerRegisterChurch.New(const AService: IServiceRegisterChurch)
  : IControllerRegisterChurch;
begin
  Result := Self.Create(AService);
end;

end.
