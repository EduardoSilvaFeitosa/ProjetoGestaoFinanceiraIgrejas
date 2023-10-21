program Reports;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  Horse,
  Horse.JWT,
  Horse.Logger,
  System.SysUtils,
  Horse.OctetStream,
  Horse.Logger.Provider.Console,
  Provider.Connection in '..\Common\providers\Provider.Connection.pas',
  Report.Base in 'src\reports\Report.Base.pas' {FrmReportBase},
  Report.Entries in 'src\reports\Report.Entries.pas' {FrmReportEntradas},
  Router.Entries in 'src\routers\Router.Entries.pas',
  Report.Withdrawals in 'src\reports\Report.Withdrawals.pas' {FrmReportWithdrawals},
  Router.Withdrawals in 'src\routers\Router.Withdrawals.pas',
  Report.Tithes in 'src\reports\Report.Tithes.pas' {FrmReportTithes},
  Router.Tithes in 'src\routers\Router.Tithes.pas',
  Report.Campaigns in 'src\reports\Report.Campaigns.pas' {FrmReportCampaigns},
  Router.Campaigns in 'src\routers\Router.Campaigns.pas',
  Report.CashFlow in 'src\reports\Report.CashFlow.pas' {FrmReportCashFlow},
  Router.CashFlow in 'src\routers\Router.CashFlow.pas',
  Utils.Constants in '..\Common\utils\Utils.Constants.pas';

begin
  THorse.Use(OctetStream);
  THorseLoggerManager.RegisterProvider(THorseLoggerProviderConsole.New());
  THorse.Use(THorseLoggerManager.HorseCallback);
  THorse.Use(HorseJWT(JWT_KEY, THorseJWTConfig.New));

  Router.Campaigns.Registry;
  Router.CashFlow.Registry;
  Router.Entries.Registry;
  Router.Tithes.Registry;
  Router.Withdrawals.Registry;
  THorse.Listen(9001);
end.
