unit Service.Register.Intf;

interface

uses
  Data.DB,
  DTO.Register,
  Horse.Core.Param;

type
  IServiceRegister = interface
    function Append(const AObject: TDTORegister): Boolean;
    function Delete: Boolean;
    function GetById(const AId: string): TDataSet;
    function GetQryRegister: TDataSet;
    function GetRecordCount: Int64;
    function ListAll(const AParams: THorseCoreParam): TDataSet;
    function Update(const ADTO: TDTORegister): Boolean;
  end;

implementation

end.
