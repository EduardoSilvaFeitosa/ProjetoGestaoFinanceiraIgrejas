unit Service.Base.Entity.Details;

interface

uses
  Data.DB,
  Utils.Types,
  Providers.Request.Intf,
  Service.Entity.Details.Intf;

type
  TService_EntityBase = class(TInterfacedObject, IService_EntityDetail,
    IService_EntityGrid)
  private
    FPage: Integer;
    FPages: Integer;
    FRecords: Integer;
    FDoBeforeList: TCustomNotifyEvent;
    FQueryData, FQueryRegister: TDataSet;
    FRequest: IProvider_Request;
    function GetResourceSuffix: string;
  protected
    FPageLimit: Integer;
    constructor Create(const AResource: string);
    property Request: IProvider_Request read FRequest;
    procedure DoBeforeGetRefreshData; virtual;
  public
    procedure Update;
    procedure Insert;
    procedure Save;
    procedure GetById(const AId: Integer);
    procedure QueryRegister(const ADataSet: TDataSet);

    procedure Delete;
    procedure RefreshData;
    procedure ClearParams;

    function GetPage: Integer;
    function GetPages: Integer;
    function GetRecords: Integer;
    function GetPageLimit: Integer;
    function GetDetails: IService_EntityDetail;
    /// <summary>
    /// On change page, the data is reloaded
    /// </summary>
    procedure GoToPage(const AIndex: Integer);
    procedure SetPage(const value: Integer);
    procedure SetPages(const value: Integer);
    procedure SetDoBeforeList(value: TCustomNotifyEvent);

    property Page: Integer read GetPage write SetPage;
    property Pages: Integer read GetPages write SetPages;
    property Records: Integer read GetRecords;
    property PageLimit: Integer read GetPageLimit;
    property Details: IService_EntityDetail read GetDetails;

    property DoBeforeList: TCustomNotifyEvent write SetDoBeforeList;
    procedure QueryData(const ADataSet: TDataSet);
  end;

implementation

uses
  Config.URL,
  System.JSON,
  System.SysUtils,
  DataSet.Serialize,
  Providers.Request,
  Providers.Response.Intf,
  FireDAC.Comp.Client;

{ TService_EntityBase }

procedure TService_EntityBase.ClearParams;
begin

end;

constructor TService_EntityBase.Create(const AResource: string);
begin
  FPage := 1;
  FPages := 1;
  FRecords := 0;
  FPageLimit := 10;
  FRequest := TProvider_Request.New;
  FRequest.BaseURL(BS_URL).Resource(AResource);
end;

procedure TService_EntityBase.Delete;
var
  LResponse: IProvider_Response;
begin
  if (not FQueryData.Active) or (FQueryData.IsEmpty) then
    raise Exception.Create('Selecione um registro para excluir!');

  LResponse := Request.ResourceSuffix(GetResourceSuffix).Delete;

  if (LResponse.StatusCode <> 204) then
    raise Exception.Create(LResponse.Content);

  FQueryData.Delete;
end;

procedure TService_EntityBase.DoBeforeGetRefreshData;
begin

end;

procedure TService_EntityBase.GetById(const AId: Integer);
begin

end;

function TService_EntityBase.GetDetails: IService_EntityDetail;
begin
  Result := Self;
end;

function TService_EntityBase.GetPage: Integer;
begin
  Result := FPage;
end;

function TService_EntityBase.GetPageLimit: Integer;
begin
  Result := FPageLimit;
end;

function TService_EntityBase.GetPages: Integer;
begin
  Result := FPages;
end;

function TService_EntityBase.GetRecords: Integer;
begin
  Result := FRecords;
end;

function TService_EntityBase.GetResourceSuffix: string;
var
  LField: TField;
begin
  for LField in FQueryData.Fields do
  begin
    if (pfInKey in LField.ProviderFlags) then
      Exit(LField.AsString);
  end;
end;

procedure TService_EntityBase.GoToPage(const AIndex: Integer);
begin
  Self.FPage := AIndex;
  Self.RefreshData;
end;

procedure TService_EntityBase.Insert;
begin
  if (not FQueryRegister.Active) then
    FQueryRegister.Open;

  FQueryRegister.Append;
end;

procedure TService_EntityBase.QueryData(const ADataSet: TDataSet);
begin
  FQueryData := ADataSet;
end;

procedure TService_EntityBase.QueryRegister(const ADataSet: TDataSet);
begin
  FQueryRegister := ADataSet;
end;

procedure TService_EntityBase.RefreshData;
var
  LResponse: IProvider_Response;
  LData: TJSONArray;
begin
  FQueryData.DisableControls;
  try
    Request
      .ResourceSuffix(EmptyStr)
      .AddParam('limit', PageLimit.ToString)
      .AddParam('offset', (Pred(FPage) * PageLimit).ToString);
    DoBeforeGetRefreshData;
    LResponse := Request.Get;

    if (LResponse.StatusCode <> 200) then
      raise Exception.Create(LResponse.Content);

    if FQueryData.Active then
      TFDMemTable(FQueryData).EmptyDataSet;

    LData := LResponse.JSONValue.GetValue<TJSONArray>('data');
    FQueryData.LoadFromJSON(LData, False);
    FRecords := LResponse.JSONValue.GetValue<Integer>('records');
  finally
    FQueryData.EnableControls;
  end;
end;

procedure TService_EntityBase.Save;
var
  LResponse: IProvider_Response;
begin
  Request.AddBody(FQueryRegister.ToJSONObject);

  if (FQueryRegister.State = dsEdit) then
    LResponse := Request.Put
  else
    LResponse := Request.ResourceSuffix(EmptyStr).Post;

  if not(LResponse.StatusCode in [201, 204]) then
    raise Exception.Create(LResponse.Content);

  if not FQueryRegister.Active then
    FQueryRegister.Open;

  if (LResponse.StatusCode = 201) then
    if (FQueryRegister.State = dsEdit) then
      FQueryRegister.MergeFromJSONObject
        (LResponse.JSONValue.GetValue<TJSONObject>)
    else
      FQueryRegister.LoadFromJSON(LResponse.Content);

  FQueryRegister.Edit;
end;

procedure TService_EntityBase.SetDoBeforeList(value: TCustomNotifyEvent);
begin
  FDoBeforeList := value;
end;

procedure TService_EntityBase.SetPage(const value: Integer);
begin
  FPage := value;
end;

procedure TService_EntityBase.SetPages(const value: Integer);
begin
  FPages := value;
end;

procedure TService_EntityBase.Update;
var
  LResponse: IProvider_Response;
begin
  if (not FQueryData.Active) or (FQueryData.IsEmpty) then
    raise Exception.Create('Selecione um registro para alterar!');

  LResponse := Request.ResourceSuffix(GetResourceSuffix).Get;
  if (LResponse.StatusCode <> 200) then
    raise Exception.Create(LResponse.Content);

  if FQueryRegister.Active then
  begin
    FQueryRegister.Cancel;
    FQueryRegister.Open;
  end;

  FQueryRegister.LoadFromJSON(LResponse.Content);
  FQueryRegister.Edit;
end;

end.
