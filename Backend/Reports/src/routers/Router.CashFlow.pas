unit Router.CashFlow;

interface

uses
  Horse,
  Horse.OctetStream;

procedure Registry;

implementation

uses
  Report.CashFlow;

procedure GetReportCashFlow(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
var
  LReport: TFrmReportCashFlow;
begin
  LReport := TFrmReportCashFlow.Create(nil);
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
  THorse.Get('/cashflow', GetReportCashFlow);
end;

end.
