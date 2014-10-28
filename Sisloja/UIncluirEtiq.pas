unit UIncluirEtiq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, rxToolEdit, rxCurrEdit;

type
  TFrmIncluirEtiq = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CurrencyEdit1: TCurrencyEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIncluirEtiq: TFrmIncluirEtiq;

implementation

uses DM, UEtiquetas;

{$R *.DFM}

procedure TFrmIncluirEtiq.BitBtn2Click(Sender: TObject);
begin
    FrmIncluirEtiq.Close;
end;

procedure TFrmIncluirEtiq.BitBtn1Click(Sender: TObject);
begin
    with ibdm.Grava do
    begin
        close;
        sql.Clear;
        sql.Add('insert into etiquetas');
        sql.Add('(codigo,produto,precovenda)');
        sql.Add('values (:p0,:p1,:p2)');
        params[0].AsString := edit1.Text;
        params[1].AsString := edit2.Text;
        params[2].AsCurrency := currencyedit1.Value;
        prepare;
        ExecQuery;
    end;
    ibdm.IBQEtiquetas.Close;
    ibdm.IBQEtiquetas.Open;
    frmEdEtiquetas.DBGrid1.Refresh;
    ShowMessage('Etiqueta Criada com sucesso!!!');
    FrmIncluirEtiq.Close;
end;

procedure TFrmIncluirEtiq.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
