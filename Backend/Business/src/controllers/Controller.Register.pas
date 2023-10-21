unit Controller.Register;

interface

uses
  Data.DB,
  System.JSON,
  Common.types,
  DTO.Register,
  System.SysUtils,
  Horse.Core.Param,
  Service.Register.Intf,
  Controller.Register.Intf,
  Common.Utils.Notifications;

const
  ERROR_APPEND = 'something went wrong appending the record';
  ERROR_LIST_ALL = 'something went wrong loading the records';

type
  TControllerRegister = class abstract(TUtilsNotifications, IControllerRegister)
  private
    FService: IServiceRegister;
    procedure Log(const E: Exception; const ARoutine: string);
  protected
    procedure AddNotification(const AMsg: string; const ALevel: tpLevel);
    constructor Create(const AService: IServiceRegister);
  public
    /// <summary>
    /// This method is responsible for controlling the
    /// flow to append the entity's records.
    /// </summary>
    /// <param name="ADTO">
    /// Object with the data to be saved
    /// </param>
    function Append(const ADTO: TDTORegister): Boolean;
    function Delete(const AId: string): Boolean;
    function GetById(const AId: string): TDataSet; virtual;
    /// <summary>
    /// This method is responsible for controlling the
    /// flow to list the entity's records.
    /// </summary>
    /// <param name="AParams">
    /// List of parameters to filter the query.
    /// </param>
    function ListAll(const AParams: THorseCoreParam): TJSONObject;
    /// <summary>
    /// This method is responsible for controlling the
    /// flow to update the entity's records.
    /// </summary>
    /// <param name="ADTO">
    /// Object with the data to be saved
    /// </param>
    function Update(const ADTO: TDTORegister; const AId: String)
      : Boolean; virtual;
    function GetQryRegister: TJSONObject;
    property Service: IServiceRegister read FService;
  end;

implementation

uses
  DataSet.Serialize;

{ TControllerRegister }

procedure TControllerRegister.AddNotification(const AMsg: string;
  const ALevel: tpLevel);
begin
  case ALevel of
    tpError:
      AddError(AMsg);
    tpWarning:
      AddWarning(AMsg);
    tpUnsatisfiedRule:
      AddUnsatisfiedRules(AMsg);
  end;

  if Assigned(OnNotification) then
    OnNotification(AMsg, ALevel);
end;

function TControllerRegister.Append(const ADTO: TDTORegister): Boolean;
begin
  ADTO.OnNotification := AddNotification;

  ADTO.ValidateOperationRules(tpCreate);
  if ADTO.HasNotification then
    Exit(False);

  try
    Result := Service.Append(ADTO);
  except
    on E: Exception do
    begin
      Log(E, 'TControllerRegister.Append');
      raise Exception.Create(ERROR_APPEND);
    end;
  end;
end;

constructor TControllerRegister.Create(const AService: IServiceRegister);
begin
  FService := AService;
end;

function TControllerRegister.Delete(const AId: string): Boolean;
begin
  if (Service.GetById(AId).IsEmpty) then
  begin
    AddNotification('Nenhum registro encotrado com o ID informado', tpWarning);
    Exit(False);
  end;

  try
    Result := Service.Delete;
  except
    on E: Exception do
    begin
      Log(E, 'TControllerRegister.Delete');
      raise Exception.Create(ERROR_LIST_ALL);
    end;
  end;
end;

function TControllerRegister.GetById(const AId: string): TDataSet;
begin
  Result := Service.GetById(AId);
end;

function TControllerRegister.GetQryRegister: TJSONObject;
begin
  Result := Service.GetQryRegister.ToJSONObject();
end;

function TControllerRegister.ListAll(const AParams: THorseCoreParam)
  : TJSONObject;
var
  LDataSet: TDataSet;
begin
  Result := TJSONObject.Create;

  try
    LDataSet := Service.ListAll(AParams);
  except
    on E: Exception do
    begin
      Log(E, 'TControllerRegister.ListAll');
      raise Exception.Create(ERROR_LIST_ALL);
    end;
  end;

  Result.AddPair('data', LDataSet.ToJSONArray());
  Result.AddPair('records', TJSONNumber.Create(Service.GetRecordCount));
end;

procedure TControllerRegister.Log(const E: Exception; const ARoutine: string);
begin

end;

function TControllerRegister.Update(const ADTO: TDTORegister;
  const AId: String): Boolean;
begin
  if Service.GetById(AId).IsEmpty then
  begin
    AddNotification('Não foi encontrado registro com o id informado',
      tpWarning);
    Exit(False);
  end;

  ADTO.id := StrToInt64Def(AId, ADTO.id);
  ADTO.OnNotification := AddNotification;
  ADTO.ValidateOperationRules(tpUpdate);

  if ADTO.HasNotification then
    Exit(False);

  try
    Result := Service.Update(ADTO);
  except
    on E: Exception do
    begin
      Log(E, 'TControllerRegister.Update');
      raise Exception.Create(ERROR_LIST_ALL);
    end;
  end;
end;

end.
