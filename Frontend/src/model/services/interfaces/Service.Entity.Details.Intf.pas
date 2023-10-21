unit Service.Entity.Details.Intf;

interface

uses
  Data.DB,
  Utils.Types;

type
  IService_EntityDetail = interface
    ['{49CB7A4E-B474-4ABE-AD71-F72313D3ED9D}']
    procedure Update;
    procedure Insert;
    procedure Save;
    procedure Delete;
    procedure GetById(const AId: Integer);
    procedure QueryRegister(const ADataSet: TDataSet);
  end;

  IService_EntityGrid = interface
    ['{759D0EEC-A5D5-41CE-9672-3C83443C7190}']
    procedure Delete;
    procedure RefreshData;
    procedure ClearParams;

    function GetPage: Integer;
    function GetPages: Integer;
    function GetRecords: Integer;
    function GetPageLimit: Integer;
    function GetDetails: IService_EntityDetail;

    procedure GoToPage(const AIndex: Integer);
    procedure SetPage( const value: Integer);
    procedure SetPages(const value: Integer);
    procedure SetDoBeforeList(value: TCustomNotifyEvent);

    property Page: Integer      read GetPage  write SetPage;
    property Pages: Integer     read GetPages write SetPages;
    property Records: Integer   read GetRecords;
    property PageLimit: Integer read GetPageLimit;

    property DoBeforeList: TCustomNotifyEvent write SetDoBeforeList;
    property Details: IService_EntityDetail   read GetDetails;
    procedure QueryData(const ADataSet: TDataSet);
  end;

implementation

end.
