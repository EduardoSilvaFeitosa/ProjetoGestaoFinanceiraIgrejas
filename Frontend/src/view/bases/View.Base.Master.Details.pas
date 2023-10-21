unit View.Base.Master.Details;

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
  View.Base.Master,
  Service.Entity.Details.Intf,
  View.Base.Master.Step;

type
  TTFrmBaseMasterDetails = class(TFrmBaseMaster)
    procedure btnExecuteCloseClick(Sender: TObject);
    procedure OnButtonMouseEnterHover(Sender: TObject);
    procedure OnButtonMouseLeaveHover(Sender: TObject);
  private
    FReadOnlyMode: boolean;
    FService: IService_EntityDetail;
    procedure SetService(const Value: IService_EntityDetail);
  protected
    FActiveStep: TFrmBaseMasterStep;
    procedure ResetPanelHover(Sender: TObject); override;
    function GetTopActiveTab(Sender: TObject): Integer;
    function CreateForm(const AFormClass: TComponentClass; var AForm;
      const AParent: TWinControl): TFrmBaseMasterStep;
    function GetLastUpdateFormat(const ADate: TDateTime): string;
  public
    property Service: IService_EntityDetail read FService write SetService;
    procedure DoAfterSetService; virtual;
    procedure ReadOnlyMode; virtual;
  end;

implementation

uses
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  System.DateUtils;

{$R *.dfm}
{ TTFrmBaseMasterDetails }

procedure TTFrmBaseMasterDetails.DoAfterSetService;
begin

end;

procedure TTFrmBaseMasterDetails.OnButtonMouseEnterHover(Sender: TObject);
begin
  inherited;
  ActivePanelHover(Sender);
end;

procedure TTFrmBaseMasterDetails.OnButtonMouseLeaveHover(Sender: TObject);
begin
  inherited;
  ResetPanelHover(Sender);
end;

function TTFrmBaseMasterDetails.GetLastUpdateFormat
  (const ADate: TDateTime): string;
const
  LDays: Array of String = ['', 'Seg', 'Terç', 'Qua', 'Qui', 'Sex',
    'Sáb', 'Dom'];
  LMonths: Array of String = ['', 'Janeiro', 'Fevereiro', 'Março', 'Abril',
    'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro',
    'Dezembro'];
  Layout = 'Atualizado %s, %d de %s de %d ';
begin
  Result := Format(Layout, [LDays[DayOfWeek(ADate)], DayOf(ADate),
    LMonths[MonthOf(ADate)], YearOf(ADate)]);
end;

function TTFrmBaseMasterDetails.GetTopActiveTab(Sender: TObject): Integer;
begin
  Result := 0;
  if (Sender is TPanel) then
  begin
    Result := Result + TPanel(Sender).Top;
  end
  else if (Sender is TLabel) then
  begin
    Result := Result + TPanel(TLabel(Sender).Parent).Top;
  end
  else if (Sender is TImage) then
  begin
    Result := Result + TPanel(TImage(Sender).Parent).Top;
  end;
end;

procedure TTFrmBaseMasterDetails.ReadOnlyMode;
begin
  FReadOnlyMode := True;
  if Assigned(FActiveStep) then
    FActiveStep.ReadOnlyMode;
end;

procedure TTFrmBaseMasterDetails.SetService(const Value: IService_EntityDetail);
begin
  FService := Value;
  DoAfterSetService;
end;

procedure TTFrmBaseMasterDetails.ResetPanelHover(Sender: TObject);
begin
  inherited;
  if (Sender is TPanel) then
  begin
    TPanel(Sender).Color := clWhite;
  end
  else if (Sender is TLabel) then
  begin
    TPanel(TLabel(Sender).Parent).Color := clWhite;
  end
  else if (Sender is TImage) then
  begin
    TPanel(TImage(Sender).Parent).Color := clWhite;
  end;
end;

procedure TTFrmBaseMasterDetails.btnExecuteCloseClick(Sender: TObject);
begin
  Close;
  NotifyClose;
end;

function TTFrmBaseMasterDetails.CreateForm(const AFormClass: TComponentClass;
  var AForm; const AParent: TWinControl): TFrmBaseMasterStep;
begin
  if Assigned(FActiveStep) then
    FActiveStep.Close;

  Application.CreateForm(AFormClass, AForm);
  TForm(AForm).Parent := AParent;
  TForm(AForm).Align := alClient;
  TForm(AForm).WindowState := TWindowState.wsMaximized;
  Result := TFrmBaseMasterStep(AForm);
end;

end.
