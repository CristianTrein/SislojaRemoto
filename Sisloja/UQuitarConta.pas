unit UQuitarConta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, rxToolEdit, rxCurrEdit, MegaEditNumerico, ExtCtrls,
  XP_Form;

type
  TFrmQuitarConta = class(TForm)
    Label11: TLabel;
    Label12: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Panel1: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    dtsim: TDateEdit;
    vlsim: TCurrencyEdit;
    BitBtn4: TBitBtn;
    EdVencimento: TEdit;
    CheckQuitar: TCheckBox;
    CheckRecibo: TCheckBox;
    EdValorDevido: TMegaEditNumerico;
    EdValorJuros: TMegaEditNumerico;
    EdData: TDateEdit;
    edparcial: TEdit;
    edobs: TEdit;
    BitBtn3: TBitBtn;
    modopgto: TComboBox;
    Checkparcial: TCheckBox;
    edvalorpago: TCurrencyEdit;
    ComboBox1: TComboBox;
    edvlcalculado: TCurrencyEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    Function CALCULA(dt1:real;dt2:real;valu:currency): currency;
    Function EXPO( x:real;pm:real ) :real;
    procedure BitBtn3Click(Sender: TObject);
    procedure CheckQuitarClick(Sender: TObject);
    procedure CheckparcialClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure edvalorpagoExit(Sender: TObject);
    procedure CheckparcialExit(Sender: TObject);
  private
    { Private declarations }
  public
    pode:boolean;
  end;

var
  FrmQuitarConta: TFrmQuitarConta;

implementation

uses DM, UPrincipal, URecibo, Ufuncoes, Urelrecibo1, Urelrecibo2,
  UBematech_4200;

{$R *.DFM}

procedure TFrmQuitarConta.BitBtn2Click(Sender: TObject);
begin
    frmquitarconta.Close;
end;

procedure TFrmQuitarConta.FormActivate(Sender: TObject);
var
     vjuros : real;
     vtempo : real;
     vcalcu : real;
     y:real;
     carencia:integer;
     x:real;
begin
    ibdm.IBQParam.open;
    carencia := ibdm.IBQParamCARENCIA.AsInteger;
    modopgto.Items.Clear;
    with ibdm.IBTmpgto do
    begin
        Open;
        first;
        while not eof do
        begin
            modopgto.Items.Add(ibdm.IBTmpgtoCODIGO.asstring+'#'+ibdm.IBTmpgtoDESCRICAO.asstring);
            next;
        end;
    end;
    combobox1.Items.Clear;
    with ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select nome,codigo from usuarios ');
        sql.Add('order by nome');
        open;
        while not eof do
        begin
            combobox1.Items.Add( Fields[0].asstring  + '#' + Fields[1].AsString );
            next;
        end;
    end;
    with ibdm.consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select max(pagamento) from crecebidas');
        sql.Add('Where documento = :p0 and parcela = :p1');
        params[0].AsString := ibdm.IBQCreceberDOCUMENTO.Value;
        params[1].AsString := ibdm.IBQCreceberPARCELA.AsString;
        open;
        if int(fields[0].AsDatetime) > 0 then
            edvencimento.Text := datetostr(Fields[0].asdatetime);
    end;
    y:=1;
    if (EdData.Date - strtodate(EdVencimento.Text)) > carencia then
    begin
        vtempo := (EdData.Date - strtodate(EdVencimento.Text))   ;
        x:=  1+ (ibdm.IBQParamJURMO.AsCurrency/3000);
        y:=Expo(x,Trunc(vtempo));
    end;
    if (EdData.Date - strtodate(EdVencimento.Text)) < 0 then
    begin
        vtempo := (EdData.Date - strtodate(EdVencimento.Text)) ;
        x:=  1+ (ibdm.IBQParamDESCPR.AsCurrency/3000);
        y:=Expo(x,Trunc((vtempo-(vtempo*2))));
        y := 1/ y;
    end;

    edvalorpago.Value := edvalordevido.value * y;
    edvlcalculado.Value := edvalorpago.Value;
    edvalorjuros.Value := edvalorpago.Value - edvalordevido.Value;

    // Verificar se existe conta anterior e verificar limite de dias p/Bloqueio de recebimento



  {  if strtodate(EdVencimento.Text) < EdData.Date then
    begin
        vtempo := eddata.Date - Strtodate(edvencimento.Text);
        ibDM.ibqparam.Close;
        ibDM.ibqparam.open;
        vjuros := (ibDM.IBQParamJURMO.ascurrency*vtempo)/100;
        vcalcu := edvalordevido.AsCurrency * (1+vjuros);

        EdValorJuros.AsCurrency := Calcula(strtodate(edvencimento.text),int(now),edvalordevido.value);
//        EdValorJuros.AsCurrency := vcalcu;
        EdValorPago.AsCurrency := EdValorJuros.AsCurrency;
    end;    }
    edvalorpago.SetFocus;
