unit Router.Church;

interface

const
  ERROR_INVALID_ID = 'The entered ID is invalid';
  ERROR_INVALID_PARAMS = 'The entered parameters are invalid';

procedure Registry;

implementation

uses
  Horse,
  Data.DB,
  DTO.Church,
  System.JSON,
  System.SysUtils,
  Controller.Churchs,
  Router.Common.Response,
  Service.Register.Churchs,
  Service.Register.Church.Intf,
  Controller.Register.Church.Intf;

procedure Create(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LChurch: TDTOChurch;
  LService: IServiceRegisterChurch;
  LController: IControllerRegisterChurch;
begin
  if (not TDTOChurch.TryLoadInstance(LChurch, Req.Body<TJSONObject>)) then
    raise EHorseException.New.Error(ERROR_INVALID_PARAMS)
      .Status(THTTPStatus.UnprocessableEntity);
  try
    LService := TServiceRegisterChurch.New;
    LController := TControllerRegisterChurch.New(LService);
    try
      if LController.Append(LChurch) then
        Res.Send(LController.GetQryRegister).Status(THTTPStatus.Created)
      else
        SetResponseByNotifications(LController, Res);
    finally
      LService := nil;
      LController := nil;
    end;
  finally
    LChurch.Free;
  end;
end;

procedure Delete(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LId: Integer;
  LService: IServiceRegisterChurch;
  LController: IControllerRegisterChurch;
begin
  if not TryStrToInt(Req.Params['id'], LId) then
    raise EHorseException.New.Error(ERROR_INVALID_ID)
      .Status(THTTPStatus.BadRequest);

  LService := TServiceRegisterChurch.New;
  LController := TControllerRegisterChurch.New(LService);
  try
    if LController.Delete(LId.ToString) then
      Res.Status(THTTPStatus.NoContent)
    else
      SetResponseByNotifications(LController, Res);
  finally
    LService := nil;
    LController := nil;
  end;
end;

procedure GetById(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LId: string;
  LService: IServiceRegisterChurch;
  LController: IControllerRegisterChurch;
begin
  LService := TServiceRegisterChurch.New;
  LController := TControllerRegisterChurch.New(LService);
  try
    LId := Req.Params['id'];
    if (not LController.GetById(LId).IsEmpty) then
      Res.Send(LController.GetQryRegister).Status(THTTPStatus.OK)
    else
      SetResponseByNotifications(LController, Res);
  finally
    LService := nil;
    LController := nil;
  end;
end;

procedure List(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LData: TJSONObject;
  LService: IServiceRegisterChurch;
  LController: IControllerRegisterChurch;
begin
  LService := TServiceRegisterChurch.New;
  LController := TControllerRegisterChurch.New(LService);
  try
    LData := LController.ListAll(Req.Query);
    try
      if Assigned(LData) then
        Res.Send(LData.Clone)
      else
        SetResponseByNotifications(LController, Res);
    finally
      LData.Free;
    end;
  finally
    LService := nil;
    LController := nil;
  end;
end;

procedure Update(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LId: Integer;
  LChurch: TDTOChurch;
  LService: IServiceRegisterChurch;
  LController: IControllerRegisterChurch;
begin
  if not TryStrToInt(Req.Params['id'], LId) then
    raise EHorseException.New.Error(ERROR_INVALID_ID)
      .Status(THTTPStatus.BadRequest);

  if (not TDTOChurch.TryLoadInstance(LChurch, Req.Body<TJSONObject>)) then
    raise EHorseException.New.Error(ERROR_INVALID_PARAMS)
      .Status(THTTPStatus.UnprocessableEntity);
  try
    LService := TServiceRegisterChurch.New;
    LController := TControllerRegisterChurch.New(LService);
    try
      LChurch.id := LId;

      if LController.Update(LChurch, LId.ToString) then
        Res.Send(LController.GetQryRegister).Status(THTTPStatus.NoContent)
      else
        SetResponseByNotifications(LController, Res);
    finally
      LService := nil;
      LController := nil;
    end;
  finally
    LChurch.Free;
  end;
end;

procedure Registry;
begin
  THorse.Get('/churchs', List);
  THorse.Get('/churchs/:id', GetById);
  THorse.Post('/churchs', Create);
  THorse.Put('/churchs/:id', Update);
  THorse.Delete('/churchs/:id', Delete);
end;

end.
