unit Provider.Connection;

interface

uses
  System.SysUtils,
  System.Classes,
  Data.DB,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.PG,
  FireDAC.Phys.PGDef,
  FireDAC.Comp.Client,
  FireDAC.ConsoleUI.Wait,
  System.Generics.Collections;

var
  FPgDriver: TFDPhysPgDriverLink;
  LConnectionPool: TObjectList<TFDConnection>;

function Connected: Integer;
function GetConnection(const AIndex: Integer): TFDConnection;
procedure Disconected(const AIndex: Integer);

implementation

function Connected: Integer;
begin
  if not Assigned(LConnectionPool) then
    LConnectionPool := TObjectList<TFDConnection>.Create;

  LConnectionPool.Add(TFDConnection.Create(nil));
  Result := Pred(LConnectionPool.Count);

  with LConnectionPool.Items[Result].Params do
  begin
    DriverID := 'PG';
    Database := 'tcc';
    UserName := 'postgres';
    Password := '@PG9247dBa_';
    Add('CharacterSet=utf8');
  end;
  LConnectionPool.Items[Result].Connected := True;
end;

procedure Disconected(const AIndex: Integer);
begin
  LConnectionPool.Items[AIndex].Connected := False;
  LConnectionPool.Items[AIndex].Free;
  LConnectionPool.TrimExcess;
end;

function GetConnection(const AIndex: Integer): TFDConnection;
begin
  Result := LConnectionPool.Items[AIndex];
end;

end.
