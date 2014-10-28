unit Urelitvend1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  TRelitvend1 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    LBempresa: TQRLabel;
    lbcnpj: TQRLabel;
    lbperiodo: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape1: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBText6: TQRDBText;
    QRBand1: TQRBand;
    QRExpr3: TQRExpr;
    QRLabel6: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRShape2: TQRShape;
    QRLabel7: TQRLabel;
    QRShape3: TQRShape;
    QRDBText8: TQRDBText;
    QRLabel8: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Relitvend1: TRelitvend1;

implementation

uses DM;

{$R *.DFM}

end.
