unit UPesqProd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MegaEditNumerico, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Buttons,
  XP_Form;

type
  TFrmPesqProd = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    Label4: TLabel;
    ComboBox2: TComboBox;
    Label5: TLabel;
    Label1: TLabel;
    Currencyedit1: TMegaEditNumerico;
    Label6: TLabel;
    Currencyedit2: TMegaEditNumerico;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label8: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Edit5: TEdit;
    Label10: TLabel;
    Edit7: TEdit;
    BitBtn5: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Label9: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure ComboBox1Click(Sender: TObject);
    procedure ComboBox2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    vcod : integer;
    vnota : boolean;
  end;

var
  FrmPesqProd: TFrmPesqProd;

implementation

uses DM, UNotaFiscal;

{$R *.DFM}

procedure TFrmPesqProd.BitBtn2Click(Sender: TObject);
var
    vcod,vdesc,vtrib : string;
    vpr : currency;
    vcont,msg : integer;
    valiq : string;
begin
    ibdm.IBQParam.Close;
    ibdm.IBQParam.Open;
    if ibdm.IBQParamEST.AsString = 'S' then
    begin
        if vnota = true then
        begin
            if (currencyedit1.Value = 0) or (edit3.Text = '') then
            begin
                ShowMessage('Quantidade ou Unidade não Informados!!! Por Favor informe-os.');
                currencyedit1.SetFocus;
            end
            else
            begin
            with ibdm.IBQProdutos do
            begin
                if ibdm.IBQProdutosESTOQUE.AsCurrency <= 0 then
                begin
                    msg := Application.MessageBox('Estoque abaixo de 0 (Zero)! Deseja Vender este produto???','ATENÇÃO',68);
                    if msg = 6 then
                    begin
                        vcod := edit5.Text; //ibdm.IBQProdutosCODIGO.AsString;
                        vdesc := ibdm.IBQProdutosDESCRICAO.AsString;
                        vpr := currencyedit2.Value;
                        valiq := edit6.Text;
                        if frmnotafiscal.ComboBox1.Text = 'Venda de Merc. Rec. de Terceiros' then
                            vtrib := ibdm.IBQProdutosSTRIBU.AsString;
                        if frmnotafiscal.ComboBox1.Text = 'Remessa de Merc. p/ demonstracao' then
                            vtrib := '051';
                        if frmnotafiscal.ComboBox1.Text = 'Remessa p/ conserto ou reparos' then
                            vtrib := '050';
                        if frmnotafiscal.ComboBox1.Text = 'Remessa de amostra gratis' then
                            vtrib := '000';
                        if frmnotafiscal.ComboBox1.Text = 'Venda Merc. - dentro do estado' then
                            vtrib := '000';
                        if frmnotafiscal.ComboBox1.Text = 'Venda' then
                            vtrib := '000';
                        if frmnotafiscal.ComboBox1.Text = 'Venda Merc. - fora do estado' then
                            vtrib := '000';
                        if frmnotafiscal.ComboBox1.Text = 'Devolucao de compra de material de uso ou consumo' then
                            vtrib := '051';
                        if frmnotafiscal.ComboBox1.Text = 'Retorno de Merc. ou bem recebido p/ conserto' then
                            vtrib := '051';
                        if edit4.Text <> '' then
                            vtrib := edit4.Text;

                        // diminuir do ESTOQUE
                        with ibdm.Grava do
                        begin
                            close;
                            sql.Clear;
                            sql.Add('update produtos');
                            sql.Add('set estoque=:p0');
                            sql.Add('where codigo=:p1');
                            params[0].AsCurrency := ibdm.IBQProdutosESTOQUE.AsCurrency - currencyedit1.Value;
                            params[1].AsString := label9.Caption;
                            Prepare;
                            ExecQuery;
                        end;

                        with ibdm.Grava do
                        begin
                            Close;
                            SQL.Clear;
                            sql.Add('insert into temp');
                            sql.Add('(codigo,descricao,sittrib,unid,quantidade,valorunit,valortot,aliq,contador)');
                            sql.Add('values(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8)');
                            params[0].AsString := vcod;
                            params[1].AsString := vdesc;
                            params[2].AsString := vtrib;
                            params[3].AsString := edit3.Text;
                            params[4].AsCurrency := currencyedit1.Value;
                            params[5].AsCurrency := vpr;
                            params[6].AsCurrency := currencyedit1.Value * vpr;
                            if frmnotafiscal.ComboBox1.Text = 'Retorno de Merc. ou bem recebido p/ conserto' then
                                params[7].AsString := ''
                               else
                                params[7].AsString := valiq;
                            params[8].AsInteger := ibdm.IBTempCONTADOR.AsInteger + 1;
                            Prepare;
                            ExecQuery;
                        end;
                        ibdm.IBTemp.Close;
                        ibdm.IBTemp.Open;

                        //Registro na tabela de Movimento
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
                            params[1].AsString := label9.Caption;
                            params[2].AsString := currtostr(currencyedit1.value);
                            params[3].AsCurrency := vpr;
                            params[4].AsDate := now;
                            params[5].AsString := frmnotafiscal.Edit10.Text;
                            prepare;
                            ExecQuery;
                        end;
                    end;
                end
                else
                begin
                    vcod := edit5.Text; //ibdm.IBQProdutosCODIGO.AsString;
                    vdesc := ibdm.IBQProdutosDESCRICAO.AsString;
                    valiq := edit6.Text;
                    vpr := currencyedit2.Value;
                    if frmnotafiscal.ComboBox1.Text = 'Venda de Merc. Rec. de Terceiros' then
                        vtrib := ibdm.IBQProdutosSTRIBU.AsString;
                    if frmnotafiscal.ComboBox1.Text = 'Remessa de Merc. p/ demonstracao' then
                        vtrib := '051';
                    if frmnotafiscal.ComboBox1.Text = 'Remessa p/ conserto ou reparos' then
                        vtrib := '050';
                    if frmnotafiscal.ComboBox1.Text = 'Remessa de amostra gratis' then
                        vtrib := '000';
                    if frmnotafiscal.ComboBox1.Text = 'Venda Merc. - dentro do estado' then
                        vtrib := '000';
                    if frmnotafiscal.ComboBox1.Text = 'Venda' then
                        vtrib := '000';
                    if frmnotafiscal.ComboBox1.Text = 'Venda Merc. - fora do estado' then
                        vtrib := '000';
                    if frmnotafiscal.ComboBox1.Text = 'Devolucao de compra de material de uso ou consumo' then
                        vtrib := '051';
                    if frmnotafiscal.ComboBox1.Text = 'Retorno de Merc. ou bem recebido p/ conserto' then
                        vtrib := '051';
                    if edit4.Text <> '' then
                        vtrib := edit4.Text;

                    //diminuir do estoque
                    with ibdm.Grava do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('update produtos');
                        sql.Add('set estoque=:p0');
                        sql.Add('where codigo=:p1');
                        params[0].AsCurrency := ibdm.IBQProdutosESTOQUE.AsCurrency - currencyedit1.Value;
                        params[1].AsString := label9.Caption;
                        Prepare;
                        ExecQuery;
                    end;

                    with ibdm.Grava do
                    begin
                        Close;
                        SQL.Clear;
                        sql.Add('insert into temp');
                        sql.Add('(codigo,descricao,sittrib,unid,quantidade,valorunit,valortot,aliq,contador)');
                        sql.Add('values(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8)');
                        params[0].AsString := vcod;
                        params[1].AsString := vdesc;
                        params[2].AsString := vtrib;
                        params[3].AsString := edit3.Text;
                        params[4].AsCurrency := currencyedit1.Value;
                        params[5].AsCurrency := vpr;
                        params[6].AsCurrency := currencyedit1.Value * vpr;
                        if (frmnotafiscal.ComboBox1.Text = 'Devolucao de Remessa') or (frmnotafiscal.ComboBox1.Text = 'Retorno de Merc. ou bem recebido p/ conserto') then
                            params[7].AsString := ' '
                           else
                            params[7].AsString := valiq;
                        params[8].AsInteger := ibdm.IBTempCONTADOR.AsInteger + 1;
                        Prepare;
                        ExecQuery;
                    end;
                    ibdm.IBTemp.Close;
                    ibdm.IBTemp.Open;

                    //Registro na tabela de Movimento
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
                        params[1].AsString := label9.Caption;
                        params[2].AsString := currtostr(currencyedit1.value);
                        params[3].AsCurrency := vpr;
                        params[4].AsDate := now;
                        params[5].AsString := frmnotafiscal.Edit10.Text;
                        prepare;
                        ExecQuery;
                    end;
                end;
            end;
            ibdm.IBTemp.Close;
            ibdm.IBTemp.Open;
            ibdm.IBQMovimento.Close;
            ibdm.IBQMovimento.Open;
            ibdm.IBQProdutos.Close;
            ibdm.IBQProdutos.Open;
            close;
        end;
        end;
        CommitWork;
    end;
