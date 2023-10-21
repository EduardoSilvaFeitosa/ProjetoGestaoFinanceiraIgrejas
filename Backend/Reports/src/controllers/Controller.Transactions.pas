unit Controller.Transactions;

interface

uses
  Horse,
  Horse.OctetStream;

procedure Registry;

implementation

procedure GetReportTransactions(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin
end;

procedure Registry;
begin
  THorse.Get('/Clientes', GetReportTransactions);
end;

end.
