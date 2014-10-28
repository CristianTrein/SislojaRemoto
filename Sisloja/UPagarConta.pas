unit UPagarConta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, rxToolEdit, rxCurrEdit, MegaEditNumerico, ExtCtrls,
  XP_Form;

type
  TFrmPagarConta = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Currencyedit1: TMegaEditNumerico;
    Label4: TLabel;
    Currencyedit2: TMegaEditNumerico;
    CheckBox1: TCheckBox;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPagarConta: TFrmPagarConta;

implementation

uses DM, UPrincipal;

{$R *.DFM}

procedure TFrmPagarConta.BitBtn2Click(Sender: TObject);
begin
    FrmPagarConta.Close;
end;

procedure TFrmPagarConta.Edit2Exit(Sender: TObject);
begin
    if strtodate(edit1.Text) > strtodate(edit2.Text) then
        ShowMessage('Conta a Pagar com Juros...');
end;

procedure TFrmPagarConta.BitBtn1Click(Sender: TObject);
var
    vdoc : string;
    vhist : string;
    vvalor : currency;
    vvenc : real;
    vparc : string;
    vfor : integer;
    vcod : integer;
    vtotal : currency;
    vcod1 : integer;
    vcod2 : integer;
    vresult : currency;
begin
    if currencyedit2.Value = 0 then
     begin
         ShowMessage('Valor Pago não informado!!!');
         currencyedit2.SetFocus;
     end
    else
     begin
         vdoc := ibdm.IBQCpagarDOCUMENTO.AsString;
         vhist := ibdm.IBQCpagarHISTORICO.AsString;
         vvalor := ibdm.IBQCpagarVALOR.AsCurrency;
         vvenc := ibdm.IBQCpagarVENCIMENTO.AsDateTime;
         vparc := ibdm.IBQCpagarPARCELA.AsString;
         vfor := ibdm.IBQCpagarFORNECEDOR.AsInteger;
         vcod := ibdm.IBQCpagarCONTROLE.AsInteger;

         vtotal := ibdm.IBQCpagarVALOR.AsCurrency - currencyedit2.Value;
         with ibdm.Cheka do
         begin
             close;
             sql.Clear;
             sql.Add('update cpagar');
             sql.Add('set valor=:p0');
             sql.Add('where controle =:p1');
             params[0].AsCurrency := vtotal;
             params[1].AsInteger := vcod;
             prepare;
             ExecQuery;
         end;

         with ibdm.Consulta do
         begin
             close;
             sql.Clear;
             sql.Add('select max(controle) from cpagas');
             prepare;
             open;
             vcod1 := Fields[0].AsInteger + 1;
         end;

         if (currencyedit2.value >= currencyedit1.Value) or (checkbox1.Checked = true) then
         begin
             with ibdm.Grava do
             begin
                close;
                sql.Clear;
                sql.Add('Insert into Cpagas');
                sql.Add('(controle,documento,historico,vencimento,pagamento,parcela,fornecedor,valor,pago)');
                sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8)');
                params[0].AsInteger := vcod1;
                params[1].asstring := vdoc;
                params[2].AsString := 'PAGAMENTO - ' + vhist;
                params[3].AsDateTime := vvenc;
                params[4].AsDate := int(now);
                params[5].AsString := vparc;
                params[6].AsInteger := vfor;
                params[7].AsCurrency := vvalor;
                params[8].AsCurrency := currencyedit2.AsCurrency;
                prepare;
                ExecQuery;
             end;

             with ibdm.Consulta do
             begin
                 close;
                 sql.Clear;
                 sql.Add('select max(controle) from caixa');
                 prepare;
                 open;
                 vcod2 := fields[0].AsInteger + 1;
             end;

             with ibdm.Grava do
             begin
                close;
                sql.Clear;
                sql.Add('Insert into caixa');
                sql.Add('(controle,documento,historico,data,valor,operacao,transacao,operador)');
                sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)');
                params[0].AsInteger := vcod2;
                params[1].asstring := vdoc;
                params[2].AsString := 'PAGAMENTO - '+ vhist;
                params[3].AsDate := int(now);
                params[4].AsCurrency := currencyedit2.AsCurrency;
                params[5].AsString := 'D';
                params[6].AsInteger := 6;
                params[7].AsInteger := frmprincipal.voperador;
                prepare;
                ExecQuery;
             end;
             vcod := ibdm.IBQCpagarCONTROLE.AsInteger;
             if vcod > 0 then
             begin
             with ibdm.Deleta do
             begin
                close;
                sql.Clear;
                sql.Add('delete from cpagar');
                sql.Add('where controle =:p1');
                params[0].AsInteger := vcod;
                prepare;
                ExecQuery;
        end;
        ibdm.IBQCpagar.Close;
        ibdm.IBQCpagar.Open;
        ShowMessage('Conta a Pagar excluída com sucesso!!!');
    end;

    end;

    end;
    CommitWork;
end;

procedure TFrmPagarConta.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