end;

procedure TFrmPesqProd.BitBtn3Click(Sender: TObject);
begin
    close;
end;

procedure TFrmPesqProd.FormActivate(Sender: TObject);
begin
    with ibdm.IBQProdutos do
    begin
        Close;
        sql.Clear;
        sql.Add('select * from produtos');
        sql.Add('order by codigo ASC, descricao ASC');
        prepare;
        Open;
        Last;
    end;

    combobox1.Clear;
    combobox1.Items.Add('Todos');
    combobox1.Text := 'Todos';
    with ibdm.IBQGrupos do
    begin
        close;
        sql.Clear;
        sql.Add('select * from grupos');
        sql.Add('order by descricao ASC');
        prepare;
        open;
        First;
        while not eof do
        begin
            combobox1.Items.Add(ibdm.IBQGruposDESCRICAO.AsString);
            next;
        end;
    end;

    if vnota = true then
    begin
        bitbtn5.Visible := false;
    end;

    if vnota = false then
    begin
        bitbtn2.Visible := false;
        label3.Visible := false;
        edit4.Visible := false;
    end;
end;

procedure TFrmPesqProd.DBGrid1CellClick(Column: TColumn);
begin
    currencyedit2.value := ibdm.IBQProdutosPRECOVENDA.Ascurrency;
    edit5.Text := ibdm.IBQProdutosCODIGO.AsString;
    label9.Caption := ibdm.IBQProdutosCODIGO.AsString;
    currencyedit1.SetFocus;
