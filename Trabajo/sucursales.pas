unit Sucursales;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, db, oracleconnection, FileUtil, Forms, Controls,
  Graphics, Dialogs, ComCtrls, DBGrids, StdCtrls, ExtCtrls, ButtonPanel,
  ActnList, DbCtrls, sucursales2, Types;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    BotonUpdateClient: TButton;
    BotonDeleteClient: TButton;
    BotonInsertClient: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBNavigator3: TDBNavigator;
    NMontVenc: TEdit;
    NVentAnt: TEdit;
    NCFormPago: TEdit;
    Edit13: TEdit;
    NCodClient: TEdit;
    NRazSoc: TEdit;
    NDireccion: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    NClasVent: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    EtiquetaPanelCliente: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    NavegadorSucursales: TDBNavigator;
    Edit1: TEdit;
    CodEmp: TEdit;
    NSueldo: TEdit;
    NSucursal: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Modificaciones: TOracleConnection;
    PageControl1: TPageControl;
    PanelDeleteClient: TPanel;
    PanelCliente: TPanel;
    PanelAscenso: TPanel;
    ScriptAscender: TSQLScript;
    TabSheet4: TTabSheet;
    TransaccionModificaciones: TSQLTransaction;
    TabSheet1: TTabSheet;
    Clientes: TTabSheet;
    TabSheet3: TTabSheet;
    procedure BotonDeleteClientClick(Sender: TObject);
    procedure BotonUpdateClientClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BotonInsertClientClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure TabSheet4ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  if Edit1.Text <> '' then begin
     sucursales2.DataAccessSucursales.ConsultaEmpleadosSucursal.Active:=False;
     sucursales2.DataAccessSucursales.ConsultaEmpleadosSucursal.SQL.Text:='SELECT * FROM EMPLEADO WHERE CSUCUR =' + Edit1.Text;
     sucursales2.DataAccessSucursales.ConsultaEmpleadosSucursal.Active:=True;
  end
  else begin
     sucursales2.DataAccessSucursales.ConsultaEmpleadosSucursal.Active:=False;
     sucursales2.DataAccessSucursales.ConsultaEmpleadosSucursal.SQL.Text:='SELECT * FROM EMPLEADO';
     sucursales2.DataAccessSucursales.ConsultaEmpleadosSucursal.Active:=True;
  end;
end;

procedure TForm1.BotonDeleteClientClick(Sender: TObject);
begin
  PanelCliente.Visible:=False;
  PanelDeleteClient.Visible:=True;

end;

procedure TForm1.BotonUpdateClientClick(Sender: TObject);
begin
  PanelDeleteClient.Visible:=False;
  EtiquetaPanelCliente.Caption:=BotonUpdateClient.Caption;
  PanelCliente.Visible:=True;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  PanelAscenso.Visible:=True;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ScriptAscender.Script.Text:='CALL ASCENDER_EMP('+CodEmp.Text+','+ NSueldo.Text+','+NSucursal.Text+');';
  ScriptAscender.Execute;
  TransaccionModificaciones.Commit;
  PanelAscenso.Visible:=False;
end;

procedure TForm1.BotonInsertClientClick(Sender: TObject);
begin
  PanelDeleteClient.Visible:=False;
  EtiquetaPanelCliente.Caption:=BotonInsertClient.Caption;
  PanelCliente.Visible:=True;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  //insertar codigo sql
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  PanelCliente.Visible:=False;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  PanelDeleteClient.Visible:=False;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  if (NCodClient.Text<>'') and (NRazSoc.Text<>'') and (NDireccion.Text<>'') and (NClasVent.Text<>'')
     and (NMontVenc.Text<>'') and (NVentAnt.Text<>'') and (NCFormPago.Text<>'') then begin
           //insertar codigo SQL
     end
  else ShowMessage('Inserte información en los campos obligatorios.');
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Label11Click(Sender: TObject);
begin

end;

procedure TForm1.Label15Click(Sender: TObject);
begin

end;

procedure TForm1.TabSheet4ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

end;


end.

