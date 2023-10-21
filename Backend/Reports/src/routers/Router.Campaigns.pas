unit Router.Campaigns;

interface

uses
  Horse,
  Horse.OctetStream;

procedure Registry;

implementation

uses
  Report.Campaigns;

procedure GetReportCampaigns(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
var
  LReport: TFrmReportCampaigns;
begin
  LReport := TFrmReportCampaigns.Create(nil);
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
  THorse.Get('/campaigns', GetReportCampaigns);
end;

end.
