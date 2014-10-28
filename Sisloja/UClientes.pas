unit UClientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, Mask,  ExtCtrls, XP_Form,
  MegaEditNumerico, rxCurrEdit, rxToolEdit;

type
  TFrmEdClientes = class(TForm)
    Label17: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Tipo: TLabel;
    Label32: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label44: TLabel;
    LblRg: TLabel;
    Label15: TLabel;
    Label43: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label12: TLabel;
    Label25: TLabel;
    Label35: TLabel;
    Label37: TLabel;
    Label27: TLabel;
    Label39: TLabel;
    Label16: TLabel;
    EdObs: TEdit;
    edlimcred: TMegaEditNumerico;
    Cargo: TEdit;
    edempcep: TMaskEdit;
    edendemp: TEdit;
    Trab: TEdit;
    EdRefComercial: TEdit;
    Aut1: TEdit;
    NPai: TEdit;
    edconj_trab: TEdit;
    EdConjuge: TEdit;
    EdRg: TEdit;
    ednatural: TEdit;
    EdEmail: TEdit;
    EdFone: TEdit;
    edcompro: TEdit;
    edtpores: TComboBox;
    EdBairro: TEdit;
    EdEndereco: TEdit;
    Ednome: TEdit;
    Edcodigo: TEdit;
    edcadastro: TDateEdit;
    Label3: TLabel;
    edptoref: TEdit;
    Label29: TLabel;
    EdUf: TEdit;
    Label8: TLabel;
    EdCep: TMaskEdit;
    Label7: TLabel;
    EdCidade: TEdit;
    Label6: TLabel;
    Label30: TLabel;
    edvlralu: TCurrencyEdit;
    Label31: TLabel;
    edtmpres: TEdit;
    edtpcontato: TComboBox;
    Label33: TLabel;
    Label34: TLabel;
    edfax: TEdit;
    Label10: TLabel;
    EdCelular: TEdit;
    EdNascimento: TDateEdit;
    LblNasc: TLabel;
    eddtrg: TDateEdit;
    Label19: TLabel;
    edorgao: TEdit;
    Label14: TLabel;
    EdCpf: TEdit;
    LblCpf: TLabel;
    dtnccon: TDateEdit;
    Label18: TLabel;
    NMae: TEdit;
    Label22: TLabel;
    Aut2: TEdit;
    Label24: TLabel;
    EdRefBancaria: TEdit;
    Label13: TLabel;
    Label26: TLabel;
    Fone: TEdit;
    Label20: TLabel;
    edempcid: TEdit;
    Label36: TLabel;
    edempuf: TEdit;
    Label28: TLabel;
    Salario: TMegaEditNumerico;
    Label38: TLabel;
    edoutrend: TMegaEditNumerico;
    Label42: TLabel;
    edbl: TEdit;
    Label40: TLabel;
    enrdias: TCurrencyEdit;
    Label41: TLabel;
    edblp: TEdit;
    cheques: TCheckBox;
    Btngravar: TBitBtn;
    Edobsbl: TEdit;
    BtnFechar: TBitBtn;
    edauto: TCheckBox;
    edatu: TDateEdit;
    Label45: TLabel;
    procedure BtngravarClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edautoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdCpfExit(Sender: TObject);
    procedure EdNascimentoExit(Sender: TObject);
    procedure edblExit(Sender: TObject);
  private
    { Private declarations }
  public
     vnovo :Boolean;
    { Public declarations }
  end;

var
  FrmEdClientes: TFrmEdClientes;

implementation

uses DM, Ufuncoes;

{$R *.DFM}

procedure TFrmEdClientes.BtngravarClick(Sender: TObject);
var
    vcod : integer;
    tem,msg:integer;
    vatucad:Boolean;
