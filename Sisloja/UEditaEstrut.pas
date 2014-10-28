unit UEditaEstrut;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, rxToolEdit, rxCurrEdit, StdCtrls, RXCtrls, Buttons;

type
  TFrmEditaEstrut = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    RxLabel1: TRxLabel;
    edproduto: TEdit;
    Label1: TLabel;
    edcomp: TEdit;
    Label2: TLabel;
    edsequencia: TEdit;
    Label3: TLabel;
    edquantidade: TCurrencyEdit;
    RxLabel2: TRxLabel;
    Label4: TLabel;
    eddimensao: TEdit;
    Label5: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edprodutoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    vnovo : boolean;
  end;

var
  FrmEditaEstrut: TFrmEditaEstrut;

implementation

uses DM, UEstrProd;

{$R *.DFM}

procedure TFrmEditaEstrut.BitBtn2Click(Sender: TObject);
begin
    FrmEditaEstrut.Close;
end;

procedure TFrmEditaEstrut.BitBtn1Click(Sender: TObject);
begin
    if vnovo = true then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('insert into estrutura');
            sql.Add('(produto,componente,seq,quantidade,processo)');
            sql.Add('values(:p0,:p1,:p2,:p3,:p4)');
            params[0].AsString := edproduto.Text;
            params[1].AsString := edcomp.Text;
            params[2].AsInteger := strtoint(edsequencia.text);
            params[3].AsCurrency := edquantidade.Value;
            params[4].AsString := eddimensao.Text;
            prepare;
            execquery;
        end;
        ShowMessage('Estrutura do Produto criada com sucesso!!!');
    end;

    if vnovo = false then
    begin
        with ibdm.Cheka do
        begin
            close;
            sql.Clear;
            sql.Add('update estrutura');
            sql.Add('set seq=:p0,quantidade=:p1,processo=:p2');
            sql.Add('where produto =:p3 and componente =:p4');
            params[0].AsInteger := strtoint(edsequencia.Text);
            params[1].AsCurrency := edquantidade.Value;
            params[2].AsString := eddimensao.Text;
            params[3].AsString := edproduto.Text;
            params[4].AsString := edcomp.Text;
            prepare;
            execquery;
        end;
        ShowMessage('Estrutura do Produto atualizadda com sucesso!!!');
    end;
    ibdm.IBQEstrutura.Close;
    ibdm.IBQEstrutura.Open;
    frmestrutprod.DBGrid1.Refresh;
    close;
end;

procedure TFrmEditaEstrut.edprodutoExit(Sender: TObject);
begin
    with ibdm.IBQProdutos do
    begin
        close;
        open;
        if locate('codigo',edproduto.text,[]) then
            rxlabel1.Caption := ibdm.IBQProdutosDESCRICAO.AsString
          else
            rxlabel1.Caption := 'Produto não encontrado no sistema!!!';
    end;
end;

procedure TFrmEditaEstrut.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
