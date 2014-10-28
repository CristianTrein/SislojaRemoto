unit UCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, rxToolEdit, rxCurrEdit, ComCtrls, MegaEditNumerico,
  ExtCtrls, XP_Form;

type
  TFrmEdCaixa = class(TForm)
    Label9: TLabel;
    ComboBox1: TComboBox;
    EdControle: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    eddata: TDateEdit;
    EdDocumento: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    EdHistorico: TEdit;
    EdValor: TMegaEditNumerico;
    Label5: TLabel;
    Label6: TLabel;
    EdOperacao: TEdit;
    Label7: TLabel;
    EdTransacao: TEdit;
    EdOperador: TEdit;
    Label8: TLabel;
    Label10: TLabel;
    BtnGravar: TBitBtn;
    BtnFechar: TBitBtn;
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdOperadorExit(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    vnovo : boolean;
    { Public declarations }
  end;

var
  FrmEdCaixa: TFrmEdCaixa;

implementation

uses DM, UPrincipal;

{$R *.DFM}

procedure TFrmEdCaixa.BtnFecharClick(Sender: TObject);
begin
    FrmEdCaixa.Close;
end;

procedure TFrmEdCaixa.BtnGravarClick(Sender: TObject);
begin
    if vnovo = True then
    begin
        with ibdm.Grava do
            begin
                close;
                sql.Clear;
                sql.Add('Insert into caixa');
                sql.Add('(data,controle,documento,historico,valor,operacao,transacao,operador)');
                sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)');
                params[0].AsDate := eddata.Date;
                params[1].AsInteger := strtoint(Edcontrole.text);
                params[2].AsString := eddocumento.Text;
                params[3].AsString := edhistorico.Text;
                params[4].AsCurrency := edvalor.AsCurrency;
                params[5].AsString := edoperacao.Text;
                params[6].AsString := edtransacao.Text;
                params[7].AsString := edoperador.Text;

                prepare;
                ExecQuery;
            end;
    end
    else
    begin
        with ibdm.Grava do
            begin
                close;
                sql.Clear;
                sql.Add('Update caixa');
                sql.Add('set data=:p0,documento=:p1,historico=:p2,valor=:p3,operacao=:p4,transacao=:p5,operador=:p6');
                sql.Add('where controle=:p7') ;
                params[0].AsDateTime := eddata.Date;
                params[1].AsString := eddocumento.Text;
                params[2].AsString := edhistorico.Text;
                params[3].AsCurrency := edvalor.AsCurrency;
                params[4].AsString := edoperacao.Text;
                params[5].AsInteger := strtoint(edtransacao.Text);
                params[6].AsInteger := strtoint(edoperador.Text);
                params[7].AsInteger := StrtoInt(edcontrole.text);

                prepare;
                ExecQuery;
            end;
    end;
    CommitWork;
    close;
end;

procedure TFrmEdCaixa.FormActivate(Sender: TObject);
begin
    combobox1.Clear;
    combobox1.SetFocus;
    with ibdm.IBQTrCaixa do
    begin
        close;
        open;
        first;
        while not eof do
        begin
            combobox1.Items.Add(ibdm.IBQTrCaixaDESCRICAO.AsString);
            next;
        end;
    end;
    edoperador.Text := inttostr(frmprincipal.voperador);
    label10.Caption := ibdm.IBQUsuarioNOME.AsString;
    if vnovo = false then
    begin
        with ibdm.IBQTrCaixa do
        begin
            close;
            open;
            if locate('codigo',edtransacao.Text,[]) then
                ComboBox1.Text := ibdm.IBQTrCaixaDESCRICAO.AsString;
        end;
    end;
end;

procedure TFrmEdCaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFrmEdCaixa.EdOperadorExit(Sender: TObject);
begin
    with ibdm.IBQUsuario do
    begin
        close;
        open;
        if locate('codigo',edoperador.Text,[]) then
            label10.Caption := ibdm.IBQUsuarioNOME.AsString;
    end;
end;

procedure TFrmEdCaixa.ComboBox1Click(Sender: TObject);
var
    vcont : integer;
begin
    if ibdm.IBQTrCaixa.Locate('descricao',combobox1.text,[]) then
      begin
          vcont := ibdm.IBQTrCaixaCODIGO.AsInteger;
          edhistorico.Text := combobox1.Text;
          edtransacao.Text := inttostr(vcont);
          edoperacao.Text  := ibdm.IBQTrCaixaOPERACAO.AsString;
          eddata.SetFocus;
      end;
end;

end.
