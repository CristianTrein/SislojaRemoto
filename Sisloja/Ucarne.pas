unit Ucarne;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  Trelcarne = class(TForm)
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
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRShape1: TQRShape;
    QRMemo1: TQRMemo;
    QRMemo2: TQRMemo;
    QRMemo3: TQRMemo;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRDBText5: TQRDBText;
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
  relcarne: Trelcarne;

implementation

uses DM, Ufuncoes;

{$R *.DFM}

procedure Trelcarne.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
    QuickRep1.font.name:='Draft 10Cpi';
    QRmemo1.Lines.Clear;
    QRmemo2.Lines.Clear;
    QRmemo3.Lines.Clear;
end;

procedure Trelcarne.DetailBand1BeforePrint(Sender: TQRCustomBand;
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
    QRmemo1.Lines.Add(linha+linha1);
    QRmemo2.Lines.Add(linha2);
    QRmemo3.Lines.Add(linha3);

end;

end.
