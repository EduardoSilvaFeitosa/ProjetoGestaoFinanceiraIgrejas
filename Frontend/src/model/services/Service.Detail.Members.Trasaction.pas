unit Service.Detail.Members.Trasaction;

interface

uses
  Data.DB,
  Service.Base.Entity.Details;

type
  IServiceMemberTransaction = interface
    ['{1F179617-E7B5-4642-969F-30C59615B07D}']
    procedure RegisterDataSet(const ADataSet: TDataSet);
    procedure SetCheckedId(const AId: Integer);
    procedure LoadData;
  end;

  TServiceMemberTransaction = class(TService_EntityBase,
    IServiceMemberTransaction)
  private
    FCheckedId: Integer;
    constructor Create;
  protected
    procedure DoBeforeGetRefreshData; override;
  public
    procedure RegisterDataSet(const ADataSet: TDataSet);
    procedure SetCheckedId(const AId: Integer);
    procedure LoadData;
    class function New: IServiceMemberTransaction;
  end;

implementation

uses
  System.SysUtils;

{ TServiceMemberTransaction }

constructor TServiceMemberTransaction.Create;
begin
  inherited Create('/members/transactions');
  FCheckedId := 0;
  FPageLimit := 100;
end;

procedure TServiceMemberTransaction.DoBeforeGetRefreshData;
begin
  inherited;
  Request.AddParam('checkedid', FCheckedId.ToString);
end;

procedure TServiceMemberTransaction.LoadData;
begin
  Self.RefreshData;
end;

class function TServiceMemberTransaction.New: IServiceMemberTransaction;
begin
  Result := Self.Create;
end;

procedure TServiceMemberTransaction.RegisterDataSet(const ADataSet: TDataSet);
begin
  Self.QueryData(ADataSet);
end;

procedure TServiceMemberTransaction.SetCheckedId(const AId: Integer);
begin
  FCheckedId := AId;
end;

end.
