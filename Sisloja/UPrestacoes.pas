unit UPrestacoes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, XP_Form;

type
  TFrmPrestacoes = class(TForm)
    Label1: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    Edit2: TEdit;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Edit4: TEdit;
    Edit6: TEdit;
    Edit8: TEdit;
    Edit10: TEdit;
    Edit12: TEdit;
    Edit5: TEdit;
    Edit7: TEdit;
    Edit9: TEdit;
    Edit11: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrestacoes: TFrmPrestacoes;

implementation

uses DM, UNotaVenda, UPrincipal, UItensVenda, UFechaVenda;

{$R *.DFM}

procedure TFrmPrestacoes.BitBtn1Click(Sender: TObject);
var
    vvalor:real;
    vnumdoc : string;
    vprest0 : string;
    vprest1 : string;
    vprest2 : string;
    vprest3 : string;
    ventrada: real;
    vcont, msg : integer;
    f : textfile;
    vcod, vdesc : string;
    vqtd, vvalor1 : currency;
begin
    //entrada  esta sendo jogado para o CAIXA
    vprest0 := ' ';
    vprest1 := ' ';
    vprest2 := ' ';
    vprest3 := ' ';
    if edit2.Text <> '0' then
    begin
        ventrada:= Strtocurr(Edit2.text);
        vprest0 := 'Entrada->R$ ' + formatcurr('0.00',ventrada);
        with ibdm.Consulta do
        begin
            close;
            sql.Clear;
            sql.Add('select max(controle) from caixa');
            prepare;
            open;
            vcont := Fields[0].AsInteger + 1;
        end;
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('insert into caixa');
            sql.Add('(data,controle,documento,historico,valor,operacao,transacao,operador)');
            sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)');
            params[0].AsDate := strtodate(edit3.text);
            params[1].AsInteger := vcont;
            params[2].AsString := FrmItensVenda.Ednota.Text; //frmnotavenda.vnumerocupom;
            params[3].AsString := 'ENTRADA - '+frmnotavenda.ComboBox1.Text;
            params[4].AsCurrency := strtocurr(edit2.text);
            params[5].AsString := 'C';
            params[6].AsInteger := 3;
            params[7].asinteger := strtoint(FrmNotaVenda.Label7.Caption); //frmprincipal.voperador;
            prepare;
            execquery;
        end;

        //Impressão de Recibo da entrada

    end;
    if combobox1.Text <> '' then
       begin
            if combobox1.text >= '1' then
                begin
                    with ibdm.Consulta do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('select max(controle) from creceber');
                        prepare;
                        open;
                        vcont := Fields[0].AsInteger + 1;
                    end;
                    with ibdm.Grava do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('Insert into Creceber');
                        sql.Add('(controle,vencimento,documento,historico,valororiginal,valordevido,parcela,cliente)');
                        sql.Add('values(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)');
                        params[0].AsInteger := vcont;
                        params[1].AsDate := strtodate(edit5.text);
                        params[2].AsString := frmitensvenda.Ednota.Text;
                        params[3].AsString := frmnotavenda.ComboBox1.Text;
                        params[4].Ascurrency := strtocurr(edit4.Text);
                        params[5].AsCurrency := strtocurr(edit1.Text);
                        params[6].AsString := '1/'+combobox1.Text;
                        params[7].AsString := frmnotavenda.label10.caption;
                        prepare;
                        ExecQuery;
                    end;

                end;

            if combobox1.text >= '2' then
                begin
                    with ibdm.Consulta do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('select max(controle) from creceber');
                        prepare;
                        open;
                        vcont := Fields[0].AsInteger + 1;
                    end;
                    with ibdm.Grava do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('Insert into Creceber');
                        sql.Add('(controle,vencimento,documento,historico,valororiginal,valordevido,parcela,cliente)');
                        sql.Add('values(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)');
                        params[0].AsInteger := vcont;
                        params[1].AsDate := strtodate(edit7.text);
                        params[2].AsString := frmitensvenda.Ednota.Text;
                        params[3].AsString := frmnotavenda.ComboBox1.Text;
                        params[4].AsCurrency := strtocurr(edit6.Text);
                        params[5].AsCurrency := strtocurr(edit1.Text);
                        params[6].AsString := '2/'+combobox1.Text;
                        params[7].AsString := frmnotavenda.label10.Caption;
                        prepare;
                        ExecQuery;
                    end;
                end;

            if combobox1.text >= '3' then
                begin
                    with ibdm.Consulta do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('select max(controle) from creceber');
                        prepare;
                        open;
                        vcont := Fields[0].AsInteger + 1;
                    end;
                    with ibdm.Grava do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('Insert into Creceber');
                        sql.Add('(controle,vencimento,documento,historico,valororiginal,valordevido,parcela,cliente)');
                        sql.Add('values(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)');
                        params[0].AsInteger := vcont;
                        params[1].AsDate := strtodate(edit9.text);
                        params[2].AsString := frmitensvenda.Ednota.Text;
                        params[3].AsString := frmnotavenda.ComboBox1.Text;
                        params[4].AsCurrency := strtocurr(edit8.Text);
                        params[5].AsCurrency := strtocurr(edit1.Text);
                        params[6].AsString := '3/'+combobox1.Text;
                        params[7].AsString := frmnotavenda.Label10.Caption;
                        prepare;
                        ExecQuery;
                    end;
                end;

            if combobox1.text >= '4' then
                begin
                    with ibdm.Consulta do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('select max(controle) from creceber');
                        prepare;
                        open;
                        vcont := Fields[0].AsInteger + 1;
                    end;
                    with ibdm.Grava do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('Insert into Creceber');
                        sql.Add('(controle,vencimento,documento,historico,valororiginal,valordevido,parcela,cliente)');
                        sql.Add('values(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)');
                        params[0].AsInteger := vcont;
                        params[1].AsDate := strtodate(edit11.text);
                        params[2].AsString := frmitensvenda.Ednota.Text;
                        params[3].AsString := frmnotavenda.ComboBox1.Text;
                        params[4].AsCurrency := strtocurr(edit10.Text);
                        params[5].AsCurrency := strtocurr(edit1.Text);
                        params[6].AsString := '4/'+combobox1.Text;
                        params[7].AsString := frmnotavenda.Label10.Caption;
                        prepare;
                        ExecQuery;
                    end;
                end;
            if combobox1.text >= '5' then
                begin
                    with ibdm.Consulta do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('select max(controle) from creceber');
                        prepare;
                        open;
                        vcont := Fields[0].AsInteger + 1;
                    end;
                    with ibdm.Grava do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('Insert into Creceber');
                        sql.Add('(controle,vencimento,documento,historico,valororiginal,valordevido,parcela,cliente)');
                        sql.Add('values(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)');
                        params[0].AsInteger := vcont;
                        params[1].AsDate := strtodate(edit13.text);
                        params[2].AsString := frmitensvenda.Ednota.Text;
                        params[3].AsString := frmnotavenda.ComboBox1.Text;
                        params[4].AsCurrency := strtocurr(edit12.Text);
                        params[5].AsCurrency := strtocurr(edit1.Text);
                        params[6].AsString := '5/'+combobox1.Text;
                        params[7].AsString := frmnotavenda.Label10.Caption;
                        prepare;
                        ExecQuery;
                    end;
                end;
            if combobox1.text >= '6' then
                begin
                    with ibdm.Consulta do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('select max(controle) from creceber');
                        prepare;
                        open;
                        vcont := Fields[0].AsInteger + 1;
                    end;
                    with ibdm.Grava do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('Insert into Creceber');
                        sql.Add('(controle,vencimento,documento,historico,valororiginal,valordevido,parcela,cliente)');
                        sql.Add('values(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)');
                        params[0].AsInteger := vcont;
                        params[1].AsDate := strtodate(edit15.text);
                        params[2].AsString := frmitensvenda.Ednota.Text;
                        params[3].AsString := frmnotavenda.ComboBox1.Text;
                        params[4].AsCurrency := strtocurr(edit14.Text);
                        params[5].AsCurrency := strtocurr(edit1.Text);
                        params[6].AsString := '6/'+combobox1.Text;
                        params[7].AsString := frmnotavenda.Label10.Caption;
                        prepare;
                        ExecQuery;
                    end;
                end;
            if combobox1.text >= '7' then
                begin
                    with ibdm.Consulta do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('select max(controle) from creceber');
                        prepare;
                        open;
                        vcont := Fields[0].AsInteger + 1;
                    end;
                    with ibdm.Grava do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('Insert into Creceber');
                        sql.Add('(controle,vencimento,documento,historico,valororiginal,valordevido,parcela,cliente)');
                        sql.Add('values(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)');
                        params[0].AsInteger := vcont;
                        params[1].AsDate := strtodate(edit17.text);
                        params[2].AsString := frmitensvenda.Ednota.Text;
                        params[3].AsString := frmnotavenda.ComboBox1.Text;
                        params[4].AsCurrency := strtocurr(edit16.Text);
                        params[5].AsCurrency := strtocurr(edit1.Text);
                        params[6].AsString := '7/'+combobox1.Text;
                        params[7].AsString := frmnotavenda.Label10.Caption;
                        prepare;
                        ExecQuery;
                    end;
                end;

       end;
    Close;
    ibdm.IBQCreceber.Close;
    ibdm.IBQCreceber.Open;
    CommitWork;
    if frmfechavenda.combobox2.Text = 'A PRAZO' then
    begin
        msg := Application.MessageBox('Deseja imprimir o Recibo de Venda a Prazo???','==> RECIBO <==',68);

        if msg = 6 then
        begin
            assignFile(f,'Prn');
            rewrite(f);
            writeln(f,'');
            writeln(f,chr(27)+chr(69)+'           ENIGMA'+chr(27)+chr(70));
            writeln(f,chr(27)+chr(69)+' Rua: 7 de setembro, 641 sala 03'+chr(27)+chr(70));
            writeln(f,chr(27)+chr(69)+' Panambi/RS   Fone:(55)3375-4484'+chr(27)+chr(70));
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
                    vvalor1 := ibdm.IBQMovimentoVALORUNITARIO.AsCurrency;
                    Writeln(f,''+vcod+'    '+vdesc);
                    Writeln(f,'                  '+formatcurr('0',vqtd)+'     '+formatcurr('0.00',vvalor1));
                    next;
                end;
                Writeln(f,'');
                Writeln(f,'                VENDA A PRAZO');
                Writeln(f,'                Total: R$ '+formatcurr('0.00',frmfechavenda.Edit2.AsCurrency));
            end;
            Writeln(f,'');
            Writeln(f,chr(27)+chr(69)+'   PRESTACOES:'+chr(27)+chr(70));
            if edit2.Text <> '0' then
                Writeln(f,' Entrada: R$ '+formatcurr('0.00',strtocurr(edit2.text)));
            if edit4.Text <> '' then
            begin
                Writeln(f,' 01 - Vencimento: '+edit5.text);
                Writeln(f,'      Valor: R$ '+formatcurr('0.00',strtocurr(edit4.text)));
            end;
            if edit6.Text <> '' then
            begin
                Writeln(f,' 02 - Vencimento: '+edit7.text);
                Writeln(f,'      Valor: R$ '+formatcurr('0.00',strtocurr(edit6.text)));
            end;
            if edit8.Text <> '' then
            begin
                Writeln(f,' 03 - Vencimento: '+edit9.text);
                Writeln(f,'      Valor: R$ '+formatcurr('0.00',strtocurr(edit8.text)));
            end;
            if edit10.Text <> '' then
            begin
                Writeln(f,' 04 - Vencimento: '+edit11.text);
                Writeln(f,'      Valor: R$ '+formatcurr('0.00',strtocurr(edit10.text)));
            end;
            if edit12.Text <> '' then
            begin
                Writeln(f,' 05 - Vencimento: '+edit13.text);
                Writeln(f,'      Valor: R$ '+formatcurr('0.00',strtocurr(edit12.text)));
            if edit14.Text <> '' then
            begin
                Writeln(f,' 06 - Vencimento: '+edit15.text);
                Writeln(f,'      Valor: R$ '+formatcurr('0.00',strtocurr(edit14.text)));
            if edit16.Text <> '' then
            begin
                Writeln(f,' 07 - Vencimento: '+edit17.text);
                Writeln(f,'      Valor: R$ '+formatcurr('0.00',strtocurr(edit17.text)));
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
end;     end;
procedure TFrmPrestacoes.Edit2Exit(Sender: TObject);
begin
    edit1.Text := formatcurr('0.00',strtocurr(edit1.Text) - strtocurr(edit2.Text));
