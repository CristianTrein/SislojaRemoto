unit Urelmovdia;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TRelmovdia = class(TQuickRep)
    qrbndColumnHeaderBand1: TQRBand;
    qrbndDetailBand1: TQRBand;
    qrbndPageFooterBand1: TQRBand;
    qrbndTitleBand1: TQRBand;
    qrsysdt1: TQRSysData;
    qrsysdt2: TQRSysData;
    qrlbl1: TQRLabel;
    qrsysdt3: TQRSysData;
    qrlbl2: TQRLabel;
    llbdata: TQRLabel;
    qrlbl3: TQRLabel;
    qrlbl4: TQRLabel;
    qrlbl5: TQRLabel;
    qrlbl6: TQRLabel;
    qrdbtxtVENCIMENTO: TQRDBText;
    qrdbtxtVALORORIGINAL: TQRDBText;
    qrdbtxtVALORDEVIDO: TQRDBText;
    qrdbtxtTOTALPAGO: TQRDBText;
  private

  public

  end;

var
  Relmovdia: TRelmovdia;

implementation

uses DM;

{$R *.DFM}

end.
