unit Providers.Request.Intf;

interface

uses
  System.JSON,
  System.Classes,
  Providers.Response.Intf;

type
  IProvider_Request = interface
    ['{F3111147-1A94-4B8B-B55A-00A56506EF26}']
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
  end;

implementation

end.
