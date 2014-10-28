unit UCadCheques;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, MegaEditNumerico, Mask, rxToolEdit, ExtCtrls, XP_Form;

type
  TFrmCadCheque = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    MegaEditNumerico1: TMegaEditNumerico;
    Edit5: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    DateEdit2: TDateEdit;
    Edit8: TEdit;
    Label11: TLabel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    vnovo : boolean;
  end;

var
  FrmCadCheque: TFrmCadCheque;

implementation

uses DM;

{$R *.DFM}

procedure TFrmCadCheque.BitBtn2Click(Sender: TObject);
begin
    Close;
end;

procedure TFrmCadCheque.BitBtn1Click(Sender: TObject);
begin
    if vnovo = true then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('insert into cheque');
            sql.Add('(codigo,emitente,documento,entrada,cliente,valor,ncheque,banco,agencia,depositar,lkconta)');
            sql.Add('values(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10)');
            params[0].AsInteger := strtoint(edit1.text);
            params[1].AsString := edit2.Text;
            params[2].AsString := edit3.Text;
            params[3].AsDate := int(DateEdit1.Date);
            params[4].AsInteger := strtoint(edit4.Text);
            params[5].AsCurrency := MegaEditNumerico1.AsCurrency;
            params[6].AsString := edit5.Text;
            params[7].AsString := edit6.Text;
            params[8].AsString := edit7.Text;
            params[9].AsDate := int(DateEdit2.Date);
            params[10].AsInteger := strtoint(edit8.Text);
            prepare;
            ExecQuery;
        end;
        edit5.Text := '';
        dateedit2.Text := '';
        MegaEditNumerico1.Value := 0;
        with ibdm.Consulta do
        begin
            close;
            sql.Clear;
            sql.Add('select max(codigo) from cheque');
            prepare;
            open;
            Edit1.Text := inttostr(fields[0].AsInteger + 1);
        end;
    end;

    if vnovo = false then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('update cheque');
            sql.Add('set emitente=:p0,documento=:p1,entrada=:p2,cliente=:p3,valor=:p4,ncheque=:p5,banco=:p6,agencia=:p7,depositar=:p8,lkconta=:p9');
            sql.Add('where codigo =:p10');
            params[0].AsString := edit2.Text;
            params[1].AsString := edit3.Text;
            params[2].AsDate := int(DateEdit1.Date);
            params[3].AsInteger := strtoint(edit4.Text);
            params[4].AsCurrency := MegaEditNumerico1.AsCurrency;
            params[5].AsString := edit5.Text;
            params[6].AsString := edit6.Text;
            params[7].AsString := edit7.Text;
            params[8].AsDate := int(DateEdit2.Date);
            params[9].AsInteger := strtoint(edit8.Text);
            params[10].AsInteger := strtoint(edit1.text);
            prepare;
            ExecQuery;
        end;
        close;
    end;
    CommitWork;
    ibdm.IBQCheque.Close;
    ibdm.IBQCheque.Open;
end;

procedure TFrmCadCheque.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
