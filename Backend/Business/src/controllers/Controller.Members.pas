unit Controller.Members;

interface

uses
  Data.DB,
  Controller.Register,
  Service.Register.Member.Intf,
  Controller.Register.Member.Intf;

type
  TControllerRegisterMember = class(TControllerRegister, IControllerRegisterMember)
  public
    class function New(const AService: IServiceRegisterMember)
      : IControllerRegisterMember;
  end;

implementation

{ TControllerRegisterMember }

class function TControllerRegisterMember.New(const AService: IServiceRegisterMember)
  : IControllerRegisterMember;
begin
  Result := Self.Create(AService);
end;

end.
