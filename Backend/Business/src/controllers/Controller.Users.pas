unit Controller.Users;

interface

uses
  Data.DB,
  Controller.Register,
  Service.Register.User.Intf,
  Controller.Register.User.Intf;

type
  TControllerRegisterUser = class(TControllerRegister, IControllerRegisterUser)
  private
    procedure HideFields;
  public
    function GetById(const AId: string): TDataSet; override;
    class function New(const AService: IServiceRegisterUser)
      : IControllerRegisterUser;
  end;

implementation

{ TControllerRegisterUser }

function TControllerRegisterUser.GetById(const AId: string): TDataSet;
begin
  Result := inherited;
  HideFields;
end;

procedure TControllerRegisterUser.HideFields;
begin
  Service.GetQryRegister.FieldByName('password').Visible := False;
  Service.GetQryRegister.FieldByName('deleted_date').Visible := False;
end;

class function TControllerRegisterUser.New(const AService: IServiceRegisterUser)
  : IControllerRegisterUser;
begin
  Result := Self.Create(AService);
end;

end.
