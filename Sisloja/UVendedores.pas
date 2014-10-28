unit UVendedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DBCtrls, XP_Form;

type
  TFrmEdVendedores = class(TForm)
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEdVendedores: TFrmEdVendedores;

implementation

uses DM, UIncluirVend;

{$R *.DFM}

procedure TFrmEdVendedores.FormActivate(Sender: TObject);
begin
    ibdm.IBQUsuario.Open;
end;

procedure TFrmEdVendedores.BitBtn1Click(Sender: TObject);
begin
    frmedvendedores.Close;
end;

procedure TFrmEdVendedores.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFrmEdVendedores.BitBtn2Click(Sender: TObject);
begin
    FrmIncluirVend := TFrmIncluirVend.Create(application);
    FrmIncluirVend.vnovo := true;
    with ibdm.IBQUsuario do
    begin
        last;
        frmincluirvend.Edit1.Text := inttostr(ibdm.ibqusuariocodigo.asinteger + 1);
    end;
    FrmIncluirVend.ShowModal;
    FrmIncluirVend.Destroy;
end;

procedure TFrmEdVendedores.BitBtn3Click(Sender: TObject);
begin
    FrmIncluirVend := TFrmIncluirVend.Create(application);
    FrmIncluirVend.Edit1.Text := inttostr(ibdm.ibqusuariocodigo.asinteger);
    FrmIncluirVend.Edit2.Text := ibdm.IBQUsuarioNOME.AsString;
    FrmIncluirVend.Edit3.Value := ibdm.IBQUsuarioCOMISSAO.Ascurrency;
    FrmIncluirVend.Edit6.Value := ibdm.IBQUsuarioCOMISSAO1.Ascurrency;
    FrmincluirVend.Edit4.Text := ibdm.IBQUsuarioSENHA.AsString;
    FrmincluirVend.Edit5.Text := ibdm.IBQUsuarioSENHA.AsString;
    FrmincluirVend.ComboBox1.Text := ibdm.IBQUsuarioSUPER.AsString;
    FrmIncluirVend.vnovo := false;
    FrmIncluirVend.ShowModal;
    FrmIncluirVend.Destroy;
end;

procedure TFrmEdVendedores.BitBtn4Click(Sender: TObject);
var
    vcod : integer;
begin
    vcod := ibdm.IBQUsuarioCODIGO.AsInteger;
    with ibdm.Deleta do
    begin
        close;
        sql.Clear;
        sql.Add('delete from usuarios');
        sql.Add('where codigo = :p0');
        params[0].AsInteger := vcod;
        prepare;
        execquery;
    end;
    ibdm.IBQUsuario.close;
    ibdm.IBQusuario.Open;
    DBGrid1.Refresh;
end;

end.
