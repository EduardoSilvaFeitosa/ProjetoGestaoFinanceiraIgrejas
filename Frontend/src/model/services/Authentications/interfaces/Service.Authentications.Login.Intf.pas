unit Service.Authentications.Login.Intf;

interface

type
  IService_Login = interface
    ['{8EA20466-FC25-462B-8D83-0F46D3F7623B}']
    procedure Login(const AUsername, APassword: string);
  end;

implementation

end.