end;

procedure TFrmPrestacoes.ComboBox1Exit(Sender: TObject);
begin
    if combobox1.Text >= '1' then
    begin
        edit4.Text := formatcurr('0.00', strtocurr(edit1.text) / strtoint(combobox1.text));
        FrmPrestacoes.Edit5.Text := datetostr(now + 30);
    end;

    if combobox1.Text >= '2' then
    begin
        edit6.Text := formatcurr('0.00', strtocurr(edit1.text) / strtoint(combobox1.text));
        FrmPrestacoes.Edit7.Text := datetostr(now + 60);
    end;

    if combobox1.Text >= '3' then
    begin
        edit8.Text := formatcurr('0.00', strtocurr(edit1.text) / strtoint(combobox1.text));
        FrmPrestacoes.Edit9.Text := datetostr(now + 90);
    end;

    if combobox1.Text >= '4' then
    begin
        edit10.Text := formatcurr('0.00', strtocurr(edit1.text) / strtoint(combobox1.text));
        FrmPrestacoes.Edit11.Text := datetostr(now + 120);
    end;

    if combobox1.Text >= '5' then
    begin
        edit12.Text := formatcurr('0.00', strtocurr(edit1.text) / strtoint(combobox1.text));
        FrmPrestacoes.Edit13.Text := datetostr(now + 150);
    end;
    if combobox1.Text >= '6' then
    begin
        edit14.Text := formatcurr('0.00', strtocurr(edit1.text) / strtoint(combobox1.text));
        FrmPrestacoes.Edit15.Text := datetostr(now + 180);
    end;
    if combobox1.Text >= '7' then
    begin
        edit16.Text := formatcurr('0.00', strtocurr(edit1.text) / strtoint(combobox1.text));
        FrmPrestacoes.Edit17.Text := datetostr(now + 210);
    end;

end;

procedure TFrmPrestacoes.FormShow(Sender: TObject);
begin
    combobox1.Text := '1';
end;

procedure TFrmPrestacoes.FormActivate(Sender: TObject);
begin
    edit3.Text := datetostr(now);
end;

end.