end;

procedure TFrmPesqProd.ComboBox1Click(Sender: TObject);
begin
    if combobox1.Text = 'Todos' then
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
            if locate('descricao',combobox1.Text,[]) then
            begin
                vcod := ibdm.IBQGruposCODIGO.AsInteger;
                with ibdm.IBQProdutos do
                begin
                    close;
                    sql.Clear;
                    sql.Add('select * from produtos');
                    sql.Add('where grupo =:p0');
                    sql.Add('order by descricao ASC');
                    params[0].AsInteger := vcod;
                    prepare;
                    open;
                end;
            end;
        end;
    end;
    ibdm.IBQProdutos.Close;
    ibdm.IBQProdutos.Open;

    combobox2.Clear;
    combobox2.Items.Add('Todos');
    combobox2.Text := 'Todos';
    with ibdm.IBQSubGrupos do
    begin
        close;
        sql.Clear;
        sql.Add('select * from subgrupos');
        sql.Add('order by descricao ASC');
        prepare;
        open;
        First;
        while not eof do
        begin
            if ibdm.IBQSubGruposGRUPO.AsInteger = vcod then
                combobox2.Items.Add(ibdm.IBQSUBGruposDESCRICAO.AsString);
            next;
        end;
    end;
end;

procedure TFrmPesqProd.ComboBox2Click(Sender: TObject);
var
    vsub : integer;
begin
    if combobox2.Text = 'Todos' then
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
            sql.Clear;
            sql.Add('select * from subgrupos');
            prepare;
            open;
            locate('descricao',combobox2.Text,[]);
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

procedure TFrmPesqProd.BitBtn1Click(Sender: TObject);
begin
    if edit2.Text <> '' then
    begin
        with ibdm.IBQProdutos do
        begin
            close;
            sql.Clear;
            sql.Add('select * from Produtos');
            sql.Add('where descricao LIKE :p1');
            sql.Add('order by codigo ASC,descricao ASC');
            params[0].AsString := Trim(edit2.Text)+'%';
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
            sql.Add('select * from produtos');
            sql.Add('order by codigo ASC,descricao ASC');
            prepare;
            open;
        end;
    end;

    if edit1.Text <> '' then
    begin
        with ibdm.IBQProdutos do
        begin
            close;
            sql.Clear;
            sql.Add('select * from produtos');
            sql.Add('where codigo LIKE :p1');
            sql.Add('order by codigo ASC,descricao ASC');
            params[0].AsString := Trim(edit1.Text)+'%';
            prepare;
            open;
        end;
    end;
end;

procedure TFrmPesqProd.Button1Click(Sender: TObject);
begin
    with ibdm.IBQProdutos do
    begin
        close;
        sql.Clear;
        sql.Add('select * from produtos');
        sql.Add('order by codigo ASC');
        prepare;
        open;
    end;
    Button1.Enabled := false;
    Button2.Enabled := true;
    edit1.SetFocus;
end;

procedure TFrmPesqProd.Button2Click(Sender: TObject);
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
    Button2.Enabled := false;
    Button1.Enabled := true;
    edit2.SetFocus;
end;

procedure TFrmPesqProd.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
