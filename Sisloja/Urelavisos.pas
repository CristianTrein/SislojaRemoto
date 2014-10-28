unit Urelavisos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  TRelAvisos = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    tit: TQRSysData;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRMemo2: TQRMemo;
    QRMemo3: TQRMemo;
    QRMemo1: TQRMemo;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRSysData2: TQRSysData;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    tipo:integer;
  end;

var
  RelAvisos: TRelAvisos;

implementation

uses DM;

{$R *.DFM}

procedure TRelAvisos.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
    var
  vData:Real;
begin
{     Qrmemo3.Lines.Clear;

    if tipo = 1 then
    with ibdm.Q1 do
    begin
        Close;
        sql.Clear;
        sql.Add('Select creceber.valordevido, creceber.vencimento from creceber,avisos');
        sql.Add('where avisos.controle = creceber.controle and creceber.cliente = :p0 and avisos.marca1 = :p1 and avisos.aviso1 is null');
        sql.add('order by creceber.vencimento');
        params[0].AsInteger := ibdm.Consulta.fieldbyname('cliente').asinteger;
        params[1].AsString := 'X';
        OPen;
        While not ibdm.Q1.eof do
        begin
            vData := int(ibdm.Q1.Fields[1].asdatetime);
            QRmemo3.Lines.Add( Datetimetostr(vData) + '   ' + Formatcurr('0.00',ibdm.Q1.Fields[0].ascurrency));
            ibdm.Q1.next;
        end;
    end;
//
    if tipo = 2 then
    with ibdm.Q1 do
    begin
        Close;
        sql.Clear;
        sql.Add('Select creceber.valordevido, creceber.vencimento from creceber,avisos');
        sql.Add('where avisos.controle = creceber.controle and creceber.cliente = :p0 and avisos.marca2 = :p1 and avisos.aviso2 is null');
        sql.add('order by creceber.vencimento');
        params[0].AsInteger := ibdm.Consulta.fieldbyname('cliente').asinteger;
        params[1].AsString := 'X';
        OPen;
        While not ibdm.Q1.eof do
        begin
            vData := int(ibdm.Q1.Fields[1].asdatetime);
            QRmemo3.Lines.Add( Datetimetostr(vData) + '   ' + Formatcurr('0.00',ibdm.Q1.Fields[0].ascurrency));
            ibdm.Q1.next;
        end;
    end;
   if tipo = 3 then
    with ibdm.Q1 do
    begin
        Close;
        sql.Clear;
        sql.Add('Select creceber.valordevido, creceber.vencimento from creceber,avisos');
        sql.Add('where avisos.controle = creceber.controle and creceber.cliente = :p0 and avisos.marca3 = :p1 and avisos.aviso3 is null');
        sql.add('order by creceber.vencimento');
        params[0].AsInteger := ibdm.Consulta.fieldbyname('cliente').asinteger;
        params[1].AsString := 'X';
        OPen;
        While not ibdm.Q1.eof do
        begin
            vData := int(ibdm.Q1.Fields[1].asdatetime);
            QRmemo3.Lines.Add( Datetimetostr(vData) + '   ' + Formatcurr('0.00',ibdm.Q1.Fields[0].ascurrency));
            ibdm.Q1.next;
        end;
    end;


 }

end;

procedure TRelAvisos.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
    var
  vData:Real;
begin
     Qrmemo3.Lines.Clear;
    if tipo = 1 then
    with ibdm.Q1 do
    begin
        Close;
        sql.Clear;
        sql.Add('Select creceber.documento, creceber.vencimento from creceber,avisos');
        sql.Add('where avisos.controle = creceber.controle and creceber.cliente = :p0 and avisos.marca1 = :p1 and avisos.aviso1 is null');
        sql.add('order by creceber.vencimento');
        params[0].AsInteger := ibdm.Consulta.fieldbyname('cliente').asinteger;
        params[1].AsString := 'X';
        OPen;
        While not ibdm.Q1.eof do
        begin
            vData := int(ibdm.Q1.Fields[1].asdatetime);
            QRmemo3.Lines.Add( 'Venc.: '+ Datetimetostr(vData) + '   Doc.: ' + ibdm.Q1.Fields[0].asstring);
            ibdm.Q1.next;
        end;
    end;
    if tipo = 2 then
    with ibdm.Q1 do
    begin
        Close;
        sql.Clear;
        sql.Add('Select creceber.documento, creceber.vencimento from creceber,avisos');
        sql.Add('where avisos.controle = creceber.controle and creceber.cliente = :p0 and avisos.marca2 = :p1 and avisos.aviso2 is null');
        sql.add('order by creceber.vencimento');
        params[0].AsInteger := ibdm.Consulta.fieldbyname('cliente').asinteger;
        params[1].AsString := 'X';
        OPen;
        While not ibdm.Q1.eof do
        begin
            vData := int(ibdm.Q1.Fields[1].asdatetime);
            QRmemo3.Lines.Add( 'Venc.: '+ Datetimetostr(vData) + '   Doc.: ' + ibdm.Q1.Fields[0].asstring);
            ibdm.Q1.next;
        end;
    end;
    if tipo = 3 then
    with ibdm.Q1 do
    begin
        Close;
        sql.Clear;
        sql.Add('Select creceber.documento, creceber.vencimento from creceber,avisos');
        sql.Add('where avisos.controle = creceber.controle and creceber.cliente = :p0 and avisos.marca3 = :p1 and avisos.aviso3 is null');
        sql.add('order by creceber.vencimento');
        params[0].AsInteger := ibdm.Consulta.fieldbyname('cliente').asinteger;
        params[1].AsString := 'X';
        OPen;
        While not ibdm.Q1.eof do
        begin
            vData := int(ibdm.Q1.Fields[1].asdatetime);
            QRmemo3.Lines.Add( 'Venc.: '+ Datetimetostr(vData) + '   Doc.: ' + ibdm.Q1.Fields[0].asstring);
            ibdm.Q1.next;
        end;
    end;



end;

end.