begin
    if edcpf.Text<>'999' then
    begin
        tem:= 0;
        with ibdm.Consulta do
        begin
            Close;
            sql.Clear;
            sql.Add('Select codigo from clientes');
            sql.Add('where cpf = :p0');
            params[0].asstring := edcpf.Text ;
            Open;

            if (Fields[0].AsString <> '') and (fields[0].asstring <> edcodigo.Text) then
                tem:=1;
        end;

        if (edcpf.Text = '') or (CalculaCnpjCpf(edcpf.text)= False) or (tem=1) then
        begin
             if tem=1 then
              begin
                Showmessage('Já existe um cadastro de cliente com este CPF !!!');
                edcpf.SetFocus;
              end
             else
              begin
              Showmessage('Erro no CPF !!');
              edcpf.SetFocus;
              end;
        end;
    end;
   // Else
  //  begin
    if vnovo = True then
    begin
     if edcodigo.Text = '' then
      begin
        ShowMessage('Código Inválido!!!');
        edcodigo.SetFocus;
      end
      else
      begin
        with ibdm.Grava do
            begin
                close;
                sql.Clear;
                sql.Add('Insert into clientes');
                sql.Add('(codigo,nome,endereco,bairro,ptoref,tpores,tmpres,vlralu,compro,cidade,cep,uf,fone,fax,celular,email,tpcontato,refcomercial,refbancaria,rg,orgaoexp,datarg,cpf,dtnasc,cadastro,foneemp,obsbl)');
                sql.Add('values(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:p14,:p15,:p16,:p17,:p18,:p19,:p20,:p21,:p22,:p23,:p24,:p25,:p26)');
                params[0].Asstring := Edcodigo.text;
                params[1].AsString := ednome.Text;
                params[2].AsString := edendereco.Text;
                params[3].AsString := edbairro.Text;
                params[4].AsString := edptoref.Text;
                params[5].AsString := Copy( edtpores.Text,1,1);
                params[6].AsString := edtmpres.Text;
                params[7].Ascurrency := edvlralu.value;
                params[8].AsString := edcompro.Text;
                params[9].AsString := edcidade.Text;
                params[10].asstring := edcep.Text;
                params[11].AsString := eduf.text;
                params[12].AsString := edfone.Text;
                params[13].AsString := edfax.Text;
                params[14].AsString := edcelular.Text;
                params[15].AsString := edemail.Text;
                params[16].AsString := Copy(edtpcontato.Text,1,1);
                params[17].Asstring := edrefcomercial.Text;
                params[18].AsString := edrefbancaria.text;
                params[19].Asstring := edrg.Text;
                params[20].AsString := edorgao.Text;
                params[21].Asdate   := eddtrg.date;
                params[22].AsString := edcpf.Text;
                params[23].Asdate   := ednascimento.Date;
                params[24].AsDate   := edcadastro.Date;
                params[25].AsString := fone.Text;
                params[26].AsString := edobsbl.Text;
                prepare;
                ExecQuery;
                CommitWork;
                Close;
                sql.Clear;
                sql.Add('Update clientes');
                sql.Add('set empresa=:p0,cargo=:p1,salario=:p2,');
                sql.add('outrend=:p3,endemp=:p4,cidemp=:p5,cepemp=:p6,ufemp=:p7,conjuge=:p8,dtnconj=:p9,npai=:p10,nmae=:p11,aut1=:p12,aut2=:p13,limcred=:p14,obs=:p15,bl=:p16,nrdiasbl=:p17,nrdiasatrazo=:p18,conj_trab=:p19,naturalid=:p20,cheques=:21,atucad=:22');
                sql.Add('where codigo=:p23');
                params[0].AsString := trab.Text;
                params[1].AsString := cargo.Text;
                params[2].Ascurrency := salario.Value;
                params[3].AsCurrency := edoutrend.Value;
                params[4].AsString := edendemp.Text;
                params[5].AsString := edempcid.Text;
                params[6].AsString := edempcep.text;
                params[7].AsString := edempuf.Text;
                params[8].AsString := edconjuge.Text;
                params[9].AsDate := dtnccon.Date;
                params[10].AsString := npai.Text;
                params[11].AsString := nmae.Text ;
                params[12].AsString := aut1.Text ;
                params[13].AsString := aut2.Text;
                params[14].AsCurrency := edlimcred.Value;
                params[15].AsString := edobs.Text;
                params[16].AsString := edbl.Text;
                params[17].AsInteger := enrdias.AsInteger;
                params[18].AsInteger := strtoint(edblp.text);
                params[19].AsString := edconj_trab.Text;
                params[20].AsString := ednatural.Text;
                if cheques.Checked = true then
                  Params[21].AsString := 'S'
                  Else
                  Params[21].AsString := 'N';
                Params[22].AsDate:=edcadastro.Date;
                params[23].AsString := edcodigo.Text;
                prepare;
                ExecQuery;
            end;
            CommitWork;
            vcod := ibdm.IBQParamPROXCLI.AsInteger;
            with ibdm.Grava do
            begin
                close;
                sql.Clear;
                sql.Add('update param');
                sql.Add('set proxcli=:p0');
                params[0].AsInteger := vcod+1;
                prepare;
                execquery;
            end;
            CommitWork;
            ibdm.IBQParam.Close;
            close;
      end;
    end
   else
    begin
          msg := application.MessageBox
        ('Foi realizada a atualização deste cadastro ???','Confirmação',68);

        if msg = 6 then
          vatucad := True
          else
          vatucad := False;

        with ibdm.Grava do
            begin
                close;
                sql.Clear;
                sql.Add('Update Clientes');
                sql.Add('set nome=:p0,endereco=:p1,bairro=:p2,ptoref=:p3,tpores=:p4,tmpres=:p5,vlralu=:p6,compro=:p7,cidade=:p8,cep=:p9,uf=:p10,fone=:p11,fax=:p12,celular=:p13,email=:p14,tpcontato=:p15');
                if vatucad  = True then
                  begin
                    sql.Add(',refcomercial=:p16,refbancaria=:p17,rg=:p18,orgaoexp=:p19,datarg=:p20,cpf=:p21,dtnasc=:p22,foneemp=:p23,atucad=:p24');
                    sql.Add('where codigo=:p25') ;
                  end
                else
                  begin
                    sql.Add(',refcomercial=:p16,refbancaria=:p17,rg=:p18,orgaoexp=:p19,datarg=:p20,cpf=:p21,dtnasc=:p22,foneemp=:p23');
                    sql.Add('where codigo=:p24') ;
                  end;
                params[0].AsString := ednome.Text;
                params[1].AsString := edendereco.Text;
                params[2].AsString := edbairro.Text;
                params[3].AsString := edptoref.Text;
                params[4].AsString := Copy( edtpores.Text,1,1);
                params[5].AsString := edtmpres.Text;
                params[6].Ascurrency := edvlralu.value;
                params[7].AsString := edcompro.Text;
                params[8].AsString := edcidade.Text;
                params[9].asstring := edcep.Text;
                params[10].AsString := eduf.text;
                params[11].AsString := edfone.Text;
                params[12].AsString := edfax.Text;
                params[13].AsString := edcelular.Text;
                params[14].AsString := edemail.Text;
                params[15].AsString := Copy(edtpcontato.Text,1,1);
                params[16].Asstring := edrefcomercial.Text;
                params[17].AsString := edrefbancaria.text;
                params[18].Asstring := edrg.Text;
                params[19].AsString := edorgao.Text;
                params[20].Asdate   := eddtrg.date;
                params[21].AsString := edcpf.Text;
                params[22].Asdate   := ednascimento.Date;
                params[23].AsString := fone.Text;

                if vatucad  = True then
                begin
                  Params[24].AsDatetime := Now;
                  params[25].AsString := edcodigo.Text;
                end
                else
                begin
                  params[24].AsString := edcodigo.Text;
                end;
                prepare;
                ExecQuery;
                CommitWork;
                Close;
                sql.Clear;
                sql.Add('Update clientes');
                sql.Add('set empresa=:p0,cargo=:p1,salario=:p2,outrend=:p3,endemp=:p4,cidemp=:p5,cepemp=:p6,ufemp=:p7,conjuge=:p8,dtnconj=:p9,npai=:p10,nmae=:p11,aut1=:p12,aut2=:p13,limcred=:p14,obs=:p15,bl=:p16,nrdiasbl=:p17,nrdiasatrazo=:p18,');
                sql.add('conj_trab=:p19,naturalid=:p20, cheques=:p21,obsbl=:p22');
                sql.Add('where codigo=:p23');
                params[0].AsString := trab.Text;
                params[1].AsString := cargo.Text;
                params[2].Ascurrency := salario.Value;
                params[3].AsCurrency := edoutrend.Value;
                params[4].AsString := edendemp.Text;
                params[5].AsString := edempcid.Text;
                params[6].AsString := edempcep.text;
                params[7].AsString := edempuf.Text;
                params[8].AsString := edconjuge.Text;
                params[9].AsDate := dtnccon.Date;
                params[10].AsString := npai.Text;
                params[11].AsString := nmae.Text ;
                params[12].AsString := aut1.Text ;
                params[13].AsString := aut2.Text;
                params[14].AsCurrency := edlimcred.Value;
                params[15].AsString := edobs.Text;
                params[16].AsString := edbl.Text;
                params[17].AsInteger := enrdias.AsInteger;
                params[18].AsInteger := strtoint(edblp.text);
                params[19].AsString := edconj_trab.Text;
                params[20].AsString := ednatural.Text;
                if cheques.Checked = true then
                  Params[21].AsString := 'S'
                  Else
                  Params[21].AsString := 'N';
                 params[22].AsString := edobsbl.Text;
                 params[23].AsString := edcodigo.Text;
                prepare;
                ExecQuery;
            end;
            CommitWork;
  //  end;

 //   CommitWork;
    close;
    end;
