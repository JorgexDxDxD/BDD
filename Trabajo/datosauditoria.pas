unit datosAuditoria;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, oracleconnection, sqldb, db, FileUtil;

type

  { TModuloAuditoria }

  TModuloAuditoria = class(TDataModule)
    DatosAuditoria: TDataSource;
    ConexionAuditoria: TOracleConnection;
    ConsultaAuditoria: TSQLQuery;
    TransaccionAuditoria: TSQLTransaction;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  ModuloAuditoria: TModuloAuditoria;

implementation

{$R *.lfm}

end.