end;

procedure TFrmQuitarConta.BitBtn1Click(Sender: TObject);
var
   vdoc : string;
   vhist : string;
   vvenc : real;
   vvalorpago : currency;
   vvalorDev : currency;
   vparcela : string;
   vcliente : integer;
   vtotal : currency;
   vdevido : currency;
   vcod : integer;
   vresult1 : currency;
   vresult2 : currency;
   vcont : integer;
   vcont1 : integer;
   vcontrole : integer;
   f : textfile;
   ctp:integer;
   vpos:integer;
   vmodo:integer;
   vopera:integer;
   vf:boolean;
   vok:Boolean;
   texto,vextenso:string;
   textolog:string;
   iretorno:Integer;
   impressora:string;
   vnadic:string;
begin
   BitBtn1.Enabled:=False;
   textolog := 'Iniciando pagamento de conta: '+ibdm.IBQCreceberDOCUMENTO.AsString + ' / Cliente: '+ibdm.IBQCreceberHISTORICO.AsString;
   LOG(textolog);

       IBDM.IBQParam.Open;
    if IBDM.IBQParamchkprt1.AsInteger = 1  then
    begin
      if not GetStatus(vok) then
        ShowMessage('Veirifique a impressora antes de prosseguir !!!');
        textolog := 'Impressora desligada ou c/ problema';
        LOG(textolog);


    end;


 {
    iretorno:= Le_status();
    While (iretorno<24) do
    begin
      textolog := 'Impressora desligada ';
      LOG(textolog);
      IF frmprincipal.voz=1 then
        MSgvoz('Impressora desligada, verifique')
      else
        Showmessage('Verifique a Impressora!');
      iretorno:= Le_status();
    end;
    iRetorno := VerificaPapelPresenter();
    While (iretorno <> 1) do
    begin
      ShowMessage('Verifique o papel da impressora');
      iRetorno := VerificaPapelPresenter();
    end;    }
{    if IBDM.IBQParamchkprt2.AsInteger=1 then
    begin
      While not PrinterOnline() do
      begin
        textolog := 'Impressora desligada ';
        LOG(textolog);

        Showmessage('Verifique a Impressora!');
      end;
    end;  }
    if (checkquitar.Checked = False) and (checkparcial.Checked = False) then
        Showmessage('Faltou definir se é pagamento parcial ou total !')
       else
     begin
        textolog := 'Pagamento doc nr. '+ ibdm.IBQCreceberDOCUMENTO.AsString + ' / ' +ibdm.IBQCreceberPARCELA.value + ' / ';
        vok:=True;
        vmodo:= 0;
        vpos:= POS('#',modopgto.Text);
        if vpos > 0 then
        begin
            vmodo := strtoint(Copy(modopgto.text,1,vpos-1));
        end;
        vpos := POS('#',combobox1.text);
        vf:=True;
        textolog := textolog + modopgto.text +  ' / ';
        if vpos > 0 then
            vopera := Strtoint(Copy(Combobox1.text,vpos+1,2))
            else
            begin
                Showmessage('Faltou indicar o operador !!!!');
                textolog := textolog + ' erro não indicou operador!';
                LOG(textolog);
                vf:=false;
                vok:=False;
                Combobox1.SetFocus;
            end;
        vcod := ibdm.IBQCreceberCONTROLE.AsInteger;
        if pode=False then
        begin
            vf:=False;
            Showmessage('Débito anterior com nr de dias maior que o permitido !');
            textolog := textolog + ' débito anterior com nr de dias maior q permitido';
            LOG(textolog);
        end;
        if edvalorpago.Value = 0 then
          begin
              ShowMessage('Valor Pago não Informado!!!');
              textolog := textolog + '  Valor pago não informado !';
              LOG(textolog);
              vok:=False;
              edvalorpago.SetFocus;
          end
         else
          if vf = True then
          begin

             vdoc := ibdm.IBQCreceberDOCUMENTO.AsString;
             vhist := ibdm.IBQCreceberHISTORICO.AsString;
             vvenc := ibdm.IBQCreceberVENCIMENTO.AsDateTime;
             vvalorPago := edvalorpago.Value;
             vvalordev := edvalordevido.AsCurrency;
             vparcela := ibdm.IBQCreceberPARCELA.AsString;
             vcliente := ibdm.IBQCreceberCLIENTE.AsInteger;
             vcontrole := ibdm.IBQCreceberCONTROLE.AsInteger;
             
             vtotal := ibdm.IBQCreceberTOTALPAGO.AsCurrency + edvalorpago.value;
             vdevido := edvlcalculado.value  - edvalorpago.value;
           //  if edvalorpago.Value < edvlcalculado.Value then
                ctp := ibdm.IBQCreceberPARCIAL.AsInteger +1;
             if ((ctp > 2) or (edvalorpago.Value = edvlcalculado.Value )) and (checkparcial.Checked=True) then
             begin
                vok:=False;
                if ctp > 2 then
                    Showmessage('Quantidade de parciais para esta prestação está acima do permitido !')
                   else
                    Showmessage('Valor pago igual ao calculado, não pode ser parcial !') ;
                    textolog := textolog + ' quantidade de parciais acima do permitido ou marcado parcial para mesmo valor do calculado';
                    LOG(textolog);
             end
             else
             begin
             with ibdm.Cheka do
             begin
                 close;
                 sql.Clear;
                 sql.Add('update creceber');
                 sql.Add('set totalpago=:p0,valordevido=:p1,parcial=:p2');
                 sql.Add('where controle =:p3');
                 params[0].AsCurrency := vtotal;
                 params[1].AsCurrency := vdevido;
                 params[2].AsInteger := ctp;
                 params[3].AsInteger := vcod;
                 prepare;
                 ExecQuery;
             end;
             commitwork;
             textolog := textolog + ' atualizou contas a receber, ';
             with ibdm.Consulta do
             begin
                close;
                sql.Clear;
                sql.Add('select max(controle) from crecebidas');
                prepare;
                open;
                vcont := Fields[0].AsInteger + 1;
             end;
             textolog := textolog + ' Vl pago '+edvalorpago.Text + '  ';
             if checkquitar.Checked = true then
                textolog := textolog + 'quitar, '
                else
                textolog := textolog + ' Parcial, ';
             if (edvalorpago.Value > 0) or (checkquitar.Checked = true) then
             begin
                 with ibdm.Grava do
                 begin
                    close;
                    sql.Clear;
                    sql.Add('Insert into Crecebidas');
                    sql.Add('(controle,documento,historico,vencimento,pagamento,parcela,cliente,valor,pago,mpgto,obs,contdoc)');
                    sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11)');
                    params[0].AsInteger := vcont;
                    params[1].asstring := vdoc;
                    if checkparcial.Checked = true then
                    params[2].AsString := 'REC. PARC.- '+vparcela+'-'+vhist
                    else
                    params[2].AsString := 'REC - '+vparcela+'-'+vhist;
                    params[3].AsDateTime := vvenc;
                    params[4].AsDateTime := now;
                    params[5].AsString := vparcela;
                    params[6].AsInteger := vcliente;
                    params[7].AsCurrency := vvalordev;
                    params[8].AsCurrency := vvalorpago;
                    params[9].AsInteger := vmodo;
                    params[10].AsString := edobs.Text;
                    params[11].AsInteger := vcontrole;
                    prepare;
                    ExecQuery;
                    commitwork;
                 end;
                 textolog := textolog + ' gravou c.recebidas, ';
                 with ibdm.Consulta do
                 begin
                    close;
                    sql.Clear;
                    sql.Add('select max(controle) from caixa');
                    prepare;
                    open;
                    vcont1 := Fields[0].AsInteger + 1;
                 end;

                 with ibdm.Grava do
                 begin
                    close;
                    sql.Clear;
                    sql.Add('Insert into caixa');
                    sql.Add('(controle,documento,historico,data,valor,operacao,transacao,operador,mpgto,parcela)');
                    sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9)');
                    params[0].AsInteger := vcont1;
                    params[1].asstring := vdoc;
                    if checkparcial.Checked = true then
                    params[2].AsString := 'REC. PARC.- '+vparcela+'-'+vhist
                    else
                    params[2].AsString := 'REC. - '+vparcela+'-'+vhist;
                    params[3].AsDatetime := now;
                    if checkparcial.Checked = True then
                        if edvalorpago.Value > vvalorDev then
                          Params[4].AsCurrency := vvalordev
                        else
                          params[4].AsCurrency := edvalorpago.Value
                       else
                        params[4].AsCurrency := vvalordev;
                    params[5].AsString := 'C';
                    params[6].AsInteger := 3;
                    params[7].AsInteger := vopera  ;//frmprincipal.voperador;
                    params[8].AsInteger := vmodo;
                    params[9].AsString := vparcela;
                    prepare;
                    ExecQuery;
                    commitwork;
                 end;
                 textolog := textolog + ' gravou caixa, ' ;
             end;

             //Juros p/ o caixa
             if edvalorpago.Value > edvalordevido.Value then
             begin
                 with ibdm.Consulta do
                 begin
                    close;
                    sql.Clear;
                    sql.Add('select max(controle) from caixa');
                    prepare;
                    open;
                    vcont1 := Fields[0].AsInteger + 1;
                 end;

                 vresult1 := edvalorpago.Value - edvalordevido.Value;

                 if vresult1 > 0 then
                 with ibdm.Grava do
                 begin
                    close;
                    sql.Clear;
                    sql.Add('Insert into caixa');
                    sql.Add('(controle,documento,historico,data,valor,operacao,transacao,operador,mpgto,parcela)');
                    sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9)');
                    params[0].AsInteger := vcont1;
                    params[1].asstring := vdoc;
                    params[2].AsString := 'REC. de JUROS - '+vparcela+'-'+ vhist;
                    params[3].AsDatetime := now;
                    params[4].AsCurrency := vresult1;
                    params[5].AsString := 'C';
                    params[6].AsInteger := 4;
                    params[7].AsInteger := vopera; // frmprincipal.voperador;
                    params[8].AsInteger := vmodo;
                    params[9].AsString := vparcela;
                    prepare;
                    ExecQuery;
                    commitwork;
                 end;
                 textolog := textolog + ' gravou juros caixa, ';
             end;

             //Desconto p/ o Caixa
             if (edvalorpago.Value < edvalordevido.Value) and (checkquitar.Checked = true) then
             begin
                 with ibdm.Consulta do
                 begin
                    close;
                    sql.Clear;
                    sql.Add('select max(controle) from caixa');
                    prepare;
                    open;
                    vcont1 := Fields[0].AsInteger + 1;
                 end;
                 vresult2 := edvalordevido.Value - edvalorpago.Value;
                 if vresult2 > 0 then
                 with ibdm.Grava do
                 begin
                    close;
                    sql.Clear;
                    sql.Add('Insert into caixa');
                    sql.Add('(controle,documento,historico,data,valor,operacao,transacao,operador,mpgto,parcela)');
                    sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9)');
                    params[0].AsInteger := vcont1;
                    params[1].asstring := vdoc;
                    params[2].AsString := 'DESC. CONC. - '+vparcela+'-'+ vhist;
                    params[3].AsDatetime := now;
                    params[4].AsCurrency := vresult2;
                    params[5].AsString := 'D';
                    params[6].AsInteger := 5;
                    params[7].AsInteger := vopera; //frmprincipal.voperador;
                    params[8].AsInteger := vmodo;
                    params[9].AsString := vparcela;
                    prepare;
                    ExecQuery;
                    commitwork;
                 end;
                 textolog := textolog + ' gravou desc.caixa, '     ;
             end;
             if checkquitar.Checked = True then
             with ibdm.Grava do
                 begin
                    close;
                    sql.Clear;
                    sql.Add('Update comissoes');
                    sql.Add('set liberado = :p0');
                    sql.Add('Where  nota=:p1 and parcela=:p2');
                    params[0].Asdatetime := now;
                    params[1].asstring := vdoc;
                    params[2].AsString := vparcela;
                    prepare;
                    ExecQuery;
                    commitwork;
                 end;
                 textolog := textolog + ' liberou comissao, ' ;
             if checkrecibo.Checked = true then
             begin
                textolog := textolog + ' emitiu recibo !' ;
                ibdm.IBQParam.open;
                if ibdm.IBQParamTIMP.asinteger = 1 then
                begin

                    assignFile(f,'c:\ti\recibo.txt');
                    rewrite(f);
                    writeln(f,'');
                    writeln(f,chr(27)+chr(69)+'            CLARISSE CONFECÇÕES'+chr(27)+chr(70));
                    writeln(f,chr(27)+chr(69)+' Rua: 7 de setembro, '+chr(27)+chr(70));
                    writeln(f,chr(27)+chr(69)+' Panambi/RS   Fone:(55)3375-4329'+chr(27)+chr(70));
                    writeln(f,chr(27)+chr(69)+'*********************************'+chr(27)+chr(70));
                    Writeln(f,'');
                    Writeln(f,'');
                    Writeln(f,chr(27)+chr(69)+'            RECIBO'+chr(27)+chr(70));
                    Writeln(f,'');
                    Writeln(f,'');
                    Writeln(f,'Declaramos para devidos fins que');
                    Writeln(f,'recebemos o valor abaixo');
                    Writeln(f,'relacionado pelo qual passamos o');
                    Writeln(f,'presente recibo.');
                    Writeln(f,'');
                    Writeln(f,'');
                    Writeln(f,chr(27)+chr(69)+'  Cliente: '+vhist+chr(27)+chr(70));
        //            Writeln(f,'  Vendedora: '+FrmNotaVenda.Label7.Caption+' - '+FrmNotaVenda.combobox2.text);
                    Writeln(f,'   Documento: '+vdoc);
                    Writeln(f,'    Data: '+datetostr(now));
                    Writeln(f,'     Hora: '+timetostr(now));
                    Writeln(f,'');
                    Writeln(f,'');
                    Writeln(f,'Valor Devido R$: '+formatcurr('0.00',edvalordevido.Value));
                     if vresult1 <> 0 then
                        Writeln(f,'Juros R$: '+formatcurr('0.00',vresult1));  //juros
                     if vresult2 <> 0 then
                        Writeln(f,'Desconto R$: '+formatcurr('0.00',vresult2));  //desconto
                    Writeln(f,'Total Pago R$: '+formatcurr('0.00',edvalorpago.value));
                    Writeln(f,'');
                    Writeln(f,'');
                    Writeln(f,'');
                    Writeln(f,'');
                    Writeln(f,'Rubrica:____________');
                    Writeln(f,chr(27)+chr(69)+''+chr(27)+chr(70));
                  {  Writeln(f,'---------------------------------');
                    Writeln(f,'|  Obrigado pela preferencia,   |');
                    Writeln(f,'|        volte sempre.          |');
                    Writeln(f,'---------------------------------');
                    Writeln(f,chr(27)+chr(69)+''+chr(27)+chr(70));
                    Writeln(f,'TECNOINFO Sistemas.');
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
                    Writeln(f,''); }
                    Writeln(f,chr(27)+chr(80));
                    closeFile(f);
                end
                else
                begin

                    with ibdm.consulta do
                    begin
                        Close;
                        sql.Clear;
                        sql.Add('Select historico nome, documento,parcela from creceber');
                        sql.Add('Where controle = :p0');
                        params[0].asinteger := vcontrole;
                        open;
                    end;
                    RelRecibo2 := TRelRecibo2.create(Application);
                 //   MudaTamPapel(DMPAPER_USER, 215, 140);
                    Relrecibo2.lbnome.Caption := ibdm.IBQParamUSUARIO.AsString;
                    Relrecibo2.lbcnpj.Caption := 'CNPJ: '+ibdm.IBQParamCNPJ.AsString;
                    RelRecibo2.QRLabel2.Caption := 'O valor de:  R$' + Formatcurr('0.00',edvalorpago.value);
                    vextenso := Extenso(edvalorpago.value);
                    if Length(vextenso) > 43 then
                    begin
                      RelRecibo2.QRLabel5.Caption:=Copy(vextenso,1,43);
                      RelRecibo2.qrlbl1.Caption:=Copy(vextenso,44,40);
                    end
                    else
                    RelRecibo2.QRLabel5.Caption:=vextenso;
                    Relrecibo2.LBCLIENTE.Caption := vhist;
                    if checkparcial.Checked = True then
                        texto := 'ref. pagto parcial da parc. ' + ibdm.consulta.fieldByname('parcela').asstring +  ' do documento'
                       else
                        texto := 'ref. pagto da parcela ' + ibdm.consulta.fieldByname('parcela').asstring  + ' do documento';
                    Relrecibo2.QRLabel6.caption:= texto ;
          impressora:=Getdefaultprintername();
          Setdefaultprinter('MP-4200');


                    RelRecibo2.QuickRep1.Print;
                    RelRecibo2.Destroy;

   //       impressora:=Getdefaultprintername();
          Setdefaultprinter(impressora);



                end;
            end;
            end;
            if (checkquitar.Checked = true) then
             begin
                with ibdm.Deleta do
                begin
                    close;
                    sql.Clear;
                    sql.Add('delete from creceber');
                    sql.Add('where controle = :p0');
                    params[0].AsInteger := vcontrole;
                    prepare;
                    execquery;
                end;
             end;

          end;
          CommitWork;
          if (vf = True) and (vok=true) then
          begin
           ibdm.IBQCaixa.Close;
           ibdm.IBQCaixa.Open;
           ibdm.IBQCrecebidas.Close;
           ibdm.IBQCrecebidas.Open;
           ibdm.IBQCreceber.Close;
           ibdm.IBQCreceber.Open;
           ShowMessage('Conta Recebida com SUCESSO!!!');
           Close;
          end;
    end;
    Log(textolog);

