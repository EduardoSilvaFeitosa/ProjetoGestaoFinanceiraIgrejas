unit Factory.Reports;

interface

uses
  Factory.Base.Entity,
  Factory.Report.Intf,
  Handle.Base.Details;

type
  THandle_ReportDetails = class(THandle_DetailsBase)
  private
    procedure DefaultCallback(const AForm);
  public
    procedure Entries;
    procedure Campaigns;
    procedure CashFlow;
    procedure Tithes;
    procedure Withdrawals;
  end;

  TFactory_Report = class(TFactory_Entity, IFactory_Report)
  private
    FReportDetails: THandle_ReportDetails;
  protected
    procedure StartController; override;
  public
    procedure Entries;
    procedure Campaigns;
    procedure CashFlow;
    procedure Tithes;
    procedure Withdrawals;
    property ReportDetails: THandle_ReportDetails read FReportDetails;
    class function New: IFactory_Report;
    destructor Destroy; override;
  end;

implementation

uses
  View.Reports.Settings.Campaigns,
  View.Reports.Settings.CashFlow,
  View.Reports.Settings.Entries,
  View.Reports.Settings.Tithes,
  View.Reports.Settings.Withdrawals;

{ TFactory_Report }

procedure TFactory_Report.StartController;
begin
  FReportDetails := THandle_ReportDetails.Create(nil);
  BindEvents(FReportDetails);
end;

procedure TFactory_Report.Campaigns;
begin
  ReportDetails.Campaigns;
end;

procedure TFactory_Report.CashFlow;
begin
  ReportDetails.CashFlow;
end;

destructor TFactory_Report.Destroy;
begin
  FReportDetails.Free;
  inherited;
end;

procedure TFactory_Report.Entries;
begin
  ReportDetails.Entries;
end;

procedure TFactory_Report.Tithes;
begin
  ReportDetails.Tithes;
end;

procedure TFactory_Report.Withdrawals;
begin
  ReportDetails.Withdrawals;
end;

class function TFactory_Report.New: IFactory_Report;
begin
  Result := Self.Create;
end;

{ THandle_ReportDetails }

procedure THandle_ReportDetails.Campaigns;
var
  LForm: TFrmReportCampaigns;
begin
  Self.FOnShowWorkflow(TFrmReportCampaigns, LForm, DefaultCallback);
  LForm.AddListenerCloseDetails(Self.OnDetailsClose);
end;

procedure THandle_ReportDetails.CashFlow;
var
  LForm: TFrmReportCashFlow;
begin
  Self.FOnShowWorkflow(TFrmReportCashFlow, LForm, DefaultCallback);
  LForm.AddListenerCloseDetails(Self.OnDetailsClose);
end;

procedure THandle_ReportDetails.Entries;
var
  LForm: TFrmReportEntries;
begin
  Self.FOnShowWorkflow(TFrmReportEntries, LForm, DefaultCallback);
  LForm.AddListenerCloseDetails(Self.OnDetailsClose);
end;

procedure THandle_ReportDetails.Tithes;
var
  LForm: TFrmReportTithes;
begin
  Self.FOnShowWorkflow(TFrmReportTithes, LForm, DefaultCallback);
  LForm.AddListenerCloseDetails(Self.OnDetailsClose);
end;

procedure THandle_ReportDetails.Withdrawals;
var
  LForm: TFrmReportWithdrawals;
begin
  Self.FOnShowWorkflow(TFrmReportWithdrawals, LForm, DefaultCallback);
  LForm.AddListenerCloseDetails(Self.OnDetailsClose);
end;

procedure THandle_ReportDetails.DefaultCallback(const AForm);
begin
  // Nothing to Execute
end;

end.
