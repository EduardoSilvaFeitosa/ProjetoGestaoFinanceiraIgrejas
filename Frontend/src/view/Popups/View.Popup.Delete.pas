unit View.Popup.Delete;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  View.Base.Popup,
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  Service.Entity.Details.Intf;

type
  TFrmPopupDelete = class(TFrmBasePopup)
    procedure FormCreate(Sender: TObject);
  private
    FService: IService_EntityDetail;
    procedure SetService(const Value: IService_EntityDetail);
  protected
    procedure ReloadActiveFormEvents; override;
  public
    procedure ExecuteDelete(Sender: TObject);
    property Service: IService_EntityDetail read FService write SetService;
  end;

implementation

uses
  System.SysUtils;

{$R *.dfm}

procedure TFrmPopupDelete.ExecuteDelete(Sender: TObject);
begin
  try
    Service.Delete;
    EmbedSuccess('Exclusão do registro realizada com sucesso!');
  except
    on E: Exception do
      EmbedError(E, 'Algo deu errado ao tentar excluir o registro!');
  end;
end;

procedure TFrmPopupDelete.FormCreate(Sender: TObject);
begin
  inherited;
  EmbedQuestion('Deseja realmente excluir este registro?');  
end;

procedure TFrmPopupDelete.ReloadActiveFormEvents;
begin
  FActiveForm.OnExecuteClose := btnCloseClick;
  FActiveForm.OnConfirmClick := ExecuteDelete;
end;

procedure TFrmPopupDelete.SetService(const Value: IService_EntityDetail);
begin
  FService := Value;
end;

end.
