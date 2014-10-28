unit UFinanOrdem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, MegaEditNumerico, ExtCtrls, XP_Form;

type
  TFrmFinanOrdem = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    MegaEditNumerico1: TMegaEditNumerico;
    Label3: TLabel;
    MegaEditNumerico2: TMegaEditNumerico;
    Label4: TLabel;
    MegaEditNumerico3: TMegaEditNumerico;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Bevel1: TBevel;
    lbl1: TLabel;
    procedure ComboBox1Click(Sender: TObject);
    procedure MegaEditNumerico1Exit(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFinanOrdem: TFrmFinanOrdem;

implementation

uses DM, UOrdemServ2, UNotaVenda, UPrincipal, UCadCheques, UPrestacoes,
  UOrdemServ1, UPrestacoes1;

{$R *.DFM}

procedure TFrmFinanOrdem.ComboBox1Click(Sender: TObject);
begin
    IF ComboBox1.Text = 'A VISTA' then
    begin
        combobox2.Clear;
        combobox2.Items.Add('Dinheiro');
        combobox2.Items.Add('Cartão');
        combobox2.Items.Add('Cheque');
    end;

    if combobox1.Text = 'A PRAZO' then
    begin
        combobox2.Clear;
        combobox2.Items.Add('Ordem a prazo');
        ComboBox2.Text := 'Ordem a prazo';
    end;
end;

procedure TFrmFinanOrdem.MegaEditNumerico1Exit(Sender: TObject);
var
    vvl1:Currency;
    vvl2:Currency;
begin
    if megaeditnumerico1.AsCurrency > 0 then
    begin
        vvl1 := megaeditnumerico3.AsCurrency;
        vvl2 := megaeditnumerico1.AsCurrency;
        if radiobutton1.Checked then // Acrescimo
            begin
                if CheckBox1.Checked = true then // Percentual
                    begin
                        vvl1 := vvl1 + vvl1*((vvl2/100) + 1);
                        megaeditnumerico3.AsCurrency := vvl1;
                    end
                   else
                    begin // Valor
                         vvl1 := vvl1 + vvl2;
                         megaeditnumerico3.AsCurrency := vvl1;
                    end;
            end
           else  // desconto
            begin
                if CheckBox1.Checked = true then // Percentual
                    begin
                        vvl1 := vvl1 - vvl1*(vvl2/100);
                        megaeditnumerico3.AsCurrency := vvl1;
                    end
                   else
                    begin // Valor
                         vvl1 := vvl1 - vvl2;
                         megaeditnumerico3.AsCurrency := vvl1;
                    end;
            end;
    end;
end;

procedure TFrmFinanOrdem.CheckBox1Click(Sender: TObject);
begin
    if CheckBox1.Checked = true then
        CheckBox2.Checked := false;
end;

procedure TFrmFinanOrdem.CheckBox2Click(Sender: TObject);
begin
    if CheckBox2.Checked = true then
        CheckBox1.Checked := false;
end;

procedure TFrmFinanOrdem.BitBtn2Click(Sender: TObject);
begin
    close;
end;

procedure TFrmFinanOrdem.BitBtn1Click(Sender: TObject);
var
    vcont : integer;
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

    if (combobox1.Text = 'A VISTA') and (combobox2.Text = 'Dinheiro') or (combobox2.Text = 'Cartão') then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('insert into caixa');
            sql.Add('(data,controle,documento,historico,valor,operacao,transacao,operador)');
            sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)');
            params[0].AsDate := int(now);
            params[1].AsInteger := vcont;
            params[2].AsString := frmordemserv2.Edit1.Text;
            params[3].AsString := 'VENDA A VISTA - '+frmordemserv1.ComboBox1.Text;
            params[4].AsCurrency := megaeditnumerico3.AsCurrency;
            params[5].AsString := 'C';
            params[6].AsInteger := 1;
            params[7].asinteger := frmprincipal.voperador;
            prepare;
            execquery;
        end;
    end;

    if combobox2.text = 'Cheque' then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('insert into caixa');
            sql.Add('(data,controle,documento,historico,valor,operacao,transacao,operador)');
            sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)');
            params[0].AsDate := int(now);
            params[1].AsInteger := vcont;
            params[2].AsString := frmordemserv2.Edit1.Text;
            params[3].AsString := 'VENDA c/ CHEQUE - '+frmordemserv1.ComboBox1.Text;
            params[4].AsCurrency := megaeditnumerico3.AsCurrency;
            params[5].AsString := 'C';
            params[6].AsInteger := 2;
            params[7].asinteger := frmprincipal.voperador;
            prepare;
            execquery;
        end;
    end;

    if combobox1.Text = 'A PRAZO' then
    begin
        FrmPrestacoes1 := TFrmPrestacoes1.Create(application);
  //      FrmPrestacoes1.Edit1.Text := currtostr(megaeditnumerico3.AsCurrency);
        FrmPrestacoes1.nf := false;
        FrmPrestacoes1.ShowModal;
        FrmPrestacoes1.Destroy;
    end;
    ibdm.IBQCaixa.Close;
    ibdm.IBQCaixa.Open;
    CommitWork;
    ShowMessage('Ordem de Serviço pago com sucesso!!!');
    close;
end;

procedure TFrmFinanOrdem.FormActivate(Sender: TObject);
begin
    ComboBox1.Text := 'A VISTA';
    ComboBox2.Text := 'Dinheiro';
end;

procedure TFrmFinanOrdem.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
