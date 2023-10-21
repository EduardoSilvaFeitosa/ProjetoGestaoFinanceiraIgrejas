unit Router.Users;

interface

const
  ERROR_INVALID_ID = 'The entered ID is invalid';
  ERROR_INVALID_PARAMS = 'The entered parameters are invalid';

procedure Registry;

implementation

uses
  Horse,
  Data.DB,
  DTO.User,
  System.JSON,
  System.SysUtils,
  Controller.Users,
  Router.Common.Response,
  Service.Register.Users,
  Service.Register.User.Intf,
  Controller.Register.User.Intf;

procedure Create(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LUser: TDTOUser;
  LService: IServiceRegisterUser;
  LController: IControllerRegisterUser;
begin
  if (not TDTOUser.TryLoadInstance(LUser, Req.Body<TJSONObject>)) then
    raise EHorseException.New.Error(ERROR_INVALID_PARAMS)
      .Status(THTTPStatus.UnprocessableEntity);
  try
    LService := TServiceRegisterUser.New;
    LController := TControllerRegisterUser.New(LService);
    try
      if LController.Append(LUser) then
        Res.Send(LController.GetQryRegister).Status(THTTPStatus.Created)
      else
        SetResponseByNotifications(LController, Res);
    finally
      LService := nil;
      LController := nil;
    end;
  finally
    LUser.Free;
  end;
end;

procedure Delete(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LId: Integer;
  LService: IServiceRegisterUser;
  LController: IControllerRegisterUser;
begin
  if not TryStrToInt(Req.Params['id'], LId) then
    raise EHorseException.New.Error(ERROR_INVALID_ID)
      .Status(THTTPStatus.BadRequest);

  LService := TServiceRegisterUser.New;
  LController := TControllerRegisterUser.New(LService);
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
  LService: IServiceRegisterUser;
  LController: IControllerRegisterUser;
begin
  LService := TServiceRegisterUser.New;
  LController := TControllerRegisterUser.New(LService);
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
  LService: IServiceRegisterUser;
  LController: IControllerRegisterUser;
begin
  LService := TServiceRegisterUser.New;
  LController := TControllerRegisterUser.New(LService);
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
  LUser: TDTOUser;
  LService: IServiceRegisterUser;
  LController: IControllerRegisterUser;
begin
  if not TryStrToInt(Req.Params['id'], LId) then
    raise EHorseException.New.Error(ERROR_INVALID_ID)
      .Status(THTTPStatus.BadRequest);

  if (not TDTOUser.TryLoadInstance(LUser, Req.Body<TJSONObject>)) then
    raise EHorseException.New.Error(ERROR_INVALID_PARAMS)
      .Status(THTTPStatus.UnprocessableEntity);
  try
    LService := TServiceRegisterUser.New;
    LController := TControllerRegisterUser.New(LService);
    try
      LUser.id := LId;

      if LController.Update(LUser, LId.ToString) then
        Res.Send(LController.GetQryRegister).Status(THTTPStatus.NoContent)
      else
        SetResponseByNotifications(LController, Res);
    finally
      LService := nil;
      LController := nil;
    end;
  finally
    LUser.Free;
  end;
end;

procedure Registry;
begin
  THorse.Get('/users', List);
  THorse.Get('/users/:id', GetById);
  THorse.Post('/users', Create);
  THorse.Put('/users/:id', Update);
  THorse.Delete('/users/:id', Delete);
end;

end.
