unit Factory.Interfaces;

interface

uses
  Utils.Types,
  Factory.Entity.Intf,
  Factory.Interfaces.Intf;

type
  TFactory_Interfaces = class(TInterfacedObject, IFactory_Interfaces)
  private
    FOnShowDetails: TEventOnShowFormMaster;
    FOnShowWorkflow: TEventOnShowFormMaster;
    FOnEndShowDetails: TCustomNotifyEvent;
    FOnShowMaster: TEventOnShowFormMaster;

    procedure SetOnShowDetails(const Value: TEventOnShowFormMaster);
    procedure SetOnShowMaster(const Value: TEventOnShowFormMaster);
    procedure SetOnShowWorkflow(const Value: TEventOnShowFormMaster);
    procedure StartController(const AForm; const AFactory: IFactory_Entity);
    procedure SetEvent(const AForm; const AFactory: IFactory_Entity);

    procedure StartControllerCampaign(const AForm);
    procedure StartControllerChurch(const AForm);
    procedure StartControllerDashboard(const AForm);
    procedure StartControllerMember(const AForm);
    procedure StartControllerReport(const AForm);
    procedure StartControllerUser(const AForm);
    procedure StartControllerTransaction(const AForm);
    procedure SetOnEndShowDetails(const Value: TCustomNotifyEvent);
  public
    function Campaigns: IFactory_Entity;
    function Churchs: IFactory_Entity;
    function Dashboard: IFactory_Entity;
    function Members: IFactory_Entity;
    function Reports: IFactory_Entity;
    function Schedules: IFactory_Entity;
    function Transactions: IFactory_Entity;
    function Users: IFactory_Entity;

    property OnShowMaster: TEventOnShowFormMaster write SetOnShowMaster;
    property OnShowDetails: TEventOnShowFormMaster write SetOnShowDetails;
    property OnShowWorkflow: TEventOnShowFormMaster write SetOnShowWorkflow;
    property OnEndShowDetails: TCustomNotifyEvent write SetOnEndShowDetails;
    class function New: IFactory_Interfaces;
  end;

implementation

{ TFactory_Interfaces }

uses
  {Views}
  View.Base.Master.Grid,
  View.Register.User.Grid,
  View.Register.Member.Grid,
  View.Register.Campaign.Grid,
  View.Reports.Master,
  View.Register.Transaction.Grid,
  View.Register.Church.Grid,
  {Factories}
  Factory.User,
  Factory.Members,
  Factory.Campaigns,
  Factory.Transactions,
  Factory.Churchs,
  Factory.Reports,
  Factory.Report.Intf,
  View.Master.Dashboard;

class function TFactory_Interfaces.New: IFactory_Interfaces;
begin
  Result := Self.Create;
end;

function TFactory_Interfaces.Campaigns: IFactory_Entity;
var
  LForm: TFrmRegCampaignGrid;
begin
  Self.FOnShowMaster(TFrmRegCampaignGrid, LForm, StartControllerCampaign);
end;

function TFactory_Interfaces.Churchs: IFactory_Entity;
var
  LForm: TFrmRegChurchGrid;
begin
  Self.FOnShowMaster(TFrmRegChurchGrid, LForm, StartControllerChurch);
end;

function TFactory_Interfaces.Dashboard: IFactory_Entity;
var
  LForm:TFrmMasterDashboard;
begin
  Self.FOnShowMaster(TFrmMasterDashboard, LForm, StartControllerDashboard);
end;

function TFactory_Interfaces.Members: IFactory_Entity;
var
  LForm: TFrmRegMemberGrid;
begin
  Self.FOnShowMaster(TFrmRegMemberGrid, LForm, StartControllerMember);
end;

function TFactory_Interfaces.Reports: IFactory_Entity;
var
  LForm: TFrmMasterReports;
begin
  Self.FOnShowMaster(TFrmMasterReports, LForm, StartControllerReport);
end;

function TFactory_Interfaces.Schedules: IFactory_Entity;
begin

end;

function TFactory_Interfaces.Transactions: IFactory_Entity;
var
  LForm: TFrmRegTransactionGrid;
begin
  Self.FOnShowMaster(TFrmRegTransactionGrid, LForm, StartControllerTransaction);
end;

function TFactory_Interfaces.Users: IFactory_Entity;
var
  LUser: TFrmRegUserGrid;
begin
  Self.FOnShowMaster(TFrmRegUserGrid, LUser, StartControllerUser);
end;

{$REGION 'Setters'}

procedure TFactory_Interfaces.SetOnEndShowDetails
  (const Value: TCustomNotifyEvent);
begin
  FOnEndShowDetails := Value;
end;

procedure TFactory_Interfaces.SetOnShowDetails(const Value
  : TEventOnShowFormMaster);
begin
  FOnShowDetails := Value;
end;

procedure TFactory_Interfaces.SetOnShowMaster(const Value
  : TEventOnShowFormMaster);
begin
  FOnShowMaster := Value;
end;

procedure TFactory_Interfaces.SetOnShowWorkflow(const Value
  : TEventOnShowFormMaster);
begin
  FOnShowWorkflow := Value;
end;
{$ENDREGION}

procedure TFactory_Interfaces.SetEvent(const AForm;
  const AFactory: IFactory_Entity);
begin
  AFactory.OnShowDetails := Self.FOnShowDetails;
  AFactory.OnShowWorkflow := Self.FOnShowWorkflow;
  AFactory.OnEndShowDetails := Self.FOnEndShowDetails;
  AFactory.AddListenerCloseDetails(TFrmBaseMasterGrid(AForm)
    .DoOnEndShowDetails);
end;

procedure TFactory_Interfaces.StartController(const AForm;
  const AFactory: IFactory_Entity);
begin
  SetEvent(AForm, AFactory);
  TFrmBaseMasterGrid(AForm).Controller := AFactory.GetEntityInstance;
end;

procedure TFactory_Interfaces.StartControllerCampaign(const AForm);
begin
  StartController(AForm, TFactory_Campaign.New);
end;

procedure TFactory_Interfaces.StartControllerChurch(const AForm);
begin
  StartController(AForm, TFactory_Church.New);
end;

procedure TFactory_Interfaces.StartControllerDashboard(const AForm);
begin

end;

procedure TFactory_Interfaces.StartControllerMember(const AForm);
begin
  StartController(AForm, TFactory_Member.New);
end;

procedure TFactory_Interfaces.StartControllerReport(const AForm);
var
  LFactory: IFactory_Report;
begin
  LFactory := TFactory_Report.New;
  SetEvent(AForm, LFactory);
  LFactory.GetEntityInstance;
  TFrmMasterReports(AForm).LoadFactory(LFactory);
end;

procedure TFactory_Interfaces.StartControllerTransaction(const AForm);
begin
  StartController(AForm, TFactory_Transaction.New);
end;

procedure TFactory_Interfaces.StartControllerUser(const AForm);
begin
  StartController(AForm, TFactory_User.New);
end;

end.
