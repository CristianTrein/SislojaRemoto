unit Uvariosmodos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, XP_Form, StdCtrls, Buttons, Mask, rxCurrEdit, rxToolEdit;

type
  TFrm_Pgmodos = class(TForm)
    BitBtn2: TBitBtn;
    Label1: TLabel;
    eddata: TDateEdit;
    edvalorpago: TCurrencyEdit;
    Combobox1: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    edvlavista: TCurrencyEdit;
    edsaldoavista: TCurrencyEdit;
    Label5: TLabel;
    Label6: TLabel;
    datapgto: TDateEdit;
    dmedia: TCurrencyEdit;
    Label7: TLabel;
    BitBtn3: TBitBtn;
    Memo1: TMemo;
    Label8: TLabel;
    vlcheques: TCurrencyEdit;
    ValorPago: TCurrencyEdit;
    Label3: TLabel;
    BitBtn4: TBitBtn;
    modopgto: TComboBox;
    Label10: TLabel;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Label9: TLabel;
    d17: TMaskEdit;
    d16: TMaskEdit;
    d15: TMaskEdit;
    d14: TMaskEdit;
    d13: TMaskEdit;
    d18: TMaskEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    d1: TMaskEdit;
    d2: TMaskEdit;
    d3: TMaskEdit;
    d4: TMaskEdit;
    d5: TMaskEdit;
    d6: TMaskEdit;
    d7: TMaskEdit;
    d8: TMaskEdit;
    d9: TMaskEdit;
    d10: TMaskEdit;
    d11: TMaskEdit;
    d12: TMaskEdit;
    Button2: TButton;
    Button1: TButton;
    edtnrvz: TEdit;
    Label11: TLabel;
    Button21: TButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edvlavistaExit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure d1Exit(Sender: TObject);
    procedure d2Exit(Sender: TObject);
    procedure d3Exit(Sender: TObject);
    procedure d4Exit(Sender: TObject);
    procedure d5Exit(Sender: TObject);
    procedure d6Exit(Sender: TObject);
    procedure d7Exit(Sender: TObject);
    procedure d8Exit(Sender: TObject);
    procedure d9Exit(Sender: TObject);
    procedure d10Exit(Sender: TObject);
    procedure d11Exit(Sender: TObject);
    procedure d12Exit(Sender: TObject);
    procedure d13Exit(Sender: TObject);
    procedure d14Exit(Sender: TObject);
    procedure d15Exit(Sender: TObject);
    procedure d16Exit(Sender: TObject);
    procedure d17Exit(Sender: TObject);
    procedure d18Exit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ValorPagoExit(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
  private
    { Private declarations }
  public
   vezes:integer;
   vmodoch:integer;
    { Public declarations }
  end;

var
  Frm_Pgmodos: TFrm_Pgmodos;

implementation

uses Upagmult, DM, UPrincipal, Urelrecibo1, Ufuncoes, Urelrecibo2,
  UBematech_4200;

{$R *.dfm}

procedure TFrm_Pgmodos.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_Pgmodos.BitBtn1Click(Sender: TObject);
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
   vtempo: real;
   f : textfile;
   ctp:integer;
   x:real;
   vpos:integer;
   vmodo:integer;
   vopera:integer;
   vf:boolean;
   vok:Boolean;
   texto:string;
   textolog:string;
   qcontrole:integer;
   y:real;
   carencia:integer;
   vvdocs:WideString;
   vvdocs1,vextenso:string;
   vezes:integer;
   vltot:currency;
   vluni:currency;
   vldev:currency;
   vence:real;
   vx:integer;
   iretorno:Integer;
   impressora:string;
begin

    IBDM.IBQParam.Open;
    if IBDM.IBQParamchkprt1.AsInteger = 1  then
    begin
      if not GetStatus(vok) then
        ShowMessage('Veirifique a impressora antes de prosseguir !!!');
        textolog := 'Impressora desligada ou c/ problema';
        LOG(textolog);


    end;


{      iretorno:= Le_status();
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
      end;
                }

        ibdm.IBQParam.open;
        carencia := ibdm.IBQParamCARENCIA.AsInteger;
        Bitbtn1.Enabled := False;
        textolog := 'Pagamento doc mult. / '+IBDM.IBTTemprecHISTORICO.AsString ;
        vok:=True;
        vmodo:= 0;
        vpos:= POS('#',modopgto.Text);
        if vpos > 0 then
        begin
            vmodo := strtoint(Copy(modopgto.text,1,vpos-1));
        end;
        vpos := POS('#',combobox1.text);
        vf:=True;
        textolog := textolog + modopgto.text +  ' / ' +Combobox1.Text;
        if vpos > 0 then
            vopera := Strtoint(Copy(Combobox1.text,vpos+1,2));

        if valorpago.Value = 0 then
          begin
              ShowMessage('Valor Pago não Informado!!!');
              textolog := textolog + '  Valor pago não informado !';
              LOG(textolog);
              vok:=False;
              valorpago.SetFocus;
          end
         else
          if vf = True then
          begin
            vvdocs := ''   ;
            vvdocs1:= ''   ;
            vezes := 1;
            vltot:=0;
            CommitWork;
            Log(textolog);
                 textolog:='Na data de '+eddata.Text+ ' Devia o valor de '+edvalorpago.Text;
                 Log(textolog);
                 textolog:='Pagou a vista '+edvlavista.Text+ ' / Saldo a vista '+edsaldoavista.Text + ' / Valor Cheques '+vlcheques.Text;
                 Log(textolog);
                 textolog := 'Valor da Negociação '+ ValorPago.Text;
                 Log(textolog);
            textolog:='';
            With ibdm.IBTTemprec do
            begin
             Close;
             Open;
             First;
             While not eof do
             begin
                 if ibdm.IBTTemprecM.asstring = 'X' then
                   begin
                      vence := int(FieldByname('vencimento').asdatetime);
                      y:=1;
                      if (EdData.Date - vence) > carencia then
                      begin
                          vtempo := (EdData.Date - vence)   ;
                          x:=  1+ (ibdm.IBQParamJURMO.AsCurrency/3000);
                          y:=Expo(x,Trunc(vtempo));
                      end;
                      if (EdData.Date - vence) < 0 then
                      begin
                          vtempo := (EdData.Date - vence) ;
                          x:=  1+ (ibdm.IBQParamDESCPR.AsCurrency/3000);
                          y:=Expo(x,Trunc((vtempo-(vtempo*2))));
                          y := 1/ y;
                      end;
                      vldev := vldev + FieldByname('valordevido').ascurrency;
                      vltot := vltot + FieldByname('valordevido').ascurrency * y;
                   end;
                 next;
             end;
            end;
            With ibdm.IBTTemprec do
            begin
             Close;
             Open;
             First;
             While not eof do
             begin
                 if ibdm.IBTTemprecM.asstring = 'X' then
                   begin
                      vence := int(FieldByname('vencimento').asdatetime);
                      y:=1;
                      if (EdData.Date - vence) > carencia then
                      begin
                          vtempo := (EdData.Date - vence)   ;
                          x:=  1+ (ibdm.IBQParamJURMO.AsCurrency/3000);
                          y:=Expo(x,Trunc(vtempo));
                      end;
                      if (EdData.Date - vence) < 0 then
                      begin
                          vtempo := (EdData.Date - vence) ;
                          x:=  1+ (ibdm.IBQParamDESCPR.AsCurrency/3000);
                          y:=Expo(x,Trunc((vtempo-(vtempo*2))));
                          y := 1/ y;
                      end;
                      vldev := vldev + FieldByname('valordevido').ascurrency;
                      vluni :=  (FieldByname('valordevido').ascurrency * y) / vltot;
                      Edit;
                      ibdm.IBTTemprecPERC.AsCurrency := vluni;
                      Post;
                   end;
                 next;
             end;
            end;
            commitwork;

            With ibdm.IBTTemprec do
            begin
             Close;
             Open;
             First;
             vx:=1;
             While not eof do
             begin
                 if ibdm.IBTTemprecM.asstring = 'X' then
                 begin
                     qcontrole := ibdm.IBTTemprecCONTROLE.AsInteger;
                     ibdm.IBQCreceber.Close;
                     ibdm.IBQCreceber.Open;
                     ibdm.IBQCreceber.First;
                     if ibdm.IBQCreceber.Locate('controle',qcontrole,[]) then
                     begin
                         vdoc := ibdm.IBQCreceberDOCUMENTO.AsString;
                         vhist := ibdm.IBQCreceberHISTORICO.AsString;
                         vvenc := ibdm.IBQCreceberVENCIMENTO.AsDateTime;
                         vvalorPago := valorpago.Value;
                         vvalordev := ibdm.IBQCreceberVALORDEVIDO.AsCurrency;  //edvalordevido.AsCurrency;
                         vparcela := ibdm.IBQCreceberPARCELA.AsString;
                         vcliente := ibdm.IBQCreceberCLIENTE.AsInteger;
                         vcontrole := ibdm.IBQCreceberCONTROLE.AsInteger;
                         vvalorPago := valorpago.Value*ibdm.IBTTemprecPERC.AsCurrency ;
                         if vx<=3 then
                            vvdocs := vvdocs + vdoc + '-'+ vparcela+ ',    '
                          else
                           begin
                             vx:=1;
                             vvdocs:=vvdocs +#13+#10 + vdoc + '-'+ vparcela+ ',    ';
                     //        Showmessage(vvdocs);
                           end;
                         inc(vx);
                         with ibdm.Cheka do
                         begin
                             close;
                             sql.Clear;
                             sql.Add('update creceber');
                             sql.Add('set totalpago=:p0,valordevido=:p1,parcial=:p2');
                             sql.Add('where controle =:p3');
                             params[0].AsCurrency := vvalorPago;
                             params[1].AsCurrency := 0;
                             params[2].AsInteger := ctp;
                             params[3].AsInteger := qcontrole;
                             prepare;
                             ExecQuery;
                         end;
                      //   commitwork;

                         textolog := 'Doc '+ vdoc+ ' atualizou contas a receber, ';
                         with ibdm.Consulta do
                         begin
                            close;
                            sql.Clear;
                            sql.Add('select max(controle) from crecebidas');
                            prepare;
                            open;
                            vcont := Fields[0].AsInteger + 1;
                         end;
                         textolog := textolog + ' Vl pago '+FormatCurr('0.00',vvalorPago) + '  ';
                            textolog := textolog + 'quitar, ' ;
                         if (vvalorPago > 0) then
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
                                params[2].AsString := 'REC - '+vparcela+'-'+vhist;
                                params[3].AsDateTime := vvenc;
                                params[4].AsDatetime := now;
                                params[5].AsString := vparcela;
                                params[6].AsInteger := vcliente;
                                params[7].AsCurrency := vvalordev;
                                params[8].AsCurrency := vvalorPago;
                                params[9].AsInteger := vmodoch;
                                params[10].AsString := '';
                                params[11].AsInteger := vcontrole;
                                prepare;
                                ExecQuery;
                        //        commitwork;
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

                                params[2].AsString := 'REC. - '+vparcela+'-'+vhist;
                                params[3].AsDatetime := now;
                                params[4].AsCurrency := vvalordev;
                                params[5].AsString := 'C';
                                params[6].AsInteger := 3;
                                params[7].AsInteger := vopera  ;//frmprincipal.voperador;
                                params[8].AsInteger := vmodoch;
                                params[9].AsString := vparcela;
                                prepare;
                                ExecQuery;
                          //      commitwork;
                             end;
                             textolog := textolog + ' gravou caixa, ' ;
                         end;

                         if edvlavista.Value > 0 then
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

                             with ibdm.Grava do
                             begin
                                close;
                                sql.Clear;
                                sql.Add('Insert into caixa');
                                sql.Add('(controle,documento,historico,data,valor,operacao,transacao,operador,mpgto,parcela)');
                                sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9)');
                                params[0].AsInteger := vcont1;
                                params[1].asstring := vdoc;

                                params[2].AsString := 'REC.AV - '+vparcela+'-'+vhist;
                                params[3].AsDatetime := now;
                                params[4].AsCurrency := edvlavista.Value;
                                params[5].AsString := 'C';
                                params[6].AsInteger := 3;
                                params[7].AsInteger := vopera  ;//frmprincipal.voperador;
                                params[8].AsInteger := vmodo;
                                params[9].AsString := vparcela;
                                prepare;
                                ExecQuery;
                            //    commitwork;
                             end;
                             textolog := textolog + ' gravou a vista no caixa, ' ;
                              edvlavista.Value := 0;
                         end;




                         //Juros p/ o caixa
                         if vvalorPago > vvalordev then
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

                             vresult1 := vvalorPago - vvalordev;

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
                                params[8].AsInteger := vmodoch;
                                params[9].AsString := vparcela;
                                prepare;
                                ExecQuery;
                              //  commitwork;
                             end;
                             textolog := textolog + ' gravou juros caixa, ';
                         end;

                         //Desconto p/ o Caixa
                         if (vvalorPago < vvalordev)  then
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
                             vresult2 := vvalordev - vvalorPago;
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
                                params[8].AsInteger := vmodoch;
                                params[9].AsString := vparcela;
                                prepare;
                                ExecQuery;
                           //     commitwork;
                             end;
                             textolog := textolog + ' gravou desc.caixa, '     ;
                         end;

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
                         //       commitwork;
                             end;
                             textolog := textolog + ' liberou comissao, ' ;
                                                      Log(textolog);
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

                            end
                           else
                            Showmessage('Não achei conta '+ibdm.IBTTemprecDOCUMENTO.asstring+'-'+ibdm.IBTTemprecVALORDEVIDO.asstring);

                 end ;
                next;
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

          if frmpagmult.checkrecibo.Checked = true then
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
       //             Writeln(f,'Valor Devido R$: '+formatcurr('0.00',edvalordevido.Value));
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
           //         MudaTamPapel(DMPAPER_USER, 215, 140);
                    Relrecibo2.lbnome.Caption := ibdm.IBQParamUSUARIO.AsString;
                    Relrecibo2.lbcnpj.Caption := 'CNPJ: '+ibdm.IBQParamCNPJ.AsString;
                    RelRecibo2.QRLabel2.Caption := 'O valor de:  R$' + Formatcurr('0.00',valorpago.value);
                    RelRecibo2.QRLabel3.Caption := 'RECIBO DE PAGAMENTO';
                    RelRecibo2.LBCLIENTE.Caption := VHIST;
