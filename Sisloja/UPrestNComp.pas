unit UPrestNComp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, XP_Form;

type
  TFrmPrestNCompra = class(TForm)
    Label1: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    Edit2: TEdit;
    Edit1: TEdit;
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
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrestNCompra: TFrmPrestNCompra;

implementation

uses DM, UNotaCompra, UPrincipal, UItensCompra;

{$R *.DFM}

procedure TFrmPrestNCompra.BitBtn1Click(Sender: TObject);
var
    vcon : integer;
    vcod : integer;
begin
    if edit2.Text <> '0' then
    begin
        with ibdm.Consulta do
        begin
            close;
            sql.Clear;
            sql.Add('select max(controle) from caixa');
            prepare;
            open;
            vcon := Fields[0].AsInteger + 1;
        end;

        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('insert into caixa');
            sql.Add('(data,controle,documento,historico,valor,operacao,transacao,operador)');
            sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)');
            params[0].AsDate := strtodate(edit3.text);
            params[1].AsInteger := vcon;
            params[2].AsString := frmnotacompra.Edit1.Text;
            params[3].AsString := 'ENTRADA '+frmnotacompra.Label8.Caption;
            params[4].AsString := edit2.Text;
            params[5].AsString := 'D';
            params[6].AsInteger := 8;
            params[7].AsInteger := frmprincipal.voperador;
            prepare;
            ExecQuery;
        end;
    end;

    if combobox1.Text <> '' then
       begin
            if combobox1.text >= '1' then
            begin
                with ibdm.Consulta do
                begin
                    close;
                    sql.Clear;
                    sql.Add('select max(controle) from cpagar');
                    prepare;
                    open;
                    vcod := Fields[0].AsInteger + 1;
                end;

                with ibdm.Grava do
                begin
                    close;
                    sql.Clear;
                    sql.Add('Insert into Cpagar');
                    sql.Add('(controle,vencimento,documento,historico,valor,parcela,fornecedor)');
                    sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6)');
                    params[0].AsInteger := vcod;
                    params[1].AsDate := strtodate(edit5.text);
                    params[2].AsString := frmnotacompra.Edit1.Text;
                    params[3].AsString := frmnotacompra.Label8.Caption;
                    params[4].AsCurrency := strtocurr(edit4.text);
                    params[5].AsString := '1/'+combobox1.Text;
                    params[6].AsString := frmnotacompra.Edit2.Text;
                    prepare;
                    ExecQuery;
                end;
            end;
            if combobox1.text >= '2' then
                begin
                    with ibdm.Consulta do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('select max(controle) from cpagar');
                        prepare;
                        open;
                        vcod := Fields[0].AsInteger + 1;
                    end;

                    with ibdm.Grava do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('Insert into Cpagar');
                        sql.Add('(controle,vencimento,documento,historico,valor,parcela,fornecedor)');
                        sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6)');
                        params[0].AsInteger := vcod;
                        params[1].AsDate := strtodate(edit7.text);
                        params[2].AsString := frmnotacompra.Edit1.Text;
                        params[3].AsString := frmnotacompra.Label8.Caption;
                        params[4].AsCurrency := strtocurr(edit6.text);
                        params[5].AsString := '2/'+combobox1.Text;
                        params[6].AsString := frmnotacompra.Edit2.Text;
                        prepare;
                        ExecQuery;
                    end;
                end;
            if combobox1.text >= '3' then
                begin
                    with ibdm.Consulta do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('select max(controle) from cpagar');
                        prepare;
                        open;
                        vcod := Fields[0].AsInteger + 1;
                    end;

                    with ibdm.Grava do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('Insert into Cpagar');
                        sql.Add('(controle,vencimento,documento,historico,valor,parcela,fornecedor)');
                        sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6)');
                        params[0].AsInteger := vcod;
                        params[1].AsDate := strtodate(edit9.text);
                        params[2].AsString := frmnotacompra.Edit1.Text;
                        params[3].AsString := frmnotacompra.Label8.Caption;
                        params[4].AsCurrency := strtocurr(edit8.text);
                        params[5].AsString := '3/'+combobox1.Text;
                        params[6].AsString := frmnotacompra.Edit2.Text;
                        prepare;
                        ExecQuery;
                    end;
                end;
            if combobox1.text >= '4' then
                begin
                    with ibdm.Consulta do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('select max(controle) from cpagar');
                        prepare;
                        open;
                        vcod := Fields[0].AsInteger + 1;
                    end;

                    with ibdm.Grava do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('Insert into Cpagar');
                        sql.Add('(controle,vencimento,documento,historico,valor,parcela,fornecedor)');
                        sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6)');
                        params[0].AsInteger := vcod;
                        params[1].AsDate := strtodate(edit11.text);
                        params[2].AsString := frmnotacompra.Edit1.Text;
                        params[3].AsString := frmnotacompra.Label8.Caption;
                        params[4].AsCurrency := strtocurr(edit10.text);
                        params[5].AsString := '4/'+combobox1.Text;
                        params[6].AsString := frmnotacompra.Edit2.Text;
                        prepare;
                        ExecQuery;
                    end;
                end;
            if combobox1.text >= '5' then
                begin
                    with ibdm.Consulta do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('select max(controle) from cpagar');
                        prepare;
                        open;
                        vcod := Fields[0].AsInteger + 1;
                    end;

                    with ibdm.Grava do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('Insert into Cpagar');
                        sql.Add('(controle,vencimento,documento,historico,valor,parcela,fornecedor)');
                        sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6)');
                        params[0].AsInteger := vcod;
                        params[1].AsDate := strtodate(edit13.text);
                        params[2].AsString := frmnotacompra.Edit1.Text;
                        params[3].AsString := frmnotacompra.Label8.Caption;
                        params[4].AsCurrency := strtocurr(edit12.text);
                        params[5].AsString := '5/'+combobox1.Text;
                        params[6].AsString := frmnotacompra.Edit2.Text;
                        prepare;
                        ExecQuery;
                    end;
                END;
            if combobox1.text >= '6' then
                begin
                    with ibdm.Consulta do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('select max(controle) from cpagar');
                        prepare;
                        open;
                        vcod := Fields[0].AsInteger + 1;
                    end;

                    with ibdm.Grava do
                    begin
                        close;
                        sql.Clear;
                        sql.Add('Insert into Cpagar');
                        sql.Add('(controle,vencimento,documento,historico,valor,parcela,fornecedor)');
                        sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6)');
                        params[0].AsInteger := vcod;
                        params[1].AsDate := strtodate(edit15.text);
                        params[2].AsString := frmnotacompra.Edit1.Text;
                        params[3].AsString := frmnotacompra.Label8.Caption;
                        params[4].AsCurrency := strtocurr(edit14.text);
                        params[5].AsString := '6/'+combobox1.Text;
                        params[6].AsString := frmnotacompra.Edit2.Text;
                        prepare;
                        ExecQuery;
                    end;
                end;
        end;
    Close;
    frmitensnota.Close;
