unit Upagmult;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, XP_Form, StdCtrls, Buttons, Mask,
   MegaEditNumerico, rxCurrEdit, rxToolEdit;

type
  TFrmPagMult = class(TForm)
    Label5: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    EdData: TDateEdit;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    EdValorDevido: TMegaEditNumerico;
    edvlcalculado: TCurrencyEdit;
    Label14: TLabel;
    Label8: TLabel;
    modopgto: TComboBox;
    ComboBox1: TComboBox;
    Label13: TLabel;
    CheckRecibo: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    edvalorpago: TCurrencyEdit;
    EdValorJuros: TMegaEditNumerico;
    Label4: TLabel;
    Label6: TLabel;
    BitBtn4: TBitBtn;
    Label7: TLabel;
    edpass: TEdit;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    Function CALCULA(dt1:real;dt2:real;valu:currency): currency;
    Function EXPO( x:real;pm:real ) :real;
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure edpassExit(Sender: TObject);
  private
    { Private declarations }
  public
 pode:boolean;
 vqtit:Integer;
    { Public declarations }
  end;

var
  FrmPagMult: TFrmPagMult;

implementation

uses DM, Urelrecibo1, Ufuncoes,Uprincipal, Uvariosmodos, Urelrecibo2,
  UBematech_4200;

{$R *.DFM}

procedure TFrmPagMult.BitBtn2Click(Sender: TObject);
begin
    Close;
end;

procedure TFrmPagMult.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ibdm.IBTTEMPRECVENCIMENTO.value< int(now) then
    begin
      Dbgrid1.Canvas.Font.Color:= clRed;
      DBgrid1.Canvas.Font.Style:= [fsbold];
    end;
    Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
end;

procedure TFrmPagMult.DBGrid1CellClick(Column: TColumn);
    var
    controle:integer;

begin
    Bitbtn1.Enabled:=False;
    bitbtn1.Repaint;
    Bitbtn4.Enabled:=False;
    bitbtn4.Repaint;

    if (ibdm.IBTTemprecPARCIAL.IsNull) or (ibdm.IBTTemprecPARCIAL.AsInteger = 0)  then
    begin
   //     Bitbtn1.Enabled := True;
        ibdm.IBTTemprec.Edit;
        if ibdm.IBTTemprecM.AsString = 'X' then
            ibdm.IBTTemprecM.asstring := ' '
           else
            ibdm.IBTTemprecM.asstring := 'X';
        ibdm.IBTTemprec.post;
        ibdm.IBTTemprec.ApplyUpdates;
        DBgrid1.Refresh;
    end
    else
        Showmessage('Esta conta já tem pagamento parcial, deve ser feito em separado !');
end;

procedure TFrmPagMult.BitBtn1Click(Sender: TObject);
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
   vvdocs:string;
   vvdocs1:string;
   vezes:integer;
   iretorno:Integer;
   impressora:string;
begin


       IBDM.IBQParam.Open;
    if IBDM.IBQParamchkprt1.AsInteger = 1  then
    begin
      if not GetStatus(vok) then
        ShowMessage('Veirifique a impressora antes de prosseguir !!!');
        textolog := 'Pgto multiplo, Impressora desligada ou c/ problema';
        LOG(textolog);


    end;


{    iretorno:= Le_status();
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
    end;      }



        BitBtn1.Enabled:=False;
        ibdm.IBQParam.open;
        carencia := ibdm.IBQParamCARENCIA.AsInteger;
        Bitbtn1.Enabled := False;
        textolog := 'Pagamento doc mult. / '+ibdm.IBTTemprecHISTORICO.AsString + ' / Modo pgto= ';
        vok:=True;
        vmodo:= 0;
        vpos:= POS('#',modopgto.Text);
        if vpos > 0 then
        begin
            vmodo := strtoint(Copy(modopgto.text,1,vpos-1));
        end;
        vpos := POS('#',combobox1.text);
        vf:=True;
        textolog := textolog + modopgto.text +  ' / Operador=' + ComboBox1.Text;
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
            vvdocs := '';
            vvdocs1:= '';
            vezes := 0;
