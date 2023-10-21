unit Handle.Details.Transaction;

interface

uses
  Handle.Base.Details,
  Handle.Details.Intf,
  Service.Entity.Details.Intf;

type
  THandle_TransactionDetails = class(THandle_DetailsBase)
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
  View.Register.Transaction.Details,
  View.Register.Transaction.Workflow;

{ THandle_TransactionDetails }

procedure THandle_TransactionDetails.Add;
var
  LForm: TFrmRegTransactionWorkflow;
begin
  inherited;
  Self.FOnShowWorkflow(TFrmRegTransactionWorkflow, LForm, SetServiceAdd);
  LForm.AddOuvinteOnClose(Self.OnDetailsClose);
end;

procedure THandle_TransactionDetails.Delete;
var
  LForm: TFrmPopupDelete;
begin
  inherited;
  Self.FOnShowWorkflow(TFrmPopupDelete, LForm, SetServiceDelete);
  LForm.AddListenerCloseDetails(Self.OnDetailsClose);
end;

procedure THandle_TransactionDetails.Edit;
var
  LForm: TFrmRegTransactionDetails;
begin
  inherited;
  Self.FOnShowDetails(TFrmRegTransactionDetails, LForm, SetServiceEdit);
  LForm.AddListenerCloseDetails(Self.OnDetailsClose);
end;

procedure THandle_TransactionDetails.SetServiceAdd(const AForm);
begin
  TFrmRegTransactionWorkflow(AForm).Service := Self.Service;
  TFrmRegTransactionWorkflow(AForm).Service.Insert;
end;

procedure THandle_TransactionDetails.SetServiceDelete(const AForm);
begin
  TFrmPopupDelete(AForm).Service := Self.Service;
end;

procedure THandle_TransactionDetails.SetServiceEdit(const AForm);
begin
  TFrmRegTransactionDetails(AForm).Service := Self.Service;
  TFrmRegTransactionDetails(AForm).Service.Update;
end;

procedure THandle_TransactionDetails.SetServiceShow(const AForm);
begin
  TFrmRegTransactionDetails(AForm).Service := Self.Service;
  TFrmRegTransactionDetails(AForm).Service.Update;
  TFrmRegTransactionDetails(AForm).ReadOnlyMode;
end;

procedure THandle_TransactionDetails.Show;
var
  LForm: TFrmRegTransactionDetails;
begin
  inherited;
  Self.FOnShowDetails(TFrmRegTransactionDetails, LForm, SetServiceShow);
  LForm.AddListenerCloseDetails(Self.OnDetailsClose);
end;

class function THandle_TransactionDetails.New(const AService
  : IService_EntityDetail): IHandle_DetailsEvents;
begin
  Result := Self.Create(AService);
end;

end.
