unit UCPagar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, rxToolEdit, rxCurrEdit, ComCtrls, MegaEditNumerico,
  ExtCtrls, XP_Form;

type
  TFrmEdCPagar = class(TForm)
    Label1: TLabel;
    EdControle: TEdit;
    Label2: TLabel;
    EdVencimento: TDateEdit;
    EdDocumento: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    EdHistorico: TEdit;
    Label6: TLabel;
    EdValor: TMegaEditNumerico;
    Label5: TLabel;
    EdParcela: TEdit;
    Label7: TLabel;
    EdFornecedor: TEdit;
    BtnGravar: TBitBtn;
    BtnFechar: TBitBtn;
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    vnovo : boolean;
    { Public declarations }
  end;

var
  FrmEdCPagar: TFrmEdCPagar;

implementation

uses DM;

{$R *.DFM}

procedure TFrmEdCPagar.BtnFecharClick(Sender: TObject);
begin
    FrmEdCPagar.Close;
end;

procedure TFrmEdCPagar.BtnGravarClick(Sender: TObject);
begin
    if vnovo = True then
    begin
        with ibdm.Grava do
            begin
                close;
                sql.Clear;
                sql.Add('Insert into Cpagar');
                sql.Add('(controle,vencimento,documento,historico,valor,parcela,fornecedor)');
                sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6)');
                params[0].AsInteger := Strtoint(Edcontrole.text);
                params[1].AsDate := edvencimento.Date;
                params[2].AsString := eddocumento.Text;
                params[3].AsString := edhistorico.Text;
                params[4].AsCurrency := edvalor.AsCurrency;
                params[5].AsString := edparcela.Text;
                params[6].AsString := edfornecedor.Text;

                prepare;
                ExecQuery;
            end;
    end
   else
    begin
        with ibdm.Grava do
            begin
                close;
                sql.Clear;
                sql.Add('Update Cpagar');
                sql.Add('set vencimento=:p0,documento=:p1,historico=:p2,valor=:p3,parcela=:p4,fornecedor=:p5');
                sql.Add('where controle=:p6');
                params[0].AsString := datetostr(edvencimento.Date);
                params[1].AsString := eddocumento.Text;
                params[2].AsString := edhistorico.Text;
                params[3].AsCurrency := edvalor.AsCurrency;
                params[4].AsString := edparcela.Text;
                params[5].AsString := edfornecedor.Text;
                params[6].AsInteger := StrtoInt(edcontrole.text);

                prepare;
                ExecQuery;
            end;
    end;
    FrmEdCpagar.Close;
end;

procedure TFrmEdCPagar.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