//                    RelRecibo2.QRLabel5.Caption := Extenso(valorpago.value);
                    vextenso := Extenso(valorpago.value);
                    if Length(vextenso) > 43 then
                    begin
                      RelRecibo2.QRLabel5.Caption:=Copy(vextenso,1,43);
                      RelRecibo2.qrlbl1.Caption:=Copy(vextenso,44,40);
                    end
                    else
                    RelRecibo2.QRLabel5.Caption:=vextenso;


                        texto := 'ref. o pagamento do(s) doc(s) ';

                    RelRecibo2.QRMemo1.Lines.Text := vvdocs ;//+ vvdocs1;

          impressora:=Getdefaultprintername();
          Setdefaultprinter('MP-4200');




                    Relrecibo2.QRLabel6.caption:= texto ;
                    RelRecibo2.QuickRep1.Print;
                    RelRecibo2.Free;

//          impressora:=Getdefaultprintername();
          Setdefaultprinter(impressora);


                end;
            end;


    Log(textolog);

    end;

    end;

procedure TFrm_Pgmodos.FormShow(Sender: TObject);
begin
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


  eddata.Text := Frmpagmult.EdData.Text;
  edvalorpago.Value := Frmpagmult.edvalorpago.Value;
  Combobox1.Text := Frmpagmult.ComboBox1.Text;
  edvlavista.SetFocus;

