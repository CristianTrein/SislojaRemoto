unit Urelrecibo1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  TRelRecibo1 = class(TForm)
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
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelRecibo1: TRelRecibo1;

implementation

uses DM, Ufuncoes;

{$R *.DFM}

procedure TRelRecibo1.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
    QuickRep1.Font.name:='Draft 10Cpi';
end;

procedure TRelRecibo1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    QRdestroi;
end;

end.
