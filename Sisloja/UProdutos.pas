unit UProdutos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, Mask, rxToolEdit, rxCurrEdit, MegaEditNumerico,
  ExtCtrls, XP_Form;

type
  TFrmEdProdutos = class(TForm)
    Label1: TLabel;
    EdCodigo: TEdit;
    CheckBox1: TCheckBox;
    EdDescricao: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    EdUnimed: TEdit;
    Label17: TLabel;
    DateEdit1: TDateEdit;
    Label18: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox2: TComboBox;
    Label19: TLabel;
    EdLocal: TEdit;
    Label20: TLabel;
    EdObs: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    EdEstMinimo: TMegaEditNumerico;
    EdEstoque: TMegaEditNumerico;
    Label8: TLabel;
    Label9: TLabel;
    EdPrecoCusto: TMegaEditNumerico;
    Label10: TLabel;
    EdPrecoVenda: TMegaEditNumerico;
    Label11: TLabel;
    EdCustoMedio: TMegaEditNumerico;
    Label12: TLabel;
    EdUReajuste: TDateEdit;
    Label16: TLabel;
    EdStribu: TEdit;
    Label13: TLabel;
    EdIpi: TMegaEditNumerico;
    Label21: TLabel;
    Label14: TLabel;
    EdIcms: TMegaEditNumerico;
    Label22: TLabel;
    Label15: TLabel;
    EdBaseCalculo: TCurrencyEdit;
    Label23: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure ComboBox2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    vnovo : boolean;
    vcodgru : integer;
    { Public declarations }
  end;

var
  FrmEdProdutos: TFrmEdProdutos;

implementation

uses DM, UPrincipal;

{$R *.DFM}

procedure TFrmEdProdutos.BitBtn2Click(Sender: TObject);
begin
    FrmEdProdutos.Close;
end;

procedure TFrmEdProdutos.BitBtn1Click(Sender: TObject);
var
    vcod : integer;
    vdec : integer;
    vsub : integer;
begin
    if vnovo = True then
    begin
        if edcodigo.Text = '' then
          begin
            showMessage('Código inválido!!!');
            edcodigo.SetFocus;
          end
          else
            begin
             with ibdm.Grava do
             begin
                close;
                sql.Clear;
                sql.Add('Insert into produtos');
                sql.Add('(codigo,descricao,unimed,grupo,subgrupo,obs,estminimo,estoque,precocusto,precovenda,customedio,ureajuste,ipi,icms,basecalculo,stribu,cadastro,local)');
                sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:p14,:p15,:p16,:p17)');
                params[0].AsString := Edcodigo.text;
                params[1].AsString := eddescricao.Text;
                params[2].AsString := edunimed.Text;
                params[3].AsString := label18.Caption;
                params[4].AsString := label19.Caption;
                params[5].AsString := edobs.Text;
                params[6].Ascurrency := edestminimo.AsCurrency;
                params[7].Ascurrency := edestoque.AsCurrency;
                params[8].AsCurrency := edprecocusto.AsCurrency;
                params[9].AsCurrency := edprecovenda.AsCurrency;
                params[10].AsCurrency := edcustomedio.AsCurrency;
                params[11].AsDate := edureajuste.Date;
                params[12].AsCurrency := edipi.value;
                params[13].AsCurrency := edicms.Value;
                params[14].AsCurrency := edbasecalculo.Value;
                params[15].AsString := edstribu.text;
                params[16].AsDate := now;
                params[17].AsString := edlocal.Text;

                prepare;
                ExecQuery;
             end;

             vcod := ibdm.IBQParamCODIGO.AsInteger;
             with ibdm.Grava do
             begin
                close;
                sql.Clear;
                sql.Add('update param');
                sql.Add('set proxprod=:p0');
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
                sql.Add('Update produtos');
                sql.Add('set descricao=:p0,unimed=:p1,grupo=:p2,subgrupo=:p3,obs=:p4,estminimo=:p5,estoque=:p6,precocusto=:p7,precovenda=:p8,customedio=:p9,ureajuste=:p10,ipi=:p11,icms=:p12,basecalculo=:p13,stribu=:p14,local=:p15');
                sql.Add('where codigo=:p16') ;
                params[0].AsString := eddescricao.Text;
                params[1].AsString := edunimed.Text;
                params[2].AsString := label18.Caption;
                params[3].AsString := label19.Caption;
                params[4].AsString := edobs.Text;
                params[5].AsCurrency := edestminimo.AsCurrency;
                params[6].AsCurrency := edestoque.AsCurrency;
                params[7].AsCurrency := edprecocusto.AsCurrency;
                params[8].AsCurrency := edprecovenda.AsCurrency;
                params[9].AsCurrency := edcustomedio.AsCurrency;
                params[10].AsDate := int(edureajuste.Date);
                params[11].AsString := currtostr(edipi.value);
                params[12].AsString := currtostr(edicms.value);
                params[13].AsString := edbasecalculo.Text;
                params[14].AsString := edstribu.text;
                params[15].AsString := edlocal.Text;
                params[16].AsString := edcodigo.text;

                prepare;
                ExecQuery;
            end;
        ibdm.IBQProdutos.Close;
        ibdm.IBQProdutos.Open;
        close;
        LOG('Operador: '+InttoStr(frmprincipal.voperador)+' Hora: '+timetostr(time)+' - Estoque alterado: '+edcodigo.Text);
    end;
    CommitWork;