//            ShowMessage(IntToStr(vqtit));
            CommitWork;
            Log(textolog);
            textolog:='Valor Calculado= '+FormatCurr('0.00',edvlcalculado.Value)+' / Valor Pago= '+FormatCurr('0.00',edvalorpago.Value ) ;
            Log(textolog);
            With ibdm.IBTTemprec do
            begin
             CommitWork;
             Close;
             Open;
             First;
             While not eof do
             begin
                 if ibdm.IBTTemprecM.asstring = 'X' then
                 begin
                     Inc(vezes,1);
                     qcontrole := ibdm.IBTTemprecCONTROLE.AsInteger;
                     IBDM.IBQCreceber.Close;
                     IBDM.IBQCreceber.Open;
                     IBDM.IBQCreceber.First;
                     if ibdm.IBQCreceber.Locate('controle',qcontrole,[]) then
                     begin
                         vdoc := ibdm.IBQCreceberDOCUMENTO.AsString;

                         vhist := ibdm.IBQCreceberHISTORICO.AsString;
                         vvenc := ibdm.IBQCreceberVENCIMENTO.AsDateTime;
                         vvalorPago := edvalorpago.Value;
                         vvalordev := ibdm.IBQCreceberVALORDEVIDO.AsCurrency;  //edvalordevido.AsCurrency;
                         vparcela := ibdm.IBQCreceberPARCELA.AsString;
                         vcliente := ibdm.IBQCreceberCLIENTE.AsInteger;
                         vcontrole := ibdm.IBQCreceberCONTROLE.AsInteger;

                         y:=1;
                          if (EdData.Date - vvenc) > carencia then
                          begin
                              vtempo := (EdData.Date - vvenc)   ;
                              x:=  1+ (ibdm.IBQParamJURMO.AsCurrency/3000);
                              y:=Expo(x,Trunc(vtempo));
                          end;
                          if (EdData.Date - vvenc) < 0 then
                          begin
                              vtempo := (EdData.Date - vvenc) ;
                              x:=  1+ (ibdm.IBQParamDESCPR.AsCurrency/3000);
                              y:=Expo(x,Trunc((vtempo-(vtempo*2))));
                              y := 1/ y;
                          end;

                          vvalorPago := vvalordev * y;
                          IF vezes<=12 then
                           vvdocs := vvdocs + vdoc + '-'+ vparcela  + ' (R$ '+ FormatCurr('0.00',vvalorpago)  +')' +#13+#10
                          else
                           vvdocs1 := vvdocs1 + vdoc + '-'+ vparcela  + ' (R$ '+ FormatCurr('0.00',vvalorpago)  +')' +#13+#10;

                     //    ShowMessage( vdoc + ' ' + IntToStr(vezes) );
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
                   //      commitwork;


                         textolog :=  'Doc.=' +vdoc+ ' / atualizou contas a receber, ';
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
                                params[4].AsDateTime := now;
                                params[5].AsString := vparcela;
                                params[6].AsInteger := vcliente;
                                params[7].AsCurrency := vvalordev;
                                params[8].AsCurrency := vvalorPago;
                                params[9].AsInteger := vmodo;
                                params[10].AsString := '';
                                params[11].AsInteger := vcontrole;
                                prepare;
                                ExecQuery;
                             //   commitwork;
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
                                params[8].AsInteger := vmodo;
                                params[9].AsString := vparcela;
                                prepare;
                                ExecQuery;
                               // commitwork;
                             end;
                             textolog := textolog + ' gravou caixa, ' ;
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
                                params[8].AsInteger := vmodo;
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
                                params[8].AsInteger := vmodo;
                                params[9].AsString := vparcela;
                                prepare;
                                ExecQuery;
                             //   commitwork;
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
                           //     commitwork;
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
                            ShowMessage('Não encontrei o doc. '+ibdm.IBTTemprecDOCUMENTO.AsString);

                  end ;
                next;
            end;
          end;
          IF vezes <> vqtit then
            ShowMessage('Atenção,nr de prestações marcadas difere das registradas !');
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
        //            MudaTamPapel(DMPAPER_USER, 215, 140);
                    Relrecibo2.lbnome.Caption := ibdm.IBQParamUSUARIO.AsString;
                    Relrecibo2.lbcnpj.Caption := 'CNPJ: '+ibdm.IBQParamCNPJ.AsString;
                    RelRecibo2.QRLabel2.Caption := 'O valor de:  R$' + Formatcurr('0.00',edvalorpago.value);
                    RelRecibo2.QRLabel3.Caption := 'RECIBO DE PAGAMENTO';
                    RelRecibo2.LBCLIENTE.Caption := VHIST;
                    RelRecibo2.QRLabel5.Caption := Extenso(edvalorpago.value);
                        texto := 'ref. o pagto parcela(s) do(s) doc(s) ';
                    RelRecibo2.QRMemo1.Lines.Text := vvdocs ;
                    RelRecibo2.QRMemo2.Lines.Text := vvdocs1 ;
                    Relrecibo2.QRLabel6.caption:= texto ;
          impressora:=Getdefaultprintername();
          Setdefaultprinter('MP-4200');



                    RelRecibo2.QuickRep1.Print;
                    RelRecibo2.Free;

