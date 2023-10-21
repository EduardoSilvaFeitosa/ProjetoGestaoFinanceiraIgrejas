unit DTO.User;

interface

uses
  DTO.Register, System.JSON, Common.types;

type
  TDTOUser = class(TDTORegister)
  private
    Fname: string;
    Femail: string;
    Fusername: string;
    Fpassword: string;
    Fstatus: Int8;
    FupdatePwd: Boolean;
  public
    property name: string read Fname write Fname;
    property email: string read Femail write Femail;
    property username: string read Fusername write Fusername;
    property password: string read Fpassword write Fpassword;
    property status: Int8 read Fstatus write Fstatus;
    property updatePwd: Boolean read FupdatePwd write FupdatePwd;

    function AsJSON: TJSONObject; override;
    class function LoadInstance(const AJSON: TJSONObject): TDTOUser;
    class function TryLoadInstance(var LDTO: TDTOUser;
      const AJSON: TJSONObject): Boolean;
    procedure ValidateOperationRules(const AOperation: tpOperation); override;
  end;

implementation

uses
  REST.JSON, System.SysUtils;

{ TDTOUser }

function TDTOUser.AsJSON: TJSONObject;
begin
  Result := inherited;
  if Assigned(Result) then
    Result.RemovePair('updatePwd').Free;
end;

class function TDTOUser.LoadInstance(const AJSON: TJSONObject): TDTOUser;
begin
  inherited LoadInstance(AJSON);
  Result := TJSOn.JsonToObject<TDTOUser>(AJSON);
end;

class function TDTOUser.TryLoadInstance(var LDTO: TDTOUser;
  const AJSON: TJSONObject): Boolean;
begin
  try
    LDTO := TDTOUser.LoadInstance(AJSON);
    Result := Assigned(LDTO);
  except
    on E: Exception do
    begin
      Result := False;
      Log(E, 'Generate user objects', Self.ClassName);
    end;
  end;
end;

procedure TDTOUser.ValidateOperationRules(const AOperation: tpOperation);
begin
  inherited;
  if (AOperation = tpCreate) then
    if (not Trim(password).IsEmpty) and (Trim(password).Length < 8) then
      AddNotification('A senha deve ter no mínimo 8 dígitos',
        tpUnsatisfiedRule);

  if (name.Length < 3) then
    AddNotification('O nome deve ter no mínimo 3 caracteres',
      tpUnsatisfiedRule);

  if not checkEmail(email) then
    AddNotification('O email informado é inválido', tpUnsatisfiedRule);

  if not(status in [0, 1]) then
    AddNotification('O status informado é inválido', tpUnsatisfiedRule);
end;

end.
