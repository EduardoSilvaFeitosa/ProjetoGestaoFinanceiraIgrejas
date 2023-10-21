unit Providers.Session;

interface

uses
  Providers.Token;

type
  TProvider_Session = class
  private
    FToken: TToken;
    procedure Inicializar;
  public
    class function NewInstance: TObject; override;
    class function GetInstance: TProvider_Session;
    destructor Destroy; override;
    property Token: TToken read FToken write FToken;
  end;

var
  Session: TProvider_Session;

implementation

{ TProvider_Session }

destructor TProvider_Session.Destroy;
begin
  FToken.Free;
  inherited;
end;

class function TProvider_Session.GetInstance: TProvider_Session;
begin
  Result := TProvider_Session.Create;
end;

procedure TProvider_Session.Inicializar;
begin
  FToken := TToken.Create;
end;

class function TProvider_Session.NewInstance: TObject;
begin
  if not Assigned(Session) then
  begin
    Session := TProvider_Session(inherited NewInstance);
    Session.Inicializar;
  end;

  Result := Session;
end;

initialization

finalization
  if Assigned(Session) then
    Session.Free;

end.
