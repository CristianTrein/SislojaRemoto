unit UNotaFiscal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, RXClock, rxToolEdit, ExtCtrls, Mask,
  XP_Form;

type
  TFrmNotaFiscal = class(TForm)
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    GroupBox3: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox3: TComboBox;
    Label14: TLabel;
    Edit10: TEdit;
    Label16: TLabel;
    Edit12: TEdit;
    Panel1: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    DateEdit1: TDateEdit;
    RxClock1: TRxClock;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label9: TLabel;
    Label15: TLabel;
    ComboBox2: TComboBox;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit7: TMaskEdit;
    Edit11: TEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    procedure RadioButton1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure ComboBox3Exit(Sender: TObject);
    procedure Edit10Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ComboBox2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    vcod : string;
    vnovo : boolean;
    vextr : byte;
    vnome : string;
    vusuario : integer;
    vcomissao : currency;
  end;

var
  FrmNotaFiscal: TFrmNotaFiscal;

implementation

uses DM, UProdutos, UPrincipal, UPesqProd, UNotaFiscal1;

{$R *.DFM}

procedure TFrmNotaFiscal.RadioButton1Click(Sender: TObject);
begin
    if radiobutton1.Checked = true then
    begin
        with combobox1 do
        begin
            Clear;
            //items.Add('Prestaçao de Serviço');
            items.Add('Venda');
            items.Add('Venda de Merc. Rec. de Terceiros');
            items.Add('Devolucao de compra de material de uso ou consumo');
            items.Add('Remessa de amostra gratis');
            items.Add('Remessa de Merc. p/ demostracao');
            items.Add('Remessa p/ conserto ou reparos');
            Items.Add('Remessa p/ venda fora estabelecimento');
            Items.Add('Remessa por conta e ordem de Terc.');
            items.Add('Retorno de Merc. ou bem recebido p/ conserto');
        end;
    end;
end;

procedure TFrmNotaFiscal.CheckBox1Click(Sender: TObject);
begin
    if checkbox1.Checked = true then
        checkbox2.Checked := false;

    if checkbox2.Checked = true then
        checkbox1.Checked := false;
end;

procedure TFrmNotaFiscal.RadioButton2Click(Sender: TObject);
begin
    if radiobutton1.Checked = true then
    begin
        with combobox1 do
        begin
            Clear;
            //items.Add('Prestaçao de Serviço');
            items.Add('Venda');
            items.Add('Venda de Merc. Rec. de Terceiros');
            items.Add('Devolucao de compra de material de uso ou consumo');
            items.Add('Remessa de amostra gratis');
            items.Add('Remessa de Merc. p/ demostracao');
            items.Add('Remessa p/ conserto ou reparos');
            Items.Add('Remessa p/ venda fora estabelecimento');
            Items.Add('Remessa por conta e ordem de Terc.');
            items.Add('Retorno de Merc. ou bem recebido p/ conserto');
        end;
    end;
end;

procedure TFrmNotaFiscal.ComboBox1Exit(Sender: TObject);
begin
    if RadioButton1.Checked = true then
    begin
        if combobox1.Text = 'Prestaçao de Serviço' then
            edit12.Text := '5949';
        if combobox1.Text = 'Venda' then
            edit12.Text := '5102';
        if combobox1.Text = 'Venda de Merc. Rec. de Terceiros' then
            edit12.Text := '5102';
        if combobox1.Text = 'Devolucao de compra de material de uso ou consumo' then
            edit12.Text := '5556';
        if combobox1.Text = 'Remessa de amostra gratis' then
            edit12.Text := '5911';
        if combobox1.Text = 'Remessa de Merc. p/ demostracao' then
            edit12.Text := '5912';
        if combobox1.Text = 'Remessa p/ conserto ou reparos' then
            edit12.Text := '5915';
        if combobox1.Text = 'Remessa p/ venda fora estabelecimento' then
            edit12.Text := '5904';
        if combobox1.Text = 'Retorno de Merc. ou bem recebido p/ conserto' then
            edit12.Text := '5916';
        if combobox1.Text = 'Remessa por conta e ordem de Terc.' then
            edit12.Text := '5923';
    end;

    if RadioButton2.Checked = true then
    begin
        if combobox1.Text = 'Prestaçao de Serviço' then
            edit12.Text := '6949';
        if combobox1.Text = 'Venda' then
            edit12.Text := '6102';
        if combobox1.Text = 'Venda de Merc. Rec. de Terceiros' then
            edit12.Text := '6102';
        if combobox1.Text = 'Devolucao de compra de material de uso ou consumo' then
            edit12.Text := '6556';
        if combobox1.Text = 'Remessa de amostra gratis' then
            edit12.Text := '6911';
        if combobox1.Text = 'Remessa p/ conserto ou reparos' then
            edit12.Text := '6915';
        if combobox1.Text = 'Remessa p/ venda fora estabelecimento' then
            edit12.Text := '6904';
        if combobox1.Text = 'Retorno de Merc. ou bem recebido p/ conserto' then
            edit12.Text := '6916';
    end;

    if combobox1.Text = '' then
    begin
        ShowMessage('Informe a Natureza de Operação!!');
        combobox1.SetFocus;
    end;
