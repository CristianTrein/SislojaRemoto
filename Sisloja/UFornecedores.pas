unit UFornecedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, Mask, ExtCtrls, XP_Form,
  rxToolEdit;

type
  TFrmEdFornecedores = class(TForm)
    Label1: TLabel;
    Edcodigo: TEdit;
    CheckBox1: TCheckBox;
    Ednome: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    EdContato: TEdit;
    EdEndereco: TEdit;
    EdBairro: TEdit;
    EdCidade: TEdit;
    EdCep: TMaskEdit;
    EdUf: TEdit;
    EdFone: TEdit;
    EdCelular: TEdit;
    EdEmail: TEdit;
    EdRefComercial: TEdit;
    EdRefBancaria: TEdit;
    EdCnpj: TEdit;
    EdInsc: TEdit;
    EdObs: TEdit;
    Label16: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    Label17: TLabel;
    EdFax: TEdit;
    Label19: TLabel;
    Btngravar: TBitBtn;
    BtnFechar: TBitBtn;
    procedure BtngravarClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    vnovo:boolean;
    { Public declarations }
  end;

var
  FrmEdFornecedores: TFrmEdFornecedores;

implementation

uses DM;

{$R *.DFM}

procedure TFrmEdFornecedores.BtngravarClick(Sender: TObject);
var
    vcod : integer;
begin
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
                sql.Add('Insert into fornecedores');
                sql.Add('(codigo,nome,endereco,contato,bairro,cidade,uf,fone,celular,email,cnpj,insc,obs,fax,cadastro,cep)');
                sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:p14,:p15)');
                params[0].AsString := Edcodigo.text;
                params[1].AsString := ednome.Text;
                params[2].AsString := edendereco.Text;
                params[3].AsString := edcontato.Text;
                params[4].AsString := edbairro.Text;
                params[5].AsString := edcidade.Text;
                params[6].AsString := eduf.Text;
                params[7].AsString := edfone.Text;
                params[8].AsString := edcelular.Text;
                params[9].AsString := edemail.Text;
              //  params[10].AsString := edrefcomercial.Text;
              //  params[10].AsString := edrefbancaria.Text;
                params[10].AsString := edcnpj.Text;
                params[11].AsString := edinsc.Text;
                params[12].AsString := edobs.Text;
//                params[13].AsString := 'S';
                params[13].AsString := edfax.Text;
                params[14].AsDate := now;
                params[15].AsString := edcep.Text;
                prepare;
                ExecQuery;
            end;
            vcod := ibdm.IBQParamCODIGO.AsInteger;
            with ibdm.Grava do
            begin
                close;
                sql.Clear;
                sql.Add('update param');
                sql.Add('set proxcli=:p0');
                sql.Add('where codigo =:p1');
                params[0].AsInteger := strtoint(edcodigo.text);
                params[1].AsInteger := vcod;
                prepare;
                execquery;
            end;
            ibdm.IBQParam.Close;
            ibdm.IBQParam.open;
            close;
       end;
    end
   else
    begin
        with ibdm.Grava do
            begin
                close;
                sql.Clear;
                sql.Add('Update fornecedores');
                sql.Add('set nome=:p0,endereco=:p1,contato=:p2,bairro=:p3,cidade=:p4,uf=:p5,fone=:p6,celular=:p7,email=:p8,cnpj=:p11,insc=:p12,obs=:p13,fax=:p14,cadastro=:p15,cep=:p16');
                sql.Add('where codigo=:p15') ;
                params[0].asstring := Ednome.text;
                params[1].asstring := Edendereco.Text;
                params[2].asstring := edcontato.Text;
                params[3].asstring := edbairro.Text;
                params[4].asstring := edcidade.Text;
                params[5].asstring := eduf.Text;
                params[6].asstring := edfone.Text;
                params[7].asstring := edcelular.Text;
                params[8].asstring := edemail.Text;
//              params[9].asstring := edrefcomercial.Text;
//              params[10].asstring := edrefbancaria.Text;
                params[11].asstring := edcnpj.Text;
                params[12].asstring := edinsc.Text;
                params[13].asstring := edobs.Text;
                params[14].asstring := edfax.Text;
                params[15].AsDateTime := now;
                params[16].AsString := edcep.Text;
                params[17].AsInteger := Strtoint(EDcodigo.text);

                prepare;
                ExecQuery;
            end;
    end;
    CommitWork;
    FrmEdFornecedores.Close;
end;

procedure TFrmEdFornecedores.BtnFecharClick(Sender: TObject);
begin
    FrmEdFornecedores.Close;
end;

procedure TFrmEdFornecedores.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFrmEdFornecedores.CheckBox1Click(Sender: TObject);
var
    vcod : integer;
begin
    if checkbox1.Checked = true then
    begin
        with ibdm.IBQParam do
        begin
            close;
            open; 
            vcod := fieldbyname('proxcli').asinteger;
            EdCodigo.Text := inttostr(vcod + 1);
        end;
        ednome.SetFocus;
    end
    else
      begin
        EdCodigo.Text := '';
        edcodigo.SetFocus;
      end;
end;

procedure TFrmEdFornecedores.FormActivate(Sender: TObject);
begin
    if vnovo = false then
    begin
        CheckBox1.Enabled := false;
        Edcodigo.Enabled := false;
    end;
end;

end.
