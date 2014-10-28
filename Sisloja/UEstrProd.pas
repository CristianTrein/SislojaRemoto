unit UEstrProd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons;

type
  TFrmEstrutProd = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEstrutProd: TFrmEstrutProd;

implementation

uses UEditaEstrut, DM, URelEstrutura;

{$R *.DFM}

procedure TFrmEstrutProd.BitBtn2Click(Sender: TObject);
begin
    FrmEditaEstrut := TFrmEditaEstrut.Create(application);
    FrmEditaEstrut.vnovo := true;
    FrmEditaEstrut.edproduto.Text := inttostr(ibdm.IBQProdutosCODIGO.Asinteger);
    FrmEditaEstrut.RxLabel1.Caption := ibdm.IBQProdutosDESCRICAO.AsString;
    FrmEditaEstrut.ShowModal;
    FrmEditaEstrut.Destroy;
end;

procedure TFrmEstrutProd.BitBtn3Click(Sender: TObject);
begin
    FrmEditaEstrut := TFrmEditaEstrut.Create(application);
    FrmEditaEstrut.vnovo := false;
    FrmEditaEstrut.edproduto.Text := ibdm.IBQEstruturaPRODUTO.AsString;
    FrmEditaEstrut.edcomp.Text := ibdm.IBQEstruturaCOMPONENTE.AsString;
    FrmEditaEstrut.edquantidade.Value := ibdm.IBQEstruturaQUANTIDADE.AsCurrency;
    FrmEditaEstrut.edsequencia.Text := inttostr(ibdm.IBQEstruturaSEQ.asinteger);
    FrmEditaEstrut.eddimensao.Text := ibdm.IBQEstruturaPROCESSO.AsString;
    FrmEditaEstrut.ShowModal;
    FrmEditaEstrut.Destroy;
end;

procedure TFrmEstrutProd.BitBtn4Click(Sender: TObject);
var
    vprod : string;
    vcomp : string;
    msg : integer;
begin
    vprod := ibdm.IBQEstruturaPRODUTO.AsString;
    vcomp := ibdm.IBQEstruturaCOMPONENTE.AsString;
    msg := application.messagebox
        ('Deseja realmente excluir esta estrutura???','Comercial',68);
    if msg = 6 then
    begin
        with ibdm.Deleta do
        begin
            close;
            sql.Clear;
            sql.Add('delete from estrutura');
            sql.Add('where produto = :p0, componente = :p1');
            params[0].asstring := vprod;
            params[1].AsString := vcomp;
            prepare;
            execquery;
        end;
        ShowMessage('Estrutura excluída com sucesso!!!')
    end
    else
        exit;

    ibdm.IBQEstrutura.Close;
    ibdm.IBQEstrutura.Open;
    dbgrid1.Refresh;
end;

procedure TFrmEstrutProd.BitBtn1Click(Sender: TObject);
begin
    FrmEstrutProd.Close;
end;

procedure TFrmEstrutProd.FormActivate(Sender: TObject);
begin
    ibdm.IBQEstrutura.close;
    ibdm.IBQEstrutura.Open;
    dbgrid1.Refresh;
end;

procedure TFrmEstrutProd.BitBtn5Click(Sender: TObject);
var
    vcod : string;
begin
    FrmRelEstrutura := TFrmRelEstrutura.Create(application);
    with ibdm.IBQParam do
    begin
        close;
        open;
        FrmRelEstrutura.QRLabel1.Caption := ibdm.IBQParamUSUARIO.AsString;
    end;
    FrmRelEstrutura.QRLabel4.Caption := ibdm.IBQProdutosDESCRICAO.AsString;
    vcod := ibdm.IBQProdutosCODIGO.AsString;
    with ibdm.IBQEstrutura do
    begin
        close;
        sql.Clear;
        sql.Add('select * from estrutura');
        sql.Add('where produto = :p0');
        params[0].AsString := vcod;
        open;
    end;
    FrmRelEstrutura.QuickRep1.Preview;
    FrmRelEstrutura.Destroy;
end;

end.
