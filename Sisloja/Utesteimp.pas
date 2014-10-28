unit Utesteimp;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TRELTESTE = class(TQuickRep)
    qrbndTitleBand1: TQRBand;
    qrlbl1: TQRLabel;
  private

  public

  end;

var
  RELTESTE: TRELTESTE;

implementation

{$R *.DFM}

end.
