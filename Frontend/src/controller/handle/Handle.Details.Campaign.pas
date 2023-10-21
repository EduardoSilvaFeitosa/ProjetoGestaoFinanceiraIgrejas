unit Handle.Details.Campaign;

interface

uses
  Handle.Base.Details,
  Handle.Details.Intf,
  Service.Entity.Details.Intf;

type
  THandle_CampaignDetails = class(THandle_DetailsBase)
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
  View.Register.Campaign.Workflow,
  View.Register.Campaign.Details,
  View.Popup.Delete;

{ THandle_CampaignDetails }

procedure THandle_CampaignDetails.Add;
var
  LForm: TFrmRegCampaignWorkflow;
begin
  inherited;
  Self.FOnShowWorkflow(TFrmRegCampaignWorkflow, LForm, SetServiceAdd);
  LForm.AddOuvinteOnClose(Self.OnDetailsClose);
end;

procedure THandle_CampaignDetails.Delete;
var
  LForm:TFrmPopupDelete;
begin
  inherited;
  Self.FOnShowWorkflow(TFrmPopupDelete, LForm, SetServiceDelete);
  LForm.AddListenerCloseDetails(Self.OnDetailsClose);
end;

procedure THandle_CampaignDetails.Edit;
var
  LForm: TFrmRegCampaignDetails;
begin
  inherited;
  Self.FOnShowDetails(TFrmRegCampaignDetails, LForm, SetServiceEdit);
  LForm.AddListenerCloseDetails(Self.OnDetailsClose);
end;

procedure THandle_CampaignDetails.SetServiceAdd(const AForm);
begin
  TFrmRegCampaignWorkflow(AForm).Service := Self.Service;
  TFrmRegCampaignWorkflow(AForm).Service.Insert;
end;

procedure THandle_CampaignDetails.SetServiceDelete(const AForm);
begin
  TFrmPopupDelete(AForm).Service := Self.Service;
end;

procedure THandle_CampaignDetails.SetServiceEdit(const AForm);
begin
  TFrmRegCampaignDetails(AForm).Service := Self.Service;
  TFrmRegCampaignDetails(AForm).Service.Update;
end;

procedure THandle_CampaignDetails.SetServiceShow(const AForm);
begin
  TFrmRegCampaignDetails(AForm).Service := Self.Service;
  TFrmRegCampaignDetails(AForm).Service.Update;
  TFrmRegCampaignDetails(AForm).ReadOnlyMode;
end;

procedure THandle_CampaignDetails.Show;
var
  LForm: TFrmRegCampaignDetails;
begin
  inherited;
  Self.FOnShowDetails(TFrmRegCampaignDetails, LForm, SetServiceShow);
  LForm.AddListenerCloseDetails(Self.OnDetailsClose);
end;

class function THandle_CampaignDetails.New(const AService: IService_EntityDetail)
  : IHandle_DetailsEvents;
begin
  Result := Self.Create(AService);
end;

end.
