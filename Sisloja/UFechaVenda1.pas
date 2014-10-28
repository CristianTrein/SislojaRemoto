unit UFechaVenda1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, MegaEditNumerico, Mask, rxToolEdit, rxCurrEdit, ExtCtrls,
  XP_Form;

type
  TFrmFechaVenda1 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    edit1: TCurrencyEdit;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label3: TLabel;
    Edit3: TMegaEditNumerico;
    Label6: TLabel;
    Edit2: TMegaEditNumerico;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure edit1Exit(Sender: TObject);
    procedure ComboBox2Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFechaVenda1: TFrmFechaVenda1;

implementation

uses URelNotaFiscal, DM, UNotaFiscal, UPrincipal, UPrestacoes, UFechaVenda,
  UPrestacoes1;

{$R *.DFM}

procedure TFrmFechaVenda1.BitBtn1Click(Sender: TObject);
var
    sAcreDesc : Pchar;
    sTipoAcreDesc : Pchar;
    vtext : pchar;
    vtipo : Pchar;
    vpag : Pchar;
    vval : string;
    Sep:Char;
    i:integer;
    x:integer;
    vtxt:PChar;
    vtxte:PChar;
    vcb:string;
    vpaga:pchar;
    vcont,vcont1 : integer;
begin
    // Codigos que nao usa a impressora fiscal
    // Verifica se é Acréscimo ou Desconto
    If RadioButton1.Checked = True Then Begin sAcreDesc := 'A' End;
    If RadioButton2.Checked = True Then Begin sAcreDesc := 'D' End;
    If RadioButton3.Checked = True Then Begin sTipoAcreDesc := '%' End;
    If RadioButton4.Checked = True Then Begin sTipoAcreDesc := '$' End;

    Sep:='.';
    I := AnsiPos(sep,Edit1.text);
    if I = 0 then
    begin
        vtxt := Pchar(Edit1.text+'00');
    end
    else
    begin
        vval := Edit1.text + '00';
        vtxt := Pchar(Copy(vval, 1, I - 1)+Copy(vval, I + 1, 2 ));
    end;
    vpag := Pchar(vtxt);
    //forma de pagamento
    vtipo := Pchar(ComboBox1.Text);
    Sep:='.';
    I := AnsiPos(sep,Edit3.text);
    if I = 0 then
    begin
        vtxt := Pchar(Edit3.text+'00');
    end
    else
    begin
        vval := Edit3.text + '00';
        vtxt := Pchar(Copy(vval, 1, I - 1)+Copy(vval, I + 1, 2 ));
    end;
    vpag := Pchar(vtxt);
    Sep:='.';
    x := AnsiPos(sep,Edit2.text);
    if x = 0 then
    begin
        vtxte := Pchar(Edit2.text+'00');
    end
    else
    begin
        vval := Edit2.text + '00';
        vtxte := Pchar(Copy(vval, 1, x - 1)+Copy(vval, x + 1, 2 ));
    end;
    vpaga := Pchar(vtxte);
    FrmRelNotaFiscal.QRLabel40.Caption := formatcurr('0.00',edit2.Value);
    with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select max(controle) from caixa');
        prepare;
        open;
        vcont := Fields[0].AsInteger + 1;
    end;
    if (combobox2.Text = 'A VISTA') and (combobox1.Text = 'Dinheiro') or (combobox1.Text = 'Cartao') then
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
            params[2].AsString := frmnotafiscal.Edit10.Text; //frmnotavenda.Edit5.Text;
            params[3].AsString := 'VENDA A VISTA - '+frmnotafiscal.vnome;
            params[4].AsCurrency := edit3.value;
            params[5].AsString := 'C';
            params[6].AsInteger := 1;
            params[7].asinteger := frmprincipal.voperador;
            prepare;
            execquery;
        end;
        with ibdm.Consulta do
        begin
            close;
            sql.Clear;
            sql.Add('select max(controle) from caixa');
            prepare;
            open;
            vcont1 := Fields[0].AsInteger + 1;
        end;
        if edit2.Value > edit3.Value then
        begin
            with ibdm.Grava do
            begin
                close;
                sql.Clear;
                sql.Add('insert into caixa');
                sql.Add('(data,controle,documento,historico,valor,operacao,transacao,operador)');
                sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)');
                params[0].AsDate := int(now);
                params[1].AsInteger := vcont1;
                params[2].AsString := frmnotafiscal.Edit10.Text; //frmnotavenda.Edit5.Text;
                params[3].AsString := 'JUROS - '+frmnotafiscal.vnome;
                params[4].AsCurrency := edit2.value - edit3.Value;
                params[5].AsString := 'C';
                params[6].AsInteger := 4;
                params[7].asinteger := frmprincipal.voperador;
                prepare;
                execquery;
            end;
        end;
        if edit3.Value > edit2.Value then
        begin
            with ibdm.Grava do
            begin
                close;
                sql.Clear;
                sql.Add('insert into caixa');
                sql.Add('(data,controle,documento,historico,valor,operacao,transacao,operador)');
                sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)');
                params[0].AsDate := int(now);
                params[1].AsInteger := vcont1;
                params[2].AsString := frmnotafiscal.Edit10.Text; //frmnotavenda.Edit5.Text;
                params[3].AsString := 'DESCONTO - '+frmnotafiscal.vnome;
                params[4].AsCurrency := edit3.value - edit2.Value;
                params[5].AsString := 'D';
                params[6].AsInteger := 5;
                params[7].asinteger := frmprincipal.voperador;
                prepare;
                execquery;
            end;
        end;
     end;
     if combobox1.text = 'Ch predatado' then
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
             params[2].AsString := frmnotafiscal.Edit10.Text;
             params[3].AsString := 'VENDA c/ CHEQUE - '+frmnotafiscal.vnome;
             params[4].AsCurrency := edit2.value;
             params[5].AsString := 'C';
             params[6].AsInteger := 2;
             params[7].asinteger := frmprincipal.voperador;
             prepare;
             execquery;
         end;
         //FrmCadCheque := TFrmCadCheque.Create(application);
         //FrmCadCheque.ShowModal;
         //FrmCadCheque.Destroy;
     end;

     if combobox2.Text = 'A PRAZO' then
     begin
         FrmPrestacoes1 := TFrmPrestacoes1.Create(application);
