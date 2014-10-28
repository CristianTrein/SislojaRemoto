unit URelFiltraCai;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, rxToolEdit, ExtCtrls, XP_Form, ComCtrls,variants;

type
  TFrmRelFiltraCai = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
 //   DateEdit1: TDateEdit;
 //   DateEdit2: TDateEdit;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    CheckBox3: TCheckBox;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Date1: TDateTimePicker;
    Date2: TDateTimePicker;
    lbcli: TLabel;
    Label3: TLabel;
    edmodopgto: TEdit;
    Label4: TLabel;
    cbb1: TComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vcli:string;
    vtr : integer;
  end;

var
  FrmRelFiltraCai: TFrmRelFiltraCai;

implementation

uses URelCaixa, DM, UPrincipal, UfrmresumoCX, Urelfluxocx;

{$R *.DFM}

procedure TFrmRelFiltraCai.BitBtn1Click(Sender: TObject);
var
    vdata : real;
    vope : integer;
    f : textfile;
    ventra,vsaida,vsfinal,vinicial : currency;
    vabc : string;
    dti,dtf:Tdatetime;
    vlc,vld:currency;
    vpos:Integer;
    vmodo:Integer;
begin
{    vdata := int(DateEdit1.date) - 1;
    vope := FrmPrincipal.voperador;
    assignFile(f,'c:\ti\relat.txt');
    rewrite(f);
    writeln(f,'');
    writeln(f,chr(27)+chr(69)+' SISLOJA'+chr(27)+chr(70));
    writeln(f,chr(27)+chr(69)+' Rua: 7 de setembro, '+chr(27)+chr(70));
    writeln(f,chr(27)+chr(69)+' Panambi/RS   Fone:(55)3375-4329'+chr(27)+chr(70));
    writeln(f,chr(27)+chr(69)+'*********************************'+chr(27)+chr(70));
    Writeln(f,'');
    Writeln(f,'');
    Writeln(f,chr(27)+chr(69)+' RELATORIO do CAIXA'+chr(27)+chr(70));
    Writeln(f,'');
    Writeln(f,'');
    Writeln(f,'De: '+datetostr(DateEdit1.date)+' até '+datetostr(DateEdit2.date));
    Writeln(f,'');
    Writeln(f,'');
    With ibdm.IBQPosCaixa do
    begin
        close;
        open;
        First;
        if Locate('Data;operador',VarArrayOf([vdata,vope]),[]) then
        begin
            Writeln(f,'SALDO INICIAL -> R$ '+FormatCurr('0.00',FieldByname('SALDO').ascurrency));
            vinicial := FieldByname('SALDO').ascurrency;
            //Writeln(f,FormatCurr('0.00',FieldByname('SALDO').ascurrency));
        end
        else
        begin
            Prior;
            Writeln(f,'SALDO INICIAL -> R$ '+FormatCurr('0.00',FieldByname('SALDO').ascurrency));
            vinicial := FieldByname('SALDO').ascurrency;
            ShowMessage('   >>> POSIÇÃO DO CAIXA <<<   '+#13+#13+' Do dia: '+datetostr(vdata)+' não foi criada!!!');
            //Writeln(f,FormatCurr('0.00',FieldByname('SALDO').ascurrency));
        end;
    end;

    with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select caixa.data, caixa.transacao,trcaixa.descricao, sum(caixa.valor),caixa.operacao from caixa, trcaixa');
        sql.add('where caixa.data >=:p0 and caixa.data <=:p1 and caixa.transacao = trcaixa.codigo');
        sql.add('group by caixa.data, caixa.transacao, caixa.operacao, trcaixa.descricao');
        params[0].asdatetime := Strtodatetime(DateEdit1.text +' '+ Maskedit1.text ) ;

        params[1].asdatetime := Strtodatetime(DateEdit2.text +' '+ Maskedit2.text ) ;
        prepare;
        open;
        first;
        Writeln(f,'');
        Writeln(f,'');
        ventra := 0;
        vsaida := 0;
        vsfinal:= 0;
        While not eof do
        begin
            if fields[4].asstring = 'C' then
                ventra := ventra + fields[3].AsCurrency
               else
                vsaida := vsaida + fields[3].AsCurrency;
            vabc := Fields[2].asstring;
            Writeln(f,''+vabc+' -> '+FORMATCURR('0.00',Fields[3].ascurrency));
            //Writeln(f,''+datetostr(fields[0].asdatetime)+' - '+vabc+' -> '+FORMATCURR('0.00',Fields[3].ascurrency));
            next;
        end;
    end;

    Writeln(f,'');
    Writeln(f,'');
    Writeln(f,'');
    Writeln(f,'Entradas: R$ '+Formatcurr('0.00',ventra));
    Writeln(f,'Saidas: R$ '+Formatcurr('0.00',vsaida));
    Writeln(f,'');
    vsfinal := (vinicial + ventra) - vsaida;
    Writeln(f,'Total: R$ '+FormatCurr('0.00',ventra - vsaida));
    Writeln(f,'');
    Writeln(f,'');
    Writeln(f,'SALDO FINAL -> R$ '+Formatcurr('0.00',vsfinal));
    Writeln(f,'');
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
    Writeln(f,'');
    Writeln(f,chr(27)+chr(80));
    closeFile(f);  }
    Log('Emitindo relatório do caixa...');
    if checkbox1.Checked = True then   // Lançamentos
    begin
        checkbox1.Checked := False;
        FrmRelCaixa := TFrmRelCaixa.Create(application);
        vdata := int(Date1.Date) - 1;
        vope := frmprincipal.voperador;

        dti := Strtodatetime(datetostr(Date1.date) + ' ' + Maskedit1.Text );
        dtf := Strtodatetime(datetostr(Date2.date) + ' ' + Maskedit2.Text );
        if combobox1.Text <> '' then
            FrmRelCaixa.qrlabel17.Caption := 'Transação: '+combobox1.Text;
        with ibdm.IBQParam do
        begin
            close;
            open;
            FrmRelCaixa.QRLabel1.Caption := ibdm.IBQParamUSUARIO.AsString;
        end;

        FrmRelCaixa.QRLabel3.Caption := 'Entre '+datetimetostr(date1.date )+ ' ' + maskedit1.text +' até '+datetimetostr(date2.date)+ ' ' +maskedit2.text;

        with ibdm.QCaixa1 do
        begin
            close;
           sql.Clear;
           IF vcli<> '' then
            sql.Add('select caixa.*, cast(caixa.data as date)DTA from caixa,doctos')
            else
            sql.Add('select caixa.*, cast(caixa.data as date)DTA from caixa');
            if combobox1.Text = '' then
              begin
  //             filter:='data >= ' +QuotedStr(datetimetostr(dti))+' ';
  //             filter:='data >= ' +QuotedStr(Dateedit1.Text + ' ' + Maskedit1.Text )+ ' and data <= ' +QuotedStr(Dateedit2.Text + ' ' + Maskedit2.Text );
  //             filtered:=True;
               if vcli <> '' then
               begin
                sql.Add('where doctos.documento=caixa.documento and caixa.data >= :p0 and caixa.data <= :p1 and clifor=:p2') ;
               end
               else
                sql.Add('where caixa.data >= :p0 and caixa.data <= :p1') ;
              end
               else
              begin

                sql.Add('where caixa.data >= :p0 and caixa.data <= :p1 and transacao=:p2');

              end;
              sql.Add('order by caixa.DATA,controle');
            params[0].AsDatetime := dti;
            params[1].asdatetime := dtf;
            if vcli<>'' then
              params[2].asstring:=vcli
             else
            if combobox1.Text <> '' then
                params[2].AsInteger := vtr;
            prepare;
            open;
        end;

        With ibdm.IBQPosCaixa do
        begin
            close;
            open;
            First;
            if Locate('Data;operador',VarArrayOf([vdata,vope]),[]) then
            begin
                FrmRelCaixa.QRLabel10.Caption := 'SALDO INICIAL -> R$';
                FrmRelCaixa.QRLabel8.Caption := FormatCurr('0.00',FieldByname('SALDO').ascurrency);
            end
            else
            begin
                Prior;
                FrmRelCaixa.QRLabel10.Caption := 'SALDO INICIAL -> R$';
                FrmRelCaixa.QRLabel8.Caption := FormatCurr('0.00', FieldByname('SALDO').ascurrency);
            end;
        end;
        FrmRelCaixa.QuickRep1.Preview;

        FrmRelCaixa.Destroy;


        with ibdm.QCaixa1 do
        begin
            close;
         //   sql.Clear;
         //   sql.Add('select * from caixa');
         //   sql.Add('order by controle');
            open;
        end;
        FrmRelFiltraCai.Close;
    end;

    if checkbox2.Checked = True then   // Fluxo
    begin
        checkbox2.Checked := False;
        RelFluxocx := TRelFluxocx.Create(application);
        vpos:=Pos('#',cbb1.Text);
        vmodo:=0;
        IF vpos >0 then
        begin
          vmodo:=StrToInt(Copy(cbb1.Text,1,vpos-1));
        end;
        vope := frmprincipal.voperador;

        dti := Strtodatetime(datetostr(Date1.date) + ' ' + Maskedit1.Text );
        dtf := Strtodatetime(datetostr(Date2.date) + ' ' + Maskedit2.Text );
        if combobox1.Text <> '' then
            FrmRelCaixa.qrlabel17.Caption := 'Transação: '+combobox1.Text;
        with ibdm.IBQParam do
        begin
            close;
            open;
            RelFluxocx.QRLabel2.Caption := ibdm.IBQParamUSUARIO.AsString;
        end;

        RelFluxocx.QRLabel6.Caption := 'Entre '+datetimetostr(date1.date )+ ' ' + maskedit1.text +' até '+datetimetostr(date2.date)+ ' ' +maskedit2.text;

        with ibdm.QCaixa1 do
        begin
            close;
            sql.Clear;
            if vcli<> '' then
            sql.Add('select * from caixa,doctos')
            else
            sql.Add('select * from caixa');
            if cbb1.Text = '0#Todos' then
              begin
               if vcli<>'' then
                sql.Add('where doctos.documento=caixa.documento and caixa.data >= :p0 and caixa.data <= :p1 and clifor=:p2')
                else
                sql.Add('where caixa.data >= :p0 and caixa.data <= :p1') ;

              end
             else
             begin
               if vmodo>0 then
                sql.Add('where caixa.data >= :p0 and caixa.data <= :p1 and mpgto=:p2')
                else
                sql.Add('where caixa.data >= :p0 and caixa.data <= :p1');
             end;
            sql.Add('order by caixa.data');
            params[0].AsDatetime := dti;
            params[1].asdatetime := dtf;
            if vcli<>'' then
              params[2].AsString:=vcli
              else
            if vmodo>0 then
                params[2].AsInteger := vmodo;
            prepare;
            open;
        end;

        RelFluxocx.QuickRep1.Preview;
        RelFluxocx.Destroy;

        with ibdm.QCaixa1 do
        begin
            close;
       //     sql.Clear;
       //     sql.Add('select * from caixa');
            open;
        end;
    end;

    if checkbox3.Checked = true then
    begin
        checkbox3.Checked := False;
        dti := Strtodatetime(datetostr(Date1.date) + ' ' + Maskedit1.Text );
        dtf := Strtodatetime(datetostr(Date2.date) + ' ' + Maskedit2.Text );
        vlc:=0;
        vld:=0;

        with ibdm.Consulta do
        begin
            close;
            sql.Clear;
            sql.Add('select valor,operacao,transacao from caixa');
            if combobox1.Text = '' then
                sql.Add('where data >= :p0 and data <= :p1')
               else
                sql.Add('where data >= :p0 and data <= :p1 and transacao=:p2');
            sql.Add('order by data');
            params[0].AsDatetime := dti;
            params[1].asdatetime := dtf;
            if combobox1.Text <> '' then
                params[2].AsInteger := vtr;
            prepare;
            open;
            While not eof do
            begin
                if Fields[1].AsString = 'C' then
                    vlc := vlc + Fields[0].AsCurrency;
                if Fields[1].AsString = 'D' then
                    vld := vld + Fields[0].AsCurrency;

                next;
            end;
        end;

        frmresumoCX := TfrmresumoCX.create(Application);
        FrmResumoCX.RXlabel1.Caption := 'Entre '+datetimetostr(date1.date )+ ' ' + maskedit1.text +' até '+datetimetostr(date2.date)+ ' ' +maskedit2.text;
        FrmResumoCX.RxLabel2.Caption := 'Entradas: '+ FormatCurr('0.00',vlc);
        FrmResumoCX.RxLabel3.Caption := 'Saidas...: '+ FormatCurr('0.00',vld);
        FrmResumoCX.RxLabel4.Caption := 'Saldo.....: '+ FormatCurr('0.00',vlc - vld);
        frmresumoCX.ShowModal;
        frmresumoCX.Destroy;

    end;
end;

procedure TFrmRelFiltraCai.FormActivate(Sender: TObject);
begin
    date1.Date := now;
    date2.Date := now;
    with ibdm.IBQTrCaixa do
    begin
        close;
        sql.Clear;
        sql.Add('select * from trcaixa');
        sql.Add('order by descricao');
        prepare;
        open;
        first;
        while not eof do
        begin
            combobox1.Items.Add(ibdm.IBQTrCaixaDESCRICAO.AsString);
            next;
        end;
    end;
    with IBDM.IBTmpgto do
    begin
      cbb1.Items.Clear;
      cbb1.Items.Add('0#Todos');
      Close;
      Open;
      First;
      While not eof do
      begin
        cbb1.Items.Add(IBDM.IBTmpgtoCODIGO.AsString+'#'+ibdm.IBTmpgtoDESCRICAO.AsString);
        Next;
      end;

    end;

end;

procedure TFrmRelFiltraCai.BitBtn2Click(Sender: TObject);
begin
    FrmRelFiltraCai.Close;
end;

procedure TFrmRelFiltraCai.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFrmRelFiltraCai.ComboBox1Click(Sender: TObject);
begin
    with ibdm.IBQTrCaixa do
    begin
        close;
        open;
        if locate('descricao',combobox1.Text,[]) then
            vtr := ibdm.IBQTrCaixaCODIGO.AsInteger;
    end;
end;

procedure TFrmRelFiltraCai.Label3Click(Sender: TObject);
begin
  if checkbox2.Visible=True then
  begin
     checkbox2.Visible:=False;
     label4.Visible:=False;
     edmodopgto.Visible:=False;
     cbb1.Visible:= False;
  end
  else
  begin
     checkbox2.Visible:=True;
     label4.Visible:=True;
     edmodopgto.Visible:=False;
     cbb1.Visible:= True;
  end;
end;

end.