end;

procedure TFrm_Pgmodos.edvlavistaExit(Sender: TObject);
begin
  edsaldoavista.Value := edvalorpago.Value - edvlavista.Value;
  d1.SetFocus;
end;

procedure TFrm_Pgmodos.BitBtn3Click(Sender: TObject);
  var
  jr:currency;
  timp:integer;
  x,y:currency;
  n : integer;
  dmed:real;
begin
  edsaldoavista.Value := edvalorpago.Value - edvlavista.Value;
  if datapgto.Date > eddata.date then
  begin
      with ibdm.IBQParam do
      begin
          Open;
          jr := FieldByname('txjuros').ascurrency;
          timp := FieldByname('timp').asinteger;
      end;

      dmed := datapgto.Date - eddata.Date;
      x:=(1+(jr/3000));
      y:=Expo(x,Trunc(dmed));
      valorpago.Value := (edsaldoavista.Value * Y) + edvlavista.Value;

  end
  Else
    Valorpago.Value := edsaldoavista.Value;
  //
  vlcheques.Value := ( Valorpago.Value - edvlavista.Value ) / vezes;
  Bitbtn1.Enabled := True;

end;

procedure TFrm_Pgmodos.Button1Click(Sender: TObject);
begin
  d1.Text := '';
  d2.Text := '';
  d3.Text := '';
  d4.Text := '';
  d5.Text := '';
  d6.Text := '';
  d7.Text := '';
  d8.Text := '';
  d9.Text := '';
  d10.Text := '';
  d11.Text := '';
  d12.Text := '';
