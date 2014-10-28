unit URelConvenioCli;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, QuickRpt, ExtCtrls, Qrctrls;

type
  TFrmRelConvenioCli = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    IBQuery1: TIBQuery;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    IBQuery1CONTROLE: TIntegerField;
    IBQuery1VENCIMENTO: TDateTimeField;
    IBQuery1DOCUMENTO: TIBStringField;
    IBQuery1HISTORICO: TIBStringField;
    IBQuery1VALORORIGINAL: TIBBCDField;
    IBQuery1VALORDEVIDO: TIBBCDField;
    IBQuery1TOTALPAGO: TIBBCDField;
    IBQuery1PARCELA: TIBStringField;
    IBQuery1CLIENTE: TIntegerField;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel9: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText5: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelConvenioCli: TFrmRelConvenioCli;

implementation

uses DM;

{$R *.DFM}

end.
