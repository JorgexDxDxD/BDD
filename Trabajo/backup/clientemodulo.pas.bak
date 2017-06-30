unit clientemodulo;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, oracleconnection, sqldb, db, FileUtil;

type

  { TModuloClientes }

  TModuloClientes = class(TDataModule)
    ConexionClientes: TOracleConnection;
    DatosClientes: TDataSource;
    ConsultaClientes: TSQLQuery;
    TransaccionClientes: TSQLTransaction;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  ModuloClientes: TModuloClientes;

implementation

{$R *.lfm}

end.

