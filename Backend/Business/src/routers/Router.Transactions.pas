unit Router.Transactions;

interface

const
  ERROR_INVALID_ID = 'The entered ID is invalid';
  ERROR_INVALID_PARAMS = 'The entered parameters are invalid';

procedure Registry;

implementation

uses
  Horse,
  Data.DB,  
  System.JSON,
  DTO.Transaction,
  System.SysUtils,
  Router.Common.Response,
  Controller.Transactions,
  Service.Register.Transactions,
  Service.Register.Transaction.Intf,
  Controller.Register.Transaction.Intf;

procedure Create(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LTransaction: TDTOTransaction;
  LService: IServiceRegisterTransaction;
  LController: IControllerRegisterTransaction;
begin
  if (not TDTOTransaction.TryLoadInstance(LTransaction, Req.Body<TJSONObject>)) then
    raise EHorseException.New.Error(ERROR_INVALID_PARAMS)
      .Status(THTTPStatus.UnprocessableEntity);
  try
    LService := TServiceRegisterTransaction.New;
    LController := TControllerRegisterTransaction.New(LService);
    try
      if LController.Append(LTransaction) then
        Res.Send(LController.GetQryRegister).Status(THTTPStatus.Created)
      else
        SetResponseByNotifications(LController, Res);
    finally
      LService := nil;
      LController := nil;
    end;
  finally
    LTransaction.Free;
  end;
end;

procedure Delete(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LId: Integer;
  LService: IServiceRegisterTransaction;
  LController: IControllerRegisterTransaction;
begin
  if not TryStrToInt(Req.Params['id'], LId) then
    raise EHorseException.New.Error(ERROR_INVALID_ID)
      .Status(THTTPStatus.BadRequest);

  LService := TServiceRegisterTransaction.New;
  LController := TControllerRegisterTransaction.New(LService);
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
  LService: IServiceRegisterTransaction;
  LController: IControllerRegisterTransaction;
begin
  LService := TServiceRegisterTransaction.New;
  LController := TControllerRegisterTransaction.New(LService);
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
  LService: IServiceRegisterTransaction;
  LController: IControllerRegisterTransaction;
begin
  LService := TServiceRegisterTransaction.New;
  LController := TControllerRegisterTransaction.New(LService);
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
  LTransaction: TDTOTransaction;
  LService: IServiceRegisterTransaction;
  LController: IControllerRegisterTransaction;
begin
  if not TryStrToInt(Req.Params['id'], LId) then
    raise EHorseException.New.Error(ERROR_INVALID_ID)
      .Status(THTTPStatus.BadRequest);

  if (not TDTOTransaction.TryLoadInstance(LTransaction, Req.Body<TJSONObject>)) then
    raise EHorseException.New.Error(ERROR_INVALID_PARAMS)
      .Status(THTTPStatus.UnprocessableEntity);
  try
    LService := TServiceRegisterTransaction.New;
    LController := TControllerRegisterTransaction.New(LService);
    try
      LTransaction.id := LId;

      if LController.Update(LTransaction, LId.ToString) then
        Res.Send(LController.GetQryRegister).Status(THTTPStatus.NoContent)
      else
        SetResponseByNotifications(LController, Res);
    finally
      LService := nil;
      LController := nil;
    end;
  finally
    LTransaction.Free;
  end;
end;

procedure Registry;
begin
  THorse.Get('/transactions', List);
  THorse.Get('/transactions/:id', GetById);
  THorse.Post('/transactions', Create);
  THorse.Put('/transactions/:id', Update);
  THorse.Delete('/transactions/:id', Delete);
end;

end.
