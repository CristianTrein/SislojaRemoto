unit UEtiquetas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DBCtrls, XP_Form;

type
  TFrmEdEtiquetas = class(TForm)
    BitBtn3: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn5: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    DBNavigator1: TDBNavigator;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEdEtiquetas: TFrmEdEtiquetas;

implementation

uses DM, URepEtiqueta, URelEtiquetas, UIncluirEtiq;

{$R *.DFM}

procedure TFrmEdEtiquetas.BitBtn4Click(Sender: TObject);
begin
    FrmEdEtiquetas.Close;
end;

procedure TFrmEdEtiquetas.BitBtn1Click(Sender: TObject);
begin
    FrmRepEtiqueta := TFrmRepEtiqueta.Create(application);
    FrmRepEtiqueta.Label4.Caption := ibdm.IBQEtiquetasCODIGO.Value;
    FrmRepEtiqueta.Label5.Caption := ibdm.IBQEtiquetasPRODUTO.Value;
    FrmRepEtiqueta.Label6.Caption := currtostr(ibdm.IBQEtiquetasPRECOVENDA.value);
    FrmRepEtiqueta.ShowModal;
    FrmRepEtiqueta.Destroy;
end;

procedure TFrmEdEtiquetas.BitBtn2Click(Sender: TObject);
var
    vcod : integer;
    msg : integer;
begin
    vcod := ibdm.IBQEtiquetasCODIGO.AsInteger;
    msg := application.MessageBox
        ('Deseja realmente excluir as Etiquetas com o mesmo Código???','Comercial',68);
    if msg = 6 then
    begin
        if vcod > 0 then
        begin
            with ibdm.Deleta do
            begin
                close;
                sql.Clear;
                sql.Add('delete from etiquetas');
                sql.Add('where codigo =:p0');
                params[0].AsInteger := vcod;
                prepare;
                ExecQuery;
            end;
            ibdm.IBQEtiquetas.Close;
            ibdm.IBQEtiquetas.Open;
            dbgrid1.Refresh;
            ShowMessage('Etiquetas excluídas com sucesso!!!');
        end;
    end;
end;

procedure TFrmEdEtiquetas.FormActivate(Sender: TObject);
begin
    ibdm.IBQEtiquetas.Close;
    ibdm.IBQEtiquetas.Open;
end;

procedure TFrmEdEtiquetas.BitBtn3Click(Sender: TObject);
begin
    FrmRelEtiquetas := TFrmRelEtiquetas.Create(application);
    FrmRelEtiquetas.QuickRep1.Preview;
    FrmRelEtiquetas.Destroy;
    FrmEdetiquetas.Close;
end;

procedure TFrmEdEtiquetas.BitBtn5Click(Sender: TObject);
begin
    FrmIncluirEtiq := TFrmIncluirEtiq.Create(application);
    FrmIncluirEtiq.ShowModal;
    FrmIncluirEtiq.Destroy;
end;

procedure TFrmEdEtiquetas.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
