unit UNotaFiscal1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, MegaEditNumerico, Mask, rxToolEdit, rxCurrEdit, ExtCtrls,
  XP_Form;

type
  TFrmNotaFiscal1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    CurrencyEdit8: TCurrencyEdit;
    CurrencyEdit9: TCurrencyEdit;
    CurrencyEdit10: TCurrencyEdit;
    CurrencyEdit11: TCurrencyEdit;
    CurrencyEdit6: TMegaEditNumerico;
    GroupBox4: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    CurrencyEdit13: TCurrencyEdit;
    CurrencyEdit14: TCurrencyEdit;
    GroupBox2: TGroupBox;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    procedure CurrencyEdit4Exit(Sender: TObject);
    procedure CurrencyEdit10Exit(Sender: TObject);
    procedure CurrencyEdit11Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNotaFiscal1: TFrmNotaFiscal1;

implementation

uses URelNotaFiscal, DM, UNotaFiscal, UFechaVenda, UFechaVenda1;

{$R *.DFM}

procedure TFrmNotaFiscal1.CurrencyEdit4Exit(Sender: TObject);
begin
    currencyedit6.Value := currencyedit6.Value + currencyedit4.Value;
end;

procedure TFrmNotaFiscal1.CurrencyEdit10Exit(Sender: TObject);
begin
    currencyedit6.Value := currencyedit6.Value + currencyedit10.Value;
end;

procedure TFrmNotaFiscal1.CurrencyEdit11Exit(Sender: TObject);
begin
    currencyedit6.Value := currencyedit6.Value + currencyedit11.Value;
end;

procedure TFrmNotaFiscal1.BitBtn1Click(Sender: TObject);
var
    vcont : integer;
    msg : integer;
    vcalc : currency;
begin
    FrmRelNotaFiscal := TFrmRelNotaFiscal.Create(Application);

    ibdm.IBQParam.Close;
    ibdm.IBQParam.Open;
    if ibdm.IBQParamFINANC.AsString = 'S' then
    begin
        if FrmNotaFiscal.combobox1.text <> 'Remessa p/ venda fora estabelecimento' then
        begin
            FrmFechaVenda1 := TFrmFechaVenda1.Create(Application);
            FrmFechaVenda1.edit2.Value := currencyedit6.Value;
            FrmFechaVenda1.edit3.Value := currencyedit6.Value;
            FrmFechaVenda1.ShowModal;
            FrmFechaVenda1.Destroy;
        end;
    end;

    if frmnotafiscal.CheckBox1.Checked = true then
        FrmRelNotaFiscal.QRLabel4.Caption := 'X';
    if frmnotafiscal.CheckBox2.Checked = true then
        FrmRelNotaFiscal.QRLabel5.Caption := 'X';
    FrmRelNotaFiscal.QRLabel7.Caption := FrmNotaFiscal.combobox1.text;
    FrmRelNotaFiscal.QRLabel15.Caption := copy(frmnotafiscal.ComboBox2.Text,1,frmnotafiscal.vextr - 1);