end;

procedure TFrm_Pgmodos.Button2Click(Sender: TObject);
  var

  v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18:real;
  dmed:real;
begin
      if d1.Text <> '  /  /  ' then
      begin
          vezes:=1;
          v1 := strtodate(d1.text)-int(now());
      end;
      if d2.Text <> '  /  /  ' then
      begin
          vezes:=2;
          v2 := strtodate(d2.text)-int(now());;
      end;
      if d3.Text <> '  /  /  ' then
      begin
          vezes:=3;
          v3 := strtodate(d3.text)-int(now());;
      end;
      if d4.Text <> '  /  /  ' then
      begin
          vezes:=4;
          v4 := strtodate(d4.text)-int(now());;
      end;
      if d5.Text <> '  /  /  ' then
      begin
          vezes:=5;
          v5 := strtodate(d5.text)-int(now());;
      end;
      if d6.Text <> '  /  /  ' then
      begin
          vezes:=6;
          v6 := strtodate(d6.text)-int(now());;
      end;
      if d7.Text <> '  /  /  ' then
      begin
          vezes:=7;
          v7 := strtodate(d7.text)-int(now());;
      end;
      if d8.Text <> '  /  /  ' then
      begin
          vezes:=8;
          v8 := strtodate(d8.text)-int(now());;
      end;
      if d9.Text <> '  /  /  ' then
      begin
          vezes:=9;
          v9 := StrToDate(d9.text)-int(now());;
      end;
      if d10.Text <> '  /  /  ' then
      begin
          vezes:=10;
          v10 := strtodate(d10.text)-int(now());;
      end;
      if d11.Text <> '  /  /  ' then
      begin
          vezes:=11;
          v11 := strtodate(d11.text)-int(now());;
      end;
      if d12.Text <> '  /  /  ' then
      begin
          vezes:=12;
          v12 := strtodate(d12.text)-int(now());;
      end;
      if d13.Text <> '  /  /  ' then
      begin
          vezes:=13;
          v13 := strtodate(d13.text)-int(now());;
      end;
      if d14.Text <> '  /  /  ' then
      begin
          vezes:=14;
          v14 := strtodate(d14.text)-int(now());;
      end;
      if d15.Text <> '  /  /  ' then
      begin
          vezes:=15;
          v15 := strtodate(d15.text)-int(now());;
      end;
      if d16.Text <> '  /  /  ' then
      begin
          vezes:=16;
          v16 := strtodate(d16.text)-int(now());;
      end;
      if d17.Text <> '  /  /  ' then
      begin
          vezes:=17;
          v17 := strtodate(d17.text)-int(now());;
      end;
      if d18.Text <> '  /  /  ' then
      begin
          vezes:=18;
          v18 := strtodate(d18.text)-int(now());;
      end;

      Case vezes of
      0:dmed:=1;
      1:dmed:=v1;
      2:dmed:=(v1+v2) / vezes;
      3:dmed:=(v1+v2+v3) / vezes;
      4:dmed:=(v1+v2+v3+v4) / vezes;
      5:dmed:=(v1+v2+v3+v4+v5) / vezes;
      6:dmed:=(v1+v2+v3+v4+v5+v6) / vezes;
      7:dmed:=(v1+v2+v3+v4+v5+v6+v7) / vezes;
      8:dmed:=(v1+v2+v3+v4+v5+v6+v7+v8) / vezes;
      9:dmed:=(v1+v2+v3+v4+v5+v6+v7+v8+v9) / vezes;
      10:dmed:=(v1+v2+v3+v4+v5+v6+v7+v8+v9+v10) / vezes;
      11:dmed:=(v1+v2+v3+v4+v5+v6+v7+v8+v9+v10+v11) / vezes;
      12:dmed:=(v1+v2+v3+v4+v5+v6+v7+v8+v9+v10+v11+v12) / vezes;
      13:dmed:=(v1+v2+v3+v4+v5+v6+v7+v8+v9+v10+v11+v12+v13) / vezes;
      14:dmed:=(v1+v2+v3+v4+v5+v6+v7+v8+v9+v10+v11+v12+v13+v14)/ vezes;
      15:dmed:=(v1+v2+v3+v4+v5+v6+v7+v8+v9+v10+v11+v12+v13+v14+v15) / vezes;
      16:dmed:=(v1+v2+v3+v4+v5+v6+v7+v8+v9+v10+v11+v12+v13+v14+v15+v16) / vezes;
      17:dmed:=(v1+v2+v3+v4+v5+v6+v7+v8+v9+v10+v11+v12+v13+v14+v15+v16+v17) / vezes;
      18:dmed:=(v1+v2+v3+v4+v5+v6+v7+v8+v9+v10+v11+v12+v13+v14+v15+v16+v17+v18) / vezes;

      end;
      dmedia.value:=dmed;
      datapgto.Date := now() + dmed;

