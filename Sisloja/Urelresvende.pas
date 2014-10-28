unit Urelresvende;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  TRelResVende = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    LBempresa: TQRLabel;
    lbcnpj: TQRLabel;
    lbperiodo: TQRLabel;
    QRSysData3: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    lbavi: TQRLabel;
    lbprz: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape1: TQRShape;
    lbtavi: TQRLabel;
    lbtprz: TQRLabel;
    lbtger: TQRLabel;
    QRLabel7: TQRLabel;
    LBsubt: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    dti,dtf:tdatetime;
    totav,totpr:currency;
    valort:currency;
  end;

var
  RelResVende: TRelResVende;

implementation

uses DM;

{$R *.DFM}

procedure TRelResVende.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
    var
    valor:currency;
    vdoc:string;
    vven:integer;
    vavi:currency;
    vvlv,vvlp:currency;
begin
    vven := ibdm.Consulta.fieldbyname('vendedor').asinteger;
    vvlv:=0;
    vvlp:=0;
    valor:=0;
    lbavi.Caption := '0,00';
    lbprz.Caption := '0,00';
    with ibdm.q2 do
    begin
        Close;
        sql.clear;
        sql.add('Select * from doctos');
        sql.add('Where vendedor=:p0 and condpag=:p1 and data>= :p2 and data <= :p3');
        params[0].asinteger := vven;
        params[1].AsString := 'AVISTA';
        params[2].AsDatetime := dti;
        params[3].AsDatetime := dtf;
        Open;
        vvlv:=0;
        While not eof do
        begin
            vdoc := ibdm.q2.fieldbyname('documento').asstring;
            with ibdm.q1 do
            begin
                Close;
                sql.Clear;
                sql.Add('Select sum(valor) from caixa');
                sql.Add('Where documento=:p0');
                params[0].AsString:=vdoc;
                open;
                totav := totav + Fields[0].AsCurrency;
                vvlv := vvlv + Fields[0].AsCurrency;
                vavi := vavi + vvlv;
            end;
            lbavi.Caption := FormatCurr('0.00',vvlv);

            valor:=0;
            next;
        end;


        Close;
        sql.clear;
        sql.add('Select * from doctos');
        sql.add('Where vendedor=:p0 and condpag<>:p1 and data>= :p2 and data <= :p3');

        params[0].asinteger := vven;
        params[1].AsString := 'AVISTA';
        params[2].AsDatetime := dti;
        params[3].AsDatetime := dtf;
        Open;
        valor:=0;
        While not eof do
        begin
            vdoc := ibdm.q2.fieldbyname('documento').asstring;

            with ibdm.q1 do
            begin
                close;
                sql.Clear;
                sql.Add('select sum(valororiginal) from creceber');
                sql.Add('Where documento = :p0');
                params[0].AsString :=vdoc;
                open;
                valor:=valor+Fields[0].AsCurrency;
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
            next;
        end;
        lbprz.Caption := FormatCurr('0.00',valor);
        totpr := totpr + valor;
    end;
    LBsubt.Caption := FormatCurr('0.00',valor+vvlv);
end;

procedure TRelResVende.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lbtavi.Caption := formatCurr('0.00',totav);
    lbtprz.Caption := FormatCurr('0.00',totpr);

    lbtger.Caption := formatCurr('0.00',totav+totpr);
end;

procedure TRelResVende.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
    totav :=0;
    totpr :=0;
    lbtavi.Caption := '0.00';
    lbtprz.Caption := '0.00';
    lbtger.Caption := '0.00';
    lbprz.Caption  := '0.00';

end;

end.