end;

procedure TFrmQuitarConta.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

Function TFrmQuitarConta.CALCULA(dt1:real;dt2:real;valu:currency): currency;
    var
    y:real;
    x:real;
    atrazo:real;
    adiant:real;
    carencia:integer;
    jurmo:currency;
    descpr:currency;
    cval:currency;
begin
    y:=1;
    IBDM.IBQParam.OPEN;
    carencia := ibdm.ibqparamcarencia.asinteger;
    jurmo := ibdm.ibqparamjurmo.ascurrency;
    descpr := ibdm.ibqparamdescpr.ascurrency;
    if dt1 - dt2 > carencia  then
    begin
        atrazo := dt1 - dt2;
        x:=(1+(jurmo/3000));
        y:= Expo( x,atrazo );
    end
    else
    if dt1 - dt2 < 0  then
    begin
        adiant := dt2 - dt1 ;
        x:=(1+(descpr/3000)) ;
        y:= Expo( x,adiant ) ;
        y:= 1/y ;
    end;
    cval:=valu*y;
end;

Function TFrmQuitarConta.EXPO( x:real;pm:real ) :real;
    var
    y:real;
    w:integer;
    ct:integer;
begin
    y:=x;
    ct:=Trunc(pm);
    For w:=1 to ct do
    if w=1  then
       y:=x*1
      else
       y:=y*x ;
    Result:=y;
