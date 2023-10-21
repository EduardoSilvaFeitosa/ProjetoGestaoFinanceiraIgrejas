unit Controller.Base.Entity.Intf;

interface

uses
  Data.DB, Utils.Types;

type
  IController_Entity = interface
    ['{4F23387D-553A-420B-9CCE-BFEC630391A4}']
    procedure Add;
    procedure Next;
    procedure Last;
    procedure First;
    procedure Previous;
    procedure RefreshData;
    procedure Edit;
    procedure Show;
    procedure Delete;
    procedure Restart;
    procedure QueryData(const ADataSet: TDataSet);

    { Getters }
    function GetPage: Integer;
    function GetPages: Integer;

    { Properties }
    property Page: Integer  read GetPage;
    property Pages: Integer read GetPages;
    procedure AddListenerCloseDetails(AListener: TCustomNotifyEvent);
  end;

implementation

end.
