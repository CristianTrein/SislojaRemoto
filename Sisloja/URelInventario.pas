unit URelInventario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Db, IBCustomDataSet, IBQuery, Qrctrls;

type
  TFrmInventaRel = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText2: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    IBQuery1: TIBQuery;
    IBQuery1CODIGO: TIBStringField;
    IBQuery1DESCRICAO: TIBStringField;
    IBQuery1UNIMED: TIBStringField;
    IBQuery1GRUPO: TIntegerField;
    IBQuery1SUBGRUPO: TIntegerField;
    IBQuery1OBS: TIBStringField;
    IBQuery1ESTMINIMO: TIBBCDField;
    IBQuery1ESTOQUE: TIBBCDField;
    IBQuery1PRECOCUSTO: TIBBCDField;
    IBQuery1PRECOVENDA: TIBBCDField;
    IBQuery1CUSTOMEDIO: TIBBCDField;
    IBQuery1UREAJUSTE: TDateTimeField;
    IBQuery1IPI: TIBBCDField;
    IBQuery1ICMS: TIBBCDField;
    IBQuery1BASECALCULO: TIBBCDField;
    IBQuery1STRIBU: TIBStringField;
    IBQuery1CADASTRO: TDateTimeField;
    IBQuery1LOCAL: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInventaRel: TFrmInventaRel;

implementation

uses DM;

{$R *.DFM}

end.
