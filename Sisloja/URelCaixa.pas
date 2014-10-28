unit URelCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls;

type
  TFrmRelCaixa = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel14: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText4: TQRDBText;
    QRSysData2: TQRSysData;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRBand1: TQRBand;
    QRLabel18: TQRLabel;
    lbtotaldiad: TQRLabel;
    lbtotaldiac: TQRLabel;
    QRShape1: TQRShape;
    QRExpr4: TQRExpr;
    QRLabel4: TQRLabel;
    QRLabel19: TQRLabel;
    procedure QRExpr3Print(sender: TObject; var Value: String);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    vtotdiac:currency;
    vtotdiad:currency;
    vdia :Tdatetime;
  end;

var
  FrmRelCaixa: TFrmRelCaixa;

implementation

uses DM, UPrincipal;

{$R *.DFM}

procedure TFrmRelCaixa.QRExpr3Print(sender: TObject; var Value: String);
begin
    try
        qrlabel16.Caption := formatcurr('0.00',strtocurr(qrlabel8.Caption) + strtocurr(Value));
     except;
        Showmessage('Erro no saldo inicial');
    end;
end;

procedure TFrmRelCaixa.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
    vtotdiac:=0;
    vtotdiad:=0;
end;

procedure TFrmRelCaixa.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //if ibdm.QcaixaDTA.AsDateTime <> vdia then
        //FrmRelCaixa.QuickRep1.NewPage;
        try
          if ibdm.qCaixa1.FieldByName('operacao').AsString = 'C' then
              vtotdiac := vtotdiac + ibdm.QCaixa1.FieldByName('VALOR').AsCurrency
             else
              vtotdiad := vtotdiad + ibdm.QCaixa1.FieldByName('VALOR').AsCurrency;
        except
            Showmessage('1');
        end;
end;

procedure TFrmRelCaixa.PageFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//    lbtotaldiac.Caption := FormatCurr('0.00',vtotdiac);
//    lbtotaldiad.Caption := FormatCurr('0.00',vtotdiad);


end;

procedure TFrmRelCaixa.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //Qrlabel19.Caption := 'Lançamentos do dia: ' + datetostr(ibdm.ibqcaixaDATA.asdatetime);
    try
    vdia := ibdm.QCaixa1.FieldByName('DTA').Value;  //int(ibdm.ibqcaixaDATA.asdatetime);
    except
 //   Showmessage('2');
    end;
end;

procedure TFrmRelCaixa.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    try
      lbtotaldiac.Caption := FormatCurr('0.00',vtotdiac);
      lbtotaldiad.Caption := FormatCurr('0.00',vtotdiad);
      vtotdiac:=0;
      vtotdiad:=0;

     except
  //  showmessage('3');
    end;
end;

procedure TFrmRelCaixa.FormCreate(Sender: TObject);
begin
//
 Application.OnException:=FrmPrincipal.MostraErro;
end;

end.