end;

procedure TFrm_Pgmodos.d1Exit(Sender: TObject);
begin
  try
      if strtodate(d1.Text) < now then
      Showmessage('Data nao pode ser anterior a hoje !!!');
    except
      Showmessage('Data inválida !!!');
    end;
end;

procedure TFrm_Pgmodos.d2Exit(Sender: TObject);
 var
 dt :real;
begin
  try
  dt := strtodate(d2.Text);
    IF d1.Text = '__/__/__' then
      Showmessage('Data anterior não pode ser em branco')
    else
      IF dt < Strtodate(d1.text) then
        Showmessage('Data inválida !!!!');
   except
    Showmessage('Data inválida !!!');
   end;

end;

procedure TFrm_Pgmodos.d3Exit(Sender: TObject);
 var
 dt :real;
begin
  try
    dt := strtodate(d3.Text);
          IF d2.Text = '__/__/__' then
            Showmessage('Data anterior não pode ser em branco')
            else
              IF dt < Strtodate(d2.text) then
                Showmessage('Data inválida !!!!');
  except
         Showmessage('Data inválida !!!');
  end;
end;

procedure TFrm_Pgmodos.d4Exit(Sender: TObject);
 var
 dt :real;
begin
  try
          dt := strtodate(d4.Text);
          IF d3.Text = '__/__/__' then
            Showmessage('Data anterior não pode ser em branco')
            else
              IF dt < Strtodate(d3.text) then
                Showmessage('Data inválida !!!!');
  except
          Showmessage('Data inválida !!!');
  end;
