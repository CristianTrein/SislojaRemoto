unit UPrestacoes1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, XP_Form, Mask, rxToolEdit, rxCurrEdit,math,
  ComCtrls, MegaEditDataHora;

type
  TFrmPrestacoes1 = class(TForm)
    Label17: TLabel;
    Label18: TLabel;
    edvlmerc: TCurrencyEdit;
    GroupBox2: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Label1: TLabel;
    edvlliq: TCurrencyEdit;
    Label14: TLabel;
    Edvle: TCurrencyEdit;
    eddtent: TMegaEditDataHora;
    Label21: TLabel;
    modopgto: TComboBox;
    Label23: TLabel;
    ckprent: TCheckBox;
    eddtent1: TDateEdit;
    Label19: TLabel;
    Label3: TLabel;
    edvlsld: TCurrencyEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label2: TLabel;
    ednrp: TComboBox;
    Label20: TLabel;
    ed1: TEdit;
    ed2: TEdit;
    ed3: TEdit;
    ed4: TEdit;
    ed5: TEdit;
    ed6: TEdit;
    edliqui: TCurrencyEdit;
    BitBtn2: TBitBtn;
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
    BitBtn5: TBitBtn;
    eds: TEdit;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BtnFechar: TBitBtn;
    Label22: TLabel;
    CheckBox1: TCheckBox;
    btn1: TButton;
    procedure Edit2Exit(Sender: TObject);
    procedure ednrpClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EdvleExit(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton4Exit(Sender: TObject);
    procedure RadioButton3Exit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure edvlliqExit(Sender: TObject);
    procedure eddtent1Exit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure edsExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edvlsldExit(Sender: TObject);
    procedure Edit7Exit(Sender: TObject);
    procedure Edit9Exit(Sender: TObject);
    procedure Edit11Exit(Sender: TObject);
    procedure Edit13Exit(Sender: TObject);
    procedure Edit15Exit(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eddtentExit(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure edvlmercExit(Sender: TObject);
    procedure modopgtoExit(Sender: TObject);
    procedure ednrpExit(Sender: TObject);
    procedure ed1Exit(Sender: TObject);
    procedure ed2Exit(Sender: TObject);
    procedure ed3Exit(Sender: TObject);
    procedure ed6Exit(Sender: TObject);
    procedure ed5Exit(Sender: TObject);
    procedure ed4Exit(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure Edit8Exit(Sender: TObject);
    procedure Edit10Exit(Sender: TObject);
    procedure Edit12Exit(Sender: TObject);
    procedure Edit14Exit(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure WMSysCommand(var Message : TWMSysCommand) ;
    message WM_SYSCOMMAND ;

  private
    { Private declarations }
  public
    { Public declarations }
    nf : boolean;
    vtipo:string;
    vfim:boolean;
    lbnome:string;
    qcontrole:integer;
    timp:integer;
    vpromo:string;
    lista:integer;
    simula:integer;
    textolog:string;
  end;

var
  FrmPrestacoes1: TFrmPrestacoes1;

implementation

uses UPrestacoes, DM, UNotaFiscal, UPrincipal, URelNotaFiscal, UOrdemServ1,
  Ufuncoes, UItensVenda, UNotaVenda, UFechaVenda, Ucarne, Urelrecibo1,
  UcarneMP, Urelrecibo2, UBematech_4200, UClasTrib, UTetesImp, Utesteimp;

{$R *.DFM}

procedure TFrmPrestacoes1.Edit2Exit(Sender: TObject);
begin
 //   edit1.Text := formatcurr('0.00',strtocurr(edit1.Text) - strtocurr(edit2.Text));
end;

procedure TFrmPrestacoes1.ednrpClick(Sender: TObject);
begin
    if ednrp.Text >= '1' then
    begin
        ed1.Text := '030';
    //    edit4.Text := formatcurr('0.00', strtocurr(edit1.text) / strtoint(combobox1.text));
//        FrmPrestacoes1.Edit5.Text := datetostr(now + 30);
    end;

    if ednrp.Text >= '2' then
    begin
        ed2.Text := '060';
    //    edit6.Text := formatcurr('0.00', strtocurr(edit1.text) / strtoint(combobox1.text));
//        FrmPrestacoes1.Edit7.Text := datetostr(now + 60);
    end;

    if ednrp.Text >= '3' then
    begin
        ed3.Text := '090';
    //    edit8.Text := formatcurr('0.00', strtocurr(edit1.text) / strtoint(combobox1.text));
 //       FrmPrestacoes1.Edit9.Text := datetostr(now + 90);
    end;

    if ednrp.Text >= '4' then
    begin
        ed4.Text := '120';
    //    edit10.Text := formatcurr('0.00', strtocurr(edit1.text) / strtoint(combobox1.text));
  //      FrmPrestacoes1.Edit11.Text := datetostr(now + 120);
    end;

    if ednrp.Text >= '5' then
    begin
        ed5.Text := '150';
    //    edit12.Text := formatcurr('0.00', strtocurr(edit1.text) / strtoint(combobox1.text));
    //    FrmPrestacoes1.Edit13.Text := datetostr(now + 150);
    end;

    if ednrp.Text >= '6' then
    begin
        ed6.Text := '180';
    //    edit14.Text := formatcurr('0.00', strtocurr(edit1.text) / strtoint(combobox1.text));
    //    FrmPrestacoes1.Edit15.Text := datetostr(now + 180);
    end;
end;

procedure TFrmPrestacoes1.BitBtn1Click(Sender: TObject);

begin
    textolog := 'Clicou em Volta para ítens';
    LOG(textolog);


    vfim:=False;
    Close;
end;

procedure TFrmPrestacoes1.EdvleExit(Sender: TObject);
    var
    desc:currency;
begin
    textolog := 'Digitou entrada: '+ FormatCurr('0.00',edvle.Value);
    LOG(textolog);

    eddtent.Date := int(now);
    if lista=2 then
    begin
        desc:= 1;
        desc := ibdm.IBQParamDESCAV.AsCurrency;
        edvlsld.Value := (edvlmerc.Value - (edvlmerc.Value *(desc/100)) )-  edvle.Value
    end
    else
        edvlsld.Value := edvlmerc.Value - edvle.Value;
    eddtent.SetFocus;
    if edvle.Value > 0 then
        modopgto.Enabled := true;
end;

procedure TFrmPrestacoes1.RadioButton3Click(Sender: TObject);
begin
    textolog := 'Clicou a vista';
    LOG(textolog);

    if radiobutton3.Checked = True then
    begin
        edvle.Enabled := False;
        eddtent.Enabled := False;
        edvlsld.Enabled := True;
        radiobutton1.Enabled := False;
        radiobutton2.Enabled := False;
        ednrp.Enabled := False;
        ed1.Enabled := False;
        ed2.Enabled := False;
        ed3.Enabled := False;
        ed4.Enabled := False;
        ed5.Enabled := False;
        ed6.Enabled := False;
        edit4.Enabled := False;
        edit5.Enabled := False;
        edit6.Enabled := False;
        edit7.Enabled := False;
        edit8.Enabled := False;
        edit9.Enabled := False;
        edit10.Enabled := False;
        edit11.Enabled := False;
        edit12.Enabled := False;
        edit13.Enabled := False;
        edit14.Enabled := False;
        edit15.Enabled := False;
        modopgto.Enabled := True;
        modopgto.SetFocus;
    end;
end;

procedure TFrmPrestacoes1.BitBtn2Click(Sender: TObject);
    var
    v1,v2,v3,v4,v5,v6:integer;
    vezes:integer;
    dmed:real;
    jr:currency;
    x,y:currency;
    n : integer;
begin

    textolog := 'Clicou em calcular ';
    LOG(textolog);




    if simula=0 then
    if (modopgto.Text = '') and ((radiobutton3.Checked=TRue) or ((edvle.Value>0) and (int(eddtent.Data) = int(now)))) then
        Showmessage('Faltou indicar a forma de pagamento !' );


    if Radiobutton3.Checked = True then
          bitbtn4.Enabled := True;


    IF  radiobutton1.Checked = true then
    begin
      edit4.text := '';
      edit5.text := '';
      edit6.text := '';
      edit7.text := '';
      edit8.text := '';
      edit9.text := '';
      edit10.text := '';
      edit11.text := '';
      edit12.text := '';
      edit13.text := '';
      edit14.text := '';
      edit15.text := '';

      if ednrp.Text = '' then
      begin
        Showmessage('Faltou indicar nr de parcelas !!!');

      end
      else
      begin

      with ibdm.IBQParam do
      begin
          Open;
          jr := FieldByname('txjuros').ascurrency;
          timp := FieldByname('timp').asinteger;
      end;

      if edvlsld.Value > 0 then
      begin
      bitbtn4.Enabled := True;

      if ed1.Text <> '' then
      begin
          vezes:=1;
          v1 := strtoint(ed1.text);
      end;
      if ed2.Text <> '' then
      begin
          vezes:=2;
          v2 := strtoint(ed2.text);
      end;
      if ed3.Text <> '' then
      begin
          vezes:=3;
          v3 := strtoint(ed3.text);
      end;
      if ed4.Text <> '' then
      begin
          vezes:=4;
          v4 := strtoint(ed4.text);
      end;
      if ed5.Text <> '' then
      begin
          vezes:=5;
          v5 := strtoint(ed5.text);
      end;
      if ed6.Text <> '' then
      begin
          vezes:=6;
          v6 := strtoint(ed6.text);
      end;
      Case vezes of
      0:dmed:=1;
      1:dmed:=v1;
      2:dmed:=(v1+v2) / vezes;
      3:dmed:=(v1+v2+v3) / vezes;
      4:dmed:=(v1+v2+v3+v4) / vezes;
      5:dmed:=(v1+v2+v3+v4+v5) / vezes;
      6:dmed:=(v1+v2+v3+v4+v5+v6) / vezes;
      end;
      x:=(1+(jr/3000));
      y:=Expo(x,Trunc(dmed));
      edliqui.Value := (edvlsld.Value * Y)/vezes;

      for n := 1 to vezes do
      begin
          Case n of
          1: begin
              edit4.Text := Formatcurr('0.00',edliqui.value);
              if Strtoint(ed1.Text) = 30 then
              edit5.Text := Datetostr( incmonth(now,1))
              Else
              Edit5.Text := Datetostr( now+Strtoint(ed1.Text) );
             end;
          2: begin
              edit6.Text := Formatcurr('0.00',edliqui.value);
              if Strtoint(ed2.Text) = 60 then
              edit7.Text := Datetostr( incmonth(now,2))
              Else
              Edit7.Text := Datetostr( now+Strtoint(ed2.Text) );
             end;
          3: begin
              edit8.Text := Formatcurr('0.00',edliqui.value);
              if Strtoint(ed3.Text) = 90 then
              edit9.Text := Datetostr( incmonth(now,3))
              Else
              Edit9.Text := Datetostr( now+Strtoint(ed3.Text) );
             end;
          4: begin
              edit10.Text := Formatcurr('0.00',edliqui.value);
              if Strtoint(ed4.Text) = 120 then
              edit11.Text := Datetostr( incmonth(now,4))
              Else
              Edit11.Text := Datetostr( now+Strtoint(ed4.Text) );
             end;
          5: begin
              edit12.Text := Formatcurr('0.00',edliqui.value);
              if Strtoint(ed5.Text) = 150 then
              edit13.Text := Datetostr( incmonth(now,5))
              Else
              Edit13.Text := Datetostr( now+Strtoint(ed5.Text) );
             end;
          6: begin
              edit14.Text := Formatcurr('0.00',edliqui.value);
              if Strtoint(ed6.Text) = 180 then
              edit15.Text := Datetostr( incmonth(now,6))
              Else
              Edit15.Text := Datetostr( now+Strtoint(ed6.Text) );
             end;

          End;
      end;
      end;
    end;
    end;

    IF  radiobutton2.Checked = true then
      begin
      if edit5.Text = '' then
      begin
        Showmessage('Faltou indicar ao menos 1 vencimento !');
      end
      else
      begin
      bitbtn4.Enabled := True;
      if edvlsld.Value > 0 then
      begin
      with ibdm.IBQParam do
      begin
          Open;
          jr := FieldByname('txjuros').ascurrency;
      end;
      if ed1.Text <> '' then
      begin
          vezes:=1;
          v1 := strtoint(ed1.text);
      end;
      if ed2.Text <> '' then
      begin
          vezes:=2;
          v2 := strtoint(ed2.text);
      end;
      if ed3.Text <> '' then
      begin
          vezes:=3;
          v3 := strtoint(ed3.text);
      end;
      if ed4.Text <> '' then
      begin
          vezes:=4;
          v4 := strtoint(ed4.text);
      end;
      if ed5.Text <> '' then
      begin
          vezes:=5;
          v5 := strtoint(ed5.text);
      end;
      if ed6.Text <> '' then
      begin
          vezes:=6;
          v6 := strtoint(ed6.text);
      end;
      Case vezes of
      0:dmed:=1;
      1:dmed:=v1;
      2:dmed:=(v1+v2) / vezes;
      3:dmed:=(v1+v2+v3) / vezes;
      4:dmed:=(v1+v2+v3+v4) / vezes;
      5:dmed:=(v1+v2+v3+v4+v5) / vezes;
      6:dmed:=(v1+v2+v3+v4+v5+v6) / vezes;
      end;
      x:=(1+(jr/3000));
      y:=Expo(x,Trunc(dmed));
      edliqui.Value := (edvlsld.Value * Y)/vezes;

      for n := 1 to vezes do
      begin
          Case n of
          1: begin
              edit4.Text := Formatcurr('0.00',edliqui.value);
              if Strtoint(ed1.Text) = 30 then
              edit5.Text := Datetostr( incmonth(now,1))
              Else
              Edit5.Text := Datetostr( now+Strtoint(ed1.Text) );
             end;
          2: begin
              edit6.Text := Formatcurr('0.00',edliqui.value);
              if Strtoint(ed2.Text) = 60 then
              edit7.Text := Datetostr( incmonth(now,2))
              Else
              Edit7.Text := Datetostr( now+Strtoint(ed2.Text) );
             end;
          3: begin
              edit8.Text := Formatcurr('0.00',edliqui.value);
              if Strtoint(ed3.Text) = 90 then
              edit9.Text := Datetostr( incmonth(now,3))
              Else
              Edit9.Text := Datetostr( now+Strtoint(ed3.Text) );
             end;
          4: begin
              edit10.Text := Formatcurr('0.00',edliqui.value);
              if Strtoint(ed4.Text) = 120 then
              edit11.Text := Datetostr( incmonth(now,4))
              Else
              Edit11.Text := Datetostr( now+Strtoint(ed4.Text) );
             end;
          5: begin
              edit12.Text := Formatcurr('0.00',edliqui.value);
              if Strtoint(ed5.Text) = 150 then
              edit13.Text := Datetostr( incmonth(now,5))
              Else
              Edit13.Text := Datetostr( now+Strtoint(ed5.Text) );
             end;
          6: begin
              edit14.Text := Formatcurr('0.00',edliqui.value);
              if Strtoint(ed6.Text) = 180 then
              edit15.Text := Datetostr( incmonth(now,6))
              Else
              Edit15.Text := Datetostr( now+Strtoint(ed6.Text) );
             end;

          End;
      end;
      end;
    end;
    end;
    ednrp.Enabled := False;
    radiobutton1.Enabled := False;
    radiobutton2.Enabled := False;
    if simula=0 then
    begin
      if frmnotavenda.tpvenda = 0 then
      radiobutton3.Enabled := True;
      if frmnotavenda.tpvenda = 1 then
      radiobutton4.Enabled := True;
    end;
    edvle.Enabled := False;
    eddtent.Enabled := False;

end;

procedure TFrmPrestacoes1.RadioButton1Click(Sender: TObject);
begin

    textolog := 'Clicou qtde Prestações ';
    LOG(textolog);


  //  if Radiobutton1.Checked = true then
        ednrp.Enabled := true;
        edit4.enabled := false;
        edit5.enabled := false;
        edit6.enabled := false;
        edit7.enabled := false;
        edit8.enabled := false;
        edit9.enabled := false;
        edit10.enabled := false;
        edit11.enabled := false;
        edit12.enabled := false;
        edit13.enabled := false;
        edit14.enabled := false;
        edit15.enabled := false;


end;

procedure TFrmPrestacoes1.RadioButton2Click(Sender: TObject);
begin

    textolog := 'Clicou Data de vencimento';
    LOG(textolog);

    if Radiobutton2.Checked = True then
    begin
       { ed1.Enabled := true;
        ed2.Enabled := true;
        ed3.Enabled := true;
        ed4.Enabled := true;
        ed5.Enabled := true;
        ed6.Enabled := true;   }
        edit5.Enabled := true;
        edit7.Enabled := true;
        edit9.Enabled := true;
        edit11.Enabled := true;
        edit13.Enabled := true;
        edit15.Enabled := true;



    end;
end;

procedure TFrmPrestacoes1.BitBtn3Click(Sender: TObject);
begin

    textolog := 'Clicou em nova simulação';
    LOG(textolog);

    ed1.Text := '';
    ed2.Text := '';
    ed3.Text := '';
    ed4.Text := '';
    ed5.Text := '';
    ed6.Text := '';
    edvle.Value :=0;
    eddtent.Date := now;
    edvlsld.Value := edvlliq.Value;
    ednrp.Text := '';
    edliqui.Value := 0;
    edit4.Text :='';
    edit5.Text :='';
    edit6.Text :='';
    edit7.Text :='';
    edit8.Text :='';
    edit9.Text :='';
    edit10.Text :='';
    edit11.Text :='';
    edit12.Text :='';
    edit13.Text :='';
    edit14.Text :='';
    edit15.Text :='';
    edit4.enabled := false;
    edit5.enabled := false;
    edit6.enabled := false;
    edit7.enabled := false;
    edit8.enabled := false;
    edit9.enabled := false;
    edit10.enabled := false;
    edit11.enabled := false;
    edit12.enabled := false;
    edit13.enabled := false;
    edit14.enabled := false;
    edit15.enabled := false;
    Radiobutton1.Checked := False;
    Radiobutton2.Checked := False;
    ednrp.Enabled := False;
    edvlsld.Enabled := False;
    ed1.Enabled := False;
    ed2.Enabled := False;
    ed3.Enabled := False;
    ed4.Enabled := False;
    ed5.Enabled := False;
    ed6.Enabled := False;
    if simula=0 then
    begin
        if frmnotavenda.tpvenda = 0 then
        radiobutton3.Enabled := True;
        if frmnotavenda.tpvenda = 1 then
        radiobutton4.Enabled := true;
    end;
    modopgto.Text := '';
    radiobutton3.checked := False;
//  radiobutton4.checked := False;
    bitbtn4.Enabled := False;
    ednrp.Enabled := False;
    radiobutton1.Enabled := TRue;
    radiobutton2.Enabled := True;
    edvle.Enabled := True;
    eddtent.Enabled := True;





end;

procedure TFrmPrestacoes1.RadioButton4Click(Sender: TObject);
begin
    textolog := 'Clicou a prazo';
    LOG(textolog);

if radiobutton4.Checked = True then
    begin
        edvle.Enabled := True;
        eddtent.Enabled := TRue;
        edvlliq.Enabled := False;
        radiobutton1.Enabled := TRue;
        radiobutton2.Enabled := TRue;
     //   ednrp.Enabled := TRue;
        edvlsld.Enabled := True;
       { ed1.Enabled := TRue;
        ed2.Enabled := TRue;
        ed3.Enabled := TRue;
        ed4.Enabled := TRue;
        ed5.Enabled := TRue;
        ed6.Enabled := False; }
        modopgto.Enabled := False;
       // edit4.Enabled := TRue;
       // edit5.Enabled := TRue;
       // edit6.Enabled := TRue;
       // edit7.Enabled := TRue;
       // edit8.Enabled := TRue;
       // edit9.Enabled := TRue;
       // edit10.Enabled := TRue;
       // edit11.Enabled := TRue;
       // edit12.Enabled := TRue;
       // edit13.Enabled := TRue;
       // edit14.Enabled := TRue;
        //edit15.Enabled := TRue;
        edvle.SetFocus;
    end;
end;

procedure TFrmPrestacoes1.RadioButton4Exit(Sender: TObject);
    var
    desc:currency;
begin
if radiobutton4.Checked = True then
    begin
        edvle.Enabled := True;
        edvlliq.Enabled := False;
        eddtent.Enabled := TRue;
        radiobutton1.Enabled := TRue;
        radiobutton2.Enabled := TRue;
  //      ednrp.Enabled := TRue;
       { ed1.Enabled := TRue;
        ed2.Enabled := TRue;
        ed3.Enabled := TRue;
        ed4.Enabled := TRue;
        ed5.Enabled := TRue;
        ed6.Enabled := False;   }
     {   edit4.Enabled := TRue;
        edit5.Enabled := TRue;
        edit6.Enabled := TRue;
        edit7.Enabled := TRue;
        edit8.Enabled := TRue;
        edit9.Enabled := TRue;
        edit10.Enabled := TRue;
        edit11.Enabled := TRue;
        edit12.Enabled := TRue;
        edit13.Enabled := TRue;
        edit14.Enabled := TRue;
        edit15.Enabled := TRue; }

        desc:=1;
        ibdm.IBQParam.Open;
        if lista = 2 then
        begin
            desc := ibdm.IBQParamDESCAV.AsCurrency;
            edvlsld.Value := edvlmerc.Value - (edvlmerc.Value * ((desc/100)));
        end
        else
           edvlsld.Value := edvlmerc.Value;


      //  edvlsld.Value := edvlmerc.Value;

    end;
end;

procedure TFrmPrestacoes1.RadioButton3Exit(Sender: TObject);
    var
    desc:currency;
begin
   if radiobutton3.Checked = True then
    begin
        desc:=1;
        ibdm.IBQParam.Open;
        if lista = 2 then
        begin
            desc := ibdm.IBQParamDESCAV.AsCurrency;
            edvlliq.Value := edvlmerc.Value - (edvlmerc.Value * ((desc/100)));
        end
        else
           edvlliq.Value := edvlmerc.Value;
        edvle.Enabled := False;
        eddtent.Enabled := False;
        radiobutton1.Enabled := False;
        radiobutton2.Enabled := False;
        ednrp.Enabled := False;
        ed1.Enabled := False;
        ed2.Enabled := False;
        ed3.Enabled := False;
        ed4.Enabled := False;
        ed5.Enabled := False;
        ed6.Enabled := False;
        edit4.Enabled := False;
        edit5.Enabled := False;
        edit6.Enabled := False;
        edit7.Enabled := False;
        edit8.Enabled := False;
        edit9.Enabled := False;
        edit10.Enabled := False;
        edit11.Enabled := False;
        edit12.Enabled := False;
        edit13.Enabled := False;
        edit14.Enabled := False;
        edit15.Enabled := False;

        modopgto.Enabled := True;
        edvlsld.Value := edvlliq.Value;
     end;
end;

procedure TFrmPrestacoes1.BitBtn4Click(Sender: TObject);
var
    vvalor:real;
    vnumdoc : string;
    vprest0 : string;
    vprest1 : string;
    vprest2 : string;
    vprest3 : string;
    ventrada: real;
    vcomissao:real;
    vcomissao1:real;
    vcont, msg : integer;
    f : textfile;
    vcod, vdesc : string;
    vqtd, vvalor1 : currency;
    vtp:string;
    vmodo:integer;
    vpos:integer;
    vmodopgto:string;
    vrcliente:string;
    vvltotal:currency;
    vldif :string;
    textolog,vextenso:string;
    vprtent,vok:boolean;
    iretorno:Integer;
    impressora:string;
begin

    BitBtn4.Enabled:=False;
    textolog := 'Clicou em Finaliza venda';
    LOG(textolog);

    IBDM.IBQParam.Open;
    if IBDM.IBQParamchkprt1.AsInteger = 1  then
    begin
      if not GetStatus(vok) then
        ShowMessage('Veirifique a impressora antes de prosseguir !!!');
        textolog := 'Impressora desligada ou c/ problema';
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
    end;
 }
    vfim:= true;
    //entrada  esta sendo jogado para o CAIXA
    vmodo:=0;
    if modopgto.Text <> '' then
    begin
        vpos:= pos('#',modopgto.text);
        if vpos > 0 then
        begin
            vmodo := Strtoint(copy(modopgto.text,1,vpos-1));
        end;
    end;
    vprest0 := ' ';
    vprest1 := ' ';
    vprest2 := ' ';
    vprest3 := ' ';
    vcomissao:=0;
    vvltotal := edvle.Value ;

    with ibdm.Consulta do
    begin
        Close;
        sql.clear;
        sql.Add('select comissao,comissao1 from usuarios');
        sql.Add('where codigo = :p0');
        params[0].AsInteger := strtoint(frmnotavenda.Label12.caption);
        open;
        vcomissao := Fields[0].AsCurrency;
        vcomissao1 := Fields[1].AsCurrency;
    end;

    if radiobutton1.Checked = true then
        vtp:=ednrp.Text;
    if radiobutton2.Checked = true then
    begin
        if ed1.Text <> '' then
            vtp:='1';
        if ed2.Text <> '' then
            vtp:='2';
        if ed3.Text <> '' then
            vtp:='3';
        if ed4.Text <> '' then
            vtp:='4';
        if ed5.Text <> '' then
            vtp:='5';
        if ed6.Text <> '' then
            vtp:='6';
    end;
    vmodopgto:='';
    if edvle.AsInteger > 0 then
    begin
        vmodopgto := 'ENT-';
    end;
    if radiobutton3.Checked = true then
        vmodopgto := 'AVISTA'
       else
        vmodopgto := vmodopgto+ed1.Text+'-'+ed2.Text+'-'+ed3.Text+'-'+ed4.Text+'-'+ed5.Text+'-'+ed6.Text;
    with ibdm.Cheka do
    begin
        textolog := 'Atualiza em doctos condição de pagamento e valor total '+FrmItensVenda.Ednota.Text;
        LOG(textolog);

        Close;
        sql.Clear;
        sql.Add('update doctos');
        sql.Add('Set condpag = :p0, valortotal=:p1');
        sql.Add('Where controle = :p2');
        params[0].AsString := vmodopgto;
        params[1].AsCurrency := edvlmerc.Value;
        params[2].asinteger := qcontrole;
        Execquery;
        CommitWork;
    end;
    vprtent:=False;
    if edvle.asinteger > 0 then
    begin
        ventrada:= edvle.Value;
        vprest0 := 'Entrada->R$ ' + formatcurr('0.00',ventrada);
        if int(eddtent.Date) = int(now) then
        begin
              vprtent:=True;
              with ibdm.Consulta do
              begin
                close;
                sql.Clear;
                sql.Add('select max(controle) from crecebidas');
                prepare;
                open;
                vcont := Fields[0].AsInteger + 1;
              end;
              textolog := 'Pagamento da entrada, lança ctas recebidas '+FrmItensVenda.Ednota.Text;
              LOG(textolog);

              with ibdm.Grava do
              begin
                close;
                sql.Clear;
                sql.Add('Insert into Crecebidas');
                sql.Add('(controle,documento,historico,vencimento,pagamento,parcela,cliente,valor,pago,mpgto)');
                sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9)');
                params[0].AsInteger := vcont;
                params[1].asstring := FrmItensVenda.Ednota.Text;
                params[2].AsString := lbnome;
                params[3].AsDateTime := now;
                params[4].AsDatetime := now;
                params[5].AsString := 'E';
                params[6].Asstring := frmnotavenda.label10.caption;
                params[7].AsCurrency := edvle.Value;
                params[8].AsCurrency := edvle.Value;
                params[9].AsInteger := vmodo;
                prepare;
                ExecQuery;
                commitwork;
              end;

              with ibdm.Consulta do
              begin
                  close;
                  sql.Clear;
                  sql.Add('select max(controle) from caixa');
                  prepare;
                  open;
                  vcont := Fields[0].AsInteger + 1;
              end;
              textolog := 'e no caixa '+FrmItensVenda.Ednota.Text+ ' Valor: '+edvle.Text ;
              LOG(textolog);


              with ibdm.Grava do
              begin
                  close;
                  sql.Clear;
                  sql.Add('insert into caixa');
                  sql.Add('(data,controle,documento,historico,valor,operacao,transacao,operador,mpgto)');
                  sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8)');
                  params[0].AsDatetime := eddtent.DateTime;
                  params[1].AsInteger := vcont;
                  params[2].AsString := FrmItensVenda.Ednota.Text;
                  params[3].AsString := 'ENTRADA - '+lbnome;
                  params[4].AsCurrency := edvle.Value;
                  params[5].AsString := 'C';
                  params[6].AsInteger := 3;
                  params[7].asinteger :=  strtoint(FrmNotaVenda.Label7.Caption); //frmprincipal.voperador;
                  params[8].AsInteger := vmodo;
                  prepare;
                  execquery;
              end;
              if vcomissao > 0 then
              begin
                   textolog := 'Lanca comissão da entrada '+FrmItensVenda.Ednota.Text;
                   LOG(textolog);

                with ibdm.Cheka do
                begin
                    Close;
                    sql.Clear;
                    sql.Add('Insert into comissoes');
                    sql.Add('(nota,vendedor,comissao,parcela,liberado)');
                    sql.Add('Values(:p0,:p1,:p2,:p3,:p4)');
                    params[0].AsInteger := strtoint(FrmItensVenda.Ednota.Text);
                    params[1].AsInteger := strtoint(FrmNotaVenda.Label12.Caption);
                    params[2].AsCurrency := edvle.Value * (vcomissao/100);
                    params[3].AsString := 'E';
                    params[4].AsDateTime := now;
                    ExecQuery;

                end;
              end;
              CommitWork;


        //Impressão de Recibo da entrada
        end
        Else
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
               textolog := 'Lança entrada futura em Ctas a receber -E '+FrmItensVenda.Ednota.Text;
               LOG(textolog);


            with ibdm.Grava do
            begin
                close;
                sql.Clear;
                sql.Add('Insert into Creceber');
                sql.Add('(controle,vencimento,documento,historico,valororiginal,valordevido,parcela,cliente)');
                sql.Add('values(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)');
                params[0].AsInteger := vcont;
                params[1].AsDate := eddtent.Date;
                params[2].AsString := frmitensvenda.Ednota.Text;
                params[3].AsString := lbnome;
                params[4].Ascurrency := edvle.Value;
                params[5].AsCurrency := edvle.Value;
                params[6].AsString := 'E';
                params[7].AsString := frmnotavenda.label10.caption;
                prepare;
                ExecQuery;
            end;
            if vcomissao1 > 0 then
            begin
               textolog := 'Lança entrada futura em Ctas a receber -E.. '+FrmItensVenda.Ednota.Text;
               LOG(textolog);

                with ibdm.Cheka do
                begin
                    Close;
                    sql.Clear;
                    sql.Add('Insert into comissoes');
                    sql.Add('(nota,vendedor,comissao,parcela)');
                    sql.Add('Values(:p0,:p1,:p2,:p3)');
                    params[0].AsInteger := strtoint(FrmItensVenda.Ednota.Text);
                    params[1].AsInteger := strtoint(FrmNotaVenda.Label12.Caption);
                    params[2].AsCurrency := edvle.Value * (vcomissao1/100);
                    params[3].AsString := 'E';
                    ExecQuery;
                end;
            end;
            CommitWork;
        end;
    end;

    if radiobutton3.Checked = true then      // venda a vista
    begin
        with ibdm.Consulta do
        begin
            close;
            sql.Clear;
            sql.Add('select max(controle) from caixa');
            prepare;
            open;
            vcont := Fields[0].AsInteger + 1;
        end;
               textolog := 'Pagamento a vista, lça no caixa '+FrmItensVenda.Ednota.Text;
               LOG(textolog);

        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('insert into caixa');
            sql.Add('(data,controle,documento,historico,valor,operacao,transacao,operador,mpgto)');
            sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8)');
            params[0].AsDateTime := now;
            params[1].AsInteger := vcont;
            params[2].AsString := FrmItensVenda.Ednota.Text;
            params[3].AsString := 'V.a Vista - '+lbnome;
            params[4].AsCurrency := edvlsld.Value;
            params[5].AsString := 'C';
            params[6].AsInteger := 1;
            params[7].asinteger := strtoint(FrmNotaVenda.Label7.Caption); //frmprincipal.voperador;
            params[8].AsInteger := vmodo;
            prepare;
            execquery;
        end;
        vvltotal := edvlsld.Value;
        if vcomissao > 0 then
        begin
               textolog := 'Lança comissão venda a vista '+FrmItensVenda.Ednota.Text;
               LOG(textolog);

            with ibdm.Cheka do
            begin
                Close;
                sql.Clear;
                sql.Add('Insert into comissoes');
                sql.Add('(nota,vendedor,comissao,liberado,parcela)');
                sql.Add('Values(:p0,:p1,:p2,:p3,:p4)');
                params[0].AsInteger := strtoint(FrmItensVenda.Ednota.Text);
                params[1].AsInteger := strtoint(FrmNotaVenda.Label12.Caption);
                params[2].AsCurrency := edvlsld.Value * (vcomissao/100);
                params[3].AsDate := now;
                params[4].AsString := '1/1';
                ExecQuery;
            end;

        end;
        CommitWork;
    end;
    if vtp <> '' then  //   é a prazo
       begin
            if vtp >= '1' then
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
               textolog := 'Lança em Ctas a receber -1 '+FrmItensVenda.Ednota.Text+' Valor-'+edit4.text;
               LOG(textolog);

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
                        params[3].AsString := lbnome;
                        params[4].Ascurrency := strtocurr(edit4.text);//prestação
                        params[5].AsCurrency := strtocurr(edit4.text);    //total
                        params[6].AsString := '1/'+vtp;
                        params[7].AsString := frmnotavenda.label10.caption;
                        prepare;
                        ExecQuery;
                    end;
                    vvltotal:=vvltotal + strtocurr(edit4.text);
                    if vcomissao1 > 0 then
                    begin
               textolog := 'Lança comissão -1 '+FrmItensVenda.Ednota.Text;
               LOG(textolog);

                        with ibdm.Cheka do
                        begin
                            Close;
                            sql.Clear;
                            sql.Add('Insert into comissoes');
                            sql.Add('(nota,vendedor,comissao,parcela)');
                            sql.Add('Values(:p0,:p1,:p2,:p3)');
                            params[0].AsInteger := strtoint(FrmItensVenda.Ednota.Text);
                            params[1].AsInteger := strtoint(FrmNotaVenda.Label12.Caption);
                            params[2].AsCurrency := strtocurr(edit4.text) * (vcomissao1/100);

                            params[3].AsString := '1/'+vtp;
                            ExecQuery;
                        end;
                    end;
                    CommitWork;
                end;

            if vtp >= '2' then
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
               textolog := 'Lança em Ctas a receber -2 '+FrmItensVenda.Ednota.Text+' Valor: '+edit6.text;
               LOG(textolog);

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
                        params[3].AsString := lbnome;
                        params[4].Ascurrency := strtocurr(edit6.text);//prestação
                        params[5].AsCurrency := strtocurr(edit6.text);  //total
                        params[6].AsString := '2/'+vtp;
                        params[7].AsString := frmnotavenda.label10.caption;                        prepare;
                        ExecQuery;
                    end;
                    vvltotal:=vvltotal + strtocurr(edit6.text);
                    if vcomissao1 > 0 then
                    begin
               textolog := 'Lança comissão -2 '+FrmItensVenda.Ednota.Text;
               LOG(textolog);

                        with ibdm.Cheka do
                        begin
                            Close;
                            sql.Clear;
                            sql.Add('Insert into comissoes');
                            sql.Add('(nota,vendedor,comissao,parcela)');
                            sql.Add('Values(:p0,:p1,:p2,:p3)');
                            params[0].AsInteger := strtoint(FrmItensVenda.Ednota.Text);
                            params[1].AsInteger := strtoint(FrmNotaVenda.Label12.Caption);
                            params[2].AsCurrency := strtocurr(edit6.text) * (vcomissao1/100);

                            params[3].AsString := '2/'+vtp;
                            ExecQuery;
                        end;
                    end;
                    CommitWork;
                end;

            if vtp >= '3' then
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
               textolog := 'Lança em Ctas a receber -3 '+FrmItensVenda.Ednota.Text+' Valor: '+edit8.text;
               LOG(textolog);

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
                        params[3].AsString := lbnome;
                        params[4].Ascurrency := strtocurr(edit8.text);//prestação
                        params[5].AsCurrency := strtocurr(edit8.text);//total
                        params[6].AsString := '3/'+vtp;
                        params[7].AsString := frmnotavenda.label10.caption;                        prepare;
                        ExecQuery;
                    end;
                    vvltotal:=vvltotal + strtocurr(edit8.text);
                    if vcomissao1 > 0 then
                    begin
               textolog := 'Lança comissão -3 '+FrmItensVenda.Ednota.Text;
               LOG(textolog);

                        with ibdm.Cheka do
                        begin
                            Close;
                            sql.Clear;
                            sql.Add('Insert into comissoes');
                            sql.Add('(nota,vendedor,comissao,parcela)');
                            sql.Add('Values(:p0,:p1,:p2,:p3)');
                            params[0].AsInteger := strtoint(FrmItensVenda.Ednota.Text);
                            params[1].AsInteger := strtoint(FrmNotaVenda.Label12.Caption);
                            params[2].AsCurrency := strtocurr(edit8.text) * (vcomissao1/100);

                            params[3].AsString := '3/'+vtp;
                            ExecQuery;
                        end;
                    end;
                    CommitWork;
                end;

            if vtp >= '4' then
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
               textolog := 'Lança em Ctas a receber -4 '+FrmItensVenda.Ednota.Text +' Valor: '+edit10.text;
               LOG(textolog);

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
                        params[3].AsString := lbnome;
                        params[4].Ascurrency := strtocurr(edit10.text);//prestação
                        params[5].AsCurrency := strtocurr(edit10.text);   //total
                        params[6].AsString := '4/'+vtp;
                        params[7].AsString := frmnotavenda.label10.caption;                        prepare;
                        ExecQuery;
                    end;
                    vvltotal:=vvltotal + strtocurr(edit10.text);
                    if vcomissao1 > 0 then
                    begin
               textolog := 'Lança commissão -4 '+FrmItensVenda.Ednota.Text;
               LOG(textolog);

                        with ibdm.Cheka do
                        begin
                            Close;
                            sql.Clear;
                            sql.Add('Insert into comissoes');
                            sql.Add('(nota,vendedor,comissao,parcela)');
                            sql.Add('Values(:p0,:p1,:p2,:p3)');
                            params[0].AsInteger := strtoint(FrmItensVenda.Ednota.Text);
                            params[1].AsInteger := strtoint(FrmNotaVenda.Label12.Caption);
                            params[2].AsCurrency := strtocurr(edit10.text) * (vcomissao1/100);

                            params[3].AsString := '4/'+vtp;
                            ExecQuery;
                        end;
                    end;
                    CommitWork;
                end;
            if vtp >= '5' then
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
               textolog := 'Lança em Ctas a receber -5 '+FrmItensVenda.Ednota.Text+' Valor: '+edit12.text;
               LOG(textolog);

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
                        params[3].AsString := lbnome;
                        params[4].Ascurrency := strtocurr(edit12.text);//prestação
                        params[5].AsCurrency := strtocurr(edit12.text);    //total
                        params[6].AsString := '5/'+vtp;
                        params[7].AsString := frmnotavenda.label10.caption;                        prepare;
                        ExecQuery;
                    end;
                    vvltotal:=vvltotal + strtocurr(edit12.text);
                    if vcomissao1 > 0 then
                    begin
               textolog := 'Lança commissão -5 '+FrmItensVenda.Ednota.Text;
               LOG(textolog);

                        with ibdm.Cheka do
                        begin
                            Close;
                            sql.Clear;
                            sql.Add('Insert into comissoes');
                            sql.Add('(nota,vendedor,comissao,parcela)');
                            sql.Add('Values(:p0,:p1,:p2,:p3)');
                            params[0].AsInteger := strtoint(FrmItensVenda.Ednota.Text);
                            params[1].AsInteger := strtoint(FrmNotaVenda.Label12.Caption);
                            params[2].AsCurrency := strtocurr(edit12.text) * (vcomissao1/100);

                            params[3].AsString := '5/'+vtp;
                            ExecQuery;
                        end;
                    end;
                    CommitWork;

                end;
            if vtp >= '6' then
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
               textolog := 'Lança em Ctas a receber -6 '+FrmItensVenda.Ednota.Text+' Valor: '+edit14.text;
               LOG(textolog);

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
                        params[3].AsString := lbnome;
                        params[4].Ascurrency := strtocurr(edit14.text);//prestação
                        params[5].AsCurrency := strtocurr(edit14.text);   //total
                        params[6].AsString := '6/'+vtp;
                        params[7].AsString := frmnotavenda.label10.caption;                        prepare;
                        ExecQuery;
                    end;
                    vvltotal:=vvltotal + strtocurr(edit14.text);
                    if vcomissao1 > 0 then
                    begin
               textolog := 'Lança comissão -6 '+FrmItensVenda.Ednota.Text;
               LOG(textolog);

                        with ibdm.Cheka do
                        begin
                            Close;
                            sql.Clear;
                            sql.Add('Insert into comissoes');
                            sql.Add('(nota,vendedor,comissao,parcela)');
                            sql.Add('Values(:p0,:p1,:p2,:p3)');
                            params[0].AsInteger := strtoint(FrmItensVenda.Ednota.Text);
                            params[1].AsInteger := strtoint(FrmNotaVenda.Label12.Caption);
                            params[2].AsCurrency := strtocurr(edit14.text) * (vcomissao1/100);

                            params[3].AsString := '6/'+vtp;
                            ExecQuery;
                        end;
                    end;
                    CommitWork;


                end;
       end;

        CommitWork;
        ibdm.IBQCreceber.Close;
        ibdm.IBQCreceber.Open;
        vrcliente := 'Cliente: '+ lbnome;


        try
        begin

                if ibdm.IBQParamUSAECF.AsString = 'S' then
                begin
                    vpromo := ibdm.IBQParamVPROMO.AsString;
                    vldif := '0';
                    if radiobutton3.Checked = true then   // a vista
                    begin


                            if vvltotal > edvlmerc.Value then
                            begin
                                if checkbox1.Checked = TRue then
                                Showmessage('a vista c/Acres. '+ FormatCurr('0.00',vvltotal)+ ' - ' + FormatCurr('0.00',edvlmerc.Value) ) ;

                                vldif := FormatCurr('0.00',vvltotal - edvlmerc.Value);
                                iRetorno := Bematech_FI_FechaCupom( 'a vista', 'A',  '$', vldif, FormatCurr('0.00',vvltotal),vpromo );
                                FrmPrincipal.Analisa_iRetorno();
                                FrmPrincipal.Retorno_Impressora();
                                if iretorno = -2 then
                                begin
                                    iRetorno := Bematech_FI_FechaCupom('a vista', 'A',  '$', vldif, FormatCurr('0.00',vvltotal),vpromo );
                                    FrmPrincipal.Analisa_iRetorno();
                                    FrmPrincipal.Retorno_Impressora();
                                end;
                            end
                            else
                            if vvltotal < edvlmerc.value then
                            begin
                                if checkbox1.Checked = TRue then
                                  Showmessage('a vista c/Desc. '+ FormatCurr('0.00',vvltotal)+ ' - ' + FormatCurr('0.00',edvlmerc.Value) );
                                vldif := FormatCurr('0.00',edvlmerc.value - vvltotal);
                                iRetorno := Bematech_FI_FechaCupom( 'a vista', 'D' ,'$', vldif, FormatCurr('0.00',vvltotal),vpromo );
                                //etorno := Bematech_FI_IniciaFechamentoCupomMFD( 'D', '$', '00,00' , vldif );
                                FrmPrincipal.Analisa_iRetorno();
                                FrmPrincipal.Retorno_Impressora();
                                if iretorno = -2 then
                                begin
                                    iRetorno := Bematech_FI_FechaCupom( 'a vista', 'D' ,'$', vldif, FormatCurr('0.00',vvltotal),vpromo );
                                    FrmPrincipal.Analisa_iRetorno();
                                    FrmPrincipal.Retorno_Impressora();
                                end;
                            end;

                         if vldif = '0'  then
                           begin
                            iRetorno := Bematech_FI_FechaCupomResumido('a vista',vpromo);
                            FrmPrincipal.Analisa_iRetorno();
                            FrmPrincipal.Retorno_Impressora();
                           end
                           else
                           begin
                           //
                           //     if checkbox1.Checked = TRue then
                           //       Showmessage('Efetua forma de Pagamento') ;
                           //
                           // iRetorno := Bematech_FI_EfetuaFormaPagamentoDescricaoForma('a vista', FormatCurr('0.00',vvltotal),' ');
                           // FrmPrincipal.Analisa_iRetorno();
                           // FrmPrincipal.Retorno_Impressora();

                           // iRetorno := Bematech_FI_TerminaFechamentoCupom(vpromo);
                           // frmPrincipal.Analisa_iRetorno();
                           // frmPrincipal.Retorno_Impressora();
                           end;
                    end;

                    if radiobutton4.Checked = true then   // a prazo
                    begin
                        if vvltotal > edvlmerc.Value then
                            begin
                                if checkbox1.Checked = true then
                                Showmessage('a prazo c/Acres. '+ FormatCurr('0.00',vvltotal)+ ' - ' + FormatCurr('0.00',edvlmerc.Value) ) ;
                                vldif := FormatCurr('0.00',vvltotal - edvlmerc.Value);
                                iRetorno := Bematech_FI_FechaCupom('a Prazo', 'A',  '$', vldif, FormatCurr('0.00',vvltotal),vmodopgto + '- ' + vpromo );
                                FrmPrincipal.Analisa_iRetorno();
                                FrmPrincipal.Retorno_Impressora();
                                if iretorno = -2 then
                                begin
                                    iRetorno := Bematech_FI_FechaCupom('a Prazo', 'A',  '$', vldif, FormatCurr('0.00',vvltotal),vmodopgto + '- ' + vpromo );
                                    FrmPrincipal.Analisa_iRetorno();
                                    FrmPrincipal.Retorno_Impressora();
                                end;
                            end
                            else
                            if vvltotal < edvlmerc.value then
                            begin
                                if checkbox1.Checked = True then
                                Showmessage('a prazo c/Desc. '+ FormatCurr('0.00',vvltotal)+ ' - ' + FormatCurr('0.00',edvlmerc.Value) ) ;
                                vldif := FormatCurr('0.00',edvlmerc.value - vvltotal);
                                iRetorno := Bematech_FI_FechaCupom('a Prazo', 'D',  '$', vldif, FormatCurr('0.00',vvltotal),vmodopgto + '- ' + vpromo );
                                //iRetorno := Bematech_FI_IniciaFechamentoCupomMFD( 'D', '$', '00,00' , vldif );
                                FrmPrincipal.Analisa_iRetorno();
                                FrmPrincipal.Retorno_Impressora();
                                if iretorno = -2 then
                                begin
                                    iRetorno := Bematech_FI_FechaCupom('a Prazo', 'D',  '$', vldif, FormatCurr('0.00',vvltotal),vmodopgto + '- ' + vpromo );
                                    FrmPrincipal.Analisa_iRetorno();
                                    FrmPrincipal.Retorno_Impressora();
                                end;
                            end;

                           IF vvltotal = edvlmerc.value then
                           begin
                            if checkbox1.Checked = True then
                            Showmessage('a prazo total e merc iguais '+ FormatCurr('0.00',vvltotal)+ ' - ' + FormatCurr('0.00',edvlmerc.Value) ) ;
                            //iRetorno := Bematech_FI_IniciaFechamentoCupomMFD( 'D', '$', '00,00' , '0.00' );
                            iRetorno := Bematech_FI_FechaCupom('a Prazo', 'D',  '$', '00,00', FormatCurr('0.00',vvltotal),vmodopgto + '- ' + vpromo );
                            FrmPrincipal.Analisa_iRetorno();
                            FrmPrincipal.Retorno_Impressora();
                           end  ;



 //                       if checkbox1.Checked = True then
 //                           Showmessage('Efetua Forma de Pagamento' ) ;
 //
 //                       iRetorno := Bematech_FI_EfetuaFormaPagamentoDescricaoForma('A Prazo',
 //                                                                      FormatCurr('0.00',vvltotal),
 //                                                                      vmodopgto);
 //                       FrmPrincipal.Analisa_iRetorno();
 //                       FrmPrincipal.Retorno_Impressora();
 //

//                        if checkbox1.Checked = True then
//                            Showmessage('Termina Fechamento do Cupom' ) ;


//                        iRetorno := Bematech_FI_TerminaFechamentoCupom(vmodopgto + '- ' + vpromo);
//                        frmPrincipal.Analisa_iRetorno();
//                        frmPrincipal.Retorno_Impressora();
                    end;

                end;
        end ;
        Except
          LOG('Erro no processo do Cupom, abrindo o Aplicativo da ECF.');
          ExecAndWait('c:\ti\sisloja\Fiscal.exe', '', SW_SHOW);
        end;


 //       If Application.MessageBox('O cupom deve ter sido impresso, deseja abrir o aplicativo da Impressora ??','Confirmação',MB_ICONQUESTION+ MB_YESNO+MB_DEFBUTTON2)=idyes then
 //               ExecAndWait('c:\ti\sisloja\Fiscal.exe', '', SW_SHOW);
//        Showmessage('Cupom impresso, imprimindo carnê, tecle algo !!');


      if (timp=2) and (radiobutton4.checked = true) then
      begin
               textolog := 'imprime carne, tipo 1 '+FrmItensVenda.Ednota.Text;
               LOG(textolog);

          relcarneMP := TrelcarneMP.create(Application);
          relcarneMP.lbnome.Caption := ibdm.IBQParamUSUARIO.AsString;
//          relcarneMP.qrlabel26.Caption := ibdm.IBQParamUSUARIO.AsString;
          relcarneMP.lbcnpj.Caption := 'CNPJ: '+ibdm.IBQParamCNPJ.AsString;
//          relcarneMP.qrlabel41.Caption := 'CNPJ: '+ibdm.IBQParamCNPJ.AsString;
          relcarneMP.vtit.Caption := 'Documento nº: ' + frmitensvenda.Ednota.Text;
//          relcarneMP.qrlabel27.Caption := 'Documento nº: ' + frmitensvenda.Ednota.Text;

          relcarneMP.QRLabel2.Caption := 'Data da Compra: ' + Frmnotavenda.Edit4.Text;
//          relcarneMP.QRLabel28.Caption := 'Data da Compra: ' + Frmnotavenda.Edit4.Text;

          relcarneMP.QRLabel4.Caption := 'Cliente: ' + frmnotavenda.label10.caption ;
          relcarneMP.qrlbl1.Caption := Frmitensvenda.lbnome.Caption ;
          //          relcarneMP.QRLabel29.Caption := 'Cliente: ' + Frmitensvenda.lbnome.Caption + '/' + frmnotavenda.label10.caption;
          relcarneMP.qrlblnome.Caption := Frmitensvenda.lbnome.Caption ;
          relcarneMP.QRLabel7.Caption := 'Vendedor: ' + Frmitensvenda.lbvend.Caption + '/' + FrmNotaVenda.Label12.Caption;
//          relcarneMP.QRLabel30.Caption := 'Vendedor: ' + Frmitensvenda.lbvend.Caption + '/' + FrmNotaVenda.Label12.Caption;

          if edvle.Value > 0 then
            if eddtent.Date = int(now) then
            begin
                relcarneMP.QRLabel16.Caption := 'Entrada paga: ' + FormatCurr('0.00',edvle.Value );
//                relcarneMP.QRLabel31.Caption := 'Entrada paga: ' + FormatCurr('0.00',edvle.Value );
            end
            else
            begin
                relcarneMP.QRLabel16.Caption := 'Ent. p/' + datetimetostr(int(eddtent.date)) + ': ' + FormatCurr('0.00',edvle.Value );
//                relcarneMP.QRLabel31.Caption := 'Ent. p/' + datetimetostr(eddtent.date) + ': ' + FormatCurr('0.00',edvle.Value );
            end;

          relcarneMP.QRLabel1.Caption := 'Vcto 1ª parc.: ' + edit5.Text;
//          relcarneMP.QRLabel40.Caption := 'Vcto 1ª parc.: ' + edit5.Text;

          relcarneMP.QRLabel3.Caption := 'Valor: ' + edit4.Text;
//          relcarneMP.QRLabel42.Caption := 'Valor: ' + edit4.Text;

          relcarneMP.QRLabel5.Caption := 'Vcto 2ª parc.: ' + edit7.Text;
          relcarneMP.QRLabel6.Caption := 'Valor: ' + edit6.Text;
//          relcarneMP.QRLabel39.Caption := 'Vcto 2ª parc.: ' + edit7.Text;
//          relcarneMP.QRLabel43.Caption := 'Valor: ' + edit6.Text;

          relcarneMp.QRLabel8.Caption := 'Vcto 3ª parc.: ' + edit9.Text;
          relcarneMP.QRLabel9.Caption := 'Valor: ' + edit8.Text;
//          relcarneMP.QRLabel38.Caption := 'Vcto 3ª parc.: ' + edit9.Text;
//          relcarneMP.QRLabel44.Caption := 'Valor: ' + edit8.Text;

          relcarneMP.QRLabel10.Caption := 'Vcto 4ª parc.: ' + edit11.Text;
          relcarneMP.QRLabel11.Caption := 'Valor: ' + edit10.Text;
//          relcarneMP.QRLabel37.Caption := 'Vcto 4ª parc.: ' + edit11.Text;
//          relcarneMP.QRLabel45.Caption := 'Valor: ' + edit10.Text;

          relcarneMP.QRLabel12.Caption := 'Vcto 5ª parc.: ' + edit13.Text;
          relcarneMP.QRLabel13.Caption := 'Valor: ' + edit12.Text;
//          relcarneMP.QRLabel36.Caption := 'Vcto 5ª parc.: ' + edit13.Text;
//          relcarneMP.QRLabel46.Caption := 'Valor: ' + edit12.Text;

          relcarneMP.QRLabel14.Caption := 'Vcto 6ª parc.: ' + edit15.Text;
          relcarneMP.QRLabel15.Caption := 'Valor: ' + edit14.Text;
//          relcarneMP.QRLabel35.Caption := 'Vcto 6ª parc.: ' + edit15.Text;
//          relcarneMP.QRLabel47.Caption := 'Valor: ' + edit14.Text;

          relcarneMP.QRLabel23.Caption := vmodopgto;
//          relcarneMP.QRLabel33.Caption := vmodopgto;
          with ibdm.Consulta do
              begin
                  close;
                  sql.Clear;
                  sql.Add('select * from movimento');
                  sql.Add('where docto =:p0');
                  params[0].AsString := frmitensvenda.Ednota.Text;
                  prepare;
                  open;
              end;

          impressora:=Getdefaultprintername();
          Setdefaultprinter('MP-4200');


          MudaTamPapel(DMPAPER_USER, 215, 140);
          relcarneMP.QuickRep1.font.name:='Draft 10Cpi';
          relcarneMP.QuickRep1.Print;

          QrpToImg(relcarneMP.QuickRep1,'c:\ti\sisloja\jpgs\'+ frmitensvenda.Ednota.Text,1);

          relcarneMP.Close;
          relcarneMP.Free;
//                    impressora:=Getdefaultprintername();
          Setdefaultprinter(impressora);

        end;
          //
      if  vprtent=True then   //( (int(now) = eddtent.Date)  and (edvle.Value > 0) ) then
        begin
               textolog := 'Imprime entrada '+FrmItensVenda.Ednota.Text+' data:'+Datetimetostr(eddtent.date)+' Valor:'+ Formatcurr('0.00',edvle.value);
               LOG(textolog);

          with ibdm.consulta do
          begin
              Close;
              sql.Clear;
              sql.Add('Select * from doctos');
              sql.Add('Where controle = :p0');
              params[0].asinteger := qcontrole;
              open;
          end;
          RelRecibo2 := TRelRecibo2.create(Application);
      //    MudaTamPapel(DMPAPER_USER, 215, 140);
          Relrecibo2.lbnome.Caption := ibdm.IBQParamUSUARIO.AsString;
          Relrecibo2.lbcnpj.Caption := 'CNPJ: '+ibdm.IBQParamCNPJ.AsString;
          RelRecibo2.QRLabel2.Caption := 'O valor de:  R$' + Formatcurr('0.00',edvle.value);
          Relrecibo2.LBCLIENTE.caption :=  Frmitensvenda.lbnome.Caption + '/' + frmnotavenda.label10.caption;
//          RelRecibo2.QRLabel5.Caption := Extenso(edvle.value);
          vextenso := Extenso(edvle.value);
          if Length(vextenso) > 43 then
          begin
            RelRecibo2.QRLabel5.Caption:=Copy(vextenso,1,43);
            RelRecibo2.qrlbl1.Caption:=Copy(vextenso,44,40);
          end
          else
          RelRecibo2.QRLabel5.Caption:=vextenso;

          impressora:=Getdefaultprintername();
          Setdefaultprinter('MP-4200');
          Relrecibo2.QuickRep1.font.name:='Draft 10Cpi';
          if ckprent.checked = False then
            RelRecibo2.QuickRep1.Print
           else
            RelRecibo2.QuickRep1.Preview;
          RelRecibo2.Free;

      //    impressora:=Getdefaultprintername();
          Setdefaultprinter(impressora);


{            assignFile(f,'c:\ti\imp.Prn');
            rewrite(f);
            writeln(f,'');
            ibdm.IBQParam.open;
            writeln(f,chr(27)+chr(69)+ibdm.IBQParamUSUARIO.AsString+ ' CNPJ: ' + ibdm.IBQParamCNPJ.AsString  +chr(27)+chr(70));
            writeln(f,' ');
            Writeln(f,'Número do Documento: '+frmnotavenda.edit5.text );
            Writeln(f,'Cliente: '+chr(27)+chr(69)+frmnotavenda.combobox1x.text+chr(27)+chr(70));
            Writeln(f,'Vendedora: '+FrmNotaVenda.Label12.Caption+' - '+FrmNotaVenda.combobox3.text);
            Writeln(f,'    Data: '+frmnotavenda.Edit4.Text);
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
                    vdesc := ibdm.ibqmovimentoDESCRICAO.asstring;
                    Writeln(f,''+vcod+'    '+vdesc);
                    Writeln(f,'                  '+formatcurr('0',vqtd)+'     '+formatcurr('0.00',vvalor1));
                    next;
                end;
                Writeln(f,'');
                Writeln(f,'                VENDA A PRAZO');
                Writeln(f,'                Total: R$ '+formatcurr('0.00',edvlmerc.Value));
            end;
            Writeln(f,'');
            Writeln(f,'   PRESTACOES:');
            if edvle.value > 0 then
                Writeln(f,' Entrada: R$ '+formatcurr('0.00',edvle.value));
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
            end;
            Writeln(f,'');
            Writeln(f,'');
            Writeln(f,'Cliente: __________________');
            Writeln(f,chr(27)+chr(69)+frmnotavenda.combobox1x.text+chr(27)+chr(70));

            closeFile(f);

        end;}
      end
      else
      if ((timp=3) and (radiobutton4.Checked = True)) then
      begin
          ibdm.IBQParam.open;
               textolog := 'Imprime carne, tipo 2 '+FrmItensVenda.Ednota.Text;
               LOG(textolog);

  //        MudaTamPapel(DMPAPER_USER, 215, 140);

          relcarne := Trelcarne.create(Application);
          relcarne.lbnome.Caption := ibdm.IBQParamUSUARIO.AsString;
          relcarne.qrlabel26.Caption := ibdm.IBQParamUSUARIO.AsString;
          relcarne.lbcnpj.Caption := 'CNPJ: '+ibdm.IBQParamCNPJ.AsString;
          relcarne.qrlabel41.Caption := 'CNPJ: '+ibdm.IBQParamCNPJ.AsString;
          relcarne.vtit.Caption := 'Documento nº: ' + frmitensvenda.Ednota.Text;
          relcarne.qrlabel27.Caption := 'Documento nº: ' + frmitensvenda.Ednota.Text;

          relcarne.QRLabel2.Caption := 'Data da Compra: ' + Frmnotavenda.Edit4.Text;
          relcarne.QRLabel28.Caption := 'Data da Compra: ' + Frmnotavenda.Edit4.Text;

          relcarne.QRLabel4.Caption := 'Cliente: ' + Frmitensvenda.lbnome.Caption + '/' + frmnotavenda.label10.caption;
          relcarne.QRLabel29.Caption := 'Cliente: ' + Frmitensvenda.lbnome.Caption + '/' + frmnotavenda.label10.caption;

          relcarne.QRLabel7.Caption := 'Vendedor: ' + Frmitensvenda.lbvend.Caption + '/' + FrmNotaVenda.Label12.Caption;
          relcarne.QRLabel30.Caption := 'Vendedor: ' + Frmitensvenda.lbvend.Caption + '/' + FrmNotaVenda.Label12.Caption;

          if edvle.Value > 0 then
            if eddtent.Date = int(now) then
            begin
                relcarne.QRLabel16.Caption := 'Entrada paga: ' + FormatCurr('0.00',edvle.Value );
                relcarne.QRLabel31.Caption := 'Entrada paga: ' + FormatCurr('0.00',edvle.Value );
            end
            else
            begin
                relcarne.QRLabel16.Caption := 'Ent. p/' + datetimetostr(eddtent.date) + ': ' + FormatCurr('0.00',edvle.Value );
                relcarne.QRLabel31.Caption := 'Ent. p/' + datetimetostr(eddtent.date) + ': ' + FormatCurr('0.00',edvle.Value );
            end;

          relcarne.QRLabel1.Caption := 'Vcto 1ª parc.: ' + edit5.Text;
          relcarne.QRLabel40.Caption := 'Vcto 1ª parc.: ' + edit5.Text;

          relcarne.QRLabel3.Caption := 'Valor: ' + edit4.Text;
          relcarne.QRLabel42.Caption := 'Valor: ' + edit4.Text;

          relcarne.QRLabel5.Caption := 'Vcto 2ª parc.: ' + edit7.Text;
          relcarne.QRLabel6.Caption := 'Valor: ' + edit6.Text;
          relcarne.QRLabel39.Caption := 'Vcto 2ª parc.: ' + edit7.Text;
          relcarne.QRLabel43.Caption := 'Valor: ' + edit6.Text;

          relcarne.QRLabel8.Caption := 'Vcto 3ª parc.: ' + edit9.Text;
          relcarne.QRLabel9.Caption := 'Valor: ' + edit8.Text;
          relcarne.QRLabel38.Caption := 'Vcto 3ª parc.: ' + edit9.Text;
          relcarne.QRLabel44.Caption := 'Valor: ' + edit8.Text;

          relcarne.QRLabel10.Caption := 'Vcto 4ª parc.: ' + edit11.Text;
          relcarne.QRLabel11.Caption := 'Valor: ' + edit10.Text;
          relcarne.QRLabel37.Caption := 'Vcto 4ª parc.: ' + edit11.Text;
          relcarne.QRLabel45.Caption := 'Valor: ' + edit10.Text;

          relcarne.QRLabel12.Caption := 'Vcto 5ª parc.: ' + edit13.Text;
          relcarne.QRLabel13.Caption := 'Valor: ' + edit12.Text;
          relcarne.QRLabel36.Caption := 'Vcto 5ª parc.: ' + edit13.Text;
          relcarne.QRLabel46.Caption := 'Valor: ' + edit12.Text;

          relcarne.QRLabel14.Caption := 'Vcto 6ª parc.: ' + edit15.Text;
          relcarne.QRLabel15.Caption := 'Valor: ' + edit14.Text;
          relcarne.QRLabel35.Caption := 'Vcto 6ª parc.: ' + edit15.Text;
          relcarne.QRLabel47.Caption := 'Valor: ' + edit14.Text;

          relcarne.QRLabel23.Caption := vmodopgto;
          relcarne.QRLabel33.Caption := vmodopgto;
          with ibdm.Consulta do
              begin
                  close;
                  sql.Clear;
                  sql.Add('select * from movimento');
                  sql.Add('where docto =:p0');
                  params[0].AsString := frmitensvenda.Ednota.Text;
                  prepare;
                  open;
              end;
    //      MudaTamPapel(DMPAPER_USER, 215, 140);
          relcarne.QuickRep1.font.name:='Draft 10Cpi';
          relcarne.QuickRep1.Print;

          QrpToImg(relcarne.QuickRep1,'c:\ti\sisloja\jpgs\'+ frmitensvenda.Ednota.Text,1);

          relcarne.Close;
          relcarne.Free;
        end;
          //
    {  if  vprtent=True then   //( (int(now) = eddtent.Date)  and (edvle.Value > 0) ) then
        begin
               textolog := 'Imprime entrada '+FrmItensVenda.Ednota.Text+' data:'+Datetimetostr(eddtent.date)+' Valor:'+ Formatcurr('0.00',edvle.value);
               LOG(textolog);

          with ibdm.consulta do
          begin
              Close;
              sql.Clear;
              sql.Add('Select * from doctos');
              sql.Add('Where controle = :p0');
              params[0].asinteger := qcontrole;
              open;
          end;
          RelRecibo2 := TRelRecibo2.create(Application);
      //    MudaTamPapel(DMPAPER_USER, 215, 140);
          Relrecibo2.lbnome.Caption := ibdm.IBQParamUSUARIO.AsString;
          Relrecibo2.lbcnpj.Caption := 'CNPJ: '+ibdm.IBQParamCNPJ.AsString;
          RelRecibo2.QRLabel2.Caption := 'O valor de:  R$' + Formatcurr('0.00',edvle.value);
          Relrecibo2.LBCLIENTE.caption :=  Frmitensvenda.lbnome.Caption + '/' + frmnotavenda.label10.caption;
//          RelRecibo2.QRLabel5.Caption := Extenso(edvle.value);
          vextenso := Extenso(edvle.value);
          if Length(vextenso) > 43 then
          begin
            RelRecibo2.QRLabel5.Caption:=Copy(vextenso,1,43);
            RelRecibo2.qrlbl1.Caption:=Copy(vextenso,44,43);
          end
          else
          RelRecibo2.QRLabel5.Caption:=vextenso;
                    impressora:=Getdefaultprintername();
          Setdefaultprinter('MP-4200');


          Relrecibo2.QuickRep1.font.name:='Draft 10Cpi';
          if ckprent.checked = False then
            RelRecibo2.QuickRep1.Print
           else
            RelRecibo2.QuickRep1.Preview;
          RelRecibo2.Free;

//                    impressora:=Getdefaultprintername();
          Setdefaultprinter(impressora);


       //   with ibdm.IBQDoctos do
       //   begin
       //       Close;
       //       open;
       //   end;


        end; }
               textolog := '***************** Finalizou a venda '+FrmItensVenda.Ednota.Text;
               LOG(textolog);

    //end;
//    end;
    Close;
end;


procedure TFrmPrestacoes1.edvlliqExit(Sender: TObject);
begin
    edliqui.Value := edvlliq.Value;
end;

procedure TFrmPrestacoes1.eddtent1Exit(Sender: TObject);
begin
    if eddtent.Date < int(now) then
        begin
            Showmessage('Data não pode ser inferior ao dia atual !!');
            eddtent.setfocus;
        end;
    if eddtent.Date > (int(now)+9) then
        begin
            Showmessage('Data limite para entrada ultrapassado !!');
            eddtent.setfocus;
        end;


end;

procedure TFrmPrestacoes1.BitBtn5Click(Sender: TObject);
begin

    textolog := 'Clicou em editar prazos';
    LOG(textolog);



{    if vtipo = 'M' then
       begin
        eds.Enabled := True;
        eds.text := '';
        eds.SetFocus;
       end
       else
        eds.Enabled := False;

        }

            edit5.Enabled := true;
            edit7.Enabled := true;
            edit9.Enabled := true;
            edit11.Enabled := true;
            edit13.Enabled := true;
            edit15.Enabled := true;
            edit4.Enabled := true;
            edit6.Enabled := true;
            edit8.Enabled := true;
            edit10.Enabled := true;
            edit12.Enabled := true;
            edit14.Enabled := true;



end;

procedure TFrmPrestacoes1.edsExit(Sender: TObject);
    var
    v1:integer;
    d,m,y : word;

begin

    textolog := 'Digitou a senha para edição de vencimentos';
    LOG(textolog);


    DecodeDate(int(now),y,m,d);
    v1 :=  d*3;
    if (eds.Text = 'BB'+trim(inttostr(v1))) or (eds.Text = 'bb'+trim(inttostr(v1))) then
        begin
            edit5.Enabled := true;
            edit7.Enabled := true;
            edit9.Enabled := true;
            edit11.Enabled := true;
            edit13.Enabled := true;
            edit15.Enabled := true;
            edit4.Enabled := true;
            edit6.Enabled := true;
            edit8.Enabled := true;
            edit10.Enabled := true;
            edit12.Enabled := true;
            edit14.Enabled := true;
        end;
end;

procedure TFrmPrestacoes1.FormActivate(Sender: TObject);
begin



    ibdm.IBQParam.Open;
    Frmprestacoes1.Caption := 'Simulação de Pagamento_'+ibdm.IBQParamLISTA.AsString;
    eddtent.DateTime := now;
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
end;

procedure TFrmPrestacoes1.edvlsldExit(Sender: TObject);
    var
    v1,v2,v3:currency;
begin
    textolog := 'O saldo a pagar ficou em '+FormatCurr('0.00',edvlsld.Value);
    LOG(textolog);


     v1:= edvlsld.Value + edvle.Value;
    v2:= edvlmerc.value;
    if v1>v2 then
        v3:= v1 / v2
       else
        v3:= v2 / v1;
    if (v3 > 1.15)  then
        Showmessage('Valor fora da faixa permitida em relação ao valor das mercadorias');
end;

procedure TFrmPrestacoes1.Edit7Exit(Sender: TObject);
    var
    tempo:real;
    ctempo:string;
    vdata:TDateTime;
    vok:Boolean;
begin
    textolog := 'Vencimento da 2ª prest. '+edit7.Text;
    LOG(textolog);
    vok:=True;
    try
      vdata:=StrToDate(Edit7.Text);
      except
       ShowMessage('Data inválida !!' );
       vok:=False;
       textolog := 'Errou data Vencimento da 2ª prest. '+edit7.Text;
       LOG(textolog);
    end;
    if vok=True then
    begin
    if (edit7.Text <> '') and (strtodate(edit7.text) < strtodate(edit5.text)) then
        Showmessage('Vencimento não pode ser inferior à anterior !!');
        if (StrToDate(Edit7.text) - StrToDate(Edit5.Text)) > 60 then
        ShowMessage('Vencimento maior que 60 dias do anterior, VERIFIQUE !');

    tempo := strtodate(edit7.text) - int(now);
    ctempo := RetZero(currtostr(tempo),3);
    ed2.Text := ctempo;
   end;
end;

procedure TFrmPrestacoes1.Edit9Exit(Sender: TObject);
    var
    tempo:real;
    ctempo:string;
    vdata:TDateTime;
    vok:Boolean;
begin
    textolog := 'Vencimento da 3ª prest. '+edit9.Text;
    LOG(textolog);
    vok:=True;
    try
      vdata:=StrToDate(Edit9.Text);
      except
       ShowMessage('Data inválida !!' );
       vok:=False;
       textolog := 'Errou data Vencimento da 3ª prest. '+edit9.Text;
       LOG(textolog);
    end;
    if vok=True then
    begin


      if (edit8.Text <> '') and (strtodate(edit9.text) < strtodate(edit7.text)) then
        Showmessage('Vencimento não pode ser inferior à anterior !!');

             if (StrToDate(Edit9.text) - StrToDate(Edit7.Text)) > 60 then
        ShowMessage('Vencimento maior que 60 dias do anterior, VERIFIQUE !');

   tempo := strtodate(edit9.text) - int(now);
    ctempo := RetZero(currtostr(tempo),3);
    ed3.Text := ctempo;
    end;
end;

procedure TFrmPrestacoes1.Edit11Exit(Sender: TObject);
    var
    tempo:real;
    ctempo:string;
    vdata:TDateTime;
    vok:Boolean;
begin
    textolog := 'Vencimento da 4ª prest. '+edit11.text;
    LOG(textolog);
    vok:=True;
    try
      vdata:=StrToDate(Edit11.Text);
      except
       ShowMessage('Data inválida !!' );
       vok:=False;
       textolog := 'Errou data Vencimento da 4ª prest. '+edit11.Text;
       LOG(textolog);
    end;
    if vok=True then
    begin


if (edit11.Text <> '') and (strtodate(edit11.text) < strtodate(edit9.text)) then
        Showmessage('Vencimento não pode ser inferior à anterior !!');
               if (StrToDate(Edit11.text) - StrToDate(Edit9.Text)) > 60 then
        ShowMessage('Vencimento maior que 60 dias do anterior, VERIFIQUE !');

    tempo := strtodate(edit11.text) - int(now);
    ctempo := RetZero(currtostr(tempo),3);
    ed4.Text := ctempo;
    end;
end;

procedure TFrmPrestacoes1.Edit13Exit(Sender: TObject);
    var
    tempo:real;
    ctempo:string;
  vdata:TDateTime;
  vok:Boolean;
begin
    textolog := 'Vencimento da 5ª prest. '+edit13.Text;
    LOG(textolog);
        vok:=True;
    try
      vdata:=StrToDate(Edit13.Text);
      except
       ShowMessage('Data inválida !!' );
       vok:=False;
       textolog := 'Errou data Vencimento da 5ª prest. '+edit13.Text;
       LOG(textolog);
    end;
    if vok=True then
    begin


if (edit13.Text <> '') and (strtodate(edit13.text) < strtodate(edit11.text)) then
        Showmessage('Vencimento não pode ser inferior à anterior !!');

               if (StrToDate(Edit13.text) - StrToDate(Edit11.Text)) > 60 then
        ShowMessage('Vencimento maior que 60 dias do anterior, VERIFIQUE !');

    tempo := strtodate(edit13.text) - int(now);
    ctempo := RetZero(currtostr(tempo),3);
    ed5.Text := ctempo;
    end;
end;

procedure TFrmPrestacoes1.Edit15Exit(Sender: TObject);
    var
    tempo:real;
    ctempo:string;
  vdata:TDateTime;
  vok:Boolean;
begin

    textolog := 'Vencimento da 6ª prest. '+edit15.Text;
    LOG(textolog);

    vok:=True;
    try
      vdata:=StrToDate(Edit15.Text);
      except
       ShowMessage('Data inválida !!' );
       vok:=False;
       textolog := 'Errou data Vencimento da 6ª prest. '+edit15.Text;
       LOG(textolog);
    end;
    if vok=True then
    begin


    if (edit15.Text <> '') and (strtodate(edit15.text) < strtodate(edit13.text)) then
        Showmessage('Vencimento não pode ser inferior à anterior !!');
               if (StrToDate(Edit15.text) - StrToDate(Edit13.Text)) > 60 then
        ShowMessage('Vencimento maior que 60 dias do anterior, VERIFIQUE !');
    tempo := strtodate(edit15.text) - int(now);
    ctempo := RetZero(currtostr(tempo),3);
    ed6.Text := ctempo;
    end;
end;

procedure TFrmPrestacoes1.Edit5Exit(Sender: TObject);
    var
    tempo:real;
    ctempo:string;
    vdata:TDateTime;
    vok:Boolean;
begin
    textolog := 'Vencimento da 1ª prest. '+edit5.Text;
    LOG(textolog);
    vok:=True;
    try
      vdata:=StrToDate(Edit5.Text);
      except
       ShowMessage('Data inválida !!' );
       vok:=False;
       textolog := 'Errou data Vencimento da 1ª prest. '+edit5.Text;
       LOG(textolog);
    end;
    if vok=True then
    begin
      tempo := strtodate(edit5.text) - int(now);
      ctempo := RetZero(currtostr(tempo),3);
      ed1.Text := ctempo;
      if StrToDate(Edit5.Text) < Int(Now) then
        ShowMessage('Data Inválida, VERIFIQUE!!');
      if StrToDate(Edit5.Text) > Int(Now) + 60 then
          ShowMessage('Vencimento maior que 60 dias da compra, VERIFIQUE!!');


    end;
end;

procedure TFrmPrestacoes1.FormShow(Sender: TObject);
    var
    desc:currency;
begin
    textolog := '###### Iniciando conclusão da Venda nr '+FrmItensVenda.Ednota.Text;
    LOG(textolog);


    ibdm.IBQParam.Open;
    desc := ibdm.IBQParamDESCAV.Value;
    if simula=0 then
    begin
        if frmnotavenda.tpvenda = 0 then   // a vista
        begin
            radiobutton4.Enabled := False;
            radiobutton3.Checked := True;

            if lista = 2 then
                edvlliq.Value := edvlmerc.Value - (edvlmerc.Value * ((desc/100)))
              else
                edvlliq.Value := edvlmerc.Value;

            radiobutton3.SetFocus;
        end
        else
        begin  // a prazo
            radiobutton3.Enabled := False;
            radiobutton4.Checked := True;
            if lista = 2 then
               begin
                edvlsld.Value := edvlmerc.Value - (edvlmerc.Value * ((desc/100)));
                edvlliq.Value := edvlmerc.Value - (edvlmerc.Value * ((desc/100)));
               end
              else
               begin
                edvlsld.Value := edvlmerc.Value;
                edvlliq.Value := edvlmerc.Value;
               end;
            radiobutton4.setfocus;
        end;
    end
    else
    begin
         //   radiobutton3.Enabled := False;
         ///   radiobutton4.Checked := True;
            if lista = 2 then
               begin
                edvlsld.Value := edvlmerc.Value - (edvlmerc.Value * ((desc/100)));
                edvlliq.Value := edvlmerc.Value - (edvlmerc.Value * ((desc/100)));
               end
              else
               begin
                edvlsld.Value := edvlmerc.Value;
                edvlliq.Value := edvlmerc.Value;
               end;
            edvlmerc.setfocus;
    end;
end;

procedure TFrmPrestacoes1.eddtentExit(Sender: TObject);
begin

    textolog := 'Data para entrada: '+Datetostr(eddtent.Data) ;
    LOG(textolog);


    if eddtent.Date < int(now) then
        begin
            Showmessage('Data não pode ser inferior ao dia atual !!');
            eddtent.setfocus;
        end;
    if eddtent.Date > (int(now)+9) then
        begin
            Showmessage('Data limite para entrada ultrapassado !!');
            eddtent.setfocus;
        end;
end;

procedure TFrmPrestacoes1.BtnFecharClick(Sender: TObject);
begin
   // Close;
end;

procedure TFrmPrestacoes1.edvlmercExit(Sender: TObject);
begin
    Radiobutton4.Setfocus;
end;

procedure TFrmPrestacoes1.modopgtoExit(Sender: TObject);
begin
    textolog := 'Selecionou modo de pagamento '+ modopgto.text;
    LOG(textolog);

end;

procedure TFrmPrestacoes1.ednrpExit(Sender: TObject);
begin
    textolog := 'Escolheu qtd prestações '+ ednrp.Text;
    LOG(textolog);

end;

procedure TFrmPrestacoes1.ed1Exit(Sender: TObject);
begin
    textolog := 'Primeiro prazo' +ed1.Text;
    LOG(textolog);

end;

procedure TFrmPrestacoes1.ed2Exit(Sender: TObject);
begin
    textolog := 'Segundo prazo' +ed2.Text;
    LOG(textolog);

end;

procedure TFrmPrestacoes1.ed3Exit(Sender: TObject);
begin
    textolog := 'Terceiro prazo' +ed3.Text;
    LOG(textolog);

end;

procedure TFrmPrestacoes1.ed6Exit(Sender: TObject);
begin
    textolog := 'Sexto prazo' +ed6.Text;
    LOG(textolog);

end;

procedure TFrmPrestacoes1.ed5Exit(Sender: TObject);
begin
    textolog := 'Quinto prazo' +ed5.Text;
    LOG(textolog);


end;

procedure TFrmPrestacoes1.ed4Exit(Sender: TObject);
begin
    textolog := 'Quarto prazo' +ed4.Text;
    LOG(textolog);


end;

procedure TFrmPrestacoes1.Edit4Exit(Sender: TObject);
begin
    textolog := 'Valor da 1ª prest. '+edit4.Text;
    LOG(textolog);


end;

procedure TFrmPrestacoes1.Edit6Exit(Sender: TObject);
begin
    textolog := 'Valor da 2ª prest. '+edit6.Text;
    LOG(textolog);

end;

procedure TFrmPrestacoes1.Edit8Exit(Sender: TObject);
begin
    textolog := 'Valor da 3ª prest. '+edit8.Text;
    LOG(textolog);

end;

procedure TFrmPrestacoes1.Edit10Exit(Sender: TObject);
begin
    textolog := 'Valor da 4ª prest. '+edit10.Text;
    LOG(textolog);

end;

procedure TFrmPrestacoes1.Edit12Exit(Sender: TObject);
begin
    textolog := 'Valor da 5ª prest. '+edit12.Text;
    LOG(textolog);

end;

procedure TFrmPrestacoes1.Edit14Exit(Sender: TObject);
begin
    textolog := 'Valor da 6ª prest. '+edit14.Text;
    LOG(textolog);

end;

procedure TFrmPrestacoes1.btn1Click(Sender: TObject);
var
 impressora:string;
begin
          impressora:=Getdefaultprintername();
          Setdefaultprinter('MP-4200');

  relteste:=Trelteste.create(Application);
  RELTESTE.Print;
  RELTESTE.Free;

  SetDefaultPrinter(impressora);

end;

procedure TFrmPrestacoes1.WMSysCommand(var Message: TWMSysCommand);
begin
if Message.CmdType = 61536 then Message.CmdType:= 1;
inherited ;
end;


end.
