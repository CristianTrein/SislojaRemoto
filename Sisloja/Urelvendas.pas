unit Urelvendas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  TRElvendas = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    LBVALOR: TQRLabel;
    lbmodo: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    LBempresa: TQRLabel;
    lbcnpj: TQRLabel;
    lbperiodo: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    SummaryBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel7: TQRLabel;
    LBavi: TQRLabel;
    QRLabel8: TQRLabel;
    LBprz: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    vavi,vpra:currency;
  end;

var
  RElvendas: TRElvendas;

implementation

uses DM;

{$R *.DFM}

procedure TRElvendas.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var
  vvalor:currency;
  vdoc :string;
  vval:currency;
begin
   if Copy(ibdm.Consulta.fieldByname('condpag').asstring,1,1) = 'A' then
        lbmodo.caption := 'A'
       else
        if Copy(ibdm.Consulta.fieldByname('condpag').asstring,1,1) = 'E' then
            lbmodo.caption := 'E'
           else
            lbmodo.caption := 'P';

    vdoc := ibdm.Consulta.fieldbyname('documento').asstring;
    vval := 0;
    with ibdm.q2 do
    begin
        Close;
        sql.Clear;
        sql.Add('Select sum(valor) from caixa');
        sql.Add('Where documento=:p0 and transacao<=:p1');
        params[0].AsString:=vdoc;
        params[1].AsInteger := 2;
        open;
        vval:=Fields[0].AsCurrency;
        vavi := vavi + vval;
    end;
    vvalor := ibdm.Consulta.fieldbyname('valortotal').ascurrency;
    if vval = 0 then
    lbvalor.Caption := FormatCurr('0.00',vvalor)
    else
    lbvalor.Caption := FormatCurr('0.00',vval);
end;

procedure TRElvendas.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   lbavi.Caption := FormatCurr('0.00',vavi);
   lbprz.Caption := formatCurr('0.00',vpra);
end;

procedure TRElvendas.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
    vavi:=0;
end;

end.
