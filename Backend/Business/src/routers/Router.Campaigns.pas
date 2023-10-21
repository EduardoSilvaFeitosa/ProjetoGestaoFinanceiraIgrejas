unit Router.Campaigns;

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
  DTO.Campaign,
  System.SysUtils,
  Controller.Campaigns,
  Router.Common.Response,
  Service.Register.Campaigns,
  Service.Register.Campaign.Intf,
  Controller.Register.Campaign.Intf;

procedure Create(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LCampaign: TDTOCampaign;
  LService: IServiceRegisterCampaign;
  LController: IControllerRegisterCampaign;
begin
  if (not TDTOCampaign.TryLoadInstance(LCampaign, Req.Body<TJSONObject>)) then
    raise EHorseException.New.Error(ERROR_INVALID_PARAMS)
      .Status(THTTPStatus.UnprocessableEntity);
  try
    LService := TServiceRegisterCampaign.New;
    LController := TControllerRegisterCampaign.New(LService);
    try
      if LController.Append(LCampaign) then
        Res.Send(LController.GetQryRegister).Status(THTTPStatus.Created)
      else
        SetResponseByNotifications(LController, Res);
    finally
      LService := nil;
      LController := nil;
    end;
  finally
    LCampaign.Free;
  end;
end;

procedure Delete(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LId: Integer;
  LService: IServiceRegisterCampaign;
  LController: IControllerRegisterCampaign;
begin
  if not TryStrToInt(Req.Params['id'], LId) then
    raise EHorseException.New.Error(ERROR_INVALID_ID)
      .Status(THTTPStatus.BadRequest);

  LService := TServiceRegisterCampaign.New;
  LController := TControllerRegisterCampaign.New(LService);
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
  LService: IServiceRegisterCampaign;
  LController: IControllerRegisterCampaign;
begin
  LService := TServiceRegisterCampaign.New;
  LController := TControllerRegisterCampaign.New(LService);
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
  LService: IServiceRegisterCampaign;
  LController: IControllerRegisterCampaign;
begin
  LService := TServiceRegisterCampaign.New;
  LController := TControllerRegisterCampaign.New(LService);
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
  LCampaign: TDTOCampaign;
  LService: IServiceRegisterCampaign;
  LController: IControllerRegisterCampaign;
begin
  if not TryStrToInt(Req.Params['id'], LId) then
    raise EHorseException.New.Error(ERROR_INVALID_ID)
      .Status(THTTPStatus.BadRequest);

  if (not TDTOCampaign.TryLoadInstance(LCampaign, Req.Body<TJSONObject>)) then
    raise EHorseException.New.Error(ERROR_INVALID_PARAMS)
      .Status(THTTPStatus.UnprocessableEntity);
  try
    LService := TServiceRegisterCampaign.New;
    LController := TControllerRegisterCampaign.New(LService);
    try
      LCampaign.id := LId;

      if LController.Update(LCampaign, LId.ToString) then
        Res.Send(LController.GetQryRegister).Status(THTTPStatus.NoContent)
      else
        SetResponseByNotifications(LController, Res);
    finally
      LService := nil;
      LController := nil;
    end;
  finally
    LCampaign.Free;
  end;
end;

procedure Registry;
begin
  THorse.Get('/campaigns', List);
  THorse.Get('/campaigns/:id', GetById);
  THorse.Post('/campaigns', Create);
  THorse.Put('/campaigns/:id', Update);
  THorse.Delete('/campaigns/:id', Delete);
end;

end.
