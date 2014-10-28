unit UcarneMP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  TrelcarneMP = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    lbnome: TQRLabel;
    lbcnpj: TQRLabel;
    vtit: TQRLabel;
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
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel23: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel53: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape1: TQRShape;
    qrlblnome: TQRLabel;
    qrlbl1: TQRLabel;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relcarneMP: TrelcarneMP;

implementation

uses DM, Ufuncoes;

{$R *.DFM}

procedure TrelcarneMP.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
//    QuickRep1.font.name:='Draft 10Cpi';
//    QRmemo1.Lines.Clear;
//    QRmemo2.Lines.Clear;
//    QRmemo3.Lines.Clear;
end;

procedure TrelcarneMP.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var
  linha:string;
  linha1:string;
  linha2:string;
  linha3:string;
  vref:string;
begin
    vref := Retzero( inttostr(ibdm.Consulta.fieldbyname('ref').asinteger) ,3);
    linha := ibdm.Consulta.fieldbyname('produto').asstring + '     '+vref +'     ' ;
    linha1 := ibdm.Consulta.fieldbyname('descricao').asstring;
    linha2 := ibdm.Consulta.fieldbyname('quantidade').asstring;
    linha3 := FormatCurr('0.00',ibdm.Consulta.fieldbyname('valorunitario').value);
//    QRmemo1.Lines.Add(linha+linha1);
//    QRmemo2.Lines.Add(linha2);
//    QRmemo3.Lines.Add(linha3);

end;

end.