end;

procedure TFrm_Pgmodos.d5Exit(Sender: TObject);
 var
 dt :real;
begin
  try
          dt := strtodate(d5.Text);
          IF d4.Text = '__/__/__' then
            Showmessage('Data anterior não pode ser em branco')
            else
              IF dt < Strtodate(d4.text) then
                Showmessage('Data inválida !!!!');
  except
    Showmessage('Data inválida !!!');
  end;

end;

procedure TFrm_Pgmodos.d6Exit(Sender: TObject);
 var
 dt :real;
begin
  try
  dt := strtodate(d6.Text);
  IF d5.Text = '__/__/__' then
    Showmessage('Data anterior não pode ser em branco')
    else
      IF dt < Strtodate(d5.text) then
        Showmessage('Data inválida !!!!');
   except
           Showmessage('Data inválida !!!');
   end;
end;

procedure TFrm_Pgmodos.d7Exit(Sender: TObject);
 var
 dt :real;
begin
  try
          dt := strtodate(d7.Text);
          IF d6.Text = '__/__/__' then
            Showmessage('Data anterior não pode ser em branco')
            else
              IF dt < Strtodate(d6.text) then
                Showmessage('Data inválida !!!!');
        except
        Showmessage('Data inválida !!!');
  end;
end;

procedure TFrm_Pgmodos.d8Exit(Sender: TObject);
 var
 dt :real;
begin
  try
  dt := strtodate(d8.Text);
  IF d7.Text = '__/__/__' then
    Showmessage('Data anterior não pode ser em branco')
    else
      IF dt < Strtodate(d7.text) then
        Showmessage('Data inválida !!!!');
  except
          Showmessage('Data inválida !!!');
  end;
