unit UOrdemServ1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rxCurrEdit, StdCtrls, Mask, rxToolEdit, Buttons, MegaEditNumerico, ExtCtrls,
  XP_Form;

type
  TFrmOrdemServ1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    ComboBox2: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    CurrencyEdit2: TMegaEditNumerico;
    Currencyedit1: TMegaEditNumerico;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    vcli : integer;
    vnovo : boolean;
  end;

var
  FrmOrdemServ1: TFrmOrdemServ1;

implementation

uses DM, UOrdemServ2, UPrincipal;

{$R *.DFM}

procedure TFrmOrdemServ1.BitBtn2Click(Sender: TObject);
begin
    close;
end;

procedure TFrmOrdemServ1.FormActivate(Sender: TObject);
var
    vcliente : string;
begin
    combobox1.Clear;
    with ibdm.IBQClientes do
    begin
        close;
        sql.Clear;
        sql.Add('select * from empresas');
        sql.Add('where cliente =:p0');
        sql.Add('order by nome ASC');
        params[0].AsString := 'S';
        prepare;
        open;
        first;
        while not eof do
        begin
            combobox1.Items.Add(ibdm.IBQClientesNOME.AsString);
            next;
        end;
    end;

    if vnovo = false then
    begin
        with ibdm.IBQClientes do
        begin
            close;
            sql.Clear;
            sql.Add('select * from empresas');
            sql.Add('where cliente =:p0 and codigo =:p1');
            sql.Add('order by codigo');
            params[0].AsString := 'S';
            params[1].Asinteger := ibdm.IBQOrdemServCLIENTE.AsInteger;
            prepare;
            open;
            vcliente := ibdm.IBQClientesNOME.AsString;
        end;
        FrmOrdemServ1.combobox1.Text := vcliente;
    end;
end;

procedure TFrmOrdemServ1.ComboBox1Click(Sender: TObject);
begin
    with ibdm.IBQClientes do
    begin
        close;
        open;
        locate('nome',combobox1.Text,[]);
        vcli := ibdm.IBQClientesCODIGO.AsInteger;
    end;
end;

procedure TFrmOrdemServ1.BitBtn1Click(Sender: TObject);
var
    vcont,vtam : integer;
    vnovo1 : string;
begin
    if vnovo = true then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('insert into ordemserv');
            sql.Add('(nr,data,cliente,equipamento,caracteristica,atendimento,valorserv,valorpeca)');
            sql.Add('values(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)');
            params[0].AsCurrency := strtocurr(edit1.Text);
            params[1].AsDate := int(DateEdit1.Date);
            params[2].AsInteger := vcli;
            params[3].AsString := edit2.Text;
            params[4].AsString := edit3.Text;
            params[5].AsString := combobox2.Text;
            params[6].AsCurrency := currencyedit1.AsCurrency;
            params[7].AsCurrency := CurrencyEdit2.AsCurrency;
            prepare;
            ExecQuery;
        end;
        ibdm.IBQOrdemServ.Close;
        ibdm.IBQOrdemServ.Open;

        with ibdm.Consulta do
        begin
            close;
            sql.Clear;
            sql.Add('select max(controle) from doctos');
            prepare;
            open;
            vcont := Fields[0].AsInteger + 1;
        end;
        vtam := Length(edit1.Text);
            Case vtam of
            1: vnovo1 := '00000' + edit1.Text;
            2: vnovo1 := '0000' + edit1.Text;
            3: vnovo1 := '000' + edit1.Text;
            4: vnovo1 := '00' + edit1.Text;
            5: vnovo1 := '0' + edit1.Text;
            6: vnovo1 := edit1.Text;
            end;

        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('insert into doctos');
            sql.Add('(controle,documento,data,transacao,clifor,operador)');
            sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5)');
            params[0].AsInteger := vcont;
            params[1].AsString := vnovo1;
            params[2].AsDate := int(DateEdit1.Date);
            params[3].AsString := 'VENDAS';
            params[4].AsInteger := vcli;
            params[5].AsInteger := frmprincipal.voperador;
            prepare;
            execquery;
        end;
        ibdm.IBQDoctos.Close;
        ibdm.IBQDoctos.Open;
        CommitWork;
        FrmOrdemServ2 := TFrmOrdemServ2.Create(Application);
        FrmOrdemServ2.vnovo := true;
        FrmOrdemServ2.Edit1.Text := edit1.Text;
        FrmOrdemServ2.ShowModal;
        FrmOrdemServ2.Destroy;
        close;
    end;

    if vnovo = false then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('update ordemserv');
            sql.Add('(set data=:p0,cliente=:p1,equipamento=:p2,caracteristica=:p3,atendimento=:p4,valorserv=:p5,valorpeca=:p6)');
            sql.Add('where nr=:p7)');
            params[0].AsDate := int(DateEdit1.Date);
            params[1].AsInteger := vcli;
            params[2].AsString := edit2.Text;
            params[3].AsString := edit3.Text;
            params[4].AsString := combobox2.Text;
            params[5].AsCurrency := currencyedit1.AsCurrency;
            params[6].AsCurrency := CurrencyEdit2.AsCurrency;
            params[7].AsCurrency := strtocurr(edit1.Text);
            prepare;
            ExecQuery;
        end;
        ibdm.IBQOrdemServ.Close;
        ibdm.IBQOrdemServ.Open;
        vcont := ibdm.IBQDoctosCONTROLE.AsInteger;
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('update doctos');
            sql.Add('set documento=:p0,data=:p1,transacao=:p2,clifor=:p3,operador=:p4)');
            sql.Add('where controle=:p5)');
            params[0].AsString := edit1.Text;
            params[1].AsDate := int(DateEdit1.Date);
            params[2].AsString := 'VENDAS';
            params[3].AsInteger := vcli;
            params[4].AsInteger := frmprincipal.voperador;
            params[5].AsInteger := vcont;
            prepare;
            execquery;
        end;
        ibdm.IBQDoctos.Close;
        ibdm.IBQDoctos.Open;
        CommitWork;
        FrmOrdemServ2 := TFrmOrdemServ2.Create(Application);
        FrmOrdemServ2.vnovo := false;
        FrmOrdemServ2.Edit1.Text := edit1.Text;
        FrmOrdemServ2.ShowModal;
        FrmOrdemServ2.Destroy;
        close;
    end;

end;

procedure TFrmOrdemServ1.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
