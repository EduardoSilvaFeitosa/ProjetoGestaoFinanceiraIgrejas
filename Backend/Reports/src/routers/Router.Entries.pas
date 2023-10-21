unit Router.Entries;

interface

uses
  Horse,
  Horse.OctetStream;

procedure Registry;

implementation

uses
  Report.Entries;

procedure GetReportEntries(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
var
  LReport: TFrmReportEntradas;
begin
  LReport := TFrmReportEntradas.Create(nil);
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
  THorse.Get('/entries', GetReportEntries);
end;

end.