end;

procedure TFrmEdClientes.BtnFecharClick(Sender: TObject);
begin
    FrmEdClientes.Close;
end;

procedure TFrmEdClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFrmEdClientes.edautoClick(Sender: TObject);
var
    vcod : integer;
begin
end;

procedure TFrmEdClientes.FormShow(Sender: TObject);
    var
    vprox:string;
    maior:integer;
begin
    if vnovo = True then
    begin
        with ibdm.IBQParam do
        begin
            Open;
            edcidade.Text := ibdm.IBQParamCIDADE.AsString;
            edcep.Text := ibdm.IBQParamCEP.AsString;
            eduf.Text := ibdm.IBQParamUF.AsString;
            edempcid.Text := ibdm.IBQParamCIDADE.AsString;
            edempcep.Text := ibdm.IBQParamCEP.AsString;
            edempuf.Text := ibdm.IBQParamUF.AsString;
            enrdias.asinteger := ibdm.IBQParamNRDIASBL.AsInteger;
            edlimcred.Value := ibdm.IBQParamLIMCFRED.Value;
            if ibdm.IBQParamBLCADASTRO.AsString = 'S' then
                edbl.text := 'P';
            if edauto.Checked = True then
            begin
                maior:=1;
                with ibdm.q2 do
                begin
                    Close;
                    sql.Clear;
                    sql.Add('Select Max(codigo) from clientes');
                    open;
                    maior:=Fields[0].AsInteger +1 ;
                end;
                vprox := inttostr(maior);
         //       vprox := inttostr(ibdm.IBQParamPROXcli.AsInteger);
                edcodigo.Text := retzero(vprox,5);
            end;
            Close;
            edcadastro.Date := now;
            edatu.Date := Now;
        end;
    end;
    if vnovo = False then
    begin
        edcodigo.Enabled := False;
        edcadastro.Enabled := False;
    end;

  if Trim(edbl.Text)= 'T' then
    edobsbl.visible:=TRue
    else
    edobsbl.visible:=False;




