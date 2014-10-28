unit URepEtiqueta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TFrmRepEtiqueta = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRepEtiqueta: TFrmRepEtiqueta;

implementation

uses DM, UEtiquetas;

{$R *.DFM}

procedure TFrmRepEtiqueta.BitBtn2Click(Sender: TObject);
begin
    FrmRepEtiqueta.Close;
end;

procedure TFrmRepEtiqueta.BitBtn1Click(Sender: TObject);
var
    vcod : integer;
    vnome1 : string;
    vpreco : currency;
    vcont : integer;
begin
    vcont := 0;
    vcod := ibdm.IBQEtiquetasCODIGO.AsInteger;
    vnome1 := ibdm.IBQEtiquetasPRODUTO.AsString;
    vpreco := ibdm.IBQEtiquetasPRECOVENDA.AsCurrency;
    while vcont <> strtoint(edit1.Text) do
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('Insert into etiquetas');
            sql.Add('(codigo,produto,precovenda)');
            sql.Add('values (:p0,:p1,:p2)');
            params[0].AsInteger := vcod;
            params[1].AsString := vnome1;
            params[2].AsCurrency := vpreco;
            prepare;
            ExecQuery;
        end;
        vcont := vcont + 1;
    end;
    ibdm.IBQEtiquetas.Close;
    ibdm.IBQEtiquetas.Open;
    frmEdEtiquetas.DBGrid1.Refresh;
    ShowMessage('Etiquetas criadas com sucesso!!!');
    FrmRepEtiqueta.Close;
end;

procedure TFrmRepEtiqueta.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
