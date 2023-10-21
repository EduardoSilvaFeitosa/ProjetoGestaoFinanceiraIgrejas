unit Service.Detail.Campaign.Trasaction;

interface

uses
  Data.DB,
  Service.Base.Entity.Details;

type
  IServiceCampaignTransaction = interface
    ['{B9DC342F-1D1C-42E4-9E29-24805E766D5A}']
    procedure RegisterDataSet(const ADataSet: TDataSet);
    procedure SetCheckedId(const AId: Integer);
    procedure LoadData;
  end;

  TServiceCampaignTransaction = class(TService_EntityBase,
    IServiceCampaignTransaction)
  private
    FCheckedId: Integer;
    constructor Create;
  protected
    procedure DoBeforeGetRefreshData; override;
  public
    procedure RegisterDataSet(const ADataSet: TDataSet);
    procedure SetCheckedId(const AId: Integer);
    procedure LoadData;
    class function New: IServiceCampaignTransaction;
  end;

implementation

uses
  System.SysUtils;

{ TServiceCampaignTransaction }

constructor TServiceCampaignTransaction.Create;
begin
  inherited Create('/campaigns/transactions');
  FCheckedId := 0;
  FPageLimit := 100;
end;

procedure TServiceCampaignTransaction.DoBeforeGetRefreshData;
begin
  inherited;
  Request.AddParam('checkedid', FCheckedId.ToString);
end;

procedure TServiceCampaignTransaction.LoadData;
begin
  Self.RefreshData;
end;

class function TServiceCampaignTransaction.New: IServiceCampaignTransaction;
begin
  Result := Self.Create;
end;

procedure TServiceCampaignTransaction.RegisterDataSet(const ADataSet: TDataSet);
begin
  Self.QueryData(ADataSet);
end;

procedure TServiceCampaignTransaction.SetCheckedId(const AId: Integer);
begin
  FCheckedId := AId;
end;

end.
