unit Service.Register;

interface

uses
  Data.DB,
  DTO.Register,
  Service.Base,
  Utils.Constants,
  Horse.Core.Param,
  FireDAC.Comp.Client,
  Service.Register.Intf;
type
  TServiceRegister = class(TServiceBase, IServiceRegister)
  protected
    QryRegister: TFDQuery;
    QryData: TFDQuery;
    QryRegs: TFDQuery;
    procedure SetInvisibleControlAttributes(const AQry: TFDQuery);
    procedure SetInvisibleControlAttributesQryRegister;
    procedure SetInvisible(const AQry: TFDQuery; const AFieldName: string;
      const AFlag: Boolean);
    procedure StartQryData; virtual;
    procedure StartQryRegs; virtual;
    procedure StartQryRegister; virtual;
    procedure DoAfterListAll; virtual;
    procedure DoBeforePostRegister(DataSet: TDataSet); virtual;
    procedure OrderQryData; virtual;
    constructor Create;
  public
    function Append(const AObject: TDTORegister): Boolean;
    function Delete: Boolean;
    function GetById(const AId: string): TDataSet;
    function GetQryRegister: TDataSet;
    function GetRecordCount: Int64;
    function ListAll(const AParams: THorseCoreParam): TDataSet; virtual;
    function Update(const ADTO: TDTORegister): Boolean;
    class function New: IServiceRegister;
    destructor Destroy; override;
  end;

implementation

uses
  FireDAC.DApt,
  FireDAC.DatS,
  FireDAC.Stan.Intf,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.Stan.Async,
  FireDAC.Stan.Option,
  FireDAC.Comp.DataSet,

  DataSet.Serialize,
  System.SysUtils;

{ TServiceRegister }

function TServiceRegister.Append(const AObject: TDTORegister): Boolean;
begin
  QryRegister.SQL.Add(' AND 1 <> 1 ');
  QryRegister.Open();

  QryRegister.FieldByName('id').AutoGenerateValue := arAutoInc;
  QryRegister.FieldByName('id').ReadOnly := True;
  QryRegister.BeforePost := Self.DoBeforePostRegister;
  QryRegister.LoadFromJSON(AObject.AsJSON, False);
  if not(QryRegister.State in [dsEdit, dsInsert]) then
    QryRegister.Edit;

  QryRegister.FieldByName('creation_date').AsDateTime := Now;
//  QryRegister.Post;

  Result := QryRegister.ApplyUpdates(0) = 0;

  AObject.id := StrToInt64Def(QryRegister.FieldByName('id').AsString,
    AObject.id);
  SetInvisibleControlAttributesQryRegister;
end;

constructor TServiceRegister.Create;
begin
  inherited;
  try
    StartQryData;
    StartQryRegs;
    StartQryRegister;
  except
    on E: Exception do
      raise Exception.Create(ERROR_INIT_QUERY);
  end;
end;

function TServiceRegister.Delete: Boolean;
begin
  if not(QryRegister.State in [dsInsert, dsEdit]) then
    QryRegister.Edit;

  QryRegister.FieldByName('deleted_date').AsDateTime := Now;
  QryRegister.Post;

  Result := QryRegister.ApplyUpdates(0) = 0;
end;

destructor TServiceRegister.Destroy;
begin
  QryRegister.Free;
  QryData.Free;
  QryRegs.Free;
  inherited;
end;

procedure TServiceRegister.DoAfterListAll;
begin
  SetInvisibleControlAttributes(QryData);
end;

procedure TServiceRegister.DoBeforePostRegister(DataSet: TDataSet);
begin

end;

function TServiceRegister.GetById(const AId: string): TDataSet;
begin
  QryRegister.SQL.Add(' AND id = :id ');
  QryRegister.ParamByName('id').AsLargeInt := AId.ToInt64;
  QryRegister.Open();

  QryRegister.FieldByName('id').AutoGenerateValue := arAutoInc;
  QryRegister.FieldByName('id').ReadOnly := True;
  Result := QryRegister;
end;

function TServiceRegister.GetQryRegister: TDataSet;
begin
  Result := QryRegister;
end;

function TServiceRegister.GetRecordCount: Int64;
begin
  Result := QryRegs.FieldByName('Count').AsLargeInt;
end;

function TServiceRegister.ListAll(const AParams: THorseCoreParam): TDataSet;
begin
  if AParams.ContainsKey('limit') then
  begin
    QryData.FetchOptions.RecsMax := StrToIntDef(AParams.Items['limit'], 50);
    QryData.FetchOptions.RowsetSize := StrToIntDef(AParams.Items['limit'], 50);
  end;
  if AParams.ContainsKey('offset') then
    QryData.FetchOptions.RecsSkip := StrToIntDef(AParams.Items['offset'], 0);

  OrderQryData;
  QryData.Open();
  QryRegs.Open();
  Result := QryData;
  DoAfterListAll;
end;

class function TServiceRegister.New: IServiceRegister;
begin
  Result := Self.Create;
end;

procedure TServiceRegister.OrderQryData;
begin
  QryData.SQL.Add('Order by id');
end;

procedure TServiceRegister.SetInvisible(const AQry: TFDQuery;
  const AFieldName: string; const AFlag: Boolean);
begin
  if Assigned(AQry.FindField(AFieldName)) then
    AQry.FieldByName(AFieldName).Visible := (not AFlag);
end;

procedure TServiceRegister.SetInvisibleControlAttributes(const AQry: TFDQuery);

  procedure SetInvisible(const AFieldName: string);
  begin
    Self.SetInvisible(AQry, AFieldName, True);
  end;

begin
  SetInvisible('deleted_date');
  SetInvisible('last_update');
  SetInvisible('creation_date');
end;

procedure TServiceRegister.SetInvisibleControlAttributesQryRegister;
begin
  SetInvisibleControlAttributes(QryRegister);
end;

procedure TServiceRegister.StartQryData;
begin
  QryData := TFDQuery.Create(nil);
  QryData.Connection := Connection;
  QryData.CachedUpdates := True;
  // Set the SQL here
end;

procedure TServiceRegister.StartQryRegister;
begin
  QryRegister := TFDQuery.Create(nil);
  QryRegister.Connection := Connection;
  QryRegister.CachedUpdates := True;
  // Set the SQL here
end;

procedure TServiceRegister.StartQryRegs;
begin
  QryRegs := TFDQuery.Create(nil);
  QryRegs.Connection := Connection;
  // Set the SQL here
end;

function TServiceRegister.Update(const ADTO: TDTORegister): Boolean;
begin
  QryRegister.MergeFromJSONObject(ADTO.AsJSON, False);
  if not(QryRegister.State in [dsInsert, dsEdit]) then
    QryRegister.Edit;

  QryRegister.FieldByName('last_update').AsDateTime := Now;
  QryRegister.Post;

  Result := QryRegister.ApplyUpdates(0) = 0;
end;

end.