end;

procedure TFrmPrestNCompra.ComboBox1Exit(Sender: TObject);
begin
    if combobox1.Text >= '1' then
    begin
        edit4.Text := formatcurr('0.00', strtocurr(edit1.text) / strtoint(combobox1.text));
        Edit5.Text := datetostr(now + 30);
    end;

    if combobox1.Text >= '2' then
    begin
        edit6.Text := formatcurr('0.00', strtocurr(edit1.text) / strtoint(combobox1.text));
        Edit7.Text := datetostr(now + 60);
    end;

    if combobox1.Text >= '3' then
    begin
        edit8.Text := formatcurr('0.00', strtocurr(edit1.text) / strtoint(combobox1.text));
        Edit9.Text := datetostr(now + 90);
    end;

    if combobox1.Text >= '4' then
    begin
        edit10.Text := formatcurr('0.00', strtocurr(edit1.text) / strtoint(combobox1.text));
        Edit11.Text := datetostr(now + 120);
    end;

    if combobox1.Text >= '5' then
    begin
        edit12.Text := formatcurr('0.00', strtocurr(edit1.text) / strtoint(combobox1.text));
        Edit13.Text := datetostr(now + 150);
    end;

    if combobox1.Text >= '6' then
    begin
        edit14.Text := formatcurr('0.00', strtocurr(edit1.text) / strtoint(combobox1.text));
        Edit15.Text := datetostr(now + 180);
    end;
end;

procedure TFrmPrestNCompra.Edit2Exit(Sender: TObject);
begin
    edit1.Text := currtostr(strtocurr(edit1.text) - strtocurr(edit2.text));
end;

procedure TFrmPrestNCompra.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
