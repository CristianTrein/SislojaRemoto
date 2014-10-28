
unit URelClientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, Db, DBTables, ExtCtrls, QRExport;

type
  TFrmRelClientes = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel17: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRTextFilter: TQRTextFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelClientes: TFrmRelClientes;

implementation

uses DM;

{$R *.DFM}

end.
