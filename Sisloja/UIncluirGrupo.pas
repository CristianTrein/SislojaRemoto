unit UIncluirGrupo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, MegaEditNumerico, ExtCtrls, XP_Form;

type
  TFrmIncluirGrupo = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    MegaEditNumerico1: TMegaEditNumerico;
    Label4: TLabel;
    Label5: TLabel;
    MegaEditNumerico2: TMegaEditNumerico;
    Label6: TLabel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vnovo : boolean;
  end;

var
  FrmIncluirGrupo: TFrmIncluirGrupo;

implementation

uses DM, UIcms, UGrupos;

{$R *.DFM}

procedure TFrmIncluirGrupo.BitBtn1Click(Sender: TObject);
begin
    if vnovo = true then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('Insert into grupos');
            sql.Add('(codigo,descricao,ipi,icms)');
            sql.Add('values (:p0,:p1,:p2,:p3)');
            params[0].AsInteger := strtoint(edit1.text);
            params[1].AsString := edit2.Text;
            params[2].AsCurrency := MegaEditNumerico1.AsCurrency;
            params[3].AsCurrency := MegaEditNumerico2.AsCurrency;
            prepare;
            execquery;
        end;
    end;
    if vnovo = false then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('Update grupos');
            sql.Add('set descricao=:p0,ipi=:p1,icms=:p2');
            sql.Add('where codigo = :p3') ;
            params[0].AsString := edit2.Text;
            params[1].AsCurrency := MegaEditNumerico1.AsCurrency;
            params[2].AsCurrency := MegaEditNumerico2.AsCurrency;
            params[3].AsInteger := strtoint(edit2.Text);
            prepare;
            execquery;
        end;
    end;
    ibdm.IBQgrupos.Close;
    ibdm.IBQgrupos.open;
    CommitWork;
    close;
end;

procedure TFrmIncluirGrupo.BitBtn2Click(Sender: TObject);
begin
    frmincluirgrupo.Close;
end;

end.
