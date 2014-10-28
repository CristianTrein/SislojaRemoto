unit UPesqClientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, XP_Form;

type
  TFrmPesqClientes = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqClientes: TFrmPesqClientes;

implementation

uses DM, UCReceber;

{$R *.DFM}

procedure TFrmPesqClientes.FormActivate(Sender: TObject);
begin
    ibdm.IBQClientes.close;
    ibdm.IBQClientes.Open;
end;

procedure TFrmPesqClientes.BitBtn1Click(Sender: TObject);
begin
    frmedcreceber.EdCliente.Text := inttostr(ibdm.IBQClientesCODIGO.asinteger);
    frmedcreceber.EdHistorico.Text := ibdm.IBQClientesNOME.AsString;
    frmpesqclientes.Close;
end;

procedure TFrmPesqClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