end;

procedure TFrm_Pgmodos.d9Exit(Sender: TObject);
 var
 dt :real;
begin
  try
  dt := strtodate(d9.Text);
  IF d8.Text = '__/__/__' then
    Showmessage('Data anterior não pode ser em branco')
    else
      IF dt < Strtodate(d8.text) then
        Showmessage('Data inválida !!!!');
   except
   Showmessage('Data inválida !!!');
   end;
end;

procedure TFrm_Pgmodos.d10Exit(Sender: TObject);
 var
 dt :real;
begin
   try
  dt := strtodate(d10.Text);
  IF d9.Text = '__/__/__' then
    Showmessage('Data anterior não pode ser em branco')
    else
      IF dt < Strtodate(d9.text) then
        Showmessage('Data inválida !!!!');
   except
     Showmessage('Data inválida !!!');
   end;

end;

procedure TFrm_Pgmodos.d11Exit(Sender: TObject);
 var
 dt :real;
begin
  try
  dt := strtodate(d11.Text);
  IF d10.Text = '__/__/__' then
    Showmessage('Data anterior não pode ser em branco')
    else
      IF dt < Strtodate(d10.text) then
        Showmessage('Data inválida !!!!');
   except
   Showmessage('Data inválida !!!');
   end;
end;

procedure TFrm_Pgmodos.d12Exit(Sender: TObject);
 var
 dt :real;
begin
  try
  dt := strtodate(d12.Text);
  IF d11.Text = '__/__/__' then
    Showmessage('Data anterior não pode ser em branco')
    else
      IF dt < Strtodate(d11.text) then
        Showmessage('Data inválida !!!!');
   except
   Showmessage('Data inválida !!!');
   end;
end;

procedure TFrm_Pgmodos.d13Exit(Sender: TObject);
 var
 dt :real;
begin
  try
  dt := strtodate(d13.Text);
  IF d12.Text = '__/__/__' then
    Showmessage('Data anterior não pode ser em branco')
    else
      IF dt < Strtodate(d12.text) then
        Showmessage('Data inválida !!!!');
  except
  Showmessage('Data inválida !!!');
  end;

end;
procedure TFrm_Pgmodos.d14Exit(Sender: TObject);
 var
 dt :real;
begin
  try
  dt := strtodate(d14.Text);
  IF d13.Text = '__/__/__' then
    Showmessage('Data anterior não pode ser em branco')
    else
      IF dt < Strtodate(d13.text) then
        Showmessage('Data inválida !!!!');
  except
  Showmessage('Data inválida !!!');
  end;
end;

procedure TFrm_Pgmodos.d15Exit(Sender: TObject);
 var
 dt :real;
begin
  try

  dt := strtodate(d15.Text);
  IF d14.Text = '__/__/__' then
    Showmessage('Data anterior não pode ser em branco')
    else
      IF dt < Strtodate(d14.text) then
        Showmessage('Data inválida !!!!');
  except
          Showmessage('Data inválida !!!');
  end;

end;

procedure TFrm_Pgmodos.d16Exit(Sender: TObject);
 var
 dt :real;
begin
  try
  dt := strtodate(d16.Text);
  IF d15.Text = '__/__/__' then
    Showmessage('Data anterior não pode ser em branco')
    else
      IF dt < Strtodate(d15.text) then
        Showmessage('Data inválida !!!!');
  except
          Showmessage('Data inválida !!!');
  end;


end;

procedure TFrm_Pgmodos.d17Exit(Sender: TObject);
 var
 dt :real;
begin
  try
  dt := strtodate(d17.Text);
  IF d16.Text = '__/__/__' then
    Showmessage('Data anterior não pode ser em branco')
    else
      IF dt < Strtodate(d16.text) then
        Showmessage('Data inválida !!!!');
   except
   Showmessage('Data inválida !!!');
   end;
end;


procedure TFrm_Pgmodos.d18Exit(Sender: TObject);
 var
 dt :real;
begin
  try
  dt := strtodate(d18.Text);
  IF d17.Text = '__/__/__' then
    Showmessage('Data anterior não pode ser em branco')
    else
      IF dt < Strtodate(d17.text) then
        Showmessage('Data inválida !!!!');
  except
  Showmessage('Data inválida !!!');
  end;
end;


