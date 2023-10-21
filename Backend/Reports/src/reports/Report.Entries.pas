unit Report.Entries;

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
  RLFilters,
  RLPDFFilter,
  RLReport,
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
  FireDAC.Phys.PGDef,
  FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Vcl.StdCtrls,
  Horse.Core.Param;

type
  TFrmReportEntradas = class(TFrmReportBase)
    dtsMain: TDataSource;
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
    dtsEntradas: TDataSource;
    QryEntradas: TFDQuery;
    QryEntradasdescricao: TWideStringField;
    QryEntradascompetencia: TWideStringField;
    QryEntradastipo: TSmallintField;
    QryEntradasnatureza: TWideStringField;
    QryEntradasdtfato: TDateField;
    QryEntradasvalor: TFMTBCDField;
    QryEntradasocorrencias: TLargeintField;
    QryEntradasnummonth: TFMTBCDField;
    QryEntradasnumyear: TFMTBCDField;
    QryEntradasforder: TIntegerField;
    gpResumo: TRLGroup;
    bdHeade: TRLBand;
    RLDBText7: TRLDBText;
    sdtEntradas: TRLSubDetail;
    RLBand2: TRLBand;
    Label1: TLabel;
    RLBand5: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLDBText2: TRLDBText;
    RLBand1: TRLBand;
    RLDBText8: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText9: TRLDBText;
    RLBand10: TRLBand;
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
{ TFrmReportEntradas }

function TFrmReportEntradas.CanBeGenerated(const AParams
  : THorseCoreParam): Boolean;
var
  LWithBalance: Boolean;
begin
  if AParams.ContainsKey('year') then
  begin
    QryMain.SQL.Add(' AND numyear = :numyear ');
    QryEntradas.SQL.Add(' AND numyear = :numyear ');
    QryMain.ParamByName('numyear').AsInteger :=
      StrToIntDef(AParams.Items['year'], 0);

    QryEntradas.ParamByName('numyear').AsInteger :=
      QryMain.ParamByName('numyear').AsInteger;
  end;

  if AParams.ContainsKey('month') then
  begin
    QryMain.SQL.Add(' AND idmonth = :idmonth ');
    QryEntradas.SQL.Add(' AND nummonth = :idmonth ');
    QryMain.ParamByName('idmonth').AsInteger :=
      StrToIntDef(AParams.Items['month'], 0);
    QryEntradas.ParamByName('idmonth').AsInteger :=
      QryMain.ParamByName('idmonth').AsInteger;
  end;

  if AParams.ContainsKey('onlywithbalance') then
  begin
    LWithBalance := GetBool(AParams.Items['onlywithbalance']);
    if LWithBalance then
      QryMain.SQL.Add('AND valorP > 0');
  end;

  QryMain.SQL.Add('ORDER BY numyear, idmonth');
  QryMain.Open();

  if ((QryMain.RecordCount = 0) or (QryMain.IsEmpty)) then
    Exit(False);

  QryEntradas.SQL.Add('ORDER BY fOrder, descricao, dtFato');
  QryEntradas.Open();

  Result := inherited;
end;

procedure TFrmReportEntradas.ConnectQuery;
begin
  SetConnection(QryMain);
  SetConnection(QryEntradas);
end;

procedure TFrmReportEntradas.DoAfterCreate;
begin
  inherited;
  ConnectQuery;
end;

function TFrmReportEntradas.GetFileName: string;
begin
  Result := 'Entradas';
end;

end.
