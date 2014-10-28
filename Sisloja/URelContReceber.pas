unit URelContReceber;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, QuickRpt, Qrctrls, IBCustomDataSet, IBQuery,
  IBTable;

type
  TFrmRelContReceber = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel17: TQRLabel;
    IBQuery1: TIBQuery;
    QRLabel9: TQRLabel;
    QRDBText5: TQRDBText;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRDBText6: TQRDBText;
    QRLabel11: TQRLabel;
    QRExpr1: TQRExpr;
    QRDBText7: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape2: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel14: TQRLabel;
    IBTable1: TIBTable;
    DataSource1: TDataSource;
    IBTable1CONTROLE: TIntegerField;
    IBTable1AVISO1: TDateTimeField;
    IBTable1MARCA1: TIBStringField;
    IBTable1AVISO2: TDateTimeField;
    IBTable1MARCA2: TIBStringField;
    IBTable1AVISO3: TDateTimeField;
    IBTable1MARCA3: TIBStringField;
    IBTable1SPCENT: TDateTimeField;
    IBTable1MARCASPCE: TIBStringField;
    IBTable1SPCSAI: TDateTimeField;
    IBTable1MARCASPCS: TIBStringField;
    IBTable1OBS: TIBStringField;
    IBQuery1CONTROLE: TIntegerField;
    IBQuery1VENCIMENTO: TDateTimeField;
    IBQuery1DOCUMENTO: TIBStringField;
    IBQuery1HISTORICO: TIBStringField;
    IBQuery1VALORORIGINAL: TIBBCDField;
    IBQuery1VALORDEVIDO: TIBBCDField;
    IBQuery1TOTALPAGO: TIBBCDField;
    IBQuery1PARCELA: TIBStringField;
    IBQuery1CLIENTE: TIntegerField;
    IBQuery1PARCIAL: TIntegerField;
    IBQuery1OBS: TIBStringField;
    IBQuery1MPGTO: TIntegerField;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRLabel13: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    soma1,soma2:currency;
    aviso:boolean;
  end;

var
  FrmRelContReceber: TFrmRelContReceber;

implementation

uses DM, Ufuncoes;

{$R *.DFM}

procedure TFrmRelContReceber.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var
     valor,valor1:currency;
     vjuros : real;
     vtempo : real;
     vcalcu : real;
     y:real;
     carencia:integer;
     x:real;
     hoje:Tdatetime;
     vencimento:Tdatetime;
     controle:integer;
begin
    ibdm.IBQParam.open;
    carencia := ibdm.IBQParamCARENCIA.AsInteger;
    valor := ibquery1VALORDEVIDO.AsCurrency;
    vencimento := int(ibquery1VENCIMENTO.AsDatetime);
    // calcular valor atual da conta
       y:=1;
    hoje:=int(now());
    if (hoje - Vencimento) > (carencia) then
    begin
        vtempo := (hoje - Vencimento)   ;
        x:=  1+ (ibdm.IBQParamJURMO.AsCurrency/3000);
        y:=Expo(x,Trunc(vtempo));
    end;
    if (hoje - Vencimento) < 0 then
    begin
        vtempo := (hoje - Vencimento) ;
        x:=  1+ (ibdm.IBQParamDESCPR.AsCurrency/3000);
        y:=Expo(x,Trunc((vtempo-(vtempo*2))));
        y := 1/ y;
    end;

    valor1 := valor * y;
    soma1 := soma1 + valor1;
    soma2 := soma2 + valor1;
    Qrlabel22.caption := FormatCurr('0.00',valor1);

    IF Vencimento < hoje then
      begin
      QRDBtext2.Font.Color := clRed ;
      //Qrlabel22.Font.Color := clRed ;

      end
    else
      begin
      QRDBtext2.Font.Color := clWindowText;
      Qrlabel22.Font.Color := clWindowText;
      end;

    if IBQuery1OBS.AsString <> '' then
//{    begin
      QRSubdetail1.Enabled := True
{      QRDBText8.Enabled := True;
      QRDBText9.Enabled := True;
      QRDBText10.Enabled := True;
      QRDBText11.Enabled := True;
      QRLabel13.Enabled := True;
    end }
   else
 //   begin
      QRSubdetail1.Enabled := False;
 {     QRDBText8.Enabled := false;
      QRDBText9.Enabled := false;
      QRDBText10.Enabled := false;
      QRDBText11.Enabled := false;
      QRLabel13.Enabled := false; }
{      QRSubdetail1.PrintIfEmpty := True
     Else
      QRSubdetail1.PrintIfEmpty := False;
  }
    




{      qra1.Caption := '';
      qra2.Caption := '';
      qra3.Caption := '';
      qrspc.Caption := '';


//
// LBAV.Caption := '';
 // QRstringsBand1.Enabled := False;
  controle:=ibquery1.fieldbyname('controle').asinteger;
  With ibdm.q2 do
  begin
    Close;
    sql.Clear;
    sql.Add('Select controle,aviso1,aviso2,aviso3,spcent from avisos') ;
    sql.Add('Where controle=:p0');
    Params[0].AsInteger := controle;
    Open;
    IF Fields[0].AsInteger = Controle then //achou
    begin
      qra1.Caption := Fields[1].AsString;
      qra2.Caption := Fields[2].AsString;
      qra3.Caption := Fields[3].AsString;
      qrspc.Caption := Fields[4].AsString;
    end;
  end;      }

end;

procedure TFrmRelContReceber.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    QRlabel15.Caption := FormatCurr('0.00',soma1);
end;

procedure TFrmRelContReceber.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    QRLabel14.Caption := FormatCurr('0.00',soma2);
    soma2:=0;
end;

procedure TFrmRelContReceber.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 { qra1.Caption := '';
  qra2.Caption := '';
  qra3.Caption := '';   }
    if (aviso = True) then
    begin
      QRSubdetail1.Enabled := True;
      QRDBText8.Enabled := True;
      QRDBText9.Enabled := True;
      QRDBText10.Enabled := True;
      QRDBText11.Enabled := True;
      QRLabel13.Enabled := True;
    end
   else
    begin
      QRSubdetail1.Enabled := False;
      QRDBText8.Enabled := false;
      QRDBText9.Enabled := false;
      QRDBText10.Enabled := false;
      QRDBText11.Enabled := false;
      QRLabel13.Enabled := false;
    end;



    soma1:=0;
    soma2:=0;
    IBtable1.Open;
end;

procedure TFrmRelContReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    QRdestroi;
end;

procedure TFrmRelContReceber.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //
  QRlabel13.Caption := IBQuery1OBS.AsString;

end;

end.
