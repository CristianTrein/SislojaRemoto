unit URelOrdemServ;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, QuickRpt, Qrctrls, ExtCtrls;

type
  TFrmRelOrdemServ = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    IBQuery1: TIBQuery;
    IBQuery1SEQUENCIAL: TIntegerField;
    IBQuery1CODSERV: TIBStringField;
    IBQuery1DESCRICAO: TIBStringField;
    IBQuery1PECAS: TIntegerField;
    IBQuery1VALOR: TIBBCDField;
    IBQuery1DATACONCL: TDateTimeField;
    IBQuery1QUANTIDADE: TIBBCDField;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelOrdemServ: TFrmRelOrdemServ;

implementation

uses DM;

{$R *.DFM}

procedure TFrmRelOrdemServ.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    With ibdm.IBQTipoServ do
    begin
        close;
        open;
        locate('codigo',IBQuery1CODSERV.AsString,[]);
        qrlabel16.Caption := ibdm.IBQTipoServDESCRICAO.AsString;
    end;

    with ibdm.IBQProdutos do
    begin
        close;
        sql.Clear;
        sql.Add('select * from produtos');
        prepare;
        open;
        locate('codigo',IBQuery1PECAS.AsString,[]);
        qrlabel19.Caption := ibdm.IBQProdutosDESCRICAO.AsString;
    end;
end;

end.
