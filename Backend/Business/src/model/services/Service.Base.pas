unit Service.Base;

interface

uses
  Utils.Constants,
  FireDAC.Comp.Client;

type
  TServiceBase = class(TInterfacedObject)
  private
    LIndexConnection: Integer;
    FConnection: TFDConnection;
    procedure StartConnection;
  protected
    constructor Create;
    property Connection: TFDConnection read FConnection;
  public
    destructor Destroy; override;
  end;

implementation

uses
  System.SysUtils,
  Provider.Connection;

{ TServiceBase }

constructor TServiceBase.Create;
begin
  StartConnection;
end;

destructor TServiceBase.Destroy;
begin
  Disconected(LIndexConnection);
  inherited;
end;

procedure TServiceBase.StartConnection;
begin
  try
    LIndexConnection := Connected;
    FConnection := GetConnection(LIndexConnection);
  except
    on E: Exception do
      raise Exception.Create(ERROR_DB_CONNECTION + sLineBreak + E.Message);
  end;
end;

end.
