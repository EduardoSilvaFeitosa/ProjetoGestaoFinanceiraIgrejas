unit Controller.Base.Entity;

interface

uses
  Data.DB,
  Utils.Types,
  Handle.Details.Intf,
  Service.Entity.Details.Intf;

type
  TController_BaseEntity = class(TInterfacedObject)
  private
    FPageLimit: Integer;
    FService: IService_EntityGrid;
    FDetail:  IHandle_Details;
    FListenerCloseDetails :TCustomNotifyEvent;
    function  GetPageLimit: Integer;
    procedure CalculatePagination;
    procedure SetDetail(const value: IHandle_Details);
  protected
    procedure Add;
    procedure Next;
    procedure Last;
    procedure First;
    procedure Previous;
    procedure Edit;
    procedure Show;
    procedure Delete;
    procedure Restart;
    procedure RefreshData;
    function GetPage: Integer;
    function GetPages: Integer;
    procedure QueryData(const ADataSet: TDataSet);
    procedure DoBeforeList; virtual;

    property Page: Integer                read GetPage;
    property Pages: Integer               read GetPages;
    property PageLimit: Integer           read GetPageLimit;
    property Details: IHandle_Details     read FDetail write SetDetail;
    property Service: IService_EntityGrid read FService;

    procedure AddListenerCloseDetails(AListener: TCustomNotifyEvent);
    constructor Create(const AService: IService_EntityGrid;
      const AHDetails: IHandle_Details);
  end;

implementation

{ TController_BaseEntity }

constructor TController_BaseEntity.Create(const AService: IService_EntityGrid;
  const AHDetails: IHandle_Details);
begin
  FService := AService;
  FDetail := AHDetails;
  FPageLimit := 10;
end;

procedure TController_BaseEntity.Add;
begin
  Details.Add;
end;

procedure TController_BaseEntity.First;
begin
  if (Service.Page = 1) then
    Exit;

  Service.GoToPage(1);
end;

function TController_BaseEntity.GetPage: Integer;
begin
  Result := Service.Page;
end;

function TController_BaseEntity.GetPageLimit: Integer;
begin
  Result := FPageLimit;
end;

function TController_BaseEntity.GetPages: Integer;
begin
  Result := Service.Pages;
end;

procedure TController_BaseEntity.Last;
begin
  if (Service.Page = Service.Pages) then
    Exit;

  Service.GoToPage(Service.Pages);
end;

procedure TController_BaseEntity.Next;
begin
  if (Service.Page = Service.Pages) then
    Exit;

  Service.GoToPage(Service.Page + 1);
end;

procedure TController_BaseEntity.Previous;
begin
  if (Service.Page = 1) then
    Exit;

  Service.GoToPage(Pred(Service.Page));
end;

procedure TController_BaseEntity.QueryData(const ADataSet: TDataSet);
begin
  Service.QueryData(ADataSet);
end;

procedure TController_BaseEntity.RefreshData;
begin
  Service.RefreshData;
  CalculatePagination;
end;

procedure TController_BaseEntity.Restart;
begin
  // vai para a página 1
end;

procedure TController_BaseEntity.SetDetail(const value: IHandle_Details);
begin
  FDetail := value;
end;

procedure TController_BaseEntity.Show;
begin
  Details.Show;
end;

procedure TController_BaseEntity.AddListenerCloseDetails(
  AListener: TCustomNotifyEvent);
begin
  FListenerCloseDetails := AListener;
end;

procedure TController_BaseEntity.CalculatePagination;
var
  LTotalPages: Double;
begin
  if (FService.Page <= 0) then
    FService.Page := 1;

  LTotalPages := (FService.Records / PageLimit);

  FService.Pages := Trunc(LTotalPages);
  if ((LTotalPages - FService.Pages) > 0) or (FService.Pages = 0) then
    FService.Pages := FService.Pages + 1;
end;

procedure TController_BaseEntity.Delete;
begin
 Details.Delete;
end;

procedure TController_BaseEntity.DoBeforeList;
begin
  // This method will be overwritten
end;

procedure TController_BaseEntity.Edit;
begin
  Details.Edit;
end;

end.
