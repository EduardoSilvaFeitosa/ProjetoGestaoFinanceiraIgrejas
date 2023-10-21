unit Handle.Details.Report;

interface

uses
  Handle.Base.Details,
  Handle.Details.Intf,
  Service.Entity.Details.Intf;

type
  THandle_ReportDetails = class(THandle_DetailsBase)
  private
    procedure SetServiceAdd(const AForm);
    procedure SetServiceEdit(const AForm);
    procedure SetServiceShow(const AForm);
    procedure SetServiceDelete(const AForm);
  public
    procedure Add; override;
    procedure Show; override;
    procedure Edit; override;
    procedure Delete; override;
    class function New(const AService: IService_EntityDetail)
      : IHandle_DetailsEvents;
  end;

implementation

uses
  View.Register.Report.Workflow,
  View.Register.Report.Details, View.Popup.Delete;

{ THandle_ReportDetails }

procedure THandle_ReportDetails.Add;
var
  LForm: TFrmRegReportWorkflow;
begin
  inherited;
  Self.FOnShowWorkflow(TFrmRegReportWorkflow, LForm, SetServiceAdd);
  LForm.AddOuvinteOnClose(Self.OnDetailsClose);
end;

procedure THandle_ReportDetails.Delete;
var
  LForm:TFrmPopupDelete;
begin
  inherited;
  Self.FOnShowWorkflow(TFrmPopupDelete, LForm, SetServiceDelete);
  LForm.AddListenerCloseDetails(Self.OnDetailsClose);
  // Abrir o formul�rio questionando de o usu�rio
  // realmente quer excluir o registro
end;

procedure THandle_ReportDetails.Edit;
var
  LForm: TFrmRegReportDetails;
begin
  inherited;
  Self.FOnShowDetails(TFrmRegReportDetails, LForm, SetServiceEdit);
  LForm.AddListenerCloseDetails(Self.OnDetailsClose);
end;

procedure THandle_ReportDetails.SetServiceAdd(const AForm);
begin
  TFrmRegReportWorkflow(AForm).Service := Self.Service;
  TFrmRegReportWorkflow(AForm).Service.Insert;
end;

procedure THandle_ReportDetails.SetServiceDelete(const AForm);
begin
  TFrmPopupDelete(AForm).Service := Self.Service;
end;

procedure THandle_ReportDetails.SetServiceEdit(const AForm);
begin
  TFrmRegReportDetails(AForm).Service := Self.Service;
  TFrmRegReportDetails(AForm).Service.Update;
end;

procedure THandle_ReportDetails.SetServiceShow(const AForm);
begin
  TFrmRegReportDetails(AForm).Service := Self.Service;
  TFrmRegReportDetails(AForm).Service.Update;
  TFrmRegReportDetails(AForm).ReadOnlyMode;
end;

procedure THandle_ReportDetails.Show;
var
  LForm: TFrmRegReportDetails;
begin
  inherited;
  Self.FOnShowDetails(TFrmRegReportDetails, LForm, SetServiceShow);
  LForm.AddListenerCloseDetails(Self.OnDetailsClose);
end;

class function THandle_ReportDetails.New(const AService: IService_EntityDetail)
  : IHandle_DetailsEvents;
begin
  Result := Self.Create(AService);
end;

end.
