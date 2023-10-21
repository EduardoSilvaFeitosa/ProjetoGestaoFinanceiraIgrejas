unit Handle.Details.User;

interface

uses
  Handle.Base.Details,
  Handle.Details.Intf,
  Service.Entity.Details.Intf;

type
  THandle_UserDetails = class(THandle_DetailsBase)
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
  View.Register.User.Workflow,
  View.Register.User.Details, View.Popup.Delete;

{ THandle_UserDetails }

procedure THandle_UserDetails.Add;
var
  LForm: TFrmRegUserWorkflow;
begin
  inherited;
  Self.FOnShowWorkflow(TFrmRegUserWorkflow, LForm, SetServiceAdd);
  LForm.AddOuvinteOnClose(Self.OnDetailsClose);
end;

procedure THandle_UserDetails.Delete;
var
  LForm:TFrmPopupDelete;
begin
  inherited;
  Self.FOnShowWorkflow(TFrmPopupDelete, LForm, SetServiceDelete);
  LForm.AddListenerCloseDetails(Self.OnDetailsClose);
  // Abrir o formulário questionando de o usuário
  // realmente quer excluir o registro
end;

procedure THandle_UserDetails.Edit;
var
  LForm: TFrmRegUserDetails;
begin
  inherited;
  Self.FOnShowDetails(TFrmRegUserDetails, LForm, SetServiceEdit);
  LForm.AddListenerCloseDetails(Self.OnDetailsClose);
end;

procedure THandle_UserDetails.SetServiceAdd(const AForm);
begin
  TFrmRegUserWorkflow(AForm).Service := Self.Service;
  TFrmRegUserWorkflow(AForm).Service.Insert;
end;

procedure THandle_UserDetails.SetServiceDelete(const AForm);
begin
  TFrmPopupDelete(AForm).Service := Self.Service;
end;

procedure THandle_UserDetails.SetServiceEdit(const AForm);
begin
  TFrmRegUserDetails(AForm).Service := Self.Service;
  TFrmRegUserDetails(AForm).Service.Update;
end;

procedure THandle_UserDetails.SetServiceShow(const AForm);
begin
  TFrmRegUserDetails(AForm).Service := Self.Service;
  TFrmRegUserDetails(AForm).Service.Update;
  TFrmRegUserDetails(AForm).ReadOnlyMode;
end;

procedure THandle_UserDetails.Show;
var
  LForm: TFrmRegUserDetails;
begin
  inherited;
  Self.FOnShowDetails(TFrmRegUserDetails, LForm, SetServiceShow);
  LForm.AddListenerCloseDetails(Self.OnDetailsClose);
end;

class function THandle_UserDetails.New(const AService: IService_EntityDetail)
  : IHandle_DetailsEvents;
begin
  Result := Self.Create(AService);
end;

end.
