unit URanking;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, TeEngine, Series, TeeProcs, Chart,
  StdCtrls, Buttons, ExtCtrls, XP_Form;

type
  TFrmRanking = class(TForm)
    DadosGrafico: TIBQuery;
    Grafico: TChart;
    Series1: TBarSeries;
    Series2: TBarSeries;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRanking: TFrmRanking;

implementation

uses DM;

{$R *.DFM}

procedure TFrmRanking.BitBtn1Click(Sender: TObject);
begin
    close;
end;

procedure TFrmRanking.FormActivate(Sender: TObject);
var
    vmax : integer;
    vum : integer;
    vprod : integer;
    vprod1 : string;
    vtam : integer;
begin
    vum:=1;
    with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select produto, count(produto) from movimento');
        sql.Add('group by produto');
        prepare;
        open;
        First;
        While not eof do
        begin
            if vum = 1 then
            begin
                vmax:= Fields[1].value;
                vprod :=Fields[0].AsInteger;
                vum:=2;
            end
            else
            begin
                if fields[1].AsInteger > vmax then
                begin
                    vmax := Fields[1].AsInteger;
                    vprod :=Fields[0].AsInteger;
                end;
            end;
            next;
        end;
    end;

    with ibdm.IBQProdutos do
    begin
        close;
        sql.Clear;
        sql.Add('select * from produtos');
        sql.Add('where codigo=:p0');
        params[0].Asstring := inttostr(vprod);
        prepare;
        open;
    end;
//    tfXPForm1.BottomTitleCaption := 'Produto mais vendido: '+ibDM.IBQProdutosDESCRICAO.AsString+', vendido: '+inttostr(vmax)+' vezes';
end;

end.
