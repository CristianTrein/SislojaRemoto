unit UNotaVenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, ExtCtrls, XP_Form, DBCtrls, RXCtrls;

type
  TFrmNotaVenda = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    alerta: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    lblimite: TRxLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit4: TEdit;
    Edit5: TEdit;
    ComboBox1x: TComboBox;
    ComboBox2: TComboBox;
    edcfop: TEdit;
    ComboBox3: TComboBox;
    ComboBox1: TDBComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit5Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ComboBox1xClick(Sender: TObject);
    procedure ComboBox2Click(Sender: TObject);
    procedure ComboBox1xExit(Sender: TObject);
    procedure ComboBox3Click(Sender: TObject);
    procedure ComboBox2Exit(Sender: TObject);
    procedure ComboBox3Exit(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure ComboBox1xChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vcontrole : string;
    vnumerocupom : string;
    vimpressora : boolean;
    limite:currency;
    vtipo:string;
    vnome :string;
    vtp:integer;
    tpvenda:integer;
    vsegue:Boolean;
  end;

var
  FrmNotaVenda: TFrmNotaVenda;

implementation

uses UPrincipal, DM, UItensVenda, Ufuncoes, Uconfcli;

{$R *.DFM}

procedure TFrmNotaVenda.BitBtn2Click(Sender: TObject);
begin
    Log('Cancelou a venda');
    Close;
end;

procedure TFrmNotaVenda.BitBtn1Click(Sender: TObject);
var
    cnumerocupom : string;
    iconta : integer;
    vok : boolean;
    faz:Boolean;
    n0,nx:integer;
    nome,nome1,n1,n2:string;
    nnrdoc:integer;
    nrdoc:string;
begin
    if (combobox2.Text = '') or  (combobox3.Text = '') then
        Showmessage('Faltou indicar o vendedor/operador !')
       else
    begin
       if Trim(alerta.Caption) <> 'S' then
        vok:=True
           else
        vok:=False;
    ibdm.IBQParam.close;
    ibdm.IBQParam.Open;
    if vok = True then
    begin
    if ibdm.IBQParamUSAECF.AsString = 'S' then
    begin
        nome := Combobox1x.text;
        nome1:= nome;
        n0   := length(nome1);
        if n0 > 25 then
        begin
            n1 := PrimeiroNome(nome1)+' ';
            nx := Buscadireita(' ',nome1);
            if nx>0 then
                n2 := Copy(nome1,nx+1,n0-nx)
               else
                n2 := ' ';
            nome1 := n1+n2;
        end;
        if label9.Caption = '' then
            label9.Caption := '   ';
        iRetorno := Bematech_FI_AbreCupomMFD( label9.caption, nome1, ' ' );

        frmPrincipal.Analisa_iRetorno();
        frmPrincipal.Retorno_Impressora();

        For iConta := 1 To 6 Do
            cNumeroCupom := cNumeroCupom + ' ';
        iRetorno := Bematech_FI_NumeroCupom( cNumeroCupom );
        frmPrincipal.Analisa_iRetorno();
        frmPrincipal.Retorno_Impressora();
        faz:=true;
        if cNumeroCupom = '      ' then
        begin
            Showmessage('Núm. do Cupom: em branco ->' + cNumeroCupom);
            with ibdm.consulta do
            begin
                Close;
                sql.Clear;
                sql.Add('Select max(documento) from doctos');
                OPen;
                if fields[0].Asstring <> '' then
                    nnrdoc := Fields[0].asinteger+1
                   else
                    nnrdoc := 1;

                nrdoc := inttostr(nnrdoc);
                nrdoc := RetZero(nrdoc,6);
                CNumeroCupom:=nrdoc;
            end;
       //     faz:=False;
        end
        else
        faz:=True;
        if Faz = true then
        begin
            with ibdm.Grava do
            begin
                close;
                sql.Clear;
                sql.Add('insert into doctos');
                sql.Add('(controle,documento,data,transacao,clifor,operador,valoricms,valorfrete,transportador,valortotal,natop,vendedor)');
                sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11)');
                params[0].AsInteger := strtoint(edit1.text);
                params[1].AsString := cnumerocupom;
                params[2].AsDateTime := strtodatetime(edit4.text);
                params[3].AsString := 'VENDAS';
                params[4].AsInteger := strtoint(label10.Caption);
                params[5].AsInteger := strtoint(label7.Caption);
                params[6].AsInteger := 0;
                params[7].AsInteger := 0;
                params[8].AsInteger := 0;
                params[9].AsInteger := 0;
                params[10].AsInteger := 0;
                params[11].AsInteger :=  strtoint(label12.Caption);
                prepare;
                execquery;
            end;


            vnumerocupom := cNumeroCupom;
            Log('Cupom nr: ' + cnumerocupom);
            frmItensVenda := TfrmItensVenda.Create(Application);
            frmItensVenda.lbnome.Caption := Combobox1x.Text;
            frmItensVenda.lbvend.Caption := Combobox3.Text;
            vcontrole := edit1.Text;
            frmItensVenda.vtipo := vtipo;
            frmItensVenda.vcontrole := strtoint(edit1.Text);
            frmItensVenda.Ednota.Text := vnumerocupom;
            frmItensVenda.limite := limite;
            frmItensVenda.vcli := strtoint(label10.caption);
            frmItensVenda.ShowModal;
            Frmitensvenda.Close;