procedure TFrm_Pgmodos.BitBtn4Click(Sender: TObject);
begin
  valorpago.Enabled := true;
end;

procedure TFrm_Pgmodos.ValorPagoExit(Sender: TObject);
begin
    vlcheques.Value := Valorpago.Value / vezes;
end;

procedure TFrm_Pgmodos.Button3Click(Sender: TObject);
begin
  d1.Text := '  /  /  ';
end;

procedure TFrm_Pgmodos.Button4Click(Sender: TObject);
begin
  d2.Text := '  /  /  ';
end;


procedure TFrm_Pgmodos.Button5Click(Sender: TObject);
begin
  d3.Text := '  /  /  ';
end;

procedure TFrm_Pgmodos.Button6Click(Sender: TObject);
begin
  d4.Text := '  /  /  ';
end;




procedure TFrm_Pgmodos.Button8Click(Sender: TObject);
begin
    d6.Text := '  /  /  ';
end;

procedure TFrm_Pgmodos.Button7Click(Sender: TObject);
begin
  d5.Text := '  /  /  ';
end;

procedure TFrm_Pgmodos.Button9Click(Sender: TObject);
begin
  d7.Text := '  /  /  ';
end;

procedure TFrm_Pgmodos.Button10Click(Sender: TObject);
begin
       d8.Text := '  /  /  ';
end;

procedure TFrm_Pgmodos.Button18Click(Sender: TObject);
begin
      d9.Text := '  /  /  ';
end;



procedure TFrm_Pgmodos.Button17Click(Sender: TObject);
begin
    d10.Text := '  /  /  ';
end;

procedure TFrm_Pgmodos.Button16Click(Sender: TObject);
begin
   d11.Text := '  /  /  ';
end;

procedure TFrm_Pgmodos.Button15Click(Sender: TObject);
begin
  d12.Text := '  /  /  ';
end;



procedure TFrm_Pgmodos.Button14Click(Sender: TObject);
begin
  d13.Text := '  /  /  ';
end;

procedure TFrm_Pgmodos.Button13Click(Sender: TObject);
begin
  d14.Text := '  /  /  ';
end;

procedure TFrm_Pgmodos.Button12Click(Sender: TObject);
begin
  d15.Text := '  /  /  ';
end;

procedure TFrm_Pgmodos.Button11Click(Sender: TObject);
begin
  d16.Text := '  /  /  ';
end;


procedure TFrm_Pgmodos.Button20Click(Sender: TObject);
begin
  d17.Text := '  /  /  ';
end;

procedure TFrm_Pgmodos.Button19Click(Sender: TObject);
begin
  d18.Text := '  /  /  ';
end;

procedure TFrm_Pgmodos.Button21Click(Sender: TObject);
  var
    vezes:Integer;
    vdata:TDate;
begin
  //
  try
    if edtnrvz.Text <> '' then
    begin
      vezes := StrToInt(edtnrvz.Text) ;
      if d1.Text <> '  /  /  ' then
      begin
        vdata := StrToDate(d1.Text);
        if vezes > 1 then
          d2.Text := datetostr(vdata+30);
        if vezes > 2 then
          d3.Text := datetostr(vdata+60);
        if vezes > 3 then
          d4.Text := datetostr(vdata+90);
        if vezes > 4 then
          d5.Text := datetostr(vdata+120);
        if vezes > 5 then
          d6.Text := datetostr(vdata+150);
        if vezes > 6 then
          d7.Text := datetostr(vdata+180);
        if vezes > 7 then
          d8.Text := datetostr(vdata+210);
        if vezes > 8 then
          d9.Text := datetostr(vdata+240);
        if vezes > 9 then
          d10.Text := datetostr(vdata+270);
        if vezes > 10 then
          d11.Text := datetostr(vdata+300);
        if vezes > 11 then
          d12.Text := datetostr(vdata+330);
        if vezes > 12 then
          d13.Text := datetostr(vdata+360);
        if vezes > 13 then
          d14.Text := datetostr(vdata+390);
        if vezes > 14 then
          d15.Text := datetostr(vdata+420);
        if vezes > 15 then
          d16.Text := datetostr(vdata+450);

       end;
    end;
  except
    ShowMessage('Erro nos dados, verifique 1ª data e nr de cheques !');
  end;

end;

end.
