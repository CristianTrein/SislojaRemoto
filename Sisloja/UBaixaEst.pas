unit UBaixaEst;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, rxToolEdit, ExtCtrls, XP_Form;

type
  TFrmBaixaEstoque = class(TForm)
    Label10: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label3: TLabel;
    edestatual: TEdit;
    edestoque: TEdit;
    Label2: TLabel;
    edproduto: TEdit;
    Label6: TLabel;
    eddocumento: TEdit;
    Label8: TLabel;
    edvalor: TEdit;
    Label7: TLabel;
    eddata: TDateEdit;
    Label5: TLabel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure edestoqueExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBaixaEstoque: TFrmBaixaEstoque;

implementation

uses DM, UPrincipal;

{$R *.DFM}

procedure TFrmBaixaEstoque.BitBtn2Click(Sender: TObject);
begin
    Close;
end;

procedure TFrmBaixaEstoque.edestoqueExit(Sender: TObject);
begin
    edestatual.Text := currtostr(strtocurr(edestatual.Text) - strtocurr(edestoque.Text));
end;

procedure TFrmBaixaEstoque.BitBtn1Click(Sender: TObject);
var
    vcont : integer;
begin
    with ibdm.Cheka do
    begin
        close;
        sql.Clear;
        sql.Add('update produtos');
        sql.Add('set estoque=:p0');
        sql.Add('where codigo =:p1');
        params[0].AsCurrency := strtocurr(edestatual.text);
        params[1].AsInteger := strtoint(label4.caption);
        prepare;
        execquery;
    end;
    ibdm.IBQProdutos.Close;
    ibdm.IBQProdutos.Open;
    frmprincipal.DBGrid6.Refresh;

    with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select max(controle) from doctos');
        prepare;
        open;
        vcont := Fields[0].AsInteger + 1;
    end;

    with ibdm.Grava do
    begin
        close;
        sql.Clear;
        sql.Add('Insert into Doctos');
        sql.Add('(controle,clifor,documento,data,transacao)');
        sql.Add('values (:p0,:p1,:p2,:p3,:p4)');
        params[0].AsInteger := vcont;
        params[1].Asinteger := 0;
        params[2].AsString := eddocumento.Text;
        params[3].AsDateTime := int(eddata.Date);
        params[4].AsString := 'VENDA';
        prepare;
        ExecQuery;
    end;
    ibdm.IBQDoctos.Close;
    ibdm.IBQDoctos.Open;

    with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select max(controle) from movimento');
        prepare;
        open;
        vcont := Fields[0].AsInteger + 1;
    end;

    with ibdm.Cheka do
    begin
        close;
        sql.Clear;
        sql.Add('insert into movimento');
        sql.Add('(controle,docto,produto,valorunitario,quantidade,data)');
        sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5)');
        params[0].AsInteger := vcont;
        params[1].AsString := eddocumento.Text;
        params[2].AsString := edproduto.Text;
        params[3].AsCurrency := strtocurr(edvalor.text);
        params[4].AsCurrency := strtocurr(edestoque.Text);
        params[5].AsDate := eddata.Date;
        prepare;
        execquery;
    end;
    frmbaixaestoque.Close;
    CommitWork;
end;

procedure TFrmBaixaEstoque.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
