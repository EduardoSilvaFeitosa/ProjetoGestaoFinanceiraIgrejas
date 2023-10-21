unit Controller.Base;

interface

uses
  Data.DB;

type
  TShowMode = (smShow, smEdit);

  IController_Entity = interface
    procedure AddNew;
    procedure RefreshData;
    procedure ShowFormDetails(const AShowMode: TShowMode = smShow);
    procedure QueryData(ADataSet: TDataSet);

    procedure Next;
    procedure Last;
    procedure First;
    procedure Previous;

    function GetPage: Integer;
    function GetPages: Integer;

    property Page: Integer read GetPage;
    property Pages: Integer read GetPages;
  end;

  TController_Base = class
    procedure AddNew;
    procedure Refresh;
    procedure ShowFormDetails(const AShowMode: TShowMode = smShow);
  end;

implementation

{ TController_Base }

procedure TController_Base.AddNew;
begin

end;

procedure TController_Base.Refresh;
begin

end;

procedure TController_Base.ShowFormDetails(const AShowMode: TShowMode);
begin

end;

end.
