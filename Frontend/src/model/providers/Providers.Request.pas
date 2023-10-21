unit Providers.Request;

interface

uses
  Rest.Types,
  System.JSON,
  RestRequest4D,
  System.Classes,
  Providers.Request.Intf,
  Providers.Response.Intf;

type
  TProvider_Request = class(TInterfacedObject, IProvider_Request)
  private
    FRequest: IRequest;
    function Get: IProvider_Response;
    function Post: IProvider_Response;
    function Put: IProvider_Response;
    function Delete: IProvider_Response;
    function AddParam(const AKey, AValue: string): IProvider_Request;
    function AddBody(const ABody: TJSONObject; const AOwner: Boolean = True)
      : IProvider_Request; overload;
    function BaseURL(const value: string): IProvider_Request;
    function ClearBody: IProvider_Request;
    function ClearParams: IProvider_Request;
    function ContentType(const value: string): IProvider_Request;
    function Resource(const value: string): IProvider_Request;
    function ResourceSuffix(const value: string): IProvider_Request;
    function RefreshToken: Boolean;
    function Execute(const AMethod: TRESTRequestMethod): IProvider_Response;

    procedure DoBeforeExecute;
    constructor Create;
  public
    class function New: IProvider_Request;
    destructor Destroy; override;
  end;

implementation

uses
  Config.URL,
  System.SysUtils,
  Providers.Session;

{ TProvider_Request }

function TProvider_Request.AddBody(const ABody: TJSONObject;
  const AOwner: Boolean): IProvider_Request;
begin
  Result := Self;
  FRequest.AddBody(ABody, AOwner);
end;

function TProvider_Request.AddParam(const AKey, AValue: string)
  : IProvider_Request;
begin
  Result := Self;
  FRequest.AddParam(AKey, AValue);
end;

function TProvider_Request.BaseURL(const value: string): IProvider_Request;
begin
  Result := Self;
  FRequest.BaseURL(value);
end;

function TProvider_Request.ClearBody: IProvider_Request;
begin
  Result := Self;
  FRequest.ClearBody;
end;

function TProvider_Request.ClearParams: IProvider_Request;
begin
  Result := Self;
  FRequest.ClearParams;
end;

function TProvider_Request.ContentType(const value: string): IProvider_Request;
begin
  Result := Self;
  FRequest.ContentType(value);
end;

constructor TProvider_Request.Create;
begin
  FRequest := TRequest.New;
end;

function TProvider_Request.Get: IProvider_Response;
begin
  Result := Execute(TRESTRequestMethod.rmGET);
end;

function TProvider_Request.Post: IProvider_Response;
begin
  Result := Execute(TRESTRequestMethod.rmPOST);
end;

function TProvider_Request.Put: IProvider_Response;
begin
  Result := Execute(TRESTRequestMethod.rmPUT);
end;

function TProvider_Request.Delete: IProvider_Response;
begin
  Result := Execute(TRESTRequestMethod.rmDELETE);
end;

destructor TProvider_Request.Destroy;
begin
  FRequest := nil;
  inherited;
end;

procedure TProvider_Request.DoBeforeExecute;
begin
  if (not TProvider_Session.GetInstance.Token.Access.Trim.IsEmpty) then
    FRequest.Token('bearer ' + TProvider_Session.GetInstance.Token.Access);
end;

function TProvider_Request.Execute(const AMethod: TRESTRequestMethod)
  : IProvider_Response;
begin
  DoBeforeExecute;
  case AMethod of
    TRESTRequestMethod.rmPOST:
      Result := FRequest.Post;
    TRESTRequestMethod.rmPUT:
      Result := FRequest.Put;
    TRESTRequestMethod.rmGET:
      Result := FRequest.Get;
    TRESTRequestMethod.rmDELETE:
      Result := FRequest.Delete;
  end;
  if (Result.StatusCode = 401) then
  begin
    if RefreshToken then
      Result := Execute(AMethod);
  end;
end;

class function TProvider_Request.New: IProvider_Request;
begin
  Result := Self.Create;
end;

function TProvider_Request.RefreshToken: Boolean;
var
  LResponse: IProvider_Response;
begin
  LResponse :=
  TRequest.New
  .Token('bearer ' + TProvider_Session.GetInstance.Token.Refresh)
  .BaseURL(BS_URL_LOGIN)
  .Resource('refresh')
  .Get;

  Result := (LResponse.StatusCode = 200);
  if Result then
    TProvider_Session.GetInstance.Token.Access :=
      LResponse.JSONValue.GetValue<string>('access');
end;

function TProvider_Request.Resource(const value: string): IProvider_Request;
begin
  Result := Self;
  FRequest.Resource(value);
end;

function TProvider_Request.ResourceSuffix(const value: string)
  : IProvider_Request;
begin
  Result := Self;
  FRequest.ResourceSuffix(value);
end;
end.
