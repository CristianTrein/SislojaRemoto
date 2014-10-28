unit USomarCreceber;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, XP_Form, StdCtrls, Mask, rxToolEdit, Buttons;

type
  TFrmSomarCReceber = class(TForm)
    Bevel1: TBevel;
    CheckBox1: TCheckBox;
    DateEdit1: TDateEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSomarCReceber: TFrmSomarCReceber;

implementation

uses DM;

{$R *.DFM}

procedure TFrmSomarCReceber.BitBtn2Click(Sender: TObject);
begin
    close;
end;

procedure TFrmSomarCReceber.BitBtn1Click(Sender: TObject);
var
    vsoma : currency;
begin
    if checkbox1.Checked = true then
    begin
        with ibdm.Consulta do
        begin
            close;
            sql.Clear;
            sql.add('select sum(valororiginal) from creceber');
            sql.Add('where vencimento<=:p0');
            params[0].AsDate := int(dateedit1.Date);
            prepare;
            open;
            vsoma := Fields[0].AsCurrency;
        end;
    end
    else
    begin
        with ibdm.Consulta do
        begin
            close;
            sql.Clear;
            sql.add('select sum(valororiginal) from creceber');
            prepare;
            open;
            vsoma := Fields[0].AsCurrency;
        end;
    end;
    close;
    ShowMessage(#13+'        Valor a Receber: R$ '+formatcurr('0.00',vsoma)+'        '+#13);
end;

procedure TFrmSomarCReceber.CheckBox1Click(Sender: TObject);
begin
    if checkbox1.Checked = true then
        dateedit1.Enabled := true
       else
        dateedit1.Enabled := false;
end;

end.
