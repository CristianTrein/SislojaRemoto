unit UCReceber;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, rxToolEdit, rxCurrEdit, ComCtrls, MegaEditNumerico,
  ExtCtrls, XP_Form;

type
  TFrmEdCReceber = class(TForm)
    Label1: TLabel;
    EdControle: TEdit;
    Label2: TLabel;
    EdVencimento: TDateEdit;
    Label3: TLabel;
    EdDocumento: TEdit;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    EdHistorico: TEdit;
    Label5: TLabel;
    EdValor: TMegaEditNumerico;
    Edvalordevido: TMegaEditNumerico;
    Label6: TLabel;
    Label8: TLabel;
    EdParcela: TEdit;
    Label9: TLabel;
    EdCliente: TEdit;
    BtnGravar: TBitBtn;
    BtnFechar: TBitBtn;
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    vnovo : boolean;
    vtipo : string;
    { Public declarations }
  end;

var
  FrmEdCReceber: TFrmEdCReceber;

implementation

uses DM, UPesqClientes;

{$R *.DFM}

procedure TFrmEdCReceber.BtnFecharClick(Sender: TObject);
begin
    FrmEdCReceber.Close;
end;

procedure TFrmEdCReceber.BtnGravarClick(Sender: TObject);
begin
    if vnovo = True then
    begin
        with ibdm.Grava do
            begin
                close;
                sql.Clear;
                sql.Add('Insert into Creceber');
                sql.Add('(controle,vencimento,documento,historico,valororiginal,valordevido,parcela,cliente)');
                sql.Add('values(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)');
                params[0].AsInteger := Strtoint(Edcontrole.text);
                params[1].AsDate := edvencimento.Date;
                params[2].AsString := eddocumento.Text;
                params[3].AsString := edhistorico.Text;
                params[4].AsCurrency := edvalor.AsCurrency;
                params[5].AsCurrency := edvalordevido.AsCurrency;
                params[6].AsString := edparcela.Text;
                params[7].AsString := edcliente.Text;

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
                sql.Add('Update Creceber');
                sql.Add('set vencimento=:p0,documento=:p1,historico=:p2,valororiginal=:p3,valordevido=:p4,parcela=:p5,cliente=:p6');
                sql.Add('where controle=:p7') ;
                params[0].AsString := datetostr(edvencimento.Date);
                params[1].AsString := eddocumento.Text;
                params[2].AsString := edhistorico.Text;
                params[3].AsCurrency := edvalor.AsCurrency;
                params[4].AsCurrency := edvalordevido.AsCurrency;
                params[5].AsString := edparcela.Text;
                params[6].AsString := edcliente.Text;
                params[7].AsInteger := StrtoInt(edcontrole.text);

                prepare;
                ExecQuery;
            end;
    end;
    CommitWork;
    FrmEdCreceber.Close;
end;

procedure TFrmEdCReceber.FormActivate(Sender: TObject);
begin
    edvencimento.SetFocus;
end;

procedure TFrmEdCReceber.BitBtn1Click(Sender: TObject);
begin
    FrmPesqClientes := TFrmPesqClientes.Create(application);
    FrmPesqClientes.ShowModal;
    FrmPesqClientes.Destroy;
end;

procedure TFrmEdCReceber.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
