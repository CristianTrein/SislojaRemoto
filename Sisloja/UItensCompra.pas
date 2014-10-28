unit UItensCompra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, Mask, rxToolEdit, rxCurrEdit,
  MegaEditNumerico, ExtCtrls, XP_Form;

type
  TFrmItensNota = class(TForm)
    Label7: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label6: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    CurrencyEdit1: TMegaEditNumerico;
    BtnGravar: TBitBtn;
    BtnPagamento: TBitBtn;
    BtnNovoProd: TBitBtn;
    BtnFechar: TBitBtn;
    BtnOk: TBitBtn;
    BtnPesquisar: TBitBtn;
    Edit4: TEdit;
    Label9: TLabel;
    Label8: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    procedure BtnPesquisarClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnNovoProdClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnPagamentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vsoma : currency;
  end;

var
  FrmItensNota: TFrmItensNota;

implementation

uses DM, UProdutos, UPrincipal, UNotaCompra, UPrestNComp;

{$R *.DFM}

procedure TFrmItensNota.BtnPesquisarClick(Sender: TObject);
begin
    if edit4.Text <> '' then
        begin
            with ibdm.IBQProdutos do
            begin
                close;
                sql.Clear;
                sql.Add('select * from Produtos');
                sql.Add('where descricao LIKE :p1');
                params[0].AsString := Trim(edit4.Text)+'%';
                open;
            end;
        end
       else
       begin
           with ibdm.IBQProdutos do
           begin
               close;
               sql.Clear;
               sql.Add('select * from produtos');
               open;
           end;
       end;
end;

procedure TFrmItensNota.BtnOkClick(Sender: TObject);
begin
    edit2.Text := ibdm.IBQProdutosCODIGO.AsString;
    label6.Caption := ibdm.IBQProdutosDESCRICAO.AsString;
    currencyedit1.Value := ibdm.IBQProdutosPRECOCUSTO.Value;
    edit3.SetFocus;
end;

procedure TFrmItensNota.BtnFecharClick(Sender: TObject);
begin
    frmitensnota.Close;
end;

procedure TFrmItensNota.BtnNovoProdClick(Sender: TObject);
begin
    FrmEdProdutos := TFrmEdProdutos.create(Application);
    FrmEdProdutos.vnovo := True;
    FrmEdProdutos.EdUreajuste.Date := now;
    FrmEdProdutos.ShowModal;
    FrmEdProdutos.Destroy;
    IBDM.IBQProdutos.close;
    IBDM.IBQProdutos.Open;
    FrmPrincipal.DBGrid6.Refresh;
end;

procedure TFrmItensNota.BtnGravarClick(Sender: TObject);
var
    vcod : string;
    vresult : currency;
    vcont : integer;
begin
    with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select max(controle) from movimento');
        prepare;
        open;
        vcont := Fields[0].AsInteger + 1;
    end;
    with ibdm.Grava do
    begin
        close;
        sql.Clear;
        sql.Add('Insert into Movimento');
        sql.Add('(controle,produto,quantidade,valorunitario,data,docto)');
        sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5)');
        params[0].AsInteger := vcont;
        params[1].AsString := edit2.text;
        params[2].AsString := edit3.Text;
        params[3].AsCurrency := currencyedit1.AsCurrency;
        params[4].AsDate := now;
        params[5].AsString := edit1.Text;
        prepare;
        ExecQuery;
    end;

    //tabela de estoque
    ibdm.IBQProdutos.Open;
    if ibdm.IBQProdutos.Locate('codigo',edit2.Text,[]) then
    begin
        vcod := ibdm.IBQProdutosCODIGO.AsString;
        vresult := ibdm.IBQProdutosESTOQUE.AsCurrency + strtocurr(edit3.text);
        with ibdm.Grava do
        begin
            close;
            sql.clear;
            sql.Add('update produtos');
            sql.Add('set estoque =:p0, precocusto =:p1');
            sql.Add('where codigo =:p3');
            params[0].AsCurrency := vresult;
            params[1].AsCurrency := currencyedit1.AsCurrency;
            params[2].asstring := vcod;
            Prepare;
            ExecQuery;
        end;
        ibdm.IBQProdutos.Close;
        ibdm.IBQProdutos.Open;
        frmprincipal.DBGrid6.Refresh;
        dbgrid2.Refresh;
    end;

    vsoma := vsoma + (strtocurr(edit3.text) * currencyedit1.Value);
    label9.Caption := currtostr(vsoma);

    edit2.Text := '';
    label6.Caption := '.';
    edit3.Text := '';
    currencyedit1.Text := '';
    with ibdm.IBQuery1 do
    begin
        close;
        sql.Clear;
        sql.Add('select controle,docto,produto,quantidade,valorunitario from movimento');
        sql.Add('where docto = :p0');
        params[0].AsString := edit1.text;
        open;
    end;
    dbgrid1.Refresh;
    CommitWork;
end;

procedure TFrmItensNota.FormActivate(Sender: TObject);
begin
    ibdm.IBQProdutos.Open;
end;

procedure TFrmItensNota.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFrmItensNota.BtnPagamentoClick(Sender: TObject);
begin
    FrmPrestNCompra := TFrmPrestNCompra.Create(application);
    FrmPrestNCompra.Edit3.Text := datetostr(now);
    FrmPrestNCompra.Edit1.Text := label9.Caption;
    FrmPrestNCompra.ShowModal;
    FrmPrestNCompra.Destroy;
end;

end.