end;

procedure TFrmEdClientes.EdCpfExit(Sender: TObject);
    var
    tem:integer;
    nome:string;
begin
    if edcpf.Text<>'999' then
    begin
      tem:= 0;
      with ibdm.Consulta do
      begin
          Close;
          sql.Clear;
          sql.Add('Select codigo,nome from clientes');
          sql.Add('where cpf = :p0');
          params[0].asstring := edcpf.Text ;
          Open;
          nome:=Fields[1].asstring;
          if (Fields[0].AsString <> '') and (fields[0].asstring <> edcodigo.Text) then
              tem:=1;
      end;

      if (edcpf.Text = '') or (CalculaCnpjCpf(edcpf.text)= False) or (tem=1) then
      begin
           if tem=1 then
            begin
              Showmessage('Já existe um cadastro de cliente com este CPF: '+nome);
              edcpf.SetFocus;
            end
           else
            begin
              IF edcpf.Text <> '' then
              begin
                Showmessage('Erro no CPF !!');
                edcpf.SetFocus;
              end;
            end;
      end ;
  end;
end;

procedure TFrmEdClientes.EdNascimentoExit(Sender: TObject);
begin
    if IdadeAtual(ednascimento.date)< 18 then
        Showmessage('Idade insuficiente !!');
end;

procedure TFrmEdClientes.edblExit(Sender: TObject);
begin
  if Trim(edbl.Text)= 'T' then
    edobsbl.visible:=TRue
    else
    edobsbl.visible:=False;
end;

end.
