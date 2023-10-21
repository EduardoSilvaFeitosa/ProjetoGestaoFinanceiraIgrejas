unit Service.Auth.Login.Intf;

interface

type
  IServiceAuthLogin = interface
    ['{EA02E949-4A7D-4496-9829-B99BEF83AD91}']
    function IsAuthenticated(const AUsername, APassword: string): Boolean;
    function GetUserId: string;
  end;

implementation

end.
