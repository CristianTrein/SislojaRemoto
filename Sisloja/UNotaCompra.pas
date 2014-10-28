unit UNotaCompra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, rxToolEdit, rxCurrEdit, Mask, MegaEditNumerico, ExtCtrls,
  XP_Form;

type
  TFrmNotaCompra = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label8: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Label7: TLabel;
    CurrencyEdit1: TMegaEditNumerico;
    Label6: TLabel;
    DateEdit1: TDateEdit;
    Edit4: TEdit;
    Label9: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
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
  FrmNotaCompra: TFrmNotaCompra;

implementation

uses DM, UItensCompra, UPrincipal;

{$R *.DFM}

procedure TFrmNotaCompra.BitBtn2Click(Sender: TObject);
begin
    FrmNotaCompra.Close;
end;

procedure TFrmNotaCompra.BitBtn1Click(Sender: TObject);
begin
    with ibdm.Grava do
    begin
        close;
        sql.Clear;
        sql.Add('Insert into Doctos');
        sql.Add('(controle,clifor,documento,data,valorfrete,operador,transacao)');
        sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6)');
        params[0].AsInteger := Strtoint(Edit1.text);
        params[1].Asinteger := strtoint(edit2.text);
        params[2].AsString := edit3.Text;
        params[3].AsDateTime := dateedit1.Date;
        params[4].AsCurrency := currencyedit1.AsCurrency;
        params[5].AsInteger := strtoint(edit4.text);
        params[6].AsString := 'COMPRA';
        prepare;
        ExecQuery;
    end;

    ibdm.IBQDoctos.Close;
    ibdm.IBQDoctos.Open;
    frmprincipal.DBGrid4.Refresh;
    CommitWork;
    FrmItensNota := TFrmItensNota.Create(application);
    FrmItensNota.Edit1.Text := edit3.Text;
    FrmItensNota.ShowModal;
    FrmItensNota.Destroy;
    FrmNotaCompra.Close;
end;

procedure TFrmNotaCompra.FormActivate(Sender: TObject);
begin
    dateedit1.Date := now;
end;

procedure TFrmNotaCompra.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