//            frmItensVenda.Free;
        end;
     //   close;
    end;

    if ibdm.IBQParamUSAECF.AsString = 'N' then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('insert into doctos');
            sql.Add('(controle,documento,data,transacao,clifor,operador,valoricms,valorfrete,transportador,valortotal,natop,vendedor)');
            sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11)');
            params[0].AsInteger := strtoint(edit1.text);
            params[1].AsString := edit5.Text;
            params[2].AsDateTime := strtodatetime(edit4.text);
            params[3].AsString := 'VENDAS';
            params[4].AsInteger := strtoint(label10.Caption);
            params[5].AsInteger := strtoint(label7.Caption);
            params[6].AsInteger := 0;
            params[7].AsInteger := 0;
            params[8].AsInteger := 0;
            params[9].AsInteger := 0;
            params[10].AsInteger := 0;
            params[11].AsInteger := strtoint(label12.Caption);
            prepare;
            execquery;
        end;
        vcontrole := edit1.Text;
        frmItensVenda := TfrmItensVenda.Create(Application);
        frmItensVenda.vtipo := vtipo;
        frmItensVenda.vcontrole := strtoint(edit1.Text);
        frmItensVenda.Ednota.Text := Edit5.Text;
        frmitensvenda.lbvend.Caption := combobox3.Text;
        frmitensvenda.lbnome.Caption := combobox1x.Text;
        frmItensVenda.limite := limite;
        if label10.caption <> '' then
            frmItensVenda.vcli := strtoint(label10.caption);
        frmItensVenda.ShowModal;
        Frmitensvenda.Close;
        try
          frmItensVenda.Free;
          except
          //Showmessage('Venda Registrada com sucesso !!');
        end;
       // close;
    end;
    CommitWork;
    ibdm.IBQDoctos.Close;
    ibdm.IBQDoctos.Open;
    end;
    FrmNotaVenda.close;
    end;

end;

procedure TFrmNotaVenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFrmNotaVenda.Edit5Exit(Sender: TObject);
begin
  if (edit5.Text = '') or (edit5.Text = '0') then
  begin
    Showmessage('Nr do documento não pode ser em branco !');
   end
   else
   begin
    with ibdm.IBQDoctos do
    begin
        open;
        if locate('documento',edit5.Text,[]) then
        begin
            ShowMessage('Número de documento já existente...');
            edit5.Text := '';
            edit5.SetFocus;
        end;
    end;
   end;
end;

procedure TFrmNotaVenda.FormActivate(Sender: TObject);
  var
  msg:string;
