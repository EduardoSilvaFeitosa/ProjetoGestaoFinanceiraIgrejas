unit Factory.Report.Intf;

interface

uses
  Factory.Entity.Intf;

type
  IFactory_Report = interface(IFactory_Entity)
    ['{3F76AD96-82C9-4AED-818D-028BF754B28D}']
    procedure Entries;
    procedure Campaigns;
    procedure CashFlow;
    procedure Tithes;
    procedure Withdrawals;
  end;

implementation

end.