end;
procedure TFrmQuitarConta.BitBtn3Click(Sender: TObject);
    var
     vjuros : real;
     vtempo : real;
     vcalcu : real;
     y:real;
     carencia:integer;
     x:real;
begin
    ibdm.IBQParam.open;
    carencia := ibdm.IBQParamCARENCIA.AsInteger;
    y:=1;
    if (dtsim.Date - strtodate(EdVencimento.Text)) > carencia then
    begin
        vtempo := (dtsim.Date - strtodate(EdVencimento.Text))   ;
        x:=  1+ (ibdm.IBQParamJURMO.AsCurrency/3000);
        y:=Expo(x,Trunc(vtempo));
    end;
    if (dtsim.Date - strtodate(EdVencimento.Text)) < 0 then
    begin
        vtempo := (dtsim.Date - strtodate(EdVencimento.Text)) ;
        x:=  1+ (ibdm.IBQParamDESCPR.AsCurrency/3000);
        y:=Expo(x,Trunc((vtempo-(vtempo*2))));
        y := 1/ y;
    end;

    vlsim.Value := edvalordevido.value * y;
    

    vlsim.SetFocus;
end;

procedure TFrmQuitarConta.CheckQuitarClick(Sender: TObject);
begin
    if checkquitar.Checked = true then
        checkparcial.Checked := False;
