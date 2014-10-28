unit UIncluirtribcai;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, XP_Form;

type
  TFrmIcluirTribCai = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vnovo : boolean;
  end;

var
  FrmIcluirTribCai: TFrmIcluirTribCai;

implementation

uses DM, UTrCaixa;

{$R *.DFM}

procedure TFrmIcluirTribCai.BitBtn2Click(Sender: TObject);
begin
    FrmIcluirTribCai.Close;
end;

procedure TFrmIcluirTribCai.BitBtn1Click(Sender: TObject);
begin
    if vnovo = true then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('insert into trcaixa');
            sql.Add('(codigo,descricao,operacao)');
            sql.Add('values (:p0,:p1,:p2)');
            params[0].AsInteger := strtoint(edit1.text);
            params[1].AsString := edit2.Text;
            params[2].AsString := edit3.Text;
            prepare;
            execquery;
        end;
        ibdm.IBQTrCaixa.close;
        ibdm.IBQTrCaixa.Open;
        FrmTrCaixa.DBGrid1.Refresh;
    end;

    if vnovo = false then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('Update trcaixa');
            sql.Add('set descricao=:p0,operacao=:p1,codigo=:p2');
            sql.Add('where codigo=:p2') ;
            params[0].AsString := edit2.Text;
            params[1].AsString := edit3.Text;
            params[2].AsInteger := strtoint(edit1.text);
            prepare;
            execquery;
        end;
        ibdm.IBQTrCaixa.close;
        ibdm.IBQTrCaixa.Open;
        FrmTrCaixa.DBGrid1.Refresh;
    end;
    close;
end;

end.
