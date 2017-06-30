unit sucursales2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, oracleconnection, sqldb, db, FileUtil;

type

  { TDataAccessSucursales }

  TDataAccessSucursales = class(TDataModule)
    ConexionConsultasSucursal: TOracleConnection;
    ConsultaSucursales: TSQLQuery;
    DatosSucursales: TDataSource;
    EmpleadosSucursal: TDataSource;
    ConsultaEmpleadosSucursal: TSQLQuery;
    ConexionConsultasEmpSucur: TOracleConnection;
    TransaccionEmpleados: TSQLTransaction;
    TransaccionSucursal: TSQLTransaction;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  DataAccessSucursales: TDataAccessSucursales;

implementation

{$R *.lfm}

end.

