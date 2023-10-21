unit Router.Members;

interface

const
  ERROR_INVALID_ID = 'The entered ID is invalid';
  ERROR_INVALID_PARAMS = 'The entered parameters are invalid';

procedure Registry;

implementation

uses
  Horse,
  Data.DB,
  DTO.Member,
  System.JSON,
  System.SysUtils,
  Controller.Members,
  Router.Common.Response,
  Service.Register.Members,
  Service.Register.Member.Intf,
  Controller.Register.Member.Intf;

procedure Create(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LMember: TDTOMember;
  LService: IServiceRegisterMember;
  LController: IControllerRegisterMember;
begin
  if (not TDTOMember.TryLoadInstance(LMember, Req.Body<TJSONObject>)) then
    raise EHorseException.New.Error(ERROR_INVALID_PARAMS)
      .Status(THTTPStatus.UnprocessableEntity);
  try
    LService := TServiceRegisterMember.New;
    LController := TControllerRegisterMember.New(LService);
    try
      if LController.Append(LMember) then
        Res.Send(LController.GetQryRegister).Status(THTTPStatus.Created)
      else
        SetResponseByNotifications(LController, Res);
    finally
      LService := nil;
      LController := nil;
    end;
  finally
    LMember.Free;
  end;
end;

procedure Delete(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LId: Integer;
  LService: IServiceRegisterMember;
  LController: IControllerRegisterMember;
begin
  if not TryStrToInt(Req.Params['id'], LId) then
    raise EHorseException.New.Error(ERROR_INVALID_ID)
      .Status(THTTPStatus.BadRequest);

  LService := TServiceRegisterMember.New;
  LController := TControllerRegisterMember.New(LService);
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
  LService: IServiceRegisterMember;
  LController: IControllerRegisterMember;
begin
  LService := TServiceRegisterMember.New;
  LController := TControllerRegisterMember.New(LService);
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
  LService: IServiceRegisterMember;
  LController: IControllerRegisterMember;
begin
  LService := TServiceRegisterMember.New;
  LController := TControllerRegisterMember.New(LService);
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
  LMember: TDTOMember;
  LService: IServiceRegisterMember;
  LController: IControllerRegisterMember;
begin
  if not TryStrToInt(Req.Params['id'], LId) then
    raise EHorseException.New.Error(ERROR_INVALID_ID)
      .Status(THTTPStatus.BadRequest);

  if (not TDTOMember.TryLoadInstance(LMember, Req.Body<TJSONObject>)) then
    raise EHorseException.New.Error(ERROR_INVALID_PARAMS)
      .Status(THTTPStatus.UnprocessableEntity);
  try
    LService := TServiceRegisterMember.New;
    LController := TControllerRegisterMember.New(LService);
    try
      LMember.id := LId;

      if LController.Update(LMember, LId.ToString) then
        Res.Send(LController.GetQryRegister).Status(THTTPStatus.NoContent)
      else
        SetResponseByNotifications(LController, Res);
    finally
      LService := nil;
      LController := nil;
    end;
  finally
    LMember.Free;
  end;
end;

procedure Registry;
begin
  THorse.Get('/members', List);
  THorse.Get('/members/:id', GetById);
  THorse.Post('/members', Create);
  THorse.Put('/members/:id', Update);
  THorse.Delete('/members/:id', Delete);
end;

end.
