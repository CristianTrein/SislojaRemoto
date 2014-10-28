unit Urelcadastr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls, IBCustomDataSet, IBQuery,
  StdCtrls, Mask, DBCtrls;

type
  TRelcadastro = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    dados: TIBQuery;
    dadosCODIGO: TIBStringField;
    dadosNOME: TIBStringField;
    dadosCONTATO: TIBStringField;
    dadosENDERECO: TIBStringField;
    dadosBAIRRO: TIBStringField;
    dadosPTOREF: TIBStringField;
    dadosTPORES: TIBStringField;
    dadosTMPRES: TIBStringField;
    dadosVLRALU: TIBBCDField;
    dadosCOMPRO: TIBStringField;
    dadosCIDADE: TIBStringField;
    dadosCEP: TIBStringField;
    dadosUF: TIBStringField;
    dadosFONE: TIBStringField;
    dadosFAX: TIBStringField;
    dadosCELULAR: TIBStringField;
    dadosEMAIL: TIBStringField;
    dadosTPCONTATO: TIBStringField;
    dadosREFCOMERCIAL: TIBStringField;
    dadosREFBANCARIA: TIBStringField;
    dadosRG: TIBStringField;
    dadosORGAOEXP: TIBStringField;
    dadosDATARG: TDateTimeField;
    dadosCPF: TIBStringField;
    dadosDTNASC: TDateTimeField;
    dadosCADASTRO: TDateTimeField;
    dadosEMPRESA: TIBStringField;
    dadosCARGO: TIBStringField;
    dadosSALARIO: TIBBCDField;
    dadosOUTREND: TIBBCDField;
    dadosENDEMP: TIBStringField;
    dadosCIDEMP: TIBStringField;
    dadosCEPEMP: TIBStringField;
    dadosUFEMP: TIBStringField;
    dadosCONJUGE: TIBStringField;
    dadosDTNCONJ: TDateTimeField;
    dadosCONVENIO: TIntegerField;
    dadosNPAI: TIBStringField;
    dadosNMAE: TIBStringField;
    dadosAUT1: TIBStringField;
    dadosAUT2: TIBStringField;
    dadosLIMCRED: TIBBCDField;
    dadosOBS: TIBStringField;
    dadosBL: TIBStringField;
    dadosNRDIASBL: TIntegerField;
    dadosFONEEMP: TIBStringField;
    QRSysData3: TQRSysData;
    lbcnpj: TQRLabel;
    DataSource1: TDataSource;
    Label37: TLabel;
    DBEdit37: TDBEdit;
    DBEdit43: TDBEdit;
    Label44: TLabel;
    DBEdit44: TDBEdit;
    Label45: TLabel;
    DBEdit45: TDBEdit;
    QRLabel2: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel25: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText30: TQRDBText;
    QRLabel31: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText33: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText34: TQRDBText;
    QRLabel35: TQRLabel;
    QRDBText35: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText36: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText37: TQRDBText;
    QRLabel38: TQRLabel;
    QRDBText38: TQRDBText;
    QRLabel39: TQRLabel;
    QRDBText39: TQRDBText;
    QRLabel40: TQRLabel;
    QRDBText40: TQRDBText;
    QRDBText1: TQRDBText;
    SummaryBand1: TQRBand;
    QRMemo1: TQRMemo;
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Relcadastro: TRelcadastro;

implementation

uses DM;

{$R *.DFM}

procedure TRelcadastro.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //  PrintStrings(ibdm.ibqparamCADASTRO.Lines);
end;

end.
