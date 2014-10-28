unit UOrdemServ2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, Mask, rxToolEdit, rxCurrEdit, RXCtrls,
  ExtCtrls, MegaEditNumerico, XP_Form;

type
  TFrmOrdemServ2 = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label8: TLabel;
    Edit4: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    RxLabel1: TRxLabel;
    Currencyedit2: TMegaEditNumerico;
    Label5: TLabel;
    Label4: TLabel;
    Currencyedit1: TMegaEditNumerico;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn6: TBitBtn;
    Label10: TLabel;
    Label9: TLabel;
    RxLabel2: TRxLabel;
    Label6: TLabel;
    Label7: TLabel;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    BitBtn3: TBitBtn;
    Edit3: TEdit;
    BitBtn2: TBitBtn;
    DBGrid2: TDBGrid;
    DBGrid1: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure ComboBox3Click(Sender: TObject);
    procedure ComboBox2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Currencyedit2Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    vdesc : string;
    vnovo : boolean;
  end;

var
  FrmOrdemServ2: TFrmOrdemServ2;

implementation

uses DM, URelOrdemServ, UOrdemServ1, UFinanOrdem;

{$R *.DFM}

procedure TFrmOrdemServ2.FormActivate(Sender: TObject);
begin
    ibdm.IBQProdutos.Close;
    ibdm.IBQProdutos.Open;
    with ibdm.IBQTipoServ do
    begin
        close;
        sql.Clear;
        sql.Add('select * from tiposerv');
        sql.Add('order by descricao ASC');
        prepare;
        open;
        first;
        while not eof do
        begin
            combobox1.Items.Add(ibdm.IBQTipoServDESCRICAO.AsString);
            next;
        end;
    end;

    combobox3.Clear;
    combobox3.Items.Add('Todos');
    combobox3.Text := 'Todos';
    combobox2.Clear;
    combobox2.Items.Add('Todos');
    combobox2.Text := 'Todos';
    with ibdm.IBQGrupos do
    begin
        close;
        sql.Clear;
        sql.Add('select * from grupos');
        sql.Add('order by descricao ASC');
        prepare;
        open;
        first;
        while not eof do
        begin
            combobox2.Items.Add(ibdm.IBQGruposDESCRICAO.AsString);
            next;
        end;
    end;
    
    if vnovo = false then
    begin
        with ibdm.IBQuery1 do
        begin
            close;
            sql.Clear;
            sql.Add('select controle,docto,produto,quantidade,valorunitario,contdoc from movimento');
            sql.Add('where docto = :p0');
            params[0].AsString := edit1.Text;
            open;
        end;
    end;
end;

procedure TFrmOrdemServ2.BitBtn3Click(Sender: TObject);
begin
    if edit3.Text = '' then
    begin
        with ibdm.IBQProdutos do
        begin
            close;
            sql.Clear;
            sql.Add('select * from produtos');
            sql.Add('order by descricao ASC');
            prepare;
            open;
        end;
    end
    else
    begin
        with ibdm.IBQProdutos do
        begin
            close;
            sql.Clear;
            sql.Add('select * from Produtos');
            sql.Add('where descricao LIKE :p0');
            sql.Add('order by descricao ASC');
            params[0].AsString := Trim(edit3.Text)+'%';
            open;
        end;
    end;
end;

procedure TFrmOrdemServ2.BitBtn2Click(Sender: TObject);
begin
    edit2.Text := ibdm.IBQProdutosCODIGO.AsString;
    RxLabel1.Caption := ibdm.IBQProdutosDESCRICAO.AsString;
    currencyedit1.AsCurrency := ibdm.IBQProdutosPRECOVENDA.AsCurrency;
    Currencyedit2.SetFocus;
end;

procedure TFrmOrdemServ2.BitBtn1Click(Sender: TObject);
var
    msg : integer;
    vresult,vsoma : currency;
    vcod : integer;
    vcontrole,vcont : integer;
