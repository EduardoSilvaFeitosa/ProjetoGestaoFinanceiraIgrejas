unit View.Register.Transaction.Data.Step;

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
  View.Base.Master.Step,
  Data.DB,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Mask,
  Vcl.DBCtrls,
  Vcl.ComCtrls,
  Vcl.Imaging.pngimage,

  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Vcl.WinXPanels,
  Utils.Types;

type
  TFrmStepDataTransaction = class(TFrmBaseMasterStep)
    pnContainerDescription: TPanel;
    Panel3: TPanel;
    Shape1: TShape;
    edtDescription: TDBEdit;
    Panel4: TPanel;
    lbDescription: TLabel;
    lbAlertDescription: TLabel;
    pnContainerDateNature: TPanel;
    GridPanel1: TGridPanel;
    Panel2: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    Panel16: TPanel;
    Shape2: TShape;
    edtEntryDate: TDateTimePicker;
    Panel5: TPanel;
    Panel7: TPanel;
    Label2: TLabel;
    Panel8: TPanel;
    Shape3: TShape;
    pnContainerKind: TPanel;
    Panel10: TPanel;
    Shape4: TShape;
    Panel11: TPanel;
    lbKind: TLabel;
    lbAlertKind: TLabel;
    pnContainerComments: TPanel;
    Panel13: TPanel;
    Shape5: TShape;
    dbComments: TDBMemo;
    Panel14: TPanel;
    Label5: TLabel;
    pnContainerValue: TPanel;
    Panel18: TPanel;
    Label6: TLabel;
    lbAlertValue: TLabel;
    lbAlertNature: TLabel;
    cbKind: TDBLookupComboBox;
    Panel1: TPanel;
    Shape6: TShape;
    edtValue: TDBEdit;
    mtNature: TFDMemTable;
    mtNatureid: TStringField;
    mtNaturedescription: TStringField;
    dtsNature: TDataSource;
    cbNature: TDBLookupComboBox;
    mtKind: TFDMemTable;
    dtsKind: TDataSource;
    mtKindid: TIntegerField;
    mtKinddescription: TStringField;
    cpBackground: TCardPanel;
    crdMainContent: TCard;
    crdDetails: TCard;
    pnEmbedContent: TPanel;
    pnContainerBtnLink: TPanel;
    Shape7: TShape;
    Image1: TImage;
    Panel12: TPanel;
    procedure FormShow(Sender: TObject);
    procedure edtDescriptionChange(Sender: TObject);
    procedure cbNatureChange(Sender: TObject);
    procedure cbKindChange(Sender: TObject);
    procedure edtValueChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtEntryDateExit(Sender: TObject);
    procedure OnIconEnter(Sender: TObject);
    procedure OnLinkDetailsClick(Sender: TObject);
  private
    FActiveStep: TFrmBaseMasterStep;
    FOnGoToNextStep: TNotifyToggleStep;
    procedure StartLookups;
    procedure UpdateFields;
    procedure DefaultListenerSteps(const AStepIndex: Integer);
    function CreateForm(const AFormClass: TComponentClass; var AForm;
      const AParent: TWinControl): TFrmBaseMasterStep;
    procedure ShowCampaingTransacrion;
    procedure ShowMembersTransacrion;
    function TryGetValue(const AFieldName: string;
      const ADefault: Integer = 0): Int64;
    function GetHasDetails: Boolean;
    function GetDate(const AFieldName: string; const ADefault: TDateTime)
      : TDateTime;
  public
    function ValidateRules: Boolean; override;
    procedure RepaintPanelIcon(const APanel: TPanel); override;
    procedure AddListernerNextStep(const AListener: TNotifyToggleStep);
    procedure OnGoToPreviousStep(Sender: TObject);
    procedure ListenerOnUpdateMemberId(const AId: Integer);
    procedure ListenerOnUpdateCampaignId(const AId: Integer);
    procedure ShowFormDetails;
    procedure AsDetails; override;
    property HasDetails: Boolean read GetHasDetails;
  end;

implementation

uses
  View.Register.Member.Transaction.Data.Step,
  View.Register.Campaign.Transaction.Data.Step;

{$R *.dfm}
{ TFrmStepDataTransaction }

procedure TFrmStepDataTransaction.AddListernerNextStep(const AListener
  : TNotifyToggleStep);