end;

procedure TFrmEdProdutos.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFrmEdProdutos.CheckBox1Click(Sender: TObject);
var
    vcod : integer;
    vtam : integer;
    vnovo : string;
begin
    if checkbox1.Checked = true then
    begin
        with ibdm.IBQParam do
        begin
            close;
            open;
            vcod := fieldbyname('proxprod').asinteger;
            vcod := vcod + 1;
      {      vtam := Length(inttostr(vcod));
            Case vtam of
            1: vnovo := '00000' + inttostr(vcod);
            2: vnovo := '0000' + inttostr(vcod);
            3: vnovo := '000' + inttostr(vcod);
            4: vnovo := '00' + inttostr(vcod);
            5: vnovo := '0' + inttostr(vcod);
            6: vnovo := inttostr(vcod);
            end;
       }     edcodigo.Text := inttostr(vcod);
        end;
        eddescricao.SetFocus;
    end
    else
      begin
        EdCodigo.Text := '';
        edcodigo.SetFocus;
      end;
end;

procedure TFrmEdProdutos.FormActivate(Sender: TObject);
begin
    with ibdm.IBQGrupos do
    begin
        close;
        sql.Clear;
        sql.Add('select * from grupos');
        sql.Add('order by descricao ASC');
        prepare;
        open;
        first;
        while not eof do
        begin
            combobox1.Items.Add(ibdm.ibqgruposDescricao.asstring);
            next;
        end;
    end;
    if vnovo = false then
    begin
        label18.Caption := ibdm.IBQProdutosGRUPO.AsString;
        label19.Caption := ibdm.IBQProdutosSUBGRUPO.AsString;
    end;
end;

procedure TFrmEdProdutos.ComboBox1Click(Sender: TObject);
begin
    with ibdm.IBQGrupos do
    begin
        if locate('descricao',combobox1.Text,[]) then
        begin
            vcodgru := ibdm.IBQGruposCODIGO.AsInteger;
            label18.Caption := inttostr(vcodgru);
            edipi.AsCurrency := ibdm.IBQGruposIPI.AsCurrency;
            EdIcms.AsCurrency := ibdm.IBQGruposICMS.AsCurrency;
        end;
    end;

    with ibdm.IBQSubGrupos do
    begin
        close;
        sql.Clear;
        sql.Add('select * from subgrupos');
        sql.Add('order by grupo ASC');
        prepare;
        open;
        combobox2.Items.Clear;
        if locate('grupo',vcodgru,[]) then
        While (FieldByname('grupo').asinteger = vcodgru) and (not eof) do
        begin
            combobox2.Items.Add(ibdm.IBQSubGruposDESCRICAO.AsString);
            next;
        end;
    end;
end;

procedure TFrmEdProdutos.ComboBox2Exit(Sender: TObject);
var
    vcodsub : integer;
begin
    with ibdm.IBQSubGrupos do
    begin
        close;
        open;
        locate('descricao',combobox2.Text,[]);
        vcodsub := ibdm.IBQSubGruposCODIGO.AsInteger;
        label19.Caption := inttostr(vcodsub);
    end;
end;

end.