begin
    with ibdm.IBQProdutos do
    begin
        close;
        open;
        if locate('codigo',edit2.Text,[]) then
        begin
            if ibdm.IBQProdutosESTOQUE.AsCurrency <= 0 then
            begin
                msg := Application.MessageBox('Produto com ESTOQUE abaixo de 0(zero), deseja incluí-lo na Ordem de Serviço???','ATENÇÃO ESTOQUE',68);
                if msg = 6 then
                begin
                    vresult := ibdm.IBQProdutosESTOQUE.AsCurrency - currencyedit2.value;
                    vcod := ibdm.IBQProdutosCODIGO.AsInteger;
                    with ibdm.Grava do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('update produtos');
                        sql.Add('set estoque=:p0');
                        sql.Add('where codigo=:p1');
                        params[0].AsCurrency := vresult;
                        params[1].AsInteger := vcod;
                        prepare;
                        execquery;
                    end;
                    ibdm.IBQProdutos.Close;
                    ibdm.IBQProdutos.Open;

                    with ibdm.Grava do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('insert into itos');
                        sql.Add('(sequencial,codserv,descricao,pecas,valor,dataconcl,quantidade)');
                        sql.Add('values(:p0,:p1,:p2,:p3,:p4,:p5,:p6)');
                        params[0].AsInteger := strtoint(edit1.text);
                        params[1].AsString := vdesc;
                        params[2].AsString := edit4.Text;
                        params[3].AsInteger := strtoint(edit2.Text);
                        params[4].AsCurrency := currencyedit1.AsCurrency;
                        params[5].AsDate := int(now);
                        params[6].AsCurrency := currencyedit2.AsCurrency;
                        prepare;
                        ExecQuery;
                    end;
                    ibdm.IBQItos.Close;
                    ibdm.IBQItos.Open;

                    vcontrole := ibdm.IBQDoctosCONTROLE.Asinteger;
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
                        sql.Add('insert into movimento');
                        sql.Add('(controle,docto,valorunitario,produto,quantidade,contdoc,data)');
                        sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6)');
                        params[0].AsInteger := vcont;
                        params[1].AsString := edit1.Text;
                        params[2].AsCurrency := currencyedit1.AsCurrency;
                        params[3].Asstring := edit2.text;
                        params[4].Ascurrency := currencyedit2.AsCurrency;
                        params[5].AsInteger := vcontrole;
                        params[6].AsDate := int(now);
                        prepare;
                        execquery;
                    end;
                    ibdm.IBQMovimento.Close;
                    ibdm.IBQMovimento.Open;

                    with ibdm.IBQuery1 do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('select controle,docto,produto,quantidade,valorunitario,contdoc from movimento');
                        sql.Add('where docto = :p0');
                        params[0].AsString := edit1.Text;
                        open;
                    end;
                end;
                vsoma := currencyedit2.AsCurrency * currencyedit1.AsCurrency;
                label9.Caption := formatcurr('0.00',strtocurr(label9.Caption) + vsoma);
            end
            else
            begin
                vresult := ibdm.IBQProdutosESTOQUE.AsCurrency - currencyedit2.AsCurrency;
                vcod := ibdm.IBQProdutosCODIGO.AsInteger;
                with ibdm.Grava do
                begin
                    close;
                    sql.Clear;
                    sql.Add('update produtos');
                    sql.Add('set estoque=:p0');
                    sql.Add('where codigo=:p1');
                    params[0].AsCurrency := vresult;
                    params[1].AsInteger := vcod;
                    prepare;
                    execquery;
                end;
                ibdm.IBQProdutos.Close;
                ibdm.IBQProdutos.Open;

                with ibdm.Grava do
                begin
                    close;
                    sql.Clear;
                    sql.Add('insert into itos');
                    sql.Add('(sequencial,codserv,descricao,pecas,valor,dataconcl,quantidade)');
                    sql.Add('values(:p0,:p1,:p2,:p3,:p4,:p5,:p6)');
                    params[0].AsInteger := strtoint(edit1.text);
                    params[1].AsString := vdesc;
                    params[2].AsString := edit4.Text;
                    params[3].AsInteger := strtoint(edit2.Text);
                    params[4].AsCurrency := currencyedit1.AsCurrency;
                    params[5].AsDate := int(now);
                    params[6].AsCurrency := currencyedit2.AsCurrency;
                    prepare;
                    ExecQuery;
                end;
                ibdm.IBQItos.Close;
                ibdm.IBQItos.Open;

                vcontrole := ibdm.IBQDoctosCONTROLE.Asinteger;
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
                    sql.Add('insert into movimento');
                    sql.Add('(controle,docto,valorunitario,produto,quantidade,contdoc,data)');
                    sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6)');
                    params[0].AsInteger := vcont;
                    params[1].AsString := edit1.Text;
                    params[2].AsCurrency := currencyedit1.AsCurrency;
                    params[3].Asstring := edit2.text;
                    params[4].Ascurrency := currencyedit2.AsCurrency;
                    params[5].AsInteger := vcontrole;
                    params[6].AsDate := int(now);
                    prepare;
                    execquery;
                end;
                ibdm.IBQMovimento.Close;
                ibdm.IBQMovimento.Open;

                with ibdm.IBQuery1 do
                begin
                    close;
                    sql.Clear;
                    sql.Add('select controle,docto,produto,quantidade,valorunitario,contdoc from movimento');
                    sql.Add('where docto = :p0');
                    params[0].AsString := edit1.Text;
                    open;
                end;
                vsoma := currencyedit2.AsCurrency * currencyedit1.AsCurrency;
                label9.Caption := formatcurr('0.00',strtocurr(label9.Caption) + vsoma);
            end;
        end;
    end;
    edit2.Text := '';
    currencyedit1.Value := 0;
    currencyedit2.Value := 0;
    edit2.SetFocus;
    CommitWork;
