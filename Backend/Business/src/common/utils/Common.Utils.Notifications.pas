unit Common.Utils.Notifications;

interface

uses
  System.JSON,
  Common.types,
  Common.Utils.Notifications.Intf;

type
  TUtilsNotifications = class(TInterfacedObject, IUtilsNotifications)
  private
    FOnNotification: TEventOnNotification;
    FErrorsNotifications: TJSONArray;
    FWarningNotifications: TJSONArray;
    FBusinessRulesNotifications: TJSONArray;

    function GetHasError: Boolean;
    function GetHasWarning: Boolean;
    function GetHasBusinessRules: Boolean;

    function GetOnNotification: TEventOnNotification;
    procedure SetOnNotification(const Value: TEventOnNotification);

    function GetErrorsNotifications: TJSONArray;
    function GetWarningNotifications: TJSONArray;
    function GetUnsatisfiedRulesNotifications: TJSONArray;
    procedure AddNotificacao(var Arr: TJSONArray; const AMsg: string;
      const AType: tpLevel);
  protected
    procedure AddError(const AMsg: string);
    procedure AddWarning(const AMsg: string);
    procedure AddUnsatisfiedRules(const AMsg: string);
    property OnNotification: TEventOnNotification read GetOnNotification
      write SetOnNotification;
  public
    constructor Create;
    destructor Destroy; override;
    property HasError: Boolean read GetHasError;
    property HasWarning: Boolean read GetHasWarning;
    property HasUnsatisfiedRules: Boolean read GetHasBusinessRules;

    property Errors: TJSONArray read GetErrorsNotifications;
    property Warnings: TJSONArray read GetWarningNotifications;
    property UnsatisfiedRules: TJSONArray read GetUnsatisfiedRulesNotifications;
  end;

implementation

{ TUtilsNotifications }

procedure TUtilsNotifications.AddError(const AMsg: string);
begin
  AddNotificacao(FErrorsNotifications, AMsg, tpError);
end;

procedure TUtilsNotifications.AddUnsatisfiedRules(const AMsg: string);
begin
  AddNotificacao(FBusinessRulesNotifications, AMsg, tpUnsatisfiedRule);
end;

procedure TUtilsNotifications.AddWarning(const AMsg: string);
begin
  AddNotificacao(FWarningNotifications, AMsg, tpWarning);
end;

procedure TUtilsNotifications.AddNotificacao(var Arr: TJSONArray;
  const AMsg: string; const AType: tpLevel);
var
  LJSON: TJSONObject;
begin
  if not Assigned(Arr) then
    Arr := TJSONArray.Create;
  LJSON := TJSONObject.Create;
  LJSON.AddPair(AType.Name, AMsg);
  Arr.Add(LJSON);
end;

constructor TUtilsNotifications.Create;
begin
  FErrorsNotifications := nil;
  FWarningNotifications := nil;
  FBusinessRulesNotifications := nil;
end;

destructor TUtilsNotifications.Destroy;
begin
  if Assigned(FErrorsNotifications) then
    FErrorsNotifications.Free;

  if Assigned(FWarningNotifications) then
    FWarningNotifications.Free;

  if Assigned(FBusinessRulesNotifications) then
    FBusinessRulesNotifications.Free;

  FErrorsNotifications := nil;
  FWarningNotifications := nil;
  FBusinessRulesNotifications := nil;
  inherited;
end;

function TUtilsNotifications.GetUnsatisfiedRulesNotifications: TJSONArray;
begin
  Result := FBusinessRulesNotifications;
end;

function TUtilsNotifications.GetErrorsNotifications: TJSONArray;
begin
  Result := FErrorsNotifications;
end;

function TUtilsNotifications.GetWarningNotifications: TJSONArray;
begin
  Result := FWarningNotifications;
end;

procedure TUtilsNotifications.SetOnNotification(const Value
  : TEventOnNotification);
begin
  FOnNotification := Value;
end;

function TUtilsNotifications.GetHasBusinessRules: Boolean;
begin
  Result := Assigned(FBusinessRulesNotifications) and
    (FBusinessRulesNotifications.Count > 0);
end;

function TUtilsNotifications.GetHasError: Boolean;
begin
  Result := Assigned(FErrorsNotifications) and (FErrorsNotifications.Count > 0);
end;

function TUtilsNotifications.GetHasWarning: Boolean;
begin
  Result := Assigned(FWarningNotifications) and
    (FWarningNotifications.Count > 0);
end;

function TUtilsNotifications.GetOnNotification: TEventOnNotification;
begin
  Result := FOnNotification;
end;

end.