//  FrmRelNotaFiscal.QRLabel13.Caption := datetostr(frmnotafiscal.DateEdit1.date);
    FrmRelNotaFiscal.QRLabel1.Caption := datetostr(frmnotafiscal.DateEdit1.date);
    FrmRelNotaFiscal.QRLabel17.Caption := frmnotafiscal.Edit3.Text;
    FrmRelNotaFiscal.QRLabel16.Caption := frmnotafiscal.Edit4.Text;
    FrmRelNotaFiscal.QRLabel18.Caption := frmnotafiscal.Edit5.Text;
    FrmRelNotaFiscal.QRLabel19.Caption := frmnotafiscal.Edit7.Text;
    FrmRelNotaFiscal.QRLabel20.Caption := frmnotafiscal.Edit6.Text;
    FrmRelNotaFiscal.QRLabel21.Caption := frmnotafiscal.Edit8.Text;
    FrmRelNotaFiscal.QRLabel22.Caption := frmnotafiscal.Edit9.Text;
    FrmRelNotafiscal.QRLabel23.Caption := frmnotafiscal.Edit11.Text;
    FrmRelNotaFiscal.QRLabel26.Caption := formatcurr('0.00',frmnotafiscal1.CurrencyEdit1.Value);
    FrmRelNotaFiscal.QRLabel27.Caption := formatcurr('0.00',frmnotafiscal1.CurrencyEdit2.Value);
    FrmRelNotaFiscal.QRLabel28.Caption := formatcurr('0.00',frmnotafiscal1.CurrencyEdit8.Value);
    FrmRelNotaFiscal.QRLabel29.Caption := formatcurr('0.00',frmnotafiscal1.CurrencyEdit9.Value);
    FrmRelNotaFiscal.QRLabel30.Caption := formatcurr('0.00',frmnotafiscal1.CurrencyEdit3.Value);
    FrmRelNotaFiscal.QRLabel36.Caption := formatcurr('0.00',frmnotafiscal1.CurrencyEdit4.Value);
    FrmRelNotaFiscal.QRLabel37.Caption := formatcurr('0.00',frmnotafiscal1.CurrencyEdit10.Value);
    FrmRelNotaFiscal.QRLabel38.Caption := formatcurr('0.00',frmnotafiscal1.CurrencyEdit11.Value);
    FrmRelNotaFiscal.QRLabel39.Caption := formatcurr('0.00',frmnotafiscal1.CurrencyEdit5.Value);
    FrmRelNotaFiscal.QRLabel40.Caption := formatcurr('0.00',frmnotafiscal1.CurrencyEdit6.Value);
    FrmRelNotaFiscal.QRLabel31.Caption := frmnotafiscal1.Edit1.Text;
    FrmRelNotaFiscal.QRLabel32.Caption := frmnotafiscal1.Edit2.Text;
    FrmRelNotaFiscal.QRLabel33.Caption := frmnotafiscal1.Edit3.Text;
    FrmRelNotaFiscal.QRLabel34.Caption := frmnotafiscal1.Edit4.Text;
    FrmRelNotaFiscal.QRLabel35.Caption := frmnotafiscal1.Edit5.Text;
    FrmRelNotaFiscal.QRLabel41.Caption := frmnotafiscal1.Edit6.Text;
    FrmRelNotaFiscal.QRLabel42.Caption := frmnotafiscal1.Edit7.Text;
    FrmRelNotaFiscal.QRLabel43.Caption := frmnotafiscal1.Edit8.Text;
    FrmRelNotaFiscal.QRLabel44.Caption := frmnotafiscal1.Edit9.Text;
    FrmRelNotaFiscal.QRLabel45.Caption := frmnotafiscal1.Edit11.Text;
    FrmRelNotaFiscal.QRLabel46.Caption := frmnotafiscal1.Edit12.Text;
    FrmRelNotaFiscal.QRLabel47.Caption := frmnotafiscal1.Edit13.Text;
    FrmRelNotaFiscal.QRLabel48.Caption := frmnotafiscal1.Edit14.Text;
    if currencyedit13.Value = 0 then
        FrmRelNotaFiscal.QRLabel49.Caption := ''
       else
        FrmRelNotaFiscal.QRLabel49.Caption := formatcurr('0.000',frmnotafiscal1.CurrencyEdit13.value);
    if currencyedit14.Value = 0 then
        FrmRelNotaFiscal.QRLabel50.Caption := ''
       else
        FrmRelNotaFiscal.QRLabel50.Caption := FormatCurr('0.000',frmnotafiscal1.CurrencyEdit14.Value);
    FrmRelNotaFiscal.QRRichText1.Lines.Add(frmnotafiscal1.Memo1.Text);
    FrmRelNotaFiscal.QRLabel2.Caption := frmnotafiscal.Edit12.Text;
    FrmRelNotaFiscal.QRLabel3.Caption := frmnotafiscal.Edit10.Text;
    FrmRelNotaFiscal.QuickRep1.Preview;
    FrmRelNotaFiscal.Destroy;

    msg := Application.MessageBox('Nota Fiscal impressa com sucesso???',' >>ATENÇÃO<<',68);
    if msg = 6 then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('update doctos');
            sql.Add('set imprimir=:p0');
            sql.Add('where documento=:p1');
            params[0].AsString := 'S';
            params[1].AsString := frmnotafiscal.edit10.Text;
            prepare;
            execquery;
        end;
        ibdm.IBQDoctos.Close;
        ibdm.IBQDoctos.Open;
        CommitWork;
    end
    else
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('update doctos');
            sql.Add('set imprimir=:p0');
            sql.Add('where documento=:p1');
            params[0].AsString := 'N';
            params[1].AsString := frmnotafiscal.edit10.Text;
            prepare;
            execquery;
        end;
        with ibdm.Deleta do
        begin
            close;
            sql.Clear;
            sql.Add('delete from caixa');
            sql.Add('where documento =:p0');
            params[0].AsString := frmnotafiscal.edit10.Text;
            prepare;
            ExecQuery;
        end;
        with ibdm.Deleta do
        begin
            close;
            sql.Clear;
            sql.Add('delete from creceber');
            sql.Add('where documento =:p0');
            params[0].AsString := frmnotafiscal.edit10.Text;
            prepare;
            ExecQuery;
        end;
    end;
    ibdm.IBQDoctos.Close;
    ibdm.IBQDoctos.Open;
    CommitWork;
    close;
end;

procedure TFrmNotaFiscal1.FormActivate(Sender: TObject);
var
    vcalc, vresult : currency;
    vcont : string;
begin
    vcalc := 0;
    vresult := 0;
    with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select sum(valortot) from temp');
        prepare;
        open;
        currencyedit3.Value := Fields[0].AsCurrency;
    end;
        currencyedit6.Value := currencyedit3.Value;

    with ibdm.IBTemp do
    begin
        close;
        open;
        first;
        while not eof do
        begin
            if ibdm.IBTempSITTRIB.AsString = '000' then
            begin
                vcalc := ibdm.IBTempVALORTOT.AsCurrency;
                currencyedit1.Value := currencyedit1.Value + vcalc;
            end;
            if ibdm.IBTempSITTRIB.AsString = '020' then
            begin
                vresult := (ibdm.IBTempVALORTOT.AsCurrency * 20)/100;
                currencyedit1.Value := currencyedit1.Value + vresult;
            end;
            next;
        end;
    end;
    currencyedit2.Value := (currencyedit1.Value * 17)/100;
    if ibdm.IBTemp.Locate('SitTrib','020',[]) then
    begin
        frmnotafiscal1.Memo1.Lines.Add(#13);
        frmnotafiscal1.Memo1.Lines.Add('Item Recondicionado: 0'+ibdm.IBTempCONTADOR.AsString+' - BASE DE CALCULO REDUZIDO. Conforme artigo 23 Inciso I Livro I decreto 37699/97');
    end;
end;

procedure TFrmNotaFiscal1.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
