unit UEdItensNota;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, Mask, rxToolEdit, rxCurrEdit,
  MegaEditNumerico, ExtCtrls, XP_Form;

type
  TFrmEdItensNota = class(TForm)
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Edit2: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    CurrencyEdit1: TMegaEditNumerico;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
    vqtd : integer;
  end;

var
  FrmEdItensNota: TFrmEdItensNota;

implementation

uses DM;

{$R *.DFM}

procedure TFrmEdItensNota.BitBtn2Click(Sender: TObject);
begin
    close;
end;

procedure TFrmEdItensNota.FormActivate(Sender: TObject);
begin
    ibdm.IBQMovimento.Close;
    ibdm.IBQMovimento.Open;
    dbgrid1.Refresh;
    ibdm.IBQProdutos.Close;
    ibdm.IBQProdutos.Open;
end;

procedure TFrmEdItensNota.BitBtn1Click(Sender: TObject);
var
    vcod : string;
    vcod1 : string;
    vcod2 : string;
    vtam : integer;
    vresult : currency;
    vcalc : currency;
begin
    with ibdm.grava do
    begin
        close;
        sql.clear;
        sql.add('update movimento');
        sql.add('set quantidade=:p0,valorunitario=:p1');
        sql.add('where controle =:p2');
        params[0].asinteger := strtoint(edit4.text);
        params[1].ascurrency := currencyedit1.AsCurrency;
        params[2].asinteger := ibdm.IBQMovimentoCONTROLE.asinteger;
        prepare;
        execquery;
    end;
    vcod := ibdm.IBQMovimentoPRODUTO.asstring;
    ibdm.Ibqmovimento.close;
    ibdm.ibqmovimento.open;

    with ibdm.IBQProdutos do
    begin
        close;
        open;
        if locate('codigo',vcod,[]) then
        begin
            //calculo da quantidade
            vresult := ibdm.ibqMovimentoQuantidade.AsCurrency - vqtd;
            vcalc := fieldbyname('estoque').ascurrency + vresult;

            with ibdm.Grava do
            begin
                close;
                sql.clear;
                sql.add('update produtos');
                sql.add('set estoque=:p0,precocusto=:p1');
                sql.add('where codigo =:p2');
                params[0].ascurrency := vcalc;
                params[1].ascurrency := currencyedit1.AsCurrency;
                params[2].asstring := vcod;
                prepare;
                execquery;
            end;
        end
        else
            ShowMessage('CUIDADO! Produto não encontrado, estoque não atualizado!!!');
    end;
    ibdm.IBQProdutos.close;
    ibdm.IBQProdutos.Open;
    close;
end;

procedure TFrmEdItensNota.DBGrid1CellClick(Column: TColumn);
begin
    vqtd := ibdm.ibqmovimentoQUANTIDADE.asinteger;
    edit2.Text := ibdm.IBQMovimentoPRODUTO.asstring;
    label1.Caption := ibdm.IBQProdutosDESCRICAO.AsString;
    edit3.Text := ibdm.IBQMovimentoDOCTO.AsString;
    edit4.Text := currtostr(ibdm.IBQMovimentoQUANTIDADE.ascurrency);
    currencyedit1.Value := ibdm.IBQMovimentoVALORUNITARIO.AsCurrency;
end;

end.
