unit UEdNotaCom;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, rxToolEdit, Mask, rxCurrEdit, MegaEditNumerico, ExtCtrls,
  XP_Form;

type
  TFrmEdNotaCom = class(TForm)
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label8: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label7: TLabel;
    CurrencyEdit1: TMegaEditNumerico;
    Label6: TLabel;
    Edit4: TEdit;
    Label9: TLabel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEdNotaCom: TFrmEdNotaCom;

implementation

uses DM;

{$R *.DFM}

procedure TFrmEdNotaCom.BitBtn2Click(Sender: TObject);
begin
    close;
end;

procedure TFrmEdNotaCom.BitBtn1Click(Sender: TObject);
begin
    with ibdm.Grava do
    begin
        close;
        sql.Clear;
        sql.Add('update doctos');
        sql.Add('set clifor=:p0,documento=:p1,data=:p2,valorfrete=:p3,operador=:p4,transacao=:p5');
        sql.Add('where controle =:p6');
        params[0].Asinteger := strtoint(edit2.text);
        params[1].AsString := edit3.Text;
        params[2].AsDateTime := dateedit1.Date;
        params[3].AsCurrency := currencyedit1.AsCurrency;
        params[4].AsInteger := strtoint(edit4.text);
        params[5].AsString := 'COMPRA';
        params[6].AsInteger := Strtoint(Edit1.text);
        prepare;
        ExecQuery;
    end;
    ibdm.IBQDoctos.Close;
    ibdm.IBQDoctos.Open;
end;

end.