//          impressora:=Getdefaultprintername();
          Setdefaultprinter(impressora);


                end;
            end;


    Log(textolog);



    end;

end;

procedure TFrmPagMult.BitBtn3Click(Sender: TObject);
    var
     vjuros : real;
     vtempo : real;
     vcalcu : real;
     y:real;
     carencia:integer;
     x:real;
     valor:currency;
     vence:real;
     vldev:currency;
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
    valor := 0;
    vqtit:= 0;
    With ibdm.IBTTemprec do
    begin
        CommitWork;
        Close;
        Open;
        First;
        edvalordevido.Value := 0;
        While not eof do
        begin
            if FieldByname('M').asstring = 'X' then
            begin
                inc(vqtit,1);
                edvalordevido.Value := edvalordevido.Value + FieldByname('valordevido').AsCurrency;
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
                valor := valor + FieldByname('valordevido').ascurrency * y;
            end;
            next;
        end;

    end;
    edvalorpago.Value := valor;
    edvlcalculado.Value := edvalorpago.Value;
    edvalorjuros.Value := edvalorpago.Value - edvalordevido.Value;

 //   edvalorpago.SetFocus;

   //  if frmprincipal.vtipo = 'M' then
   //   bitbtn4.Enabled := True
   //   else
   //   bitbtn4.Enabled := False;


    Bitbtn1.Enabled := True;
    Bitbtn4.Enabled := True;
//    Bitbtn1.setfocus;
      edpass.Enabled:=True;
      label7.Enabled:=True;


end;

Function TFrmPagMult.CALCULA(dt1:real;dt2:real;valu:currency): currency;
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

Function TFrmPagMult.EXPO( x:real;pm:real ) :real;
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

procedure TFrmPagMult.FormShow(Sender: TObject);
begin
    eddata.Date := int(now);
    Bitbtn1.Enabled := False;
    bitbtn4.Enabled := False;
end;

procedure TFrmPagMult.BitBtn4Click(Sender: TObject);
  var
  vpos:integer;
  vopera:integer;
  vmodo:integer;
begin
        vpos := POS('#',combobox1.text);
        if vpos > 0 then
          Begin
            vopera := Strtoint(Copy(Combobox1.text,vpos+1,2));
            with ibdm.IBTmpgto do
            begin
              Open;
              Locate('CODIGO',15,[]);
              modopgto.text := ibdm.IBTmpgtoCODIGO.asstring+'#'+ibdm.IBTmpgtoDESCRICAO.asstring;
            end;
           vpos:= POS('#',modopgto.Text);
           if vpos > 0 then
            begin
              vmodo := strtoint(Copy(modopgto.text,1,vpos-1));
            end;



            Frm_Pgmodos := TFrm_Pgmodos.create(Application);
            Frm_Pgmodos.vmodoch := vmodo; // strtoint(Copy(modopgto.text,1,vpos-1));
            Frm_Pgmodos.showmodal;
            Close;

          end
         else
          begin
                Showmessage('Faltou indicar o operador !!!!');
                Combobox1.SetFocus;
          end;

end;

procedure TFrmPagMult.edpassExit(Sender: TObject);
  var
    dia,mes,ano:word;
    senha:integer;
begin
    Decodedate(now,ano,mes,dia);
    IF (edpass.Text <> '')  then
    begin
      ibdm.IBQParam.Open;
      senha := ibdm.IBQParamVARIAVEL.AsInteger*dia;
      IF Trim(edpass.Text) = Trim(inttostr(senha))  then
        BitBtn4.Enabled:=True
        else
        Showmessage('Senha incorreta !!');
    end;
end;

end.
