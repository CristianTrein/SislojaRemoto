unit UFechaVenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, rxToolEdit, rxCurrEdit, Buttons, MegaEditNumerico, ExtCtrls,
  XP_Form;

type
  TFrmFechaVenda = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    edit1: TCurrencyEdit;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit3: TMegaEditNumerico;
    Edit2: TMegaEditNumerico;
    Label5: TLabel;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox2Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edit1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFechaVenda: TFrmFechaVenda;

implementation

uses DM, UNotaVenda, UPrincipal, UPrestacoes, UCadCheques, UItensCompra,
  UItensVenda, UEdCartao;

{$R *.DFM}

procedure TFrmFechaVenda.BitBtn1Click(Sender: TObject);
var
    sAcreDesc : Pchar;
    sTipoAcreDesc : Pchar;
    vtext : pchar;
    vtipo : Pchar;
    vpag : Pchar;
    vval : string;
    Sep:Char;
    i:integer;
    x:integer;
    vtxt:PChar;
    vtxte:PChar;
    vcb:string;
    vpaga:pchar;
    vcont : integer;
    vcalc : currency;
    f : textfile;
    vcod,vdesc : string;
    vvalor, vqtd, vresult : currency;
    msg : integer;
begin
    if ibdm.IBQParamUSAECF.AsString = 'S' then
    begin
        // COMANDOS DA IMPRESSORA FISCAL......
        If RadioButton1.Checked = True Then Begin sAcreDesc := 'A' End;
        If RadioButton2.Checked = True Then Begin sAcreDesc := 'D' End;

        If RadioButton3.Checked = True Then Begin sTipoAcreDesc := '%' End;
        If RadioButton4.Checked = True Then Begin sTipoAcreDesc := '$' End;
        //
        Sep:='.';
        I := AnsiPos(sep,Edit1.text);
        if I = 0 then
         begin
          vtxt := Pchar(Edit1.text+'00');
        end
        else
        begin
          vval := Edit1.text + '00';
          vtxt := Pchar(Copy(vval, 1, I - 1)+Copy(vval, I + 1, 2 ));
         end;
        vpag := Pchar(vtxt);
        iRetorno := Bematech_FI_IniciaFechamentoCupom(sAcreDesc, sTipoAcreDesc, vpag); //Pchar(Edit1.Text));
        FrmPrincipal.Analisa_iRetorno();
        FrmPrincipal.Retorno_Impressora();

        //forma de pagamento
        vtipo := Pchar(ComboBox1.Text);
        Sep:='.';
        I := AnsiPos(sep,Edit3.text);
        if I = 0 then
         begin
          vtxt := Pchar(Edit3.text+'00');
         end
        else
         begin
          vval := Edit3.text + '00';
          vtxt := Pchar(Copy(vval, 1, I - 1)+Copy(vval, I + 1, 2 ));
         end;
        vpag := Pchar(vtxt);

        Sep:='.';
        x := AnsiPos(sep,Edit2.text);
        if x = 0 then
         begin
          vtxte := Pchar(Edit2.text+'00');
         end
        else
         begin
          vval := Edit2.text + '00';
          vtxte := Pchar(Copy(vval, 1, x - 1)+Copy(vval, x + 1, 2 ));
         end;
        vpaga := Pchar(vtxte);

        iRetorno := Bematech_FI_EfetuaFormaPagamento(vtipo, vpaga);
        FrmPrincipal.Analisa_iRetorno();
        FrmPrincipal.Retorno_Impressora();

        with ibdm.Consulta do
        begin
            close;
            sql.Clear;
            sql.Add('select max(controle) from caixa');
            prepare;
            open;
            vcont := Fields[0].AsInteger + 1;
        end;

        if (combobox2.Text = 'A VISTA') and (combobox1.Text = 'Dinheiro') or (combobox1.Text = 'Cartao') then
        begin
            with ibdm.Grava do
            begin
                close;
                sql.Clear;
                sql.Add('insert into caixa');
                sql.Add('(data,controle,documento,historico,valor,operacao,transacao,operador)');
                sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)');
                params[0].AsDate := now;
                params[1].AsInteger := vcont;
                params[2].AsString := frmitensvenda.Ednota.Text;
                params[3].AsString := 'VENDA A VISTA - '+frmnotavenda.ComboBox1.Text;
                params[4].AsCurrency := edit2.AsCurrency;
                params[5].AsString := 'C';
                params[6].AsInteger := 1;
                params[7].asinteger := strtoint(FrmNotaVenda.Label7.Caption); //frmprincipal.voperador;
                prepare;
                execquery;
            end;
        end;
        if combobox1.text = 'Ch predatado' then
        begin
            with ibdm.Grava do
            begin
                close;
                sql.Clear;
                sql.Add('insert into caixa');
                sql.Add('(data,controle,documento,historico,valor,operacao,transacao,operador)');
                sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)');
                params[0].AsDate := now;
                params[1].AsInteger := vcont;
                params[2].AsString := frmitensvenda.Ednota.Text;
                params[3].AsString := 'VENDA c/ CHEQUE - '+frmnotavenda.ComboBox1.Text;
                params[4].AsCurrency := edit2.AsCurrency;
                params[5].AsString := 'C';
                params[6].AsInteger := 2;
                params[7].asinteger := strtoint(FrmNotaVenda.Label7.Caption);//frmprincipal.voperador;
                prepare;
                execquery;
            end;
            //FrmCadCheque := TFrmCadCheque.Create(application);
            //FrmCadCheque.ShowModal;
            //FrmCadCheque.Destroy;
        end;

        //COMISSÕES




        if combobox2.Text = 'A PRAZO' then
        begin
            FrmPrestacoes := TFrmPrestacoes.Create(application);
            FrmPrestacoes.Edit1.Text := currtostr(edit2.value);
            FrmPrestacoes.ShowModal;
            FrmPrestacoes.Destroy;
        end;
        FrmFechaVenda.Close;
        ibdm.IBQCaixa.Close;
        ibdm.IBQCaixa.Open;
        frmprincipal.DBGrid8.Refresh;

        //Texto para fechamento de cupom
        vtext := Pchar(memo1.Text);
        iRetorno := Bematech_FI_TerminaFechamentoCupom(vtext);
        FrmPrincipal.Analisa_iRetorno();
        FrmPrincipal.Retorno_Impressora();
        // fim dos comandos da IMPRESSORA FISCAL
    end;
     ///////////////////////////////////////////
    // Codigos que NAO usa a impressora fiscal//
    ////////////////////////////////////////////

    if ibdm.IBQParamUSAECF.AsString = 'N' then
    begin
        If RadioButton1.Checked = True Then Begin sAcreDesc := 'A' End;
        If RadioButton2.Checked = True Then Begin sAcreDesc := 'D' End;

        If RadioButton3.Checked = True Then Begin sTipoAcreDesc := '%' End;
        If RadioButton4.Checked = True Then Begin sTipoAcreDesc := '$' End;
        //
        Sep:='.';
        I := AnsiPos(sep,Edit1.text);
        if I = 0 then
         begin
          vtxt := Pchar(Edit1.text+'00');
        end
        else
        begin
          vval := Edit1.text + '00';
          vtxt := Pchar(Copy(vval, 1, I - 1)+Copy(vval, I + 1, 2 ));
         end;
        vpag := Pchar(vtxt);

        //forma de pagamento
        vtipo := Pchar(ComboBox1.Text);
        Sep:='.';
        I := AnsiPos(sep,Edit3.text);
        if I = 0 then
         begin
          vtxt := Pchar(Edit3.text+'00');
         end
        else
         begin
          vval := Edit3.text + '00';
          vtxt := Pchar(Copy(vval, 1, I - 1)+Copy(vval, I + 1, 2 ));
         end;
        vpag := Pchar(vtxt);

        Sep:='.';
        x := AnsiPos(sep,Edit2.text);
        if x = 0 then
         begin
          vtxte := Pchar(Edit2.text+'00');
         end
        else
         begin
          vval := Edit2.text + '00';
          vtxte := Pchar(Copy(vval, 1, x - 1)+Copy(vval, x + 1, 2 ));
         end;
        vpaga := Pchar(vtxte);

        with ibdm.Consulta do
        begin
            close;
            sql.Clear;
            sql.Add('select max(controle) from caixa');
            prepare;
            open;
            vcont := Fields[0].AsInteger + 1;
        end;

        if (combobox2.Text = 'A VISTA') and (combobox1.Text = 'Dinheiro') or (combobox1.Text = 'Cartao') then
        begin
            with ibdm.Grava do
            begin
                close;
                sql.Clear;
                sql.Add('insert into caixa');
                sql.Add('(data,controle,documento,historico,valor,operacao,transacao,operador)');
                sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)');
                params[0].AsDate := int(now);
                params[1].AsInteger := vcont;
                params[2].AsString := frmnotavenda.Edit5.Text;
                params[3].AsString := 'VENDA A VISTA - '+frmnotavenda.ComboBox1.Text;
                params[4].AsCurrency := edit2.AsCurrency;
                params[5].AsString := 'C';
                params[6].AsInteger := 1;
                params[7].asinteger := strtoint(FrmNotaVenda.Label7.Caption); //frmprincipal.voperador;
                prepare;
                execquery;
            end;
        end;
        if combobox1.text = 'Ch predatado' then
        begin
            with ibdm.Grava do
            begin
                close;
                sql.Clear;
                sql.Add('insert into caixa');
                sql.Add('(data,controle,documento,historico,valor,operacao,transacao,operador)');
                sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)');
                params[0].AsDate := int(now);
                params[1].AsInteger := vcont;
                params[2].AsString := frmnotavenda.Edit5.Text;
                params[3].AsString := 'VENDA c/ CHEQUE - '+frmnotavenda.ComboBox1.Text;
                params[4].AsCurrency := edit2.AsCurrency;
                params[5].AsString := 'C';
                params[6].AsInteger := 2;
                params[7].asinteger := frmprincipal.voperador;
                prepare;
                execquery;
            end;
            FrmCadCheque := TFrmCadCheque.Create(Application);
            FrmCadCheque.vnovo := true;
            with ibdm.Consulta do
            begin
                close;
                sql.Clear;
                sql.Add('select max(codigo) from cheque');
                prepare;
                open;
                FrmCadCheque.Edit1.Text := inttostr(fields[0].AsInteger + 1);
            end;
            FrmCadCheque.ShowModal;
            FrmCadCheque.Destroy;
        end;

        if combobox1.text = 'Cartao' then
        begin
            with ibdm.Grava do
            begin
                close;
                sql.Clear;
                sql.Add('insert into caixa');
                sql.Add('(data,controle,documento,historico,valor,operacao,transacao,operador)');
                sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)');
                params[0].AsDate := int(now);
                params[1].AsInteger := vcont;
                params[2].AsString := frmnotavenda.Edit5.Text;
                params[3].AsString := 'VENDA c/ CARTAO - '+frmnotavenda.ComboBox1.Text;
                params[4].AsCurrency := edit2.AsCurrency;
                params[5].AsString := 'C';
                params[6].AsInteger := 9;
                params[7].asinteger := frmprincipal.voperador;
                prepare;
                execquery;
            end;
            FrmEdCartao := TFrmEdCartao.Create(Application);
            FrmEdCartao.vnovo := true;
            with ibdm.Consulta do
            begin
                close;
                sql.Clear;
                sql.Add('select max(controle) from cartao');
                prepare;
                open;
                FrmEdCartao.Edit1.Text := inttostr(fields[0].AsInteger + 1);
            end;
            FrmEdCartao.ShowModal;
            FrmEdCartao.Destroy;
        end;


        //COMISSÕES
        with ibdm.IBQUsuario do
        begin
            close;
            sql.clear;
            sql.add('select * from usuarios');
            prepare;
            open;
            locate('codigo',frmnotavenda.label7.Caption,[]);
            if ibdm.IBQUsuarioCOMISSAO.AsCurrency <> 0 then
            begin
                vcalc := (edit2.AsCurrency * ibdm.IBQUsuarioCOMISSAO.AsCurrency)/100;

                with ibdm.Grava do
                begin
                    close;
                    sql.Clear;
                    sql.Add('insert into comissoes');
                    sql.Add('(nota,vendedor,comissao,liberado)');
                    sql.Add('values(:p0,:p1,:p2,:p3)');
                    params[0].AsInteger := strtoint(frmnotavenda.Edit5.Text);
                    params[1].AsInteger := strtoint(FrmNotaVenda.Label7.Caption); //frmprincipal.voperador;
                    params[2].AsCurrency := vcalc;
                    params[3].AsDate := int(now);
                    prepare;
                    ExecQuery;
                end;
            end;
        end;

        if combobox2.Text = 'A PRAZO' then
        begin
            FrmPrestacoes := TFrmPrestacoes.Create(application);
            FrmPrestacoes.Edit1.Text := currtostr(edit2.value);
            FrmPrestacoes.ShowModal;
            FrmPrestacoes.Destroy;
        end;
        FrmFechaVenda.Close;
    end;
    ibdm.IBQCaixa.Close;
    ibdm.IBQCaixa.Open;
    CommitWork;

    // Matricial
    if combobox2.Text = 'A VISTA' then
    begin
        msg := Application.MessageBox('Deseja imprimir o Recibo de Venda a Vista???','==> RECIBO <==',68);
        if msg = 6 then
        begin
            assignFile(f,'Prn');
            rewrite(f);
            writeln(f,'');
            writeln(f,chr(27)+chr(69)+'           SISLOJA'+chr(27)+chr(70));
            writeln(f,chr(27)+chr(69)+' Rua: 7 de setembro, '+chr(27)+chr(70));
            writeln(f,chr(27)+chr(69)+' Panambi/RS   Fone:(55)3375-'+chr(27)+chr(70));
            writeln(f,chr(27)+chr(69)+'*********************************'+chr(27)+chr(70));
            Writeln(f,'');
            Writeln(f,'');
            Writeln(f,chr(27)+chr(69)+'  Cliente: '+frmnotavenda.combobox1.text+chr(27)+chr(70));
            Writeln(f,'  Vendedora: '+FrmNotaVenda.Label7.Caption+' - '+FrmNotaVenda.combobox2.text);
            Writeln(f,'   Documento: '+frmnotavenda.edit5.text);
            Writeln(f,'    Data: '+frmnotavenda.Edit4.Text);
            Writeln(f,'     Hora: '+timetostr(now));
            Writeln(f,'');
            Writeln(f,'');
            Writeln(f,chr(27)+chr(69)+'Cod.: Produto: Quant.: ValorUnit.:'+chr(27)+chr(70));
            with ibdm.IBQMovimento do
            begin
                close;
                sql.Clear;
                sql.Add('select * from movimento');
                sql.Add('where docto =:p0');
                params[0].AsString := frmnotavenda.edit5.text;
                prepare;
                open;
                first;
                while not eof do
                begin
                    vcod := ibdm.IBQMovimentoPRODUTO.AsString;
                    with ibdm.IBQProdutos do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('select * from produtos');
                        sql.Add('where codigo =:p0');
                        params[0].AsString := vcod;
                        prepare;
                        open;
                        vdesc := ibdm.IBQProdutosDESCRICAO.AsString;
                    end;
                    vqtd := ibdm.IBQMovimentoQUANTIDADE.AsCurrency;
                    vvalor := ibdm.IBQMovimentoVALORUNITARIO.AsCurrency;
                    Writeln(f,''+vcod+'    '+vdesc);
                    Writeln(f,'                  '+formatcurr('0',vqtd)+'     '+formatcurr('0.00',vvalor));
                    next;
                end;
                Writeln(f,'');
                Writeln(f,'                VENDA A VISTA');
                Writeln(f,'                Total: R$ '+formatcurr('0.00',edit2.AsCurrency));
            end;
            Writeln(f,'');
            Writeln(f,'');
            Writeln(f,'Cliente: __________________');
            Writeln(f,chr(27)+chr(69)+''+chr(27)+chr(70));
            Writeln(f,'---------------------------------');
            Writeln(f,'|  Obrigado pela preferencia,   |');
            Writeln(f,'|        volte sempre.          |');
            Writeln(f,'---------------------------------');
            Writeln(f,chr(27)+chr(69)+''+chr(27)+chr(70));
            Writeln(f,'TECNOINFO  Sistemas.');
            Writeln(f,'');
            Writeln(f,'');
            Writeln(f,'');
            Writeln(f,'');
            Writeln(f,'');
            Writeln(f,'');
            Writeln(f,'');
            Writeln(f,'');
            Writeln(f,'');
            Writeln(f,'');
            Writeln(f,'');
            Writeln(f,'');
            Writeln(f,'');
            Writeln(f,'');
            Writeln(f,'');
            Writeln(f,'');
            Writeln(f,'');
            Writeln(f,'');
            Writeln(f,'');
            Writeln(f,'');
            Writeln(f,'');
            Writeln(f,chr(27)+chr(80));
            closeFile(f);
        end;
    end;
