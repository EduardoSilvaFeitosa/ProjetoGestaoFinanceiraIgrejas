program Backend;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  Horse,
  Horse.JWT,
  System.JSON,
  Horse.Logger,
  Horse.Jhonson,
  System.SysUtils,
  Horse.HandleException,
  Horse.Logger.Provider.Console,
  Router.Campaigns in 'src\routers\Router.Campaigns.pas',
  Router.Members in 'src\routers\Router.Members.pas',
  Router.Schedules in 'src\routers\Router.Schedules.pas',
  Router.Transactions in 'src\routers\Router.Transactions.pas',
  Router.Users in 'src\routers\Router.Users.pas',
  Controller.Campaigns in 'src\controllers\Controller.Campaigns.pas',
  Controller.Members in 'src\controllers\Controller.Members.pas',
  Controller.Schedules in 'src\controllers\Controller.Schedules.pas',
  Controller.Transactions in 'src\controllers\Controller.Transactions.pas',
  Controller.Users in 'src\controllers\Controller.Users.pas',
  Service.Register.Campaigns in 'src\model\services\registers\Service.Register.Campaigns.pas',
  Service.Register.Members in 'src\model\services\registers\Service.Register.Members.pas',
  Service.Register.Schedules in 'src\model\services\registers\Service.Register.Schedules.pas',
  Service.Register.Transactions in 'src\model\services\registers\Service.Register.Transactions.pas',
  Service.Register.Users in 'src\model\services\registers\Service.Register.Users.pas',
  Controller.Register.Intf in 'src\controllers\Intefaces\Controller.Register.Intf.pas',
  Controller.Register in 'src\controllers\Controller.Register.pas',
  Service.Register.Intf in 'src\model\services\registers\Interfaces\Service.Register.Intf.pas',
  Service.Register in 'src\model\services\registers\Service.Register.pas',
  Service.Register.User.Intf in 'src\model\services\registers\Interfaces\Service.Register.User.Intf.pas',
  Router.Common.Response in 'src\routers\commons\Router.Common.Response.pas',
  DTO.User in 'src\controllers\dto\DTO.User.pas',
  DTO.Register in 'src\controllers\dto\DTO.Register.pas',
  Common.types in 'src\common\types\Common.types.pas',
  Common.Utils.Notifications in 'src\common\utils\Common.Utils.Notifications.pas',
  Common.Utils.Notifications.Intf in 'src\common\utils\Interfaces\Common.Utils.Notifications.Intf.pas',
  Controller.Register.User.Intf in 'src\controllers\Intefaces\Controller.Register.User.Intf.pas',
  DTO.Member in 'src\controllers\dto\DTO.Member.pas',
  Service.Register.Member.Intf in 'src\model\services\registers\Interfaces\Service.Register.Member.Intf.pas',
  Controller.Register.Member.Intf in 'src\controllers\Intefaces\Controller.Register.Member.Intf.pas',
  DTO.Campaign in 'src\controllers\dto\DTO.Campaign.pas',
  Service.Register.Campaign.Intf in 'src\model\services\registers\Interfaces\Service.Register.Campaign.Intf.pas',
  Controller.Register.Campaign.Intf in 'src\controllers\Intefaces\Controller.Register.Campaign.Intf.pas',
  Controller.Register.Transaction.Intf in 'src\controllers\Intefaces\Controller.Register.Transaction.Intf.pas',
  DTO.Transaction in 'src\controllers\dto\DTO.Transaction.pas',
  Service.Register.Transaction.Intf in 'src\model\services\registers\Interfaces\Service.Register.Transaction.Intf.pas',
  Router.Church in 'src\routers\Router.Church.pas',
  DTO.Church in 'src\controllers\dto\DTO.Church.pas',
  Controller.Churchs in 'src\controllers\Controller.Churchs.pas',
  Service.Register.Church.Intf in 'src\model\services\registers\Interfaces\Service.Register.Church.Intf.pas',
  Controller.Register.Church.Intf in 'src\controllers\Intefaces\Controller.Register.Church.Intf.pas',
  Service.Register.Churchs in 'src\model\services\registers\Service.Register.Churchs.pas',
  Provider.Connection in '..\Common\providers\Provider.Connection.pas',
  Router.Members.Transactions in 'src\routers\Router.Members.Transactions.pas',
  Controller.Register.Member.Transaction.Intf in 'src\controllers\Intefaces\Controller.Register.Member.Transaction.Intf.pas',
  Service.Register.Member.Transaction.Intf in 'src\model\services\registers\Interfaces\Service.Register.Member.Transaction.Intf.pas',
  Service.Register.Members.Transactions in 'src\model\services\registers\Service.Register.Members.Transactions.pas',
  Controller.Members.Transactions in 'src\controllers\Controller.Members.Transactions.pas',
  Router.Campaigns.Transactions in 'src\routers\Router.Campaigns.Transactions.pas',
  Service.Register.Campaign.Transaction.Intf in 'src\model\services\registers\Interfaces\Service.Register.Campaign.Transaction.Intf.pas',
  Controller.Register.Campaign.Transaction.Intf in 'src\controllers\Intefaces\Controller.Register.Campaign.Transaction.Intf.pas',
  Controller.Campaigns.Transactions in 'src\controllers\Controller.Campaigns.Transactions.pas',
  Service.Register.Campaigns.Transactions in 'src\model\services\registers\Service.Register.Campaigns.Transactions.pas',
  Service.Auth.Login in 'src\model\services\auth\Service.Auth.Login.pas',
  Service.Base in 'src\model\services\Service.Base.pas',
  Utils.Constants in '..\Common\utils\Utils.Constants.pas',
  Service.Auth.Login.Intf in 'src\model\services\auth\Interfaces\Service.Auth.Login.Intf.pas',
  Router.Authorization in 'src\routers\Router.Authorization.pas';

begin
  ReportMemoryLeaksOnShutdown := True;
  THorse.Use(Jhonson()).Use(HandleException);
  THorseLoggerManager.RegisterProvider(THorseLoggerProviderConsole.New());
  THorse.Use(THorseLoggerManager.HorseCallback);
  THorse.Use(HorseJWT(JWT_KEY, THorseJWTConfig.New.SkipRoutes(['login'])));

  { Routes }
  Router.Authorization.Registry;
  Router.Campaigns.Registry;
  Router.Members.Registry;
  Router.Schedules.Registry;
  Router.Transactions.Registry;
  Router.Users.Registry;
  Router.Church.Registry;
  Router.Campaigns.Transactions.Registry;
  Router.Members.Transactions.Registry;

  THorse.Listen(9000);
end.
