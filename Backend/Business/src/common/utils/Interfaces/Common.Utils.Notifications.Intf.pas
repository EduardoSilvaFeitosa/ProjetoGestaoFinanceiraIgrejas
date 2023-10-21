unit Common.Utils.Notifications.Intf;

interface

uses
  System.JSON, Common.types;

type
  IUtilsNotifications = interface
    ['{3A043904-0D83-4331-BB4C-B8C7DE875E49}']
    function GetHasError: Boolean;
    function GetHasWarning: Boolean;
    function GetHasBusinessRules: Boolean;

    function GetErrorsNotifications: TJSONArray;
    function GetWarningNotifications: TJSONArray;
    function GetUnsatisfiedRulesNotifications: TJSONArray;
    function GetOnNotification: TEventOnNotification;
    procedure SetOnNotification(const Value: TEventOnNotification);

    property HasError: Boolean             read GetHasError;
    property HasWarning: Boolean           read GetHasWarning;
    property HasUnsatisfiedRules: Boolean  read GetHasBusinessRules;
    property Errors: TJSONArray            read GetErrorsNotifications;
    property Warnings: TJSONArray          read GetWarningNotifications;
    property UnsatisfiedRules: TJSONArray  read GetUnsatisfiedRulesNotifications;
    property OnNotification: TEventOnNotification read GetOnNotification
      write SetOnNotification;
  end;

implementation

end.
