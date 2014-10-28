unit Urelfluxocx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  TRelFluxocx = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    lbentra: TQRLabel;
    lbsai: TQRLabel;
    lbsaldo: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel17: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText3: TQRDBText;
    qrlbl1: TQRLabel;
    qrdbtxtoperador: TQRDBText;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    xsaldo:currency;
  end;

var
  RelFluxocx: TRelFluxocx;

implementation

uses DM;

{$R *.DFM}

procedure TRelFluxocx.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    if ibdm.QCaixa1.fieldByname('OPERACAO').AsString = 'C' then
        begin
            xsaldo := xsaldo + ibdm.QCaixa1.fieldByname('VALOR').AsCurrency;
            lbentra.Caption := FormatCurr('0.00',ibdm.QCaixa1.fieldByname('VALOR').ascurrency);
            lbsai.Caption := '';
        end
       Else
        begin
            xsaldo := xsaldo - ibdm.QCaixa1.fieldByname('VALOR').AsCurrency;
            lbentra.Caption := '';
            lbsai.Caption := FormatCurr('0.00',ibdm.QCaixa1.fieldByname('VALOR').ascurrency);
        end;
        lbsaldo.Caption := FormatCurr('0.00',xsaldo);
end;

procedure TRelFluxocx.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
    xsaldo := 0;
end;

end.