begin
  FOnGoToNextStep := AListener;
end;

procedure TFrmStepDataTransaction.cbKindChange(Sender: TObject);
begin
  inherited;
  lbAlertKind.Visible := False;
end;

procedure TFrmStepDataTransaction.cbNatureChange(Sender: TObject);
begin
  inherited;
  lbAlertNature.Visible := False;
end;

function TFrmStepDataTransaction.CreateForm(const AFormClass: TComponentClass;
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

procedure TFrmStepDataTransaction.DefaultListenerSteps(const AStepIndex
  : Integer);
begin
  // Nothing to execute here
end;

procedure TFrmStepDataTransaction.edtDescriptionChange(Sender: TObject);
begin
  inherited;
  lbAlertDescription.Visible := False;
end;

procedure TFrmStepDataTransaction.edtEntryDateExit(Sender: TObject);
begin
  inherited;
  UpdateFields;
end;

procedure TFrmStepDataTransaction.edtValueChange(Sender: TObject);
begin
  inherited;
  lbAlertValue.Visible := False;
end;

procedure TFrmStepDataTransaction.FormCreate(Sender: TObject);
begin
  inherited;
  edtEntryDate.Date := Now;
  FOnGoToNextStep := DefaultListenerSteps;
  StartLookups;
end;

procedure TFrmStepDataTransaction.FormShow(Sender: TObject);
begin
  inherited;
  edtDescription.SetFocus;
  edtEntryDate.Date := GetDate('dtfato', Now);
end;

function TFrmStepDataTransaction.GetDate(const AFieldName: string;
  const ADefault: TDateTime): TDateTime;
begin
  try
    Result := ADefault;
    if Assigned(dtsMain.DataSet) and
      Assigned(dtsMain.DataSet.FindField(AFieldName)) and
      (not VarToStr(dtsMain.DataSet.FindField(AFieldName).Value).IsEmpty) then
      Result := dtsMain.DataSet.FieldByName(AFieldName).AsDateTime;
  except
    on E: Exception do
    begin
      Result := ADefault;
      Log(E, 'TFrmStepDataTransaction.GetDate', Self.ClassInfo);
    end;
  end;
end;

function TFrmStepDataTransaction.GetHasDetails: Boolean;
begin
  Result := Assigned(cbKind.Field) and
    (StrToIntDef(VarToStr(cbKind.Field.Value), 0) in [1, 2]);
end;

procedure TFrmStepDataTransaction.ListenerOnUpdateCampaignId
  (const AId: Integer);
begin
  TrySetValue('idcampanha', AId, 'campanha');
end;

procedure TFrmStepDataTransaction.ListenerOnUpdateMemberId(const AId: Integer);
begin
  TrySetValue('idmembro', AId, 'membro');
end;

procedure TFrmStepDataTransaction.OnLinkDetailsClick(Sender: TObject);
begin
  ShowFormDetails;
end;

procedure TFrmStepDataTransaction.RepaintPanelIcon(const APanel: TPanel);
begin
  inherited;
  APanel.ParentBackground := False;
  APanel.Color := $00FBF7F6;
end;

procedure TFrmStepDataTransaction.OnGoToPreviousStep(Sender: TObject);
begin
  FOnGoToNextStep(1);
  crdMainContent.Show;
end;

procedure TFrmStepDataTransaction.OnIconEnter(Sender: TObject);

begin
  inherited;
  Self.OnMouseEnterIcon(Sender);
end;

procedure TFrmStepDataTransaction.AsDetails;
begin
  pnContainerBtnLink.Visible := False;
end;

procedure TFrmStepDataTransaction.ShowCampaingTransacrion;
var
  LForm: TFrmStepDataCampaignTransaction;
begin
  CreateForm(TFrmStepDataCampaignTransaction, LForm, pnEmbedContent);
  LForm.CheckedId := TryGetValue('idcampanha');
  LForm.OnChangeCheckedCampaignId := ListenerOnUpdateCampaignId;
  LForm.Show;
  FActiveStep := LForm;
end;

procedure TFrmStepDataTransaction.ShowFormDetails;
var
  LOption: Integer;

  procedure SetFormShow;
  begin
    FOnGoToNextStep(2);
    crdDetails.Show;
  end;

begin
  inherited;
  LOption := StrToIntDef(VarToStr(cbKind.Field.Value), 0);
  if (LOption = 1) then // abre o formulário de campanha
  begin
    ShowCampaingTransacrion;
    SetFormShow;
  end
  else if (LOption = 2) then
  begin
    ShowMembersTransacrion;
    SetFormShow;
  end;
end;

procedure TFrmStepDataTransaction.ShowMembersTransacrion;
var
  LForm: TFrmStepDataMemberTransaction;
begin
  CreateForm(TFrmStepDataMemberTransaction, LForm, pnEmbedContent);
  LForm.CheckedId := TryGetValue('idmembro');
  LForm.OnChangeCheckedMemberId := ListenerOnUpdateMemberId;
  LForm.Show;
  FActiveStep := LForm;
end;

procedure TFrmStepDataTransaction.StartLookups;

  procedure AddNature(const AId: AnsiString; const ADesc: AnsiString);
  begin
    mtNature.Append;
    mtNatureid.Value := AId;
    mtNaturedescription.Value := ADesc;
    mtNature.Post;
  end;

  procedure AddKind(const AId: Integer; const ADesc: AnsiString);
  begin
    mtKind.Append;
    mtKindid.Value := AId;
    mtKinddescription.Value := ADesc;
    mtKind.Post;
  end;

begin
  mtNature.CreateDataSet;
  mtNature.Open;

  AddNature('C', 'Crédito');
  AddNature('D', 'Débito');
  mtNature.Open;

  mtKind.CreateDataSet;
  mtKind.Open;

  AddKind(0, 'Padrão');
  AddKind(1, 'Campanha');
  AddKind(2, 'Dízimo');
  AddKind(3, 'Oferta');
  mtKind.Open;
end;

function TFrmStepDataTransaction.TryGetValue(const AFieldName: string;
  const ADefault: Integer): Int64;
begin
  try
    Result := ADefault;
    if Assigned(dtsMain.DataSet) and
      Assigned(dtsMain.DataSet.FindField(AFieldName)) and
      (not VarToStr(dtsMain.DataSet.FindField(AFieldName).Value).IsEmpty) then
      Result := StrToInt64Def(VarToStr(dtsMain.DataSet.FindField(AFieldName)
        .Value), ADefault);
  except
    on E: Exception do
    begin
      Log(E, 'TFrmStepDataTransaction.TryGetValue', Self.ClassInfo);
      raise Exception.Create('Erro ao configurar ' + AFieldName);
    end;
  end;
end;

procedure TFrmStepDataTransaction.UpdateFields;
begin
  TrySetValue('dtfato', edtEntryDate.DateTime, 'data da movimentação');
end;

function TFrmStepDataTransaction.ValidateRules: Boolean;
begin
  UpdateFields;
  if (edtDescription.EditText.Length < 3) then
  begin
    lbAlertDescription.Caption := 'A descrição deve ter no mínimo 3 dígitos.';
    lbAlertDescription.Visible := True;
    edtDescription.SetFocus;
    Exit(False);
  end;

  if (cbNature.Text.IsEmpty) then
  begin
    lbAlertNature.Caption := 'Obrigatótio';
    if (Self.Width > 300) then
      lbAlertNature.Caption := 'Campo obrigatótio';
    lbAlertNature.Visible := True;
    cbNature.SetFocus;
    Exit(False);
  end;

  if (cbKind.Text.IsEmpty) then
  begin
    lbAlertKind.Caption := 'Obrigatótio';
    if (Self.Width > 300) then
      lbAlertKind.Caption := 'Campo obrigatótio';
    lbAlertKind.Visible := True;
    cbKind.SetFocus;
    Exit(False);
  end;

  if edtValue.EditText.IsEmpty then
  begin
    lbAlertValue.Caption := 'Obrigatótio';
    if (Self.Width > 300) then
      lbAlertValue.Caption := 'Campo obrigatótio';
    lbAlertValue.Visible := True;
    edtValue.SetFocus;
    Exit(False);
  end;

  if (not(StrToFloatDef(edtValue.Field.AsString, 0) > 0)) then
  begin
    lbAlertValue.Caption := 'O valor deve ser maior que zero';
    lbAlertValue.Visible := True;
    edtValue.SetFocus;
    Exit(False);
  end;

  Result := True;
end;

end.