//         FrmPrestacoes1.Edvlm.value := currtostr(edit2.value);
         FrmPrestacoes1.nf := true;
         FrmPrestacoes1.ShowModal;
         FrmPrestacoes1.Destroy;
     end;
    ibdm.IBQCaixa.Close;
    ibdm.IBQCaixa.Open;
    CommitWork;
    FrmFechaVenda1.Close;
end;

procedure TFrmFechaVenda1.edit1Exit(Sender: TObject);
var
    vvl1:Currency;
    vvl2:Currency;
begin
    if strtocurr(edit1.Text) > 0 then
    begin
        vvl1 := Edit2.AsCurrency;
        vvl2 := Strtocurr(Edit1.text);
        if radiobutton1.Checked then // Acrescimo
            begin
                if radiobutton3.Checked then // Percentual
                    begin
                        vvl1 := vvl1 + vvl1*((vvl2/100) + 1);
                        Edit2.AsCurrency := vvl1;
                    end
                   else
                    begin // Valor
                         vvl1 := vvl1 + vvl2;
                         Edit2.AsCurrency := (vvl1);
                    end;
            end
           else  // desconto
            begin
                if radiobutton3.Checked then // Percentual
                    begin
                        vvl1 := vvl1 - vvl1*(vvl2/100);
                        Edit2.AsCurrency := vvl1;
                    end
                   else
                    begin // Valor
                         vvl1 := vvl1 - vvl2;
                         Edit2.AsCurrency := vvl1;
                    end;
            end;
    end;
end;

procedure TFrmFechaVenda1.ComboBox2Exit(Sender: TObject);
begin
    if combobox2.Text = 'A VISTA' then
        combobox1.Text := 'Dinheiro';

    if combobox2.Text = 'A PRAZO' then
        combobox1.Text := 'Venda a Prazo';
end;

procedure TFrmFechaVenda1.FormActivate(Sender: TObject);
begin
    if combobox2.Text = 'A VISTA' then
        combobox1.Text := 'Dinheiro';
end;

procedure TFrmFechaVenda1.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
