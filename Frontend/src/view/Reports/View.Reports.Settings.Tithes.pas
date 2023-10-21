unit View.Reports.Settings.Tithes;

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
  View.Reports.Settings.Master,
  Components.Button,
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.WinXPanels,
  Vcl.WinXCtrls,
  Vcl.DBCtrls,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Service.Entity.Details.Intf;

type
  TFrmReportTithes = class(TFrmReportSettingsMaster)
    pnContainerMemberYear: TPanel;
    gpMonthYear: TGridPanel;
    Panel2: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    Panel16: TPanel;
    Shape2: TShape;
    cbMember: TDBLookupComboBox;
    Panel1: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    Panel4: TPanel;
    Shape1: TShape;
    edtYear: TEdit;
    pnContainerStatus: TPanel;
    pnCkbStatus: TPanel;
    lbStatus: TLabel;
    iconCkb: TImage;
    mtListMembers: TFDMemTable;
    mtListMembersid: TLargeintField;
    mtListMembersnome: TWideStringField;
    dtsListMembers: TDataSource;
    dtsMember: TDataSource;
    mtMember: TFDMemTable;
    LargeintField1: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure lbStatusClick(Sender: TObject);
  private
    FService: IService_EntityGrid;
    procedure LoadMembers;
  protected
    procedure DoBeforeGetReport; override;
    function GetReportName: string; override;
    function GetReportResource: string; override;
    procedure ToggleStatus(const Avalue: Boolean); override;
  end;

implementation

uses
  Service.Entity.Member;

{$R *.dfm}
{ TFrmReportTithes }

procedure TFrmReportTithes.DoBeforeGetReport;
var
  LMember: Integer;
begin
  inherited;
   LMember := StrToIntDef(VarToStr(cbMember.Field.Value), 0);
   if (LMember > 0) then
   Request.AddParam('member', LMember.ToString);

  if (not String(edtYear.Text).IsEmpty) then
    Request.AddParam('year', String(edtYear.Text));

  if Status then
    Request.AddParam('onlywithbalance', 'true');
end;

procedure TFrmReportTithes.FormCreate(Sender: TObject);
begin
  inherited;
  lbHeaderTitle.Caption := 'Relatório de Dízimos';
  FService:= TService_Member.New;
  mtMember.CreateDataSet;
  mtMember.Open;
  LoadMembers;

  if not(mtMember.State in [dsEdit, dsInsert]) then
    mtMember.Edit;
  cbMember.Field.Value := (-1);
end;

function TFrmReportTithes.GetReportName: string;
begin
  Result := 'Relatório de Dízimos';
end;

function TFrmReportTithes.GetReportResource: string;
begin
  Result := 'tithes';
end;

procedure TFrmReportTithes.lbStatusClick(Sender: TObject);
begin
  inherited;
  Status := (not Status);
end;

procedure TFrmReportTithes.LoadMembers;
begin
  with FService do
  begin
    QueryData(mtListMembers);
    RefreshData;
  end;

  mtListMembers.Append;
  mtListMembersid.Value := (-1);
  mtListMembersnome.Value := 'Todos';
  mtListMembers.Post;
end;

procedure TFrmReportTithes.ToggleStatus(const Avalue: Boolean);
begin
  inherited;
  iconCkb.Picture := GetSttIcon(Avalue);
end;

end.
