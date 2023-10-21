unit Handle.Details.Church;

interface

uses
  Handle.Base.Details,
  Handle.Details.Intf,
  Service.Entity.Details.Intf;

type
  THandle_ChurchDetails = class(THandle_DetailsBase)
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
  View.Popup.Delete,
  View.Register.Church.Details,
  View.Register.Church.Workflow;

{ THandle_ChurchDetails }

procedure THandle_ChurchDetails.Add;
var
  LForm: TFrmRegChurchWorkflow;
begin
  inherited;
  Self.FOnShowWorkflow(TFrmRegChurchWorkflow, LForm, SetServiceAdd);
  LForm.AddOuvinteOnClose(Self.OnDetailsClose);
end;

procedure THandle_ChurchDetails.Delete;
var
  LForm: TFrmPopupDelete;
begin
  inherited;
  Self.FOnShowWorkflow(TFrmPopupDelete, LForm, SetServiceDelete);
  LForm.AddListenerCloseDetails(Self.OnDetailsClose);
end;

procedure THandle_ChurchDetails.Edit;
var
  LForm: TFrmRegChurchDetails;
begin
  inherited;
  Self.FOnShowDetails(TFrmRegChurchDetails, LForm, SetServiceEdit);
  LForm.AddListenerCloseDetails(Self.OnDetailsClose);
end;

procedure THandle_ChurchDetails.SetServiceAdd(const AForm);
begin
  TFrmRegChurchWorkflow(AForm).Service := Self.Service;
  TFrmRegChurchWorkflow(AForm).Service.Insert;
end;

procedure THandle_ChurchDetails.SetServiceDelete(const AForm);
begin
  TFrmPopupDelete(AForm).Service := Self.Service;
end;

procedure THandle_ChurchDetails.SetServiceEdit(const AForm);
begin
  TFrmRegChurchDetails(AForm).Service := Self.Service;
  TFrmRegChurchDetails(AForm).Service.Update;
end;

procedure THandle_ChurchDetails.SetServiceShow(const AForm);
begin
  TFrmRegChurchDetails(AForm).Service := Self.Service;
  TFrmRegChurchDetails(AForm).Service.Update;
  TFrmRegChurchDetails(AForm).ReadOnlyMode;
end;

procedure THandle_ChurchDetails.Show;
var
  LForm: TFrmRegChurchDetails;
begin
  inherited;
  Self.FOnShowDetails(TFrmRegChurchDetails, LForm, SetServiceShow);
  LForm.AddListenerCloseDetails(Self.OnDetailsClose);
end;

class function THandle_ChurchDetails.New(const AService: IService_EntityDetail)
  : IHandle_DetailsEvents;
begin
  Result := Self.Create(AService);
end;

end.
