unit Router.Common.Response;

interface

uses
  Horse.Response,
  Common.Utils.Notifications.Intf;

procedure SetResponseByNotifications(const ANotifications: IUtilsNotifications;
  Res: THorseResponse);

implementation

uses
  Horse.Commons,
  Horse.Exception.Interrupted;

procedure SetResponseByNotifications(const ANotifications: IUtilsNotifications;
  Res: THorseResponse);
begin
  if ANotifications.HasError then
  begin
    Res.Send(ANotifications.Errors.Clone).Status(THTTPStatus.BadRequest);
    raise EHorseCallbackInterrupted.Create;
  end;

  if ANotifications.HasWarning then
  begin
    Res.Send(ANotifications.Warnings.Clone).Status(THTTPStatus.BadRequest);
    raise EHorseCallbackInterrupted.Create;
  end;

  if ANotifications.HasUnsatisfiedRules then
  begin
    Res.Send(ANotifications.UnsatisfiedRules.Clone)
      .Status(THTTPStatus.UnprocessableEntity);
    raise EHorseCallbackInterrupted.Create;
  end;

  Res.Status(THTTPStatus.NoContent);
end;

end.