end;

procedure TFrmFechaVenda.ComboBox2Exit(Sender: TObject);
begin
    if combobox2.Text = 'A VISTA' then
        combobox1.Text := 'Dinheiro';

    if combobox2.Text = 'A PRAZO' then
        combobox1.Text := 'Venda a Prazo';
end;

procedure TFrmFechaVenda.FormActivate(Sender: TObject);
begin
    if combobox2.Text = 'A VISTA' then
        combobox1.Text := 'Dinheiro';
end;

procedure TFrmFechaVenda.edit1Exit(Sender: TObject);
var
    vvl1:Currency;
    vvl2:Currency;
begin
    if strtocurr(edit1.Text) > 0 then
    begin
        vvl1 := Edit2.AsCurrency;
        vvl2 := Strtocurr(Edit1.text);
        if radiobutton1.Checked then // Acrescimo
            begin
                if radiobutton3.Checked then // Percentual
                    begin
                        vvl1 := vvl1 + vvl1*((vvl2/100) + 1);
                        Edit2.AsCurrency := vvl1;
                    end
                   else
                    begin // Valor
                         vvl1 := vvl1 + vvl2;
                         Edit2.AsCurrency := (vvl1);
                    end;
            end
           else  // desconto
            begin
                if radiobutton3.Checked then // Percentual
                    begin
                        vvl1 := vvl1 - vvl1*(vvl2/100);
                        Edit2.AsCurrency := vvl1;
                    end
                   else
                    begin // Valor
                         vvl1 := vvl1 - vvl2;
                         Edit2.AsCurrency := vvl1;
                    end;
            end;
    end;
end;

procedure TFrmFechaVenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
