unit Handle.Details.Member;

interface

uses
  Handle.Base.Details,
  Handle.Details.Intf,
  Service.Entity.Details.Intf;

type
  THandle_MemberDetails = class(THandle_DetailsBase)
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
  View.Register.Member.Workflow,
  View.Register.Member.Details,
  View.Popup.Delete,
  View.Base.Master.Workflow;

{ THandle_MemberDetails }

procedure THandle_MemberDetails.Add;
var
  LForm: TFrmRegMemberWorkflow;
begin
  inherited;
  Self.FOnShowWorkflow(TFrmRegMemberWorkflow, LForm, SetServiceAdd);
  LForm.AddOuvinteOnClose(Self.OnDetailsClose);
end;

procedure THandle_MemberDetails.Delete;
var
  LForm: TFrmPopupDelete;
begin
  inherited;
  Self.FOnShowWorkflow(TFrmPopupDelete, LForm, SetServiceDelete);
  LForm.AddListenerCloseDetails(Self.OnDetailsClose);
end;

procedure THandle_MemberDetails.Edit;
var
  LForm: TFrmRegMemberDetails;
begin
  inherited;
  Self.FOnShowDetails(TFrmRegMemberDetails, LForm, SetServiceEdit);
  LForm.AddListenerCloseDetails(Self.OnDetailsClose);
end;

procedure THandle_MemberDetails.SetServiceAdd(const AForm);
begin
  TFrmBaseMasterWorkflow(AForm).Service := Self.Service;
  TFrmBaseMasterWorkflow(AForm).Service.Insert;
end;

procedure THandle_MemberDetails.SetServiceDelete(const AForm);
begin
  TFrmPopupDelete(AForm).Service := Self.Service;
end;

procedure THandle_MemberDetails.SetServiceEdit(const AForm);
begin
  TFrmRegMemberDetails(AForm).Service := Self.Service;
  TFrmRegMemberDetails(AForm).Service.Update;
end;

procedure THandle_MemberDetails.SetServiceShow(const AForm);
begin
  TFrmRegMemberDetails(AForm).Service := Self.Service;
  TFrmRegMemberDetails(AForm).Service.Update;
  TFrmRegMemberDetails(AForm).ReadOnlyMode;
end;

procedure THandle_MemberDetails.Show;
var
  LForm: TFrmRegMemberDetails;
begin
  inherited;
  Self.FOnShowDetails(TFrmRegMemberDetails, LForm, SetServiceShow);
  LForm.AddListenerCloseDetails(Self.OnDetailsClose);
end;

class function THandle_MemberDetails.New(const AService: IService_EntityDetail)
  : IHandle_DetailsEvents;
begin
  Result := Self.Create(AService);
end;

end.
