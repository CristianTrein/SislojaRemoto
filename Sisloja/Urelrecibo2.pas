unit Urelrecibo2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  TRelRecibo2 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    TitleBand1: TQRBand;
    lbnome: TQRLabel;
    lbcnpj: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRSysData2: TQRSysData;
    QRMemo1: TQRMemo;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    LBCLIENTE: TQRLabel;
    QRMemo2: TQRMemo;
    qrlbl1: TQRLabel;
    qrlbl2: TQRLabel;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelRecibo2: TRelRecibo2;

implementation

uses DM, Ufuncoes;

{$R *.DFM}

procedure TRelRecibo2.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
    QuickRep1.Font.name:='Draft 10Cpi';
end;

procedure TRelRecibo2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    QRdestroi;
end;

end.
