unit Report.Withdrawals;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Report.Base,
  FireDAC.Phys.PGDef,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.PG,
  FireDAC.VCLUI.Wait,
  Data.DB,
  FireDAC.Comp.Client,
  RLFilters,
  RLPDFFilter,
  RLReport,
  Vcl.StdCtrls,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  Horse.Core.Param;

type
  TFrmReportWithdrawals = class(TFrmReportBase)
    QrySaidas: TFDQuery;
    QrySaidasdescricao: TWideStringField;
    QrySaidascompetencia: TWideStringField;
    QrySaidastipo: TSmallintField;
    QrySaidasnatureza: TWideStringField;
    QrySaidasdtfato: TDateField;
    QrySaidasvalor: TFMTBCDField;
    QrySaidasocorrencias: TLargeintField;
    QrySaidasnummonth: TFMTBCDField;
    QrySaidasnumyear: TFMTBCDField;
    QrySaidasforder: TIntegerField;
    dtsSaidas: TDataSource;
    QryMain: TFDQuery;
    QryMainidmonth: TIntegerField;
    QryMainnumyear: TFMTBCDField;
    QryMaindescription: TWideStringField;
    QryMainsaldoatual: TFMTBCDField;
    QryMainsaldoanterior: TFMTBCDField;
    QryMaincompetencia: TWideMemoField;
    QryMainvalorp: TFMTBCDField;
    QryMainvalorn: TFMTBCDField;
    QryMainsaldoproxmes: TFMTBCDField;
    dtsMain: TDataSource;
    gpResumo: TRLGroup;
    bdHeade: TRLBand;
    RLDBText7: TRLDBText;
    RLBand10: TRLBand;
    sdtSaidas: TRLSubDetail;
    RLDetailGrid2: TRLDetailGrid;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLDBText4: TRLDBText;
    RLBand3: TRLBand;
    Label2: TLabel;
    RLBand4: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBText3: TRLDBText;
  private
    procedure ConnectQuery;
  protected
    procedure DoAfterCreate; override;
    function GetFileName: string; override;
  public
    function CanBeGenerated(const AParams: THorseCoreParam): Boolean; override;
  end;

implementation

{$R *.dfm}

{ TFrmReportWithdrawals }

function TFrmReportWithdrawals.CanBeGenerated(const AParams
  : THorseCoreParam): Boolean;
var
  LWithBalance: Boolean;
begin
  if AParams.ContainsKey('year') then
  begin
    QryMain.SQL.Add(' AND numyear = :numyear ');
    QrySaidas.SQL.Add(' AND numyear = :numyear ');
    QryMain.ParamByName('numyear').AsInteger :=
      StrToIntDef(AParams.Items['year'], 0);

    QrySaidas.ParamByName('numyear').AsInteger :=
      QryMain.ParamByName('numyear').AsInteger;
  end;

  if AParams.ContainsKey('month') then
  begin
    QryMain.SQL.Add(' AND idmonth = :idmonth ');
    QrySaidas.SQL.Add(' AND nummonth = :idmonth ');
    QryMain.ParamByName('idmonth').AsInteger :=
      StrToIntDef(AParams.Items['month'], 0);
    QrySaidas.ParamByName('idmonth').AsInteger :=
      QryMain.ParamByName('idmonth').AsInteger;
  end;

  if AParams.ContainsKey('onlywithbalance') then
  begin
    LWithBalance := GetBool(AParams.Items['onlywithbalance']);
    if LWithBalance then
      QryMain.SQL.Add('AND ABS(valorN) > 0');
  end;

  QryMain.SQL.Add('ORDER BY numyear, idmonth');
  QryMain.Open();

  if ((QryMain.RecordCount = 0) or (QryMain.IsEmpty)) then
    Exit(False);

  QrySaidas.SQL.Add('ORDER BY fOrder, descricao, dtFato');
  QrySaidas.Open();

  Result := inherited;
end;

procedure TFrmReportWithdrawals.ConnectQuery;
begin
  SetConnection(QryMain);
  SetConnection(QrySaidas);
end;

procedure TFrmReportWithdrawals.DoAfterCreate;
begin
  inherited;
  ConnectQuery;
end;

function TFrmReportWithdrawals.GetFileName: string;
begin
  Result := 'Saidas';
end;

end.
