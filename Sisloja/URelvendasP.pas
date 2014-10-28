unit URelvendasP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, QuickRpt, Qrctrls, ExtCtrls, IBCustomDataSet, IBTable;

type
  TRelvendasP = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    LBempresa: TQRLabel;
    lbcnpj: TQRLabel;
    lbperiodo: TQRLabel;
    QRDBText1: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel7: TQRLabel;
    LBavi: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRSysData3: TQRSysData;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText4Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    vtot,vtot1:currency;
    vavi:currency;
    VSUB:CURRENCY;
    vcli:integer;
    tipo:integer;
  end;

var
  RelvendasP: TRelvendasP;

implementation

uses DM;

{$R *.DFM}

procedure TRelvendasP.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var
  valor:currency;
  vdoc:string;
begin
    vdoc := ibdm.Consulta.fieldbyname('documento').asstring;
    valor:=0;
    with ibdm.q1 do
    begin
        close;
        sql.Clear;
        sql.Add('select sum(valororiginal) from creceber');
        sql.Add('Where documento = :p0');
        params[0].AsString :=vdoc;
        open;
        valor:=Fields[0].AsCurrency;
        close;
        sql.Clear;
        sql.Add('select * from caixa');
        sql.Add('Where documento = :p0');
        params[0].AsString :=vdoc;
        open;
        while not eof do
        begin
            if (Copy(fieldbyname('historico').asstring,1,6)='REC. -') or (Copy(fieldbyname('historico').asstring,1,7)='ENTRADA' ) then
                valor:=valor+Fieldbyname('valor').ascurrency;
            next;
        end;
    end;
    if ibdm.Consulta.fieldbyname('clifor').asinteger <> vcli then
        begin
        vsub:=0;
        qrshape2.Enabled := True;
        vcli:=ibdm.Consulta.fieldbyname('clifor').asinteger;
        end
        else
        QRshape2.Enabled := False;
    if  tipo=1 then      // pelo valor das mercadorias
    begin
        vsub := vsub + ibdm.consulta.fieldbyname('valortotal').ascurrency;
        vtot:=vtot + ibdm.consulta.fieldbyname('valortotal').ascurrency;
    end
    else
    begin
        vsub := vsub + valor;
        vtot := vtot + valor;
        vavi := vavi + valor;
        QRlabel8.Caption := FormatCurr('0.00',valor);
    end;
    Qrlabel1.Caption := FormatCurr('0.00',vsub) ;
end;

procedure TRelvendasP.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
lbavi.Caption := FormatCurr('0.00',vavi);
end;

procedure TRelvendasP.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
    vsub:=0;
    vtot:=0;
    vcli:=ibdm.Consulta.fieldbyname('clifor').asinteger;
    if tipo=2 then
        vavi := 0;
end;

procedure TRelvendasP.QRDBText4Print(sender: TObject; var Value: String);
begin
   // qrlabel1.Caption := FormatCurr('0.00',vsub);
end;

end.
