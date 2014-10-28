unit USuperUsuario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, XP_Form;

type
  TFrmSuperUsuario = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSuperUsuario: TFrmSuperUsuario;

implementation

uses UIncluirVend, DM;

{$R *.DFM}

procedure TFrmSuperUsuario.BitBtn2Click(Sender: TObject);
begin
    FrmIncluirVend := TFrmIncluirVend.Create(application);
    FrmIncluirVend.vnovo := true;
    with ibdm.IBQUsuario do
    begin
        last;
        frmincluirvend.Edit1.Text := inttostr(ibdm.ibqusuariocodigo.asinteger + 1);
    end;
    FrmIncluirVend.Label4.Enabled := true;
    FrmIncluirVend.Label5.Enabled := true;
    FrmIncluirVend.Label6.Enabled := true;
    FrmIncluirVend.ComboBox1.Visible := true;
    FrmIncluirVend.Edit4.Visible := true;
    FrmIncluirVend.Edit5.Visible := true;
    FrmIncluirVend.ShowModal;
    FrmIncluirVend.Destroy;
end;

procedure TFrmSuperUsuario.FormActivate(Sender: TObject);
begin
    ibdm.IBQUsuario.Close;
    ibdm.IBQUsuario.Open;
    dbgrid1.Refresh;
end;

procedure TFrmSuperUsuario.BitBtn3Click(Sender: TObject);
begin
    FrmIncluirVend := TFrmIncluirVend.Create(application);
    FrmIncluirVend.Edit1.Text := inttostr(ibdm.ibqusuariocodigo.asinteger);
    FrmIncluirVend.Edit2.Text := ibdm.IBQUsuarioNOME.AsString;
    FrmIncluirVend.Edit3.Text := ibdm.IBQUsuarioCOMISSAO.AsString;
    FrmIncluirVend.Label4.Enabled := true;
    FrmIncluirVend.Label5.Enabled := true;
    FrmIncluirVend.Label6.Enabled := true;
    FrmIncluirVend.ComboBox1.Visible := true;
    FrmIncluirVend.Edit4.Visible := true;
    FrmIncluirVend.Edit5.Visible := true;
    FrmIncluirVend.vnovo := false;
    FrmIncluirVend.Edit4.Text := inttostr(ibdm.IBQUsuarioSENHA.asinteger);
    FrmIncluirVend.Edit5.Text := inttostr(ibdm.IBQUsuarioSENHA.asinteger);
    if ibdm.IBQUsuarioSUPER.AsString = 'M' then
        FrmIncluirVend.ComboBox1.Text := 'SIM'
       else
        FrmIncluirVend.ComboBox1.Text := 'NÃO';
    FrmIncluirVend.ShowModal;
    FrmIncluirVend.Destroy
end;

procedure TFrmSuperUsuario.BitBtn4Click(Sender: TObject);
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

procedure TFrmSuperUsuario.BitBtn1Click(Sender: TObject);
begin
    FrmSuperUsuario.Close;
end;

end.