end;

procedure TFrmOrdemServ2.BitBtn6Click(Sender: TObject);
begin
    close;
end;

procedure TFrmOrdemServ2.ComboBox1Click(Sender: TObject);
begin
    with ibdm.IBQTipoServ do
    begin
        close;
        open;
        locate('descricao',combobox1.Text,[]);
        vdesc := ibdm.IBQTipoServCODIGO.AsString;
    end;
end;

procedure TFrmOrdemServ2.ComboBox3Click(Sender: TObject);
var
    vcod : integer;
    vsub : integer;
begin
    with ibdm.IBQGrupos do
    begin
        close;
        open;
        locate('descricao',combobox2.Text,[]);
        vcod := ibdm.IBQGruposCODIGO.AsInteger;
    end;

    if combobox3.Text = 'Todos' then
    begin
        with ibdm.IBQProdutos do
        begin
            close;
            sql.Clear;
            sql.Add('select * from produtos');
            sql.Add('where grupo =:p0');
            sql.Add('order by codigo ASC');
            params[0].AsInteger := vcod;
            Prepare;
            Open;
        end;
    end
    else
    begin
        with ibdm.IBQSubGrupos do
        begin
            close;
            open;
            locate('descricao',combobox3.Text,[]);
            vsub := ibdm.IBQSubGruposCODIGO.AsInteger;
        end;

        with ibdm.IBQProdutos do
        begin
            close;
            sql.Clear;
            sql.Add('select * from produtos');
            sql.Add('where grupo =:p0 and subgrupo =:p1');
            sql.Add('order by codigo ASC');
            params[0].AsInteger := vcod;
            params[1].AsInteger := vsub;
            prepare;
            open;
        end;
    end;
end;

procedure TFrmOrdemServ2.ComboBox2Click(Sender: TObject);
var
    vcod : integer;
