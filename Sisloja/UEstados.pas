unit UEstados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, MegaEditNumerico, ExtCtrls, DBCtrls,
  XP_Form;

type
  TFrmEstados = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    MegaEditNumerico1: TMegaEditNumerico;
    MegaEditNumerico2: TMegaEditNumerico;
    Label3: TLabel;
    BitBtn5: TBitBtn;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vnovo : Boolean;
  end;

var
  FrmEstados: TFrmEstados;

implementation

uses DM;

{$R *.DFM}

procedure TFrmEstados.BitBtn4Click(Sender: TObject);
begin
    close;
end;

procedure TFrmEstados.BitBtn1Click(Sender: TObject);
begin
    vnovo := true;
    label1.Enabled := true;
    label2.Enabled := true;
    label3.Enabled := true;
    edit1.Enabled := true;
    MegaEditNumerico1.Enabled := true;
    MegaEditNumerico2.Enabled := true;
    bitbtn5.Enabled := true;
    edit1.SetFocus;
end;

procedure TFrmEstados.BitBtn2Click(Sender: TObject);
begin
    vnovo := false;
    label1.Enabled := true;
    label2.Enabled := true;
    label3.Enabled := true;
    //edit1.Enabled := true;
    MegaEditNumerico1.Enabled := true;
    MegaEditNumerico2.Enabled := true;
    bitbtn5.Enabled := true;
    //edit1.SetFocus;
    edit1.Text := ibdm.IBQEstadosUF.AsString;
    MegaEditNumerico1.AsCurrency := ibdm.IBQEstadosIPI.AsCurrency;
    MegaEditNumerico2.AsCurrency := ibdm.IBQEstadosICMS.AsCurrency;
end;

procedure TFrmEstados.BitBtn5Click(Sender: TObject);
begin
    if vnovo = true then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('insert into estados');
            sql.Add('(uf,ipi,icms)');
            sql.Add('values(:p0,:p1,:p2)');
            params[0].AsString := edit1.Text;
            params[1].AsCurrency := MegaEditNumerico1.AsCurrency;
            params[2].AsCurrency := MegaEditNumerico2.AsCurrency;
            prepare;
            ExecQuery;
        end;
    end;

    if vnovo = false then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('update estados');
            sql.Add('set ipi=:p0,icms=:p1');
            sql.Add('where uf =:p2');
            params[0].AsCurrency := MegaEditNumerico1.AsCurrency;
            params[1].AsCurrency := MegaEditNumerico2.AsCurrency;
            params[2].AsString := edit1.Text;
            prepare;
            ExecQuery;
        end;
    end;
    label1.Enabled := false;
    label2.Enabled := false;
    label3.Enabled := false;
    edit1.Text := '';
    edit1.Enabled := false;
    MegaEditNumerico1.AsCurrency := 0;
    MegaEditNumerico1.Enabled := false;
    MegaEditNumerico2.AsCurrency := 0;
    MegaEditNumerico2.Enabled := false;
    bitbtn5.Enabled := false;
    ibdm.IBQEstados.Close;
    ibdm.IBQEstados.Open; 
    CommitWork;
end;

procedure TFrmEstados.BitBtn3Click(Sender: TObject);
begin
    with ibdm.Deleta do
    begin
        close;
        sql.Clear;
        sql.Add('delete from estados');
        sql.Add('where uf =:p0');
        params[0].AsString := ibdm.IBQEstadosUF.AsString;
        prepare;
        ExecQuery;
    end;
    ibdm.IBQEstados.Close;
    ibdm.IBQEstados.Open;
    CommitWork;
    ShowMessage('Estado EXCLUÍDO com sucesso.');
end;

procedure TFrmEstados.FormActivate(Sender: TObject);
begin
    ibdm.IBQEstados.Close;
    ibdm.IBQEstados.Open;
end;

end.
