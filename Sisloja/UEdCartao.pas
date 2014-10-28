unit UEdCartao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, MegaEditNumerico, Mask, rxToolEdit, ExtCtrls, XP_Form;

type
  TFrmEdCartao = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    DateEdit2: TDateEdit;
    Edit2: TEdit;
    Label4: TLabel;
    MegaEditNumerico1: TMegaEditNumerico;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label8: TLabel;
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
  FrmEdCartao: TFrmEdCartao;

implementation

uses DM;

{$R *.DFM}

procedure TFrmEdCartao.BitBtn2Click(Sender: TObject);
begin
    close;
end;

procedure TFrmEdCartao.BitBtn1Click(Sender: TObject);
begin
    if vnovo = true then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('insert into cartao');
            sql.Add('(controle,data,datacredito,nome,valor,parcelas,numcartao,validade)');
            sql.Add('values(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)');
            params[0].AsInteger := strtoint(edit1.Text);
            params[1].AsDate := int(DateEdit1.Date);
            params[2].AsDate := int(DateEdit2.Date);
            params[3].AsString := edit2.Text;
            params[4].AsCurrency := MegaEditNumerico1.AsCurrency;
            params[5].AsString:= edit5.Text;
            params[6].AsString := edit3.Text;
            params[7].AsString := edit4.Text;
            prepare;
            ExecQuery;
        end;
        CommitWork;
    end;

    if vnovo = false then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('update cartao');
            sql.Add('set data=:p0,datacredito=:p1,nome=:p2,valor=:p3,parcelas=:p4,numcartao=:p5,validade=:p6');
            sql.Add('where controle =:p7');
            params[0].AsDate := int(DateEdit1.Date);
            params[1].AsDate := int(DateEdit2.Date);
            params[2].AsString := edit2.Text;
            params[3].AsCurrency := MegaEditNumerico1.AsCurrency;
            params[4].AsString:= edit5.Text;
            params[5].AsString := edit3.Text;
            params[6].AsString := edit4.Text;
            params[7].AsInteger := strtoint(edit1.Text);
            prepare;
            ExecQuery;
        end;
        CommitWork;
    end;
    ibdm.IBQCartao.Close;
    ibdm.IBQCartao.Open;
    close;
end;

end.
