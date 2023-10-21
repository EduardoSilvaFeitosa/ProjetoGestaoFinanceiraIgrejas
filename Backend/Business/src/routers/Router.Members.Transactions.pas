unit Router.Members.Transactions;

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
  Router.Common.Response,
  Controller.Members.Transactions,
  Service.Register.Members.Transactions,
  Service.Register.Member.Transaction.Intf,
  Controller.Register.Member.Transaction.Intf;

procedure List(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LData: TJSONObject;
  LService: IServiceRegisterMemberTransaction;
  LController: IControllerRegisterMemberTransaction;
begin
  LService := TServiceRegisterMemberTransaction.New;
  LController := TControllerRegisterMemberTransaction.New(LService);
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

procedure Registry;
begin
  THorse.Get('/members/transactions', List);
end;

end.