end;

procedure TFrmNotaFiscal.ComboBox3Exit(Sender: TObject);
begin
    with ibdm.IBQUsuario do
    begin
        close;
        open;
        if locate('nome',combobox3.Text,[]) then
        begin
            vusuario := ibdm.IBQUsuarioCODIGO.AsInteger;
            vcomissao := ibdm.IBQUsuarioCOMISSAO.asCurrency;
        end;
    end;
end;

procedure TFrmNotaFiscal.Edit10Exit(Sender: TObject);
begin
    if edit10.Text = '' then
    begin
        ShowMessage('Nº da Nota Fiscal não informada!!! Informe-o.');
        edit10.SetFocus;
    end;
end;

procedure TFrmNotaFiscal.FormActivate(Sender: TObject);
var
    vtam : integer;
    vnovo1 : string;
    vdoc : integer;
begin
    with ibdm.IBQClientes do
    begin
        close;
        open;
        first;
        combobox2.Clear;
        while not eof do
        begin
            combobox2.Items.Add(ibdm.IBQClientesNOME.AsString+' * '+ibdm.IBQClientesCPF.AsString);
            next;
        end;
    end;
    dateedit1.Date := now;
    ibdm.IBQParam.Close;
    ibdm.IBQParam.Open;
    if vnovo = true then
    begin
        with ibdm.Consulta do
        begin
            close;
            sql.Clear;
            sql.Add('select max(documento) from doctos');
            sql.Add('where transacao =:p0');
            params[0].AsString := 'VENDAS';
            Prepare;
            open;
            if fields[0].AsString = '' then
                vdoc := 0 + 1
               else
                vdoc := fields[0].AsInteger + 1;
        end;

        vtam := Length(inttostr(vdoc));
            Case vtam of
            1: vnovo1 := '00000' + inttostr(vdoc);
            2: vnovo1 := '0000' + inttostr(vdoc);
            3: vnovo1 := '000' + inttostr(vdoc);
            4: vnovo1 := '00' + inttostr(vdoc);
            5: vnovo1 := '0' + inttostr(vdoc);
            6: vnovo1 := inttostr(vdoc);
            end;
        edit10.Text := vnovo1;
    end;

    // Vendedores
    with ibdm.IBQUsuario do
    begin
        close;
        sql.Clear;
        sql.Add('select * from usuarios');
        prepare;
        open;
        first;
        combobox3.Clear;
        while not eof do
        begin
            combobox3.Items.Add(ibdm.IBQUsuarioNOME.AsString);
            next;
        end;
    end;
    checkbox1.SetFocus;
end;

procedure TFrmNotaFiscal.ComboBox2Click(Sender: TObject);
var
    vcnpj : string;
    vcpf : string;
begin
    with ibdm.IBQClientes do
    begin
        close;
        open;
        vextr := Pos('*',combobox2.Text);
        vnome := copy(combobox2.text,1,vextr - 1);
        vcnpj := copy(combobox2.text,vextr+2,15);
        vcpf := copy(combobox2.Text,vextr+2,15);
        if (locate('nome',vnome,[])) and (locate('cnpj',vcnpj,[])) or (locate('cpf',vcpf,[])) then
        begin

            edit3.Text := ibdm.IBQClientesCPF.AsString ;

            vcod := ibdm.IBQClientesCODIGO.AsString;
            edit4.Text := ibdm.IBQClientesENDERECO.AsString;
            edit5.Text := ibdm.IBQClientesBAIRRO.AsString;
            edit6.Text := ibdm.IBQClientesCIDADE.AsString;
            edit7.Text := ibdm.IBQClientesCEP.AsString;
            edit8.Text := ibdm.IBQClientesFONE.AsString;
            edit9.Text := ibdm.IBQClientesUF.AsString;

        end
        else
        begin
            ShowMessage('Cliente não cadastrado');
            vcod := '0';
        end;
    end;
