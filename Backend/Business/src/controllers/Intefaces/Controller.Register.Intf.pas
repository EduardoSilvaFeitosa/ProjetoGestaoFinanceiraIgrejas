unit Controller.Register.Intf;

interface

uses
  Data.DB,
  System.JSON,
  DTO.Register,
  Horse.Core.Param,
  Common.Utils.Notifications.Intf;

type
  IControllerRegister = interface(IUtilsNotifications)
    function Append(const ADTO: TDTORegister): Boolean;
    function Delete(const AId: string): Boolean;
    function GetById(const AId: string): TDataSet;
    function ListAll(const AParams: THorseCoreParam): TJSONObject;
    function Update(const ADTO: TDTORegister; const AId: String): Boolean;
    function GetQryRegister: TJSONObject;
  end;

implementation

end.