begin
 //   combobox1.items.Clear;
    combobox2.Clear;
    combobox3.Clear;
   if vtp = 1 then
   begin
           if (TRim(ibdm.IBQClientesBL.AsString) = 'T') or (Trim(ibdm.IBQClientesBL.AsString) = 'C') then
            begin
                msg:=Trim(ibdm.IBQClientesOBSBL.Text);
                Showmessage('Cadastro com Bloqueio, verifique !!'+#13+#10+msg);
                Combobox2.Enabled := False;
                Combobox3.Enabled := False;
                FrmNotaVenda.Close;
            end;
    end
    else
    begin

   with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select codigo,nome,cpf from clientes');
        sql.Add('order by nome ASC');
        prepare;
        open;
        first;
        combobox1x.Items.Add('');
        while not eof do
        begin
            combobox1x.Items.Add(Fields[1].AsString);
            if fields[1].asstring= vnome then
              combobox1x.Text := ibdm.IBQClientesNOME.AsString;
            next;
        end;
    end;
    end;
  //  combobox1.Text := ibdm.IBQClientesNOME.AsString;
    with ibdm.IBQUsuario do
    begin
        close;
        sql.Clear;
        sql.Add('select * from usuarios');
        sql.Add('Where super <> :p0');
        sql.Add('order by codigo ASC');
        Params[0].AsString:= 'D';
        prepare;
        open;
        first;
        while not eof do
        begin
            combobox2.Items.Add(ibdm.IBQUsuarioNOME.AsString);
            combobox3.Items.Add(ibdm.IBQUsuarioNOME.AsString);
            next;
        end;
    end;
end;

procedure TFrmNotaVenda.ComboBox1xClick(Sender: TObject);
begin
 {   with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select codigo from clientes');
        sql.Add('where nome =:p0');
        params[0].AsString := combobox1.Text;
        prepare;
        open;
        if fields[0].AsString <> '' then
            label10.Caption := fields[0].AsString
           else
            label10.Caption := '0';
    end;     }
end;

procedure TFrmNotaVenda.ComboBox2Click(Sender: TObject);
begin
    with ibdm.IBQUsuario do
    begin
        close;
        open;
        locate('nome',combobox2.text,[]);
        label7.Caption := ibdm.IBQUsuarioCODIGO.AsString;
    end;
end;

procedure TFrmNotaVenda.ComboBox1xExit(Sender: TObject);
    var
    vbl:string;
begin

    if tpvenda > 0 then
    if vtp = 1 then
    begin
        Bitbtn1.Enabled := True;
        Label10.Caption :=  ibdm.IBQClientescodigo.AsString;
        lblimite.Caption := 'Limite de crédito: '+ibdm.IBQClientesLIMCRED.AsString;
        lblimite.Repaint;
        if (Trim(ibdm.IBQClientesBL.AsString) = 'T') or (trim(ibdm.IBQClientesBL.AsString) = 'P') then
            begin
                Showmessage('Cadastro com Bloqueio, verifique !!');
                Combobox2.Enabled := False;
                Combobox3.Enabled := False;
                FrmNotaVenda.Close;
            end;
    end
    else
    begin
      vbl:='T';
       with ibdm.Consulta do
        begin
            close;
            sql.Clear;
            sql.Add('select codigo,BL, limcred from clientes');
            sql.Add('where nome =:p0');
            params[0].AsString := combobox1x.Text;
            prepare;
            open;
            if fields[0].AsString <> '' then
                begin
                label10.Caption := fields[0].AsString;
                 vbl := Trim(Fields[1].AsString);
                 lblimite.Caption := 'Limite de crédito: '+ Fields[2].AsString ;
                 lblimite.Repaint;
                end
               else
                label10.Caption := '0';
            if (vbl = 'T') or (vbl = 'C') then
            begin
                Showmessage('Cadastro com Bloqueio, verifique !!');
                Combobox2.Enabled := False;
                Combobox3.Enabled := False;
                FrmNotaVenda.Close;
            end;

        end;
    end;
    if ComboBox1x.Text <> '' then
          begin
            frmconfcli:=tfrmconfcli.create(Application);
            frmconfcli.LBNOME.Caption:= Combobox1x.Text;
            frmconfcli.ShowModal;
            frmconfcli.Free;
            IF vsegue=True then
              bitbtn1.Click;
          end
          else
            ShowMessage('Faltou informar nome do Cliente!!');

end;

procedure TFrmNotaVenda.ComboBox3Click(Sender: TObject);
begin
    with ibdm.IBQUsuario do
    begin
        close;
        open;
        locate('nome',combobox3.text,[]);
        label12.Caption := ibdm.IBQUsuarioCODIGO.AsString;
    end;
end;

procedure TFrmNotaVenda.ComboBox2Exit(Sender: TObject);
begin
   with ibdm.IBQUsuario do
    begin
        close;
        open;
        locate('nome',combobox2.text,[]);
        label7.Caption := ibdm.IBQUsuarioCODIGO.AsString;
        if ibdm.IBQUsuarioSUPER.Value = 'N' then
        begin
            Showmessage('Operador sem permissão para vender !!');
            bitbtn1.Enabled := False;
            Combobox3.Enabled := False;
        end
        Else
        begin
           // bitbtn1.Enabled := True;
            Combobox3.Enabled := True;
        end;
    end;
end;

procedure TFrmNotaVenda.ComboBox3Exit(Sender: TObject);
  var
    vbl:string;

begin


        with ibdm.IBQUsuario do
        begin
            close;
            open;
            locate('nome',combobox3.text,[]);
            label12.Caption := ibdm.IBQUsuarioCODIGO.AsString;
         {   if ibdm.IBQUsuarioSUPER.Value = 'N' then
            begin
                Showmessage('Operador sem permissão para vender !!');
                bitbtn1.Enabled := False;
            end
            Else
            begin         }
          //      bitbtn1.Enabled := True;
         //   end;
        end;
        if tpvenda > 0 then
        if vtp = 1 then
        begin
            Bitbtn1.Enabled := True;
            Label10.Caption :=  ibdm.IBQClientescodigo.AsString;
            lblimite.Caption := 'Limite de crédito: '+ibdm.IBQClientesLIMCRED.AsString;
            lblimite.Repaint;
            if (Trim(ibdm.IBQClientesBL.AsString) = 'T') or (trim(ibdm.IBQClientesBL.AsString) = 'P') then
                begin
                    Showmessage('Cadastro com Bloqueio, verifique !!');
                    Combobox2.Enabled := False;
                    Combobox3.Enabled := False;
                    FrmNotaVenda.Close;
                end;
        end
        else
        begin
          vbl:='T';
           with ibdm.Consulta do
            begin
                close;
                sql.Clear;
                sql.Add('select codigo,BL, limcred from clientes');
                sql.Add('where nome =:p0');
                params[0].AsString := combobox1x.Text;
                prepare;
                open;
                if fields[0].AsString <> '' then
                    begin
                    label10.Caption := fields[0].AsString;
                     vbl := Trim(Fields[1].AsString);
                     lblimite.Caption := 'Limite de crédito: '+ Fields[2].AsString ;
                     lblimite.Repaint;
                    end
                   else
                    label10.Caption := '0';
                if (vbl = 'T') or (vbl = 'C') then
                begin
                    Showmessage('Cadastro com Bloqueio, verifique !!');
                    Combobox2.Enabled := False;
                    Combobox3.Enabled := False;
                    FrmNotaVenda.Close;
                end;

            end;
        end;
        if tpvenda = 0 then
          ComboBox1x.SetFocus
          else
          if ComboBox1x.Text <> '' then
          begin
            frmconfcli:=tfrmconfcli.create(Application);
            frmconfcli.LBNOME.Caption:= Combobox1x.Text;
            frmconfcli.ShowModal;
            frmconfcli.Free;
            IF vsegue=True then
              bitbtn1.Click;
          end
          else
            ShowMessage('Faltou informar nome do Cliente!!');

end;

procedure TFrmNotaVenda.ComboBox1Exit(Sender: TObject);
begin
//
    if label10.Caption <>  '' then
        bitbtn1.Enabled := true;
end;

procedure TFrmNotaVenda.ComboBox1Enter(Sender: TObject);
begin
    combobox1.Text := ibdm.IBQClientesNOME.AsString;
end;

procedure TFrmNotaVenda.ComboBox1xChange(Sender: TObject);
begin
    bitbtn1.Enabled := true;
end;

end.