end;

procedure TFrmNotaFiscal.BitBtn3Click(Sender: TObject);
var
    cont : integer;
begin
    FrmPesqProd := TFrmPesqProd.Create(Application);
    FrmPesqProd.vnota := true;
    with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select count(codigo) from temp');
        prepare;
        open;
        cont := fields[0].AsInteger;
    end;
    if cont >= 15 then
        ShowMessage('A NOTA FISCAL contém 15 itens!!!')
    else
    begin
        FrmPesqProd.ShowModal;
        FrmPesqProd.Destroy;
    end;
end;

procedure TFrmNotaFiscal.BitBtn4Click(Sender: TObject);
var
    msg : integer;
    vcod : string;
    vqt : currency;
begin
    msg := Application.MessageBox('Deseja EXCLUIR este produto da NOTA FISCAL???','Exclusão de Produto',68);
    if msg = 6 then
    begin
        vcod := ibdm.IBTempCODIGO.AsString;
        vqt := ibdm.IBTempQUANTIDADE.AsCurrency;
        with ibdm.IBQProdutos do
        begin
            close;
            open;
            if locate('codigo',vcod,[]) then
            begin
                with ibdm.Grava do
                begin
                    close;
                    sql.Clear;
                    sql.Add('update produtos');
                    sql.Add('set estoque=:p0');
                    sql.Add('where codigo=:p1');
                    params[0].AsCurrency := ibdm.IBQProdutosESTOQUE.AsCurrency + vqt;
                    params[1].AsString := vcod;
                    prepare;
                    ExecQuery;
                end;
                ibdm.IBQProdutos.Close;
                ibdm.IBQProdutos.Open;
            end
            Else
                ShowMessage('Não achei o código do Produto, estoque não atualizado, atualize!!!');
        end;
        with ibdm.Deleta do
        begin
            close;
            sql.Clear;
            sql.Add('delete from temp');
            sql.Add('where codigo =:p0');
            params[0].AsString := vcod;
            prepare;
            execquery;
        end;
        ibdm.IBTemp.Close;
        ibdm.IBTemp.Open;
    end;
end;

procedure TFrmNotaFiscal.BitBtn5Click(Sender: TObject);
begin
    FrmEdProdutos := TFrmEdProdutos.create(Application);
    FrmEdProdutos.vnovo := True;
    FrmEdProdutos.EdUreajuste.Date := now;
    FrmEdProdutos.DateEdit1.Visible := false;
    FrmEdProdutos.Label17.Visible := false;
    LOG('Operador: '+InttoStr(frmprincipal.voperador)+' Hora: '+timetostr(time)+' - Novo Produto');
    FrmEdProdutos.ShowModal;
    FrmEdProdutos.Destroy;
    CommitWork;
    IBDM.IBQProdutos.close;
    IBDM.IBQProdutos.Open;
end;

procedure TFrmNotaFiscal.BitBtn2Click(Sender: TObject);
begin
    close;
end;

procedure TFrmNotaFiscal.BitBtn1Click(Sender: TObject);
var
    vcont : integer;
begin
    if combobox3.Text = '' then
    begin
        ShowMessage('Por favor informe o VENDEDOR!!!');
        combobox3.SetFocus;
    end;
    FrmNotaFiscal1 := TFrmNotaFiscal1.Create(Application);
    if vnovo = true then
    begin
        // Registro na tabela de documentos
        with ibdm.Consulta do
        begin
            close;
            sql.Clear;
            sql.Add('select max(Controle) from doctos');
            Prepare;
            Open;
            vcont := Fields[0].AsInteger + 1;
        end;

        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('Insert into Doctos');
            sql.Add('(controle,clifor,documento,data,operador,transacao,natop)');
            sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6)');
            params[0].AsInteger := vcont;
            params[1].Asinteger := strtoint(frmnotafiscal.vcod);
            params[2].AsString := frmnotafiscal.edit10.Text;
            params[3].AsDateTime := frmnotafiscal.dateedit1.Date;
            params[4].AsInteger := vusuario; //frmprincipal.voperador;
            params[5].AsString := 'VENDAS';
            params[6].AsString := frmnotafiscal.Edit12.Text;
            prepare;
            ExecQuery;
        end;
        ibdm.IBQDoctos.Close;
        ibdm.IBQDoctos.Open;
    end;
    FrmNOtaFiscal1.ShowModal;
    FrmNotaFiscal1.Destroy;
    frmnotafiscal.Close;
end;

procedure TFrmNotaFiscal.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
