unit Urelcli_1;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TRelcli_1 = class(TQuickRep)
    PageFooterBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabel17: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    lbvlr: TQRLabel;
    lbdias: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Relcli_1: TRelcli_1;

implementation

uses DM;

{$R *.DFM}

procedure TRelcli_1.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var
  vhoje:real;
  vcli:integer;
  vm1,vm2,vm3:currency;
  vd1,vd2,vd3:currency;
begin
//
  vcli:= ibdm.Consulta.fieldbyname('codigo').AsInteger;
  with ibdm.Q1 do
  begin
    Close;
    sql.Clear;
    sql.Add('select sum(pago)/count(controle) media from crecebidas');
    sql.Add('Where cliente=:p0');
    params[0].AsInteger := vcli;
    Open;
    vm1:= Fields[0].AsCurrency;
  end;
  with ibdm.Q1 do
  begin
    Close;
    sql.Clear;
    sql.Add('select sum(valordevido)/count(controle) media from creceber');
    sql.Add('Where cliente=:p0');
    params[0].AsInteger := vcli;
    Open;
    vm2:= Fields[0].AsCurrency;
  end;
  if vm1 <> 0 then
    if vm2 <> 0 then
      vm3 := (vm1+vm2) / 2
     else
      vm3 := vm1;
  if vm1 = 0 then
    if vm2 = 0 then
      vm3:=0
      else
      vm3:=vm2;
  lbvlr.Caption := FormatCurr('0.00',vm3);

  with ibdm.q2 do
  begin
    Close;
    sql.Clear;
    sql.Add('select avg(pagamento  - vencimento) media from crecebidas');
    sql.Add('Where cliente=:p0');
    params[0].AsInteger := vcli;
    Open;
    vd1:=Fields[0].AsCurrency;
   end;
   vhoje:= int(now);
  with ibdm.q2 do
  begin
    Close;
    sql.Clear;
    sql.Add('select avg(current_timestamp - vencimento) media from creceber');
    sql.Add('Where cliente=:p1 and vencimento <= current_timestamp');
    params[0].AsInteger := vcli;
    Open;
    vd2:=Fields[0].AsCurrency;
  end;
  if vd1 <> 0 then
    if vd2 <> 0 then
      vd3 := (vd1+vd2) / 2
     else
      vd3 := vd1;
  if vd1 = 0 then
    if vd2 = 0 then
      vd3:=0
      else
      vd3:=vd2;

   lbdias.Caption := FormatCurr('0.00',vd3);
end;

end.
