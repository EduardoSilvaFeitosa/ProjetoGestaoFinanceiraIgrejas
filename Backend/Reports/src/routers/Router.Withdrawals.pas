unit Router.Withdrawals;

interface

uses
  Horse,
  Horse.OctetStream;

procedure Registry;

implementation

uses
  Report.Withdrawals;

procedure GetReportWithdrawals(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
var
  LReport: TFrmReportWithdrawals;
begin
  LReport := TFrmReportWithdrawals.Create(nil);
  try
    if LReport.CanBeGenerated(Req.Query) then
      Res.Send<TFileReturn>(LReport.GenerateReport).Status(THTTPStatus.OK)
    else
      Res.Status(THTTPStatus.NoContent);
  finally
    LReport.Free;
  end;
end;

procedure Registry;
begin
  THorse.Get('/withdrawals', GetReportWithdrawals);
end;

end.