end;

procedure TFrmQuitarConta.CheckparcialClick(Sender: TObject);
begin
        if checkparcial.Checked = true then
        checkquitar.Checked := False;
end;

procedure TFrmQuitarConta.BitBtn4Click(Sender: TObject);
begin
    Showmessage('Em testes !!');
end;

procedure TFrmQuitarConta.edvalorpagoExit(Sender: TObject);
  var
    vperc:currency;

begin
  IF edvalorpago.Value > edvlcalculado.Value then
  begin
    ibdm.IBQParam.Open;
    vperc:=ibdm.IBQParamPERCMAX.AsCurrency;
    if edvalorpago.Value > ( edvlcalculado.Value * ((vperc /100)+1)) then
      Showmessage('Atenção, valor pago maior que o permitido conf. calculado+tolerânica !');


  end;

  IF edvlcalculado.Value > edvalorpago.Value then
    IF checkparcial.Checked=False then
      Showmessage('Atenção, valor pago menor que calculado, é PARCIAL ?');
end;

procedure TFrmQuitarConta.CheckparcialExit(Sender: TObject);
begin
  IF edvlcalculado.Value > edvalorpago.Value then
    IF checkparcial.Checked=False then
      Showmessage('Atenção, valor pago menor que calculado, é PARCIAL ?');

end;

end.