begin
    if combobox2.Text = 'Todos' then
    begin
        with ibdm.IBQProdutos do
        begin
            close;
            sql.Clear;
            sql.Add('select * from produtos');
            sql.Add('order by grupo ASC, subgrupo ASC');
            prepare;
            open;
        end;
    end
    else
    begin
        with ibdm.IBQGrupos do
        begin
            if locate('descricao',combobox2.Text,[]) then
            begin
                vcod := ibdm.IBQGruposCODIGO.AsInteger;
                with ibdm.IBQProdutos do
                begin
                    close;
                    sql.Clear;
                    sql.Add('select * from produtos');
                    sql.Add('where grupo =:p0');
                    sql.Add('order by codigo ASC');
                    params[0].AsInteger := vcod;
                    prepare;
                    open;
                end;
            end;
        end;
    end;
    ibdm.IBQProdutos.Close;
    ibdm.IBQProdutos.Open;

    combobox3.Clear;
    combobox3.Items.Add('Todos');
    combobox3.Text := 'Todos';
    with ibdm.IBQSubGrupos do
    begin
        close;
        sql.Clear;
        sql.Add('select * from subgrupos');
        sql.Add('order by descricao ASC,codigo ASC');
        prepare;
        open;
        First;
        while not eof do
        begin
            if ibdm.IBQSubGruposGRUPO.AsInteger = vcod then
                combobox3.Items.Add(ibdm.IBQSUBGruposDESCRICAO.AsString);
            next;
        end;
    end;
end;

procedure TFrmOrdemServ2.BitBtn4Click(Sender: TObject);
begin
    ibdm.IBQParam.Close;
    ibdm.IBQParam.Open;
    FrmRelOrdemServ := TFrmRelOrdemServ.Create(Application);
    FrmRelOrdemServ.QRLabel1.Caption := ibdm.IBQParamUSUARIO.AsString;
    FrmRelOrdemServ.QRLabel4.Caption := frmordemserv1.Edit1.Text;
    FrmRelOrdemServ.QRLabel6.Caption := datetostr(frmordemserv1.DateEdit1.Date);
    FrmRelOrdemServ.QRLabel8.Caption := frmordemserv1.combobox1.Text;
    FrmRelOrdemServ.QRLabel10.Caption := frmordemserv1.edit2.Text;
    FrmRelOrdemServ.QRLabel12.Caption := frmordemserv1.edit3.Text;
    FrmRelOrdemServ.QRLabel14.Caption := frmordemserv1.combobox2.Text;
    with FrmRelOrdemServ.IBQuery1 do
    begin
        close;
        sql.Clear;
        sql.Add('select * from itos');
        sql.Add('where sequencial =:p0');
        params[0].AsString := edit1.Text;
        prepare;
        open;
    end;

    FrmRelOrdemServ.QuickRep1.Preview;
    FrmRelOrdemServ.Destroy;
end;

procedure TFrmOrdemServ2.BitBtn7Click(Sender: TObject);
var
    vprod : integer;
    vdoc : string;
    msg : integer;
begin
    msg := Application.MessageBox('Excluir Peça da Ordem de Serviço???','Excluir de Peça',68);
    if msg = 6 then
    begin
        vprod := ibdm.IBQMovimentoPRODUTO.AsInteger;
        vdoc := ibdm.IBQMovimentoDOCTO.AsString;
        with ibdm.Deleta do
        begin
            close;
            sql.Clear;
            sql.Add('delete from movimento');
            sql.Add('where docto =:p0 and produto =:p1');
            params[0].AsString := vdoc;
            params[1].AsInteger := vprod;
            prepare;
            ExecQuery;
        end;
        ibdm.IBQMovimento.Close;
        ibdm.IBQMovimento.Open;

        with ibdm.Deleta do
        begin
            close;
            sql.Clear;
            sql.Add('delete from itos');
            sql.Add('where sequencial=:p0 and peca =:p1');
            params[0].AsString := vdoc;
            params[1].AsInteger := vprod;
            prepare;
            ExecQuery;
        end;
        ibdm.IBQItos.Close;
        ibdm.IBQItos.Open;
    end;
end;

procedure TFrmOrdemServ2.BitBtn5Click(Sender: TObject);
begin
    FrmFinanOrdem := TFrmFinanOrdem.Create(Application);
    FrmFinanOrdem.megaeditnumerico2.AsCurrency := strtocurr(label9.Caption);
    FrmFinanOrdem.megaeditnumerico3.AsCurrency := strtocurr(label9.Caption);
    FrmFinanOrdem.ShowModal;
    FrmFinanOrdem.Destroy;
end;

procedure TFrmOrdemServ2.Currencyedit2Exit(Sender: TObject);
begin
    if currencyedit2.AsCurrency > 0 then
        bitbtn1.Enabled := true;
end;

procedure TFrmOrdemServ2.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
