unit Router.Tithes;

interface

uses
  Horse,
  Horse.OctetStream;

procedure Registry;

implementation

uses
  Report.Tithes;

procedure GetReportTithes(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
var
  LReport: TFrmReportTithes;
begin
  LReport := TFrmReportTithes.Create(nil);
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
  THorse.Get('/tithes', GetReportTithes);
end;

end.
