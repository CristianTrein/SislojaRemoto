unit UParam;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, RXCtrls, ExtCtrls, XP_Form, rxToolEdit,
  rxCurrEdit;

type
  TFrmEdParam = class(TForm)
    Label1: TLabel;
    Edusuario: TEdit;
    Label2: TLabel;
    EdCnpj: TEdit;
    Label3: TLabel;
    EdInsc: TEdit;
    Label4: TLabel;
    EdEndereco: TEdit;
    EdBairro: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    EdCidade: TEdit;
    Label8: TLabel;
    EdUf: TEdit;
    BtnGrava: TBitBtn;
    BitBtn2: TBitBtn;
    EdFax: TEdit;
    Label10: TLabel;
    EdCep: TMaskEdit;
    Label7: TLabel;
    Label9: TLabel;
    EdFone: TEdit;
    Label11: TLabel;
    EdEmail: TEdit;
    BitBtn1: TBitBtn;
    EdLicenca: TEdit;
    Label12: TLabel;
    edjuros: TCurrencyEdit;
    Label13: TLabel;
    Label19: TLabel;
    edjurmo: TCurrencyEdit;
    Label20: TLabel;
    eddescpr: TEdit;
    edcarencia: TEdit;
    Label25: TLabel;
    Label16: TLabel;
    RxLabel1: TRxLabel;
    CBoxImpr: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox1: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Label21: TLabel;
    Label22: TLabel;
    edvpromo: TEdit;
    Label14: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Label15: TLabel;
    CheckBox5: TCheckBox;
    EdJuros1: TEdit;
    edjurmo1: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label23: TLabel;
    edlista: TCurrencyEdit;
    edlc: TCurrencyEdit;
    eddbl: TCurrencyEdit;
    lbl4: TLabel;
    lbl3: TLabel;
    lbl1: TLabel;
    edt1: TCurrencyEdit;
    edt2: TCurrencyEdit;
    lbl2: TLabel;
    lbvoz: TLabel;
    edvoz: TCurrencyEdit;
    edt3: TCurrencyEdit;
    edt4: TCurrencyEdit;
    lbl5: TLabel;
    Label26: TLabel;
    edvar: TCurrencyEdit;
    Label24: TLabel;
    eddescav: TCurrencyEdit;
    edtimp: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnGravaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEdParam: TFrmEdParam;

implementation

uses DM, Ucontrato;

{$R *.DFM}

procedure TFrmEdParam.BitBtn2Click(Sender: TObject);
begin
    FrmEdParam.Close;
end;

procedure TFrmEdParam.BtnGravaClick(Sender: TObject);
begin
    with ibdm.Grava do
    begin
        close;
        sql.Clear;
        sql.Add('Update param');
        sql.Add('set usuario=:p0,cnpj=:p1,insc=:p2,endereco=:p3,bairro=:p4,cidade=:p5,cep=:p6,uf=:p7,fone=:p8,fax=:p9,email=:p10,datalic=:p11,txjuros=:p12,usaecf=:p13,proxprod=:p14,proxcli=:p15,uos=:p16,usanf=:p17,est=:p18,jurmo=:p19,descpr=:p20,voz=:p21');
        sql.Add('where codigo=:p22');
        params[0].AsString := edusuario.Text;
        params[1].AsString := edcnpj.Text;
        params[2].AsString := edinsc.Text;
        params[3].AsString := edendereco.Text;
        params[4].AsString := edbairro.Text;
        params[5].AsString := edcidade.Text;
        params[6].AsString := edcep.Text;
        params[7].AsString := eduf.Text;
        params[8].AsString := edfone.Text;
        params[9].AsString := edfax.Text;
        params[10].AsString := edemail.Text;
        params[11].AsString := edlicenca.Text;
        params[12].Ascurrency := edjuros.value;
        if CBoxImpr.Checked = true then
            params[13].AsString := 'S'
           else
            params[13].AsString := 'N';
        params[14].AsInteger := strtoint(edit1.text);
        params[15].AsInteger := strtoint(edit2.text);
        if CheckBox1.Checked = true then
            params[16].AsString := 'S'
           else
            params[16].AsString := 'N';
        if CheckBox2.Checked = true then
            params[17].AsString := 'S'
           else
            params[17].AsString := 'N';
        if CheckBox3.Checked = true then
            params[18].AsString := 'S'
           else
            params[18].AsString := 'N';
        params[19].AsCurrency := edjurmo.value;
        params[20].AsCurrency := strtocurr(eddescpr.text);
        params[21].AsInteger := edvoz.AsInteger;
        params[22].AsInteger := 1;


        prepare;
        ExecQuery;
        CommitWork;
        Close;
        sql.clear;
        sql.Add('Update param');
        sql.Add('set financ=:p0,blcadastro=:p1,nrdiasbl=:p2,limcfred=:p3, timp=:p4,vpromo=:p5,lista=:p6, descav=:p7,carencia=:p8,chkprt1=:p9,chkprt2=:p10,percmax=:p11, tmpinativo=:p12,variavel=:p13');
        sql.Add('where codigo=:p14');
        if CheckBox4.Checked = true then
            params[0].AsString := 'S'
           else
            params[0].AsString := 'N';
        if checkbox5.Checked = True then
        params[1].AsString:= 'S'
        else
        params[1].asstring := ' ';
        params[2].asinteger := eddbl.asinteger;
        params[3].ascurrency :=  edlc.value;
        params[4].AsInteger := Strtoint(edtimp.text);
        params[5].AsString := edvpromo.Text;
        params[6].AsInteger := edlista.AsInteger;
        params[7].AsCurrency := eddescav.Value;
        params[8].AsInteger := strtoint(edcarencia.text);
        Params[9].AsInteger := edt1.AsInteger;
        Params[10].AsInteger := edt2.AsInteger;
        Params[11].AsCurrency := edt3.Value;
        params[12].AsInteger := edt4.AsInteger;
        params[13].AsInteger := edvar.AsInteger;
        params[14].AsInteger := 1;
        ExecQuery;
        CommitWork;
    end;
    ibdm.IBQParam.Close;
    ibdm.IBQParam.Open;
    CommitWork;
    close;
end;

procedure TFrmEdParam.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFrmEdParam.BitBtn1Click(Sender: TObject);
begin
    Frmcontrato:=TFrmcontrato.create(Application);
    ibdm.IBQParam.open;
    Frmcontrato.txtcontrato.Text := ibdm.IBQParamCONTRATO.AsString;
    Frmcontrato.showmodal;
    Frmcontrato.close;
    Frmcontrato.release;
end;

end.
