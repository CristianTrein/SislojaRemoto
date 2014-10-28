unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, Grids, DBGrids, ExtCtrls, DBCtrls, jpeg,
  RXCtrls, DB, DBTables, RXDice, Mask, XP_Form, XPMenu, XP_Button,
  OleServer, ComOBJ, AppEvnts, rxToolEdit,FileCtrl;

type
  TFrmPrincipal = class(TForm)
    PageControl1: TPageControl;
    TS3: TTabSheet;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    blucmp: TLabel;
    Label7: TLabel;
    DBGrid3: TDBGrid;
    Edit5: TEdit;
    Edit6: TEdit;
    BitBtn12: TBitBtn;
    DBNavigator2: TDBNavigator;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn51: TBitBtn;
    GroupBox10: TGroupBox;
    ComboBox2: TComboBox;
    BitBtn80: TBitBtn;
    BitBtn83: TBitBtn;
    obscli: TDBMemo;
    DBNavigator8: TDBNavigator;
    DBEdit1: TDBEdit;
    dspobs: TEdit;
    Edit18: TEdit;
    BitBtn103: TBitBtn;
    BitBtn105: TBitBtn;
    BitBtn108: TBitBtn;
    btnj: TButton;
    Button7: TButton;
    BitBtn109: TBitBtn;
    BitBtn110: TBitBtn;
    TS2: TTabSheet;
    Label6: TLabel;
    lbp1: TLabel;
    lbp2: TLabel;
    lbrec1: TLabel;
    lbrec2: TLabel;
    Label14: TLabel;
    lbl1: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    BitBtn7: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn48: TBitBtn;
    BitBtn59: TBitBtn;
    BitBtn78: TBitBtn;
    BitBtn85: TBitBtn;
    dspob: TEdit;
    DBGrid10: TDBGrid;
    ord0: TBitBtn;
    ord1: TBitBtn;
    DBGrid2: TDBGrid;
    BitBtn102: TBitBtn;
    BitBtn104: TBitBtn;
    BitBtn106: TBitBtn;
    btn2: TButton;
    TS1: TTabSheet;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn3: TBitBtn;
    Edit17: TEdit;
    BitBtn92: TBitBtn;
    GroupBox8: TGroupBox;
    BitBtn70: TBitBtn;
    BitBtn73: TBitBtn;
    BitBtn72: TBitBtn;
    GroupBox9: TGroupBox;
    BitBtn74: TBitBtn;
    BitBtn75: TBitBtn;
    BitBtn76: TBitBtn;
    Button4: TButton;
    DBGrid9: TDBGrid;
    edobsvenda: TEdit;
    Button5: TButton;
    psdoc: TEdit;
    psnome: TEdit;
    psdata: TDateEdit;
    BitBtn87: TBitBtn;
    DBNavigator9: TDBNavigator;
    BitBtn88: TBitBtn;
    BitBtn93: TBitBtn;
    BitBtn97: TBitBtn;
    BitBtn100: TBitBtn;
    BitBtn107: TBitBtn;
    pcvcli: TEdit;
    TS4: TTabSheet;
    Label4: TLabel;
    DBGrid4: TDBGrid;
    Edit7: TEdit;
    BitBtn17: TBitBtn;
    Edit8: TEdit;
    DBNavigator3: TDBNavigator;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    BitBtn58: TBitBtn;
    BitBtn60: TBitBtn;
    TS7: TTabSheet;
    DBGrid7: TDBGrid;
    Edit13: TEdit;
    Edit14: TEdit;
    BitBtn32: TBitBtn;
    DBNavigator6: TDBNavigator;
    BitBtn33: TBitBtn;
    BitBtn34: TBitBtn;
    BitBtn35: TBitBtn;
    BitBtn49: TBitBtn;
    BitBtn57: TBitBtn;
    BitBtn61: TBitBtn;
    TS5: TTabSheet;
    DBGrid5: TDBGrid;
    Edit9: TEdit;
    Edit10: TEdit;
    BitBtn23: TBitBtn;
    DBNavigator4: TDBNavigator;
    BitBtn24: TBitBtn;
    BitBtn25: TBitBtn;
    BitBtn26: TBitBtn;
    BitBtn27: TBitBtn;
    BitBtn55: TBitBtn;
    TS6: TTabSheet;
    Label8: TLabel;
    Label9: TLabel;
    DBGrid6: TDBGrid;
    Edit11: TEdit;
    Edit12: TEdit;
    DBNavigator5: TDBNavigator;
    BitBtn28: TBitBtn;
    BitBtn29: TBitBtn;
    BitBtn30: TBitBtn;
    BitBtn31: TBitBtn;
    BitBtn56: TBitBtn;
    BitBtn64: TBitBtn;
    BitBtn65: TBitBtn;
    BitBtn66: TBitBtn;
    BitBtn69: TBitBtn;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    Button1: TButton;
    Button2: TButton;
    BitBtn77: TBitBtn;
    TS8: TTabSheet;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBGrid8: TDBGrid;
    Edit15: TEdit;
    Edit16: TEdit;
    BitBtn36: TBitBtn;
    DBNavigator7: TDBNavigator;
    BitBtn37: TBitBtn;
    BitBtn38: TBitBtn;
    BitBtn39: TBitBtn;
    BitBtn40: TBitBtn;
    BitBtn50: TBitBtn;
    Edit19: TEdit;
    dtcai: TDateTimePicker;
    BitBtn112: TBitBtn;
    TS9: TTabSheet;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    BitBtn41: TBitBtn;
    BitBtn42: TBitBtn;
    BitBtn43: TBitBtn;
    BitBtn44: TBitBtn;
    BitBtn45: TBitBtn;
    BitBtn46: TBitBtn;
    BitBtn47: TBitBtn;
    BitBtn62: TBitBtn;
    BitBtn63: TBitBtn;
    BitBtn53: TBitBtn;
    BitBtn67: TBitBtn;
    BitBtn71: TBitBtn;
    BitBtn68: TBitBtn;
    GroupBox7: TGroupBox;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    BitBtn52: TBitBtn;
    BitBtn79: TBitBtn;
    BitBtn82: TBitBtn;
    BitBtn81: TBitBtn;
    BitBtn84: TBitBtn;
    BitBtn86: TBitBtn;
    BitBtn89: TBitBtn;
    BitBtn90: TBitBtn;
    BitBtn91: TBitBtn;
    BitBtn94: TBitBtn;
    BitBtn95: TBitBtn;
    chkrelv: TCheckBox;
    BitBtn96: TBitBtn;
    BitBtn98: TBitBtn;
    BitBtn99: TBitBtn;
    btn1: TBitBtn;
    CheckBox1: TCheckBox;
    GroupBox3: TGroupBox;
    BitBtn54: TBitBtn;
    BitBtn101: TBitBtn;
    BitBtn111: TBitBtn;
    TS12: TTabSheet;
    Shape1: TShape;
    GroupBox5: TGroupBox;
    Image1: TImage;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    Panel4: TPanel;
    RxLabel8: TRxLabel;
    RxLabel9: TRxLabel;
    RxLabel10: TRxLabel;
    TS10: TTabSheet;
    RxLabel1: TRxLabel;
    RxLabel11: TRxLabel;
    Memo1: TMemo;
    TS11: TTabSheet;
    Image2: TImage;
    RxLabel4: TRxLabel;
    Bevel1: TBevel;
    RxLabel5: TRxLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TButton;
    BitBtn113: TBitBtn;
    BitBtn114: TBitBtn;
    Button3: TButton;
    Edit20: TEdit;
    Button6: TButton;
    Label19: TLabel;
    Button8: TButton;
    edtnrdoc: TEdit;
    Label20: TLabel;
    dtantesde: TDateEdit;
    Label21: TLabel;
    procedure TS11Show(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure BitBtn41Click(Sender: TObject);
    procedure BitBtn40Click(Sender: TObject);
    procedure BitBtn28Click(Sender: TObject);
    procedure BitBtn29Click(Sender: TObject);
    procedure BitBtn36Click(Sender: TObject);
    procedure BitBtn37Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn33Click(Sender: TObject);
    procedure BitBtn34Click(Sender: TObject);
    procedure BitBtn47Click(Sender: TObject);
    procedure BitBtn42Click(Sender: TObject);
    procedure BitBtn44Click(Sender: TObject);
    procedure BitBtn46Click(Sender: TObject);
    procedure BitBtn45Click(Sender: TObject);
    procedure BitBtn43Click(Sender: TObject);
    procedure BitBtn53Click(Sender: TObject);
    procedure BitBtn54Click(Sender: TObject);
    procedure BitBtn48Click(Sender: TObject);
    procedure BitBtn49Click(Sender: TObject);
    procedure TS1Show(Sender: TObject);
    procedure TS2Show(Sender: TObject);
    procedure TS3Show(Sender: TObject);
    procedure TS5Show(Sender: TObject);
    procedure TS6Show(Sender: TObject);
    procedure TS7Show(Sender: TObject);
    procedure TS8Show(Sender: TObject);
    procedure BitBtn50Click(Sender: TObject);
    procedure BitBtn51Click(Sender: TObject);
    procedure BitBtn59Click(Sender: TObject);
    procedure BitBtn55Click(Sender: TObject);
    procedure BitBtn56Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure BitBtn57Click(Sender: TObject);
    procedure Analisa_iRetorno();
    procedure Retorno_Impressora;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn58Click(Sender: TObject);
    procedure BitBtn60Click(Sender: TObject);
    procedure TS4Show(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure BitBtn30Click(Sender: TObject);
    procedure BitBtn35Click(Sender: TObject);
    procedure BitBtn38Click(Sender: TObject);
    procedure BitBtn62Click(Sender: TObject);
    procedure BitBtn61Click(Sender: TObject);
    procedure BitBtn63Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure BitBtn32Click(Sender: TObject);
    procedure BitBtn31Click(Sender: TObject);
    procedure BitBtn39Click(Sender: TObject);
    procedure TS9Show(Sender: TObject);
    procedure TS10MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RxLabel1Click(Sender: TObject);
    procedure BitBtn64Click(Sender: TObject);
    procedure BitBtn65Click(Sender: TObject);
    procedure BitBtn66Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure Edit17Exit(Sender: TObject);
    procedure BitBtn67Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn69Click(Sender: TObject);
    procedure BitBtn71Click(Sender: TObject);
    procedure ComboBox2Click(Sender: TObject);
    procedure BitBtn70Click(Sender: TObject);
    procedure BitBtn72Click(Sender: TObject);
    procedure BitBtn73Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure ComboBox3Click(Sender: TObject);
    procedure ComboBox4Click(Sender: TObject);
    procedure BitBtn68Click(Sender: TObject);
    procedure BitBtn76Click(Sender: TObject);
    procedure BitBtn75Click(Sender: TObject);
    procedure BitBtn74Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid6DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn52Click(Sender: TObject);
    procedure BitBtn77Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure TS10Show(Sender: TObject);
    procedure BitBtn78Click(Sender: TObject);
    procedure BitBtn79Click(Sender: TObject);
    procedure BitBtn80Click(Sender: TObject);
    procedure BitBtn82Click(Sender: TObject);
    procedure BitBtn81Click(Sender: TObject);
    procedure BitBtn83Click(Sender: TObject);
    procedure BitBtn84Click(Sender: TObject);
    procedure Shape1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBNavigator8BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn85Click(Sender: TObject);
    procedure BitBtn86Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button5Click(Sender: TObject);
    procedure DBGrid10DblClick(Sender: TObject);
    procedure BitBtn87Click(Sender: TObject);
    procedure BitBtn88Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    Procedure Mostraerro(Sender: TObject; E: Exception);
    procedure BitBtn89Click(Sender: TObject);
    procedure BitBtn90Click(Sender: TObject);
    procedure BitBtn91Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure RxLabel2Click(Sender: TObject);
    procedure BitBtn92Click(Sender: TObject);
    procedure BitBtn93Click(Sender: TObject);
    procedure ord0Click(Sender: TObject);
    procedure ord1Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn94Click(Sender: TObject);
    procedure BitBtn95Click(Sender: TObject);
    procedure BitBtn96Click(Sender: TObject);
    procedure BitBtn97Click(Sender: TObject);
    procedure BitBtn98Click(Sender: TObject);
    procedure BitBtn99Click(Sender: TObject);
    procedure BitBtn100Click(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn101Click(Sender: TObject);
    procedure BitBtn102Click(Sender: TObject);
    procedure BitBtn103Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure BitBtn104Click(Sender: TObject);
    procedure BitBtn105Click(Sender: TObject);
    procedure BitBtn106Click(Sender: TObject);
    procedure BitBtn107Click(Sender: TObject);
    procedure BitBtn108Click(Sender: TObject);
    procedure btnjClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure BitBtn109Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure DBGrid3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure btn2Click(Sender: TObject);
    procedure BitBtn110Click(Sender: TObject);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure BitBtn111Click(Sender: TObject);
    procedure BitBtn112Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure BitBtn113Click(Sender: TObject);
    procedure BitBtn114Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
//    procedure WMSysCommand(var Message : TWMSysCommand) ;
 //   message WM_SYSCOMMAND ;


  private
    { Private declarations }
    procedure CapturaErro(sender: TObject; E: Exception);
  public
    { Public declarations }
    voperador : integer;
    vtipo:string;
    vclica:Boolean;
    vrecord:integer;
    voz:integer;

  end;

Procedure Log(Texto: String);

  //Funções De Inicialização
function Bematech_FI_AlteraSimboloMoeda(SimboloMoeda: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaAliquota(Aliquota: String; ICMS_ISS: Integer): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaHorarioVerao: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaDepartamento(Indice: Integer; Departamento: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaTotalizadorNaoSujeitoIcms(Indice: Integer; Totalizador: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaArredondamento:Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaTruncamento:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ProgramaTruncamento';
function Bematech_FI_LinhasEntreCupons(Linhas: Integer): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EspacoEntreLinhas(Dots: Integer): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ForcaImpactoAgulhas(ForcaImpacto: Integer): Integer; StdCall; External 'BEMAFI32.DLL';

//Funções de Cupom Fiscal
function Bematech_FI_AbreCupom(CGC_CPF: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreCupomMFD( CGC_CPF: String; nomecliente:string; endereco:string ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VendeItem(Codigo: String; Descricao: String; Aliquota: String; TipoQuantidade: String; Quantidade: String; CasasDecimais: Integer; ValorUnitario: String; TipoDesconto: String; Desconto: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VendeItemDepartamento(Codigo: String; Descricao: String; Aliquota: String; ValorUnitario: String; Quantidade: String; Acrescimo: String; Desconto: String; IndiceDepartamento: String; UnidadeMedida: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaItemAnterior: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaItemGenerico(NumeroItem: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaCupom: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaCupomResumido(FormaPagamento: String; Mensagem: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaCupom(FormaPagamento: String; AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; ValorPago: String; Mensagem: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ResetaImpressora:Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IniciaFechamentoCupom(AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamento(FormaPagamento: String; ValorFormaPagamento: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamentoDescricaoForma(FormaPagamento: string; ValorFormaPagamento: string; DescricaoFormaPagto: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TerminaFechamentoCupom(Mensagem: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EstornoFormasPagamento(FormaOrigem: String; FormaDestino: String; Valor: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UsaUnidadeMedida(UnidadeMedida: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AumentaDescricaoItem(Descricao: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IniciaFechamentoCupomMFD(AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimo: String; ValorDesconto: String): Integer; StdCall; External 'BEMAFI32.DLL';




//Funções de Relatório Fiscal
function Bematech_FI_LeituraX:Integer; StdCall; External 'BEMAFI32.DLL' ;
function Bematech_FI_ReducaoZ(Data: String; Hora: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RelatorioGerencial(Texto: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaRelatorioGerencial:Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalData(DataInicial: String; DataFinal: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalReducao(ReducaoInicial: String; ReducaoFinal: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialData(DataInicial: String; DataFinal: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialReducao(ReducaoInicial: String; ReducaoFinal: String): Integer; StdCall; External 'BEMAFI32.DLL';

//Funções de Operações não Fiscais
function Bematech_FI_RecebimentoNaoFiscal(IndiceTotalizador: String; Valor: String; FormaPagamento: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreComprovanteNaoFiscalVinculado(FormaPagamento: String; Valor: String; NumeroCupom: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UsaComprovanteNaoFiscalVinculado(Texto: String): Integer; StdCall; External 'BEMAFI32.DLL'
function Bematech_FI_FechaComprovanteNaoFiscalVinculado:Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Sangria(Valor: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Suprimento(Valor: String; FormaPagamento: String): Integer; StdCall; External 'BEMAFI32.DLL';

//Funções de Informações da Impressora
function Bematech_FI_NumeroSerie(NumeroSerie: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SubTotal(SubTotal: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroCupom(NumeroCupom: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraXSerial: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VersaoFirmware(VersaoFirmware: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CGC_IE(CGC: String; IE: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_GrandeTotal(GrandeTotal: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Cancelamentos(ValorCancelamentos: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Descontos(ValorDescontos: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroOperacoesNaoFiscais(NumeroOperacoes: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroCuponsCancelados(NumeroCancelamentos: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroIntervencoes(NumeroIntervencoes: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroReducoes(NumeroReducoes: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroSubstituicoesProprietario(NumeroSubstituicoes: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UltimoItemVendido(NumeroItem: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ClicheProprietario(Cliche: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroCaixa(NumeroCaixa: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroLoja(NumeroLoja: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SimboloMoeda(SimboloMoeda: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MinutosLigada(Minutos: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MinutosImprimindo(Minutos: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaModoOperacao(Modo: string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaEpromConectada(Flag: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FlagsFiscais(Var Flag: Integer): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ValorPagoUltimoCupom(ValorCupom: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataHoraImpressora(Data: String; Hora: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadoresTotalizadoresNaoFiscais(Contadores: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTotalizadoresNaoFiscais(Totalizadores: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataHoraReducao(Data: String; Hora: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataMovimento(Data: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTruncamento(Flag: string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Acrescimos(ValorAcrescimos: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorBilhetePassagem(ContadorPassagem: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaAliquotasIss(Flag: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaFormasPagamento(Formas: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaRecebimentoNaoFiscal(Recebimentos: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaDepartamentos(Departamentos: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTipoImpressora(Var TipoImpressora: Integer): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTotalizadoresParciais(Totalizadores: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RetornoAliquotas(Aliquotas: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaEstadoImpressora(Var ACK: Integer; Var ST1: Integer; Var ST2: Integer): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DadosUltimaReducao(DadosReducao: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MonitoramentoPapel(Var Linhas: Integer): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaIndiceAliquotasIss(Flag: String): Integer; StdCall; External 'BEMAFI32.DLL';

//Outras Funções
function Bematech_FI_AbrePortaSerial:Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RetornoImpressora(Var ACK: Integer; Var ST1: Integer; Var ST2: Integer): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaPortaSerial:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_FechaPortaSerial';
function Bematech_FI_MapaResumo:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_MapaResumo';
function Bematech_FI_AberturaDoDia( ValorCompra: string; FormaPagamento: string ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechamentoDoDia:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_FechamentoDoDia';
function Bematech_FI_ImprimeConfiguracoesImpressora:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeConfiguracoesImpressora';
function Bematech_FI_ImprimeDepartamentos:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeDepartamentos';
function Bematech_FI_RelatorioTipo60Analitico:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60Analitico';
function Bematech_FI_RelatorioTipo60Mestre:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60Mestre';
function Bematech_FI_VerificaImpressoraLigada:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_VerificaImpressoraLigada';

var
  FrmPrincipal: TFrmPrincipal;
  iRetorno : integer;
  idecimal : integer;
  icfop: string;

implementation

uses UDM, UClientes, DM, UFornecedores, UParam, UPosCaixa, UProdutos,
  UCaixa, UCReceber, UCPagar, UEtiquetas, UVendedores, UGrupos, USubGrupo,
  UCrecebidas, UCPagas, UTrCaixa, UQuitarConta, UNotaVenda, UNotaCompra,
  UComissoes, UIcms, UClasTrib, URelDataCRec, URelClientes,
  URelFornecedores, UPagarConta, URelFiltraEst, URelFiltraCai, URelCPagar,
  UBaixaEst, UEstrProd, UMovimentacao, USuperUsuario, UEdNotaCom,
  UEdItensNota, ULogErros, UInventario, UTipoServ, UOrdemServ1,
  URelCliNiver, UCopiaSeg, URanking, UNotaFiscal, UEstados, URelEstMinimo,
  USomarCreceber, UConvenio, UFiltraConvenio, UCartao, UEscolheImp, Uprecos,
  Ucd, Uitvnd, Umodopgto, Uedobsrec, Uzoomvd, Urelvendas, Uprinter,
  Ufuncoes, URelvendasP, Urelresvende, Urelitvend1, Urelitvend2,
  UPrestacoes1, Ucarne, ULimpeza, Uavisos, Upagmult, Uspcpesq, Uchkspc,
  Uetiqcli, USelCli, Uzoom1, Urelmovdia, UTetesImp, UcarneMP, Utesteimp,
  UItensVenda1;


{$R *.DFM}

procedure Log(Texto: String);
var
    ArquivoTXT: String;
    FileTXT : TextFile;
    vcaminho :string;
begin
  vcaminho := ExtractFilePath( Application.ExeName );
  ArquivoTXT:=  vcaminho +'\logs\LOG '+ FormatDateTime('dd-mm-yyyy',Date)+'.txt';
  AssignFile(FileTXT,ArquivoTXT);
  if FileExists(ArquivoTXT) then
  begin
    Append(FileTXT);
  end
  else
  begin
    Rewrite(FileTXT);
  end;
  writeln(FileTXT,Texto);
  closeFile(FileTXT);
end;


procedure TFrmPrincipal.CapturaErro (sender: TObject; E: Exception);
begin

end;

Procedure TfrmPrincipal.Analisa_iRetorno();
Begin
    if iRetorno = 0 then
       Application.MessageBox( 'Erro de Comunicação !', 'Erro',
                                MB_IconError + MB_OK);

    If iRetorno = -1 Then
       Application.MessageBox( 'Erro de Execução na Função. Verifique!', 'Erro',
                                MB_IconError + MB_OK);

    if iRetorno = -2  then
       Application.MessageBox( 'Parâmetro Inválido !', 'Erro',
                                MB_IconError + MB_OK);

    if iRetorno = -3  then
       Application.MessageBox( 'Alíquota não programada !', 'Atenção',
                                MB_IconInformation + MB_OK);

    If iRetorno = -4 Then
       Application.MessageBox( 'Arquivo BemaFI32.INI não encontrado. Verifique!', 'Atenção',
                                MB_IconInformation + MB_OK);

    If iRetorno = -5 Then
       Application.MessageBox( 'Erro ao Abrir a Porta de Comunicação', 'Erro',
                                MB_IconError + MB_OK);

    If iRetorno = -6 Then
       Application.MessageBox( 'Impressora Desligada ou Desconectada', 'Atenção',
                                MB_IconInformation + MB_OK);

    If iRetorno = -7 Then
       Application.MessageBox( 'Banco Não Cadastrado no Arquivo BemaFI32.ini', 'Atenção',
                                MB_IconInformation + MB_OK);

    If iRetorno = -8 Then
       Application.MessageBox( 'Erro ao Criar ou Gravar no Arquivo Retorno.txt ou Status.txt', 'Erro',
                                MB_IconError + MB_OK);


    if iRetorno = -18 then
       Application.MessageBox( 'Não foi possível abrir arquivo INTPOS.001 !', 'Atenção',
                                MB_IconInformation + MB_OK);

    if iRetorno = -19 then
       Application.MessageBox( 'Parâmetro diferentes !', 'Atenção',
                                MB_IconInformation + MB_OK);

    if iRetorno = -20 then
       Application.MessageBox( 'Transação cancelada pelo Operador !', 'Atenção',
                                MB_IconInformation + MB_OK);

    if iRetorno = -21 then
       Application.MessageBox( 'A Transação não foi aprovada !', 'Atenção',
                                MB_IconInformation + MB_OK);

    if iRetorno = -22 then
       Application.MessageBox( 'Não foi possível terminal a Impressão !', 'Atenção',
                                MB_IconInformation + MB_OK);

    if iRetorno = -23 then
       Application.MessageBox( 'Não foi possível terminal a Operação !', 'Atenção',
                                MB_IconInformation + MB_OK);
end;

Procedure TFrmPrincipal.Retorno_Impressora;
Var
    iACK, iST1, iST2: Integer;
Begin
    iACK := 0; iST1 := 0; iST2 := 0;
    iRetorno := Bematech_FI_RetornoImpressora(iACK, iST1, iST2);
    If iACK = 6 then
       BEGIN
          // Verifica ST1
          IF iST1 >= 128 Then BEGIN iST1 := iST1 - 128; ShowMessage('fim do Papel'); END;
          IF iST1 >= 64  Then BEGIN iST1 := iST1 - 64;  ShowMessage('Pouco Papel'); END;
          IF iST1 >= 32  Then BEGIN iST1 := iST1 - 32;  ShowMessage('Erro no Relógio'); END;
          IF iST1 >= 16  Then BEGIN iST1 := iST1 - 16;  ShowMessage('Impressora em Erro'); END;
          IF iST1 >= 8   Then BEGIN iST1 := iST1 - 8;   ShowMessage('CMD não iniciado em ESC'); END;
          IF iST1 >= 4   Then BEGIN iST1 := iST1 - 4;   ShowMessage('Comando Inexistente'); END;
          IF iST1 >= 2   Then BEGIN iST1 := iST1 - 2;   ShowMessage('Cupom Aberto'); END;
          IF iST1 >= 1   Then BEGIN iST1 := iST1 - 1;   ShowMessage('Nº de Parâmetros Inválidos'); END;

          // Verifica ST2
          IF iST2 >= 128 Then BEGIN iST2 := iST2 - 128; ShowMessage('Tipo de Parâmetro Inválido'); END;
          IF iST2 >= 64  Then BEGIN iST2 := iST2 - 64;  ShowMessage('Memória Fiscal Lotada'); END;
          IF iST2 >= 32  Then BEGIN iST2 := iST2 - 32;  ShowMessage('CMOS não Volátil'); END;
          IF iST2 >= 16  Then BEGIN iST2 := iST2 - 16;  ShowMessage('Alíquota não Programada'); END;
          IF iST2 >= 8   Then BEGIN iST2 := iST2 - 8;   ShowMessage('Alíquotas Lotadas'); END;
          IF iST2 >= 4   Then BEGIN iST2 := iST2 - 4;   ShowMessage('Cancelamento não Programado'); END;
          IF iST2 >= 2   Then BEGIN iST2 := iST2 - 2;   ShowMessage('CGC/IE não Programados'); END;
          IF iST2 >= 1   Then BEGIN iST2 := iST2 - 1;   ShowMessage('Comando não Executado'); END;
       End;

    If iACK = 21 Then
    begin
       showmessage('Atenção!!!'+#13+#10+'A Impressora retornou NAK. O programa será abortado.');
       Application.Terminate;
       Exit;
    End;
End;

procedure TFrmPrincipal.TS11Show(Sender: TObject);
begin
    ibdm.IBQParam.Close;
    ibdm.IBQParam.Open;
    rxlabel4.Caption := Trim(ibdm.IBQParamUSUARIO.AsString);
    TS1.TabVisible := false;
    TS2.TabVisible := false;
    TS3.TabVisible := false;
    TS4.TabVisible := false;
    TS5.TabVisible := false;
    TS6.TabVisible := false;
    TS7.TabVisible := false;
    TS8.TabVisible := false;
    TS9.TabVisible := false;
    TS10.TabVisible := false;
    TS12.TabVisible := false;
    if IBDM.vcor = 'azul' then
      RxLabel4.Font.Color:=clBlue;
    if IBDM.vcor = 'vermelho' then
      RxLabel4.Font.Color:=clred;
    if IBDM.vcor = 'preto' then
      RxLabel4.Font.Color:=clBlack;
    if IBDM.vcor = 'verde' then
      RxLabel4.Font.Color:=clGreen;
    if IBDM.vcor = 'branco' then
      RxLabel4.Font.Color:=clWhite;

    combobox1.Clear;
    combobox1.SetFocus;
    With ibdm.IBQUsuario do
    begin
        close;
        open;
        first;
        While not eof do
        begin
          if IBDM.IBQUsuarioSUPER.AsString <> 'D' then
            Combobox1.Items.Add(ibdm.IBQUsuarioNOME.AsString);
            next;
        end;
    end;
//    rxlabel4.Caption := ibdm.IBQParamUSUARIO.AsString;
  //  tfXPForm1.BottomTitleCaption := ibdm.IBQParamCIDADE.AsString+', '+FormatDateTime('dd " de " mmmm " de " yyyy',now);
    if ibdm.vvv2 = True then
//        tfXPForm1.TitleCaption := 'Sistema_de_Gestão_Comercial                 ==> '+ibdm.IBQParamUSUARIO.AsString+' <=='
       else
//        tfXPForm1.TitleCaption := 'Sistema de Gestão Comercial_                 ==> '+ibdm.IBQParamUSUARIO.AsString+' <==';

end;

procedure TFrmPrincipal.BitBtn1Click(Sender: TObject);
begin
    IF (edit1.Text = '') or (combobox1.Text = '')then
    begin
        edit1.Text := '';
        ShowMessage('    !!! ACESSO NEGADO !!!'+#13+#13+'Usuário ou Senha Inválidos!!!');
        combobox1.SetFocus;
    end
    else
    begin
        ibdm.IBQParam.close;
        ibdm.IBQParam.open;
        icfop := ibdm.ibqparamcfop.asstring;
        voz:= ibdm.IBQParamVOZ.AsInteger;
        with ibdm.IBQUsuario do
        begin
            if locate('Nome',combobox1.text,[]) then
            begin
                if ibdm.IBQUsuarioSENHA.Value = strtoint(edit1.Text) then
                begin
                    voperador := ibdm.IBQUsuarioCODIGO.AsInteger;
                    vtipo := ibdm.IBQUsuarioSUPER.Value;
                    if vtipo = 'M' then
                    begin
                        TS1.TabVisible := true;
                        TS2.TabVisible := true;
                        TS3.TabVisible := true;
                        TS4.TabVisible := true;
                        TS5.TabVisible := true;
                        TS6.TabVisible := true;
                        TS7.TabVisible := true;
                        TS8.TabVisible := true;
                        TS9.TabVisible := true;
                        TS10.TabVisible:= true;
                        TS12.TabVisible := true;
                        TS11.TabVisible := false;
                        PageControl1.Pages[0].Visible := True;
                        TS3.Show;
                        locate('codigo',voperador,[]);
                        if ibdm.IBQUsuariosuper.AsString = 'M' then
                            bitbtn53.enabled := true;
                    end;
                    if (vtipo = 'I') or (vtipo = 'N') then
                    begin
                        TS1.TabVisible := true;
                        TS2.TabVisible := true;
                        TS3.TabVisible := true;
                        TS10.TabVisible:= true;
                        TS12.TabVisible := true;
                        TS11.TabVisible := false;
                        BitBtn110.Visible := False;
                        PageControl1.Pages[0].Visible := True;
                        TS3.Show;
                        locate('codigo',voperador,[]);
                        if ibdm.IBQUsuariosuper.AsString = 'S' then
                            bitbtn53.enabled := true;
                    end;
                end
                else
                begin
                    LOG('Operador: '+Combobox1.Text+' Hora: '+timetostr(time)+' - Errou a senha.');

                    edit1.Text := '';
                    ShowMessage('   !!! ACESSO NEGADO !!!'+#13+#13+'Usuário ou Senha Inválidos!!!');
                    combobox1.SetFocus;
                end;
            end
            else
            begin
                edit1.Text := '';
                ShowMessage('   !!! ACESSO NEGADO !!!'+#13+#13+'Usuário ou Senha Inválidos!!!');
                combobox1.SetFocus;
            end;
        end;
    end;
    // Verifica SPC
    with ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('select avisos.controle, crecebidas.documento ,crecebidas.historico nome from avisos,crecebidas');
        sql.Add(' where  (Select count(*) from creceber where controle = avisos.controle) =0 and avisos.spcent is not null and avisos.spcsai is null and crecebidas.contdoc= avisos.controle');
        sql.Add('Order by crecebidas.historico');
        Open;
        if Fields[0].AsInteger > 0 then
        begin
           Frmchkspc := Tfrmchkspc.Create(application);
           Frmchkspc.ShowModal;
           Frmchkspc.Free;
        end;

    end;
    LOG('Operador: '+InttoStr(voperador)+' Hora: '+timetostr(time)+' - Entrou no Programa.');

    if IBDM.IBQParamchkprt1.AsInteger=9 then
    begin
   //   IF (Lpt1OnLine = 0) then      //((impressoraonline = 0) and
   //   begin
   //     IF voz = 1 then
   //         MSgVoz('A impressora não está ligada. verifique')
   //        else
   //         Showmessage('Verifique a Impressora!');
   //   end;
    end;


end;

procedure TFrmPrincipal.BitBtn2Click(Sender: TObject);
begin
    LOG('Operador: '+InttoStr(voperador)+' Hora: '+timetostr(time)+' - Saiu do Programa.');
    application.Terminate;
end;

procedure TFrmPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFrmPrincipal.BitBtn13Click(Sender: TObject);
begin
    FRmEdClientes := TFrmEdClientes.create(Application);
    FrmEdClientes.vnovo := True;
    FrmEdClientes.ShowModal;
    FrmEdClientes.Free;
    IBDM.IBQClientes.close;
    IBDM.IBQClientes.Open;
    DBGrid3.Refresh;
end;

procedure TFrmPrincipal.BitBtn14Click(Sender: TObject);
    var
    codigo:string;
begin
    FRmEdClientes := TFrmEdClientes.create(Application);
    FrmEdClientes.vnovo := False;
    codigo := IBDM.ibqclientescodigo.value;
    FrmEdClientes.Edcodigo.Text := IBDM.ibqclientescodigo.value;
    FrmEdClientes.Ednome.Text := ibdm.IBQClientesNOME.Value;
    FrmEdClientes.EdEndereco.Text := ibdm.IBQClientesENDERECO.Value;
    FrmEdClientes.EdCep.Text := ibdm.IBQClientesCEP.Value;
    FrmEdClientes.EdBairro.Text := ibdm.IBQClientesBAIRRO.Value;
    FrmEdClientes.EdCidade.Text := ibdm.IBQClientesCIDADE.Value;
    FrmEdClientes.EdUf.Text := ibdm.IBQClientesUF.Value;
    FrmEdClientes.EdFone.Text := ibdm.IBQClientesFONE.Value;
    FrmEdClientes.EdCelular.Text := ibdm.IBQClientesCELULAR.Value;
    FrmEdClientes.EdEmail.Text := ibdm.IBQClientesEMAIL.Value;
    FrmEdClientes.EdRefComercial.Text := ibdm.IBQClientesREFCOMERCIAL.Value;
    FrmEdClientes.EdRefBancaria.Text := ibdm.IBQClientesREFBANCARIA.Value;
    FrmEdClientes.EdRg.Text := ibdm.IBQClientesRG.Value;
    FrmEdClientes.EdCpf.Text := ibdm.IBQClientesCPF.Value;
    FrmEdClientes.EdNascimento.Date := ibdm.IBQClientesDTNASC.value;
    if ibdm.IBQClientesCHEQUES.AsString = 'S' then
      Frmedclientes.cheques.Checked := True;
    FrmEdClientes.EdObs.Text := ibdm.IBQClientesOBS.Value;
    FrmEdClientes.edcadastro.Date := ibdm.IBQClientesCADASTRO.AsDateTime;
    Frmedclientes.edptoref.text := ibdm.IBQClientesPTOREF.Value;
    Frmedclientes.edblp.Text := ibdm.ibqclientesnrdiasatrazo.asstring;
    Frmedclientes.edconj_trab.Text := ibdm.IBQClientesCONJ_TRAB.AsString;
    Frmedclientes.Edobsbl.Text:=ibdm.IBQClientesOBSBL.Value;
    if ibdm.IBQClientesTPORES.AsString = 'A' then
        Frmedclientes.edtpores.Text := 'Alugada'
        else
        Frmedclientes.edtpores.Text := 'Própria';
    frmedclientes.edvlralu.Value := ibdm.IBQClientesVLRALU.AsCurrency;
    frmedclientes.edtmpres.Text := ibdm.IBQClientesTMPRES.Value;
    frmedclientes.edcompro.Text := ibdm.IBQClientesCOMPRO.Value;
    frmedclientes.edtpcontato.Text := ibdm.IBQClientesTPCONTATO.Value;
    frmedclientes.edfax.Text := ibdm.IBQClientesFAX.AsString;
    frmedclientes.edorgao.Text := ibdm.IBQClientesORGAOEXP.Value;
    frmedclientes.eddtrg.Date := ibdm.IBQClientesDATARG.AsDateTime;
    frmedclientes.dtnccon.Date := ibdm.IBQClientesDTNCONJ.AsDateTime;
    frmedclientes.Trab.Text := ibdm.IBQClientesEMPRESA.AsString;
    frmedclientes.Fone.Text := ibdm.ibqclientesfoneemp.AsString;
    frmedclientes.edendemp.Text := ibdm.IBQClientesENDEMP.Value;
    frmedclientes.edendemp.Text := ibdm.IBQClientesENDEMP.Value;
    frmedclientes.edempcid.Text := ibdm.IBQClientesCIDEMP.Value;
    frmedclientes.edempcep.Text := ibdm.IBQClientesCEPEMP.Value;
    frmedclientes.edempuf.Text  := ibdm.IBQClientesUFEMP.Value;
    frmedclientes.edoutrend.Value := ibdm.IBQClientesOUTREND.Value;
    frmedclientes.ednatural.Text := ibdm.IBQClientesNATURALID.AsString;
    FrmEdClientes.EdConjuge.Text := ibdm.IBQClientesCONJUGE.AsString;
    FrmEdClientes.NPai.Text := ibdm.IBQClientesNPAI.AsString;
    FrmEdClientes.NMae.Text := ibdm.IBQClientesNMAE.AsString;
    FrmEdClientes.Aut1.Text := ibdm.IBQClientesAUT1.AsString;
    FrmEdClientes.Aut2.Text := ibdm.IBQClientesAUT2.AsString;
    FrmEdClientes.edatu.Date := IBDM.IBQClientesATUCAD.Value;

    FrmEdClientes.Salario.AsCurrency := ibdm.IBQClientesSALARIO.AsCurrency;
    FrmEdClientes.Cargo.Text := ibdm.IBQClientesCARGo.AsString;
    frmedclientes.edlimcred.Value := ibdm.IBQClientesLIMCRED.Value;
    frmedclientes.edbl.Text := ibdm.IBQClientesBL.Value;
    frmedclientes.enrdias.asinteger := ibdm.IBQClientesNRDIASBL.AsInteger;
    if frmprincipal.vtipo<>'M' then
    begin
        frmedclientes.edlimcred.Enabled := False;
        frmedclientes.edbl.Enabled := False;
        frmedclientes.enrdias.Enabled := False;
        frmedclientes.edblp.Enabled := False;
    end;
    FrmEdClientes.ShowModal;
    FrmEdClientes.Free;
    IBDM.IBQClientes.close;
    IBDM.IBQClientes.Open;
    IBDM.IBQClientes.locate('codigo',codigo,[]);
    DBGrid3.Refresh;
end;

procedure TFrmPrincipal.BitBtn24Click(Sender: TObject);
begin
    FRmEdFornecedores := TFrmEdFornecedores.create(Application);
    FrmEdFornecedores.vnovo := True;
    FrmEdFornecedores.DateEdit1.Visible := false;
    FrmEdFornecedores.Label17.Visible := false;
    FrmEdFornecedores.ShowModal;
    FrmEdFornecedores.Free;
    IBDM.IBQFor.close;
    IBDM.IBQFor.Open;
    DBGrid5.Refresh;
end;

procedure TFrmPrincipal.BitBtn25Click(Sender: TObject);
begin
    FrmEdFornecedores := TFrmEdFornecedores.create(Application);
    FrmEdFornecedores.vnovo := False;
    FrmEdFornecedores.Edcodigo.Text := IBDM.ibqforcodigo.value;
    FrmEdFornecedores.Ednome.Text := ibdm.IBQForNOME.Value;
    FrmEdFornecedores.EdContato.Text := ibdm.IBQForCONTATO.Value;
    FrmEdFornecedores.EdEndereco.Text := ibdm.IBQForENDERECO.Value;
    FrmEdFornecedores.EdCep.Text := ibdm.IBQForCEP.Value;
    FrmEdFornecedores.EdBairro.Text := ibdm.IBQForBAIRRO.Value;
    FrmEdFornecedores.EdCidade.Text := ibdm.IBQForCIDADE.Value;
    FrmEdFornecedores.EdUf.Text := ibdm.IBQForUF.Value;
    FrmEdFornecedores.EdFone.Text := ibdm.IBQForFONE.Value;
    FrmEdFornecedores.EdFax.Text := ibdm.IBQForfax.Value;
    FrmEdFornecedores.EdCelular.Text := ibdm.IBQForCELULAR.Value;
    FrmEdFornecedores.EdEmail.Text := ibdm.IBQForEMAIL.Value;
//  FrmEdFornecedores.EdRefComercial.Text := ibdm.IBQForREFCOMERCIAL.Value;
//  FrmEdFornecedores.EdRefBancaria.Text := ibdm.IBQForREFBANCARIA.Value;
    FrmEdFornecedores.EdCnpj.Text := ibdm.IBQForcnpj.Value;
    FrmEdFornecedores.EdInsc.Text := ibdm.IBQForinsc.Value;
    FrmEdFornecedores.EdObs.Text := ibdm.IBQForOBS.Value;
    FrmEdFornecedores.DateEdit1.Date := ibdm.IBQForCADASTRO.AsDateTime;

    FrmEdFornecedores.ShowModal;
    FrmEdFornecedores.Free;
    IBDM.IBQfor.close;
    IBDM.IBQfor.Open;
    DBGrid5.Refresh;
end;

procedure TFrmPrincipal.BitBtn41Click(Sender: TObject);
begin

    ibdm.IBQParam.Close;
    ibdm.IBQParam.Open;
    FrmEdParam := TFrmEdParam.Create(application);
    FrmEdParam.Edusuario.Text := ibdm.IBQParamUSUARIO.AsString;
    FrmEdParam.Edcnpj.Text := ibdm.IBQParamCNPJ.AsString;
    FrmEdParam.Edinsc.Text := ibdm.IBQParamINSC.AsString;
    FrmEdParam.Edendereco.Text := ibdm.IBQParamEndereco.AsString;
    FrmEdParam.Edusuario.Text := ibdm.IBQParamUSUARIO.AsString;
    FrmEdParam.Edbairro.Text := ibdm.IBQParambairro.AsString;
    FrmEdParam.Edcidade.Text := ibdm.IBQParamcidade.AsString;
    FrmEdParam.Eduf.Text := ibdm.IBQParamuf.AsString;
    FrmEdParam.Edcep.Text := ibdm.IBQParamcep.AsString;
    FrmEdParam.Edfone.Text := ibdm.IBQParamfone.AsString;
    FrmEdParam.Edfax.Text := ibdm.IBQParamfax.AsString;
    FrmEdParam.Edemail.Text := ibdm.IBQParamemail.AsString;
    FrmEdParam.Edjuros.value := ibdm.IBQParamtxjuros.AsCurrency;
    FrmEdParam.Edlicenca.Text := datetostr(ibdm.IBQParamdatalic.Asdatetime);
    FrmEdParam.edtimp.text := ibdm.ibqparamtimp.asstring;
    FrmEdparam.edvpromo.Text := ibdm.IBQParamVPROMO.AsString;
    Frmedparam.edlista.AsInteger := ibdm.IBQParamLISTA.AsInteger;
    Frmedparam.eddescav.Value := ibdm.IBQParamDESCAV.AsCurrency;
    Frmedparam.edcarencia.Text := ibdm.IBQParamCARENCIA.AsString;
    Frmedparam.edvoz.AsInteger := ibdm.IBQParamVOZ.AsInteger;
    Frmedparam.edt3.Value :=ibdm.IBQParamPERCMAX.Value;
    Frmedparam.edt4.AsInteger := ibdm.IBQParamTMPINATIVO.AsInteger;
    Frmedparam.edvar.AsInteger := ibdm.IBQParamVARIAVEL.Asinteger;
    if ibdm.IBQParamusaecf.AsString = 'S' then
        FrmEdParam.CBoxImpr.Checked := true
       else
        FrmEdParam.CBoxImpr.Checked := false;
    if ibdm.IBQParamUOS.AsString = 'S' then
        FrmEdParam.CheckBox1.Checked := true
       else
        FrmEdParam.CheckBox1.Checked := false;
    if ibdm.IBQParamUSANF.AsString = 'S' then
        FrmEdParam.CheckBox2.Checked := true
       else
        FrmEdParam.CheckBox2.Checked := false;
    if ibdm.IBQParamEST.AsString = 'S' then
        FrmEdParam.CheckBox3.Checked := true
       else
        FrmEdParam.CheckBox3.Checked := false;
    if ibdm.IBQParamFINANC.AsString = 'S' then
        FrmEdParam.CheckBox4.Checked := true
       else
        FrmEdParam.CheckBox4.Checked := false;
    FrmEdParam.Edit1.Text := inttostr(ibdm.IBQParamPROXPROD.asinteger);
    FrmEdParam.Edit2.Text := inttostr(ibdm.IBQParamPROXCLI.AsInteger);
    FrmEdParam.RxLabel1.Caption := datetostr(IBDM.IBQParamBACKUP.AsDateTime);
    Frmedparam.eddbl.Value := ibdm.IBQParamNRDIASBL.Value;
    frmedparam.edlc.Value := ibdm.IBQParamLIMCFRED.Value;
    frmedparam.edjurmo.value := ibdm.IBQParamJURMO.ascurrency;
    frmedparam.eddescpr.Text := ibdm.IBQParamDESCPR.Text;
    frmedparam.edt1.AsInteger := ibdm.IBQParamchkprt1.Asinteger;
    frmedparam.edt2.AsInteger := ibdm.IBQParamchkprt2.AsInteger;

    if ibdm.IBQParamBLCADASTRO.Value = 'S' then
        frmedparam.CheckBox5.Checked := True
        else
        frmedparam.CheckBox5.Checked := False;


    FrmEdParam.ShowModal;
    FrmEdParam.Free;
    ibdm.IBQParam.Close;
end;

procedure TFrmPrincipal.BitBtn40Click(Sender: TObject);
begin
    FrmPosCaixa := TFrmPosCaixa.Create(application);
    FrmPosCaixa.ShowModal;
    FrmPosCaixa.Free;
end;

procedure TFrmPrincipal.BitBtn28Click(Sender: TObject);
begin
    FrmEdProdutos := TFrmEdProdutos.create(Application);
    FrmEdProdutos.vnovo := True;
    FrmEdProdutos.EdUreajuste.Date := now;
    FrmEdProdutos.DateEdit1.Visible := false;
    FrmEdProdutos.Label17.Visible := false;
    LOG('Operador: '+InttoStr(voperador)+' Hora: '+timetostr(time)+' - Novo Produto');
    FrmEdProdutos.ShowModal;
    FrmEdProdutos.Free;

    IBDM.IBQProdutos.close;
    IBDM.IBQProdutos.Open;
    CommitWork;
end;

procedure TFrmPrincipal.BitBtn29Click(Sender: TObject);
var
    vdesc : string;
    vsub : string;
begin
    with ibdm.IBQGrupos do
    begin
        close;
        open;
        locate('codigo',ibdm.IBQProdutosGRUPO.asinteger,[]);
        vdesc := ibdm.IBQGruposDESCRICAO.AsString;
    end;

    with ibdm.IBQSubGrupos do
    begin
        close;
        open;
       // Locate('codigo;grupo',VarArrayOf([ibdm.IBQProdutosSUBGRUPO.asinteger,ibdm.IBQProdutosGRUPO.asinteger]),[]);
        vsub := ibdm.IBQSubGruposDESCRICAO.AsString;
    end;

    FrmEdProdutos := TFrmEdProdutos.create(Application);
    FrmEdProdutos.vnovo := False;
    FrmEdProdutos.CheckBox1.Enabled := false;
    FrmEdProdutos.EdCodigo.Text := ibdm.ibqprodutoscodigo.Value;
    FrmEdProdutos.Eddescricao.Text := ibdm.IBQprodutosdescricao.Value;
    FrmEdProdutos.EdUnimed.Text := ibdm.IBQProdutosUNIMED.Value;
    FrmEdProdutos.combobox1.Text := vdesc;
    FrmEdProdutos.combobox2.Text := vsub;
    FrmEdProdutos.EdEstMinimo.AsCurrency := ibdm.IBQProdutosESTMINIMO.AsCurrency;
    FrmEdProdutos.EdEstoque.AsCurrency := ibdm.ibqprodutosestoque.AsCurrency;
    FrmEdProdutos.EdPrecoCusto.AsCurrency := ibdm.ibqprodutosprecocusto.AsCurrency;
    FrmEdProdutos.EdPrecoVenda.AsCurrency := ibdm.ibqprodutosprecovenda.AsCurrency;
    FrmEdProdutos.EdCustoMedio.AsCurrency := ibdm.ibqprodutoscustomedio.AsCurrency;
    FrmEdProdutos.EdUReajuste.Date := ibdm.IBQProdutosUREAJUSTE.Value;
    FrmEdProdutos.EdIpi.value := ibdm.ibqprodutosipi.value;
    FrmEdProdutos.EdIcms.value := ibdm.ibqprodutosicms.value;
    FrmEdProdutos.EdBaseCalculo.value := ibdm.ibqprodutosbasecalculo.value;
    FrmEdProdutos.EdStribu.Text := ibdm.IBQProdutosSTRIBU.Value;
    FrmEdProdutos.EdObs.Text := ibdm.ibqprodutosobs.Value;
    FrmEdProdutos.DateEdit1.Date := ibdm.IBQProdutosCADASTRO.AsDateTime;
    FrmEdProdutos.EdLocal.Text := ibdm.ibqprodutoslocal.asstring;

    FrmEdProdutos.ShowModal;
    FrmEdProdutos.Free;

    IBDM.IBQProdutos.close;
    IBDM.IBQProdutos.Open;
    CommitWork;
end;

procedure TFrmPrincipal.BitBtn36Click(Sender: TObject);
begin
    FrmEdCaixa := TFrmEdCaixa.create(Application);
    FrmEdCaixa.vnovo := True;
    FrmEdCaixa.EdData.Date := now;
    WITH ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select max(controle) from caixa');
        prepare;
        open;
        frmedcaixa.EdControle.Text:= inttostr(Fields[0].AsInteger + 1);
    end;
    LOG('Operador: '+InttoStr(voperador)+' Hora: '+timetostr(time)+' - Novo Lanç. Caixa: '+frmedcaixa.EdControle.Text);
    FrmEdCaixa.ShowModal;
    FrmEdCaixa.Free;
    IBDM.IBQCaixa.close;
    IBDM.IBQCaixa.Open;
    DBGrid8.Refresh;
end;

procedure TFrmPrincipal.BitBtn37Click(Sender: TObject);
begin
    FrmEdCaixa := TFrmEdCaixa.create(Application);
    FrmEdCaixa.vnovo := false;
    FrmEdCaixa.EdControle.Text := ibdm.IBQCaixaCONTROLE.Text;
    FrmEdCaixa.Eddocumento.Text := ibdm.IBQCaixaDOCUMENTO.Text;
    FrmEdCaixa.EdData.Date := ibdm.IBQCaixaDATA.AsDateTime;
    FrmEdCaixa.EdHistorico.Text := ibdm.IBQCaixaHISTORICO.Text;
    FrmEdCaixa.EdValor.AsCurrency := ibdm.IBQCaixaVALOR.AsCurrency;
    FrmEdCaixa.EdOperacao.Text := ibdm.IBQCaixaOPERACAO.Text;
    FrmEdCaixa.EdTransacao.Text := ibdm.IBQCaixaTRANSACAO.Text;
    FrmEdCaixa.EdOperador.Text := ibdm.IBQCaixaOPERADOR.Text;
    Log('Edição Caixa-Doc.'+ibdm.IBQCaixaDOCUMENTO.Text+' - Valor '+FormatCurr('0.00',ibdm.IBQCaixaVALOR.AsCurrency));
    FrmEdCaixa.ShowModal;
    FrmEdCaixa.Free;

    IBDM.IBQCaixa.close;
    IBDM.IBQCaixa.Open;
    CommitWork;
end;

procedure TFrmPrincipal.BitBtn8Click(Sender: TObject);
begin
    FrmEdCReceber := TFrmEdCReceber.create(Application);
    FrmEdCReceber.vnovo := True;
    FrmEdCReceber.EdVencimento.Date := now;
    with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select max(controle) from creceber');
        prepare;
        open;
        frmedcreceber.EdControle.Text := inttostr(Fields[0].AsInteger + 1);
    end;
    FrmEdCReceber.ShowModal;
    FrmEdCReceber.Free;
    IBDM.IBQCReceber.close;
    IBDM.IBQCreceber.Open;
    DBGrid2.Refresh;
end;

procedure TFrmPrincipal.BitBtn9Click(Sender: TObject);
begin
    FrmEdCReceber := TFrmEdCReceber.create(Application);
    FrmEdCReceber.vnovo := False;
    FrmEdCReceber.EdControle.Text := ibdm.IBQCreceberCONTROLE.Text;
    FrmEdCReceber.EdDocumento.Text := ibdm.IBQCreceberDOCUMENTO.Text;
    FrmEdCReceber.EdHistorico.Text := ibdm.IBQCreceberHISTORICO.Text;
    FrmEdCReceber.EdValor.AsCurrency := ibdm.IBQCreceberVALORORIGINAL.AsCurrency;
    FrmEdCReceber.EdValordevido.AsCurrency := ibdm.IBQCreceberVALORDEVIDO.AsCurrency;
    FrmEdCReceber.EdParcela.Text := ibdm.IBQCreceberPARCELA.Text;
    FrmEdCReceber.EdCliente.Text := ibdm.IBQCreceberCLIENTE.Text;
    FrmEdCReceber.EdVencimento.Date := ibdm.IBQCreceberVENCIMENTO.AsDateTime;
    
    FrmEdCReceber.ShowModal;
    FrmEdCReceber.Free;
    IBDM.IBQCReceber.close;
    IBDM.IBQCReceber.Open;
    DBGrid2.Refresh;
end;

procedure TFrmPrincipal.BitBtn33Click(Sender: TObject);
begin
    FrmEdCPagar := TFrmEdCPagar.create(Application);
    FrmEdCPagar.vnovo := True;
    FrmEdCPagar.EdVencimento.Date := now;
    with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select max(controle) from cpagar');
        prepare;
        open;
        frmedcpagar.EdControle.Text := inttostr(Fields[0].AsInteger + 1);
    end;
    FrmEdCPagar.ShowModal;
    FrmEdCPagar.Free;
    IBDM.IBQCpagar.close;
    IBDM.IBQCpagar.Open;
    DBGrid7.Refresh;
end;

procedure TFrmPrincipal.BitBtn34Click(Sender: TObject);
begin
    FrmEdCPagar := TFrmEdCPagar.create(Application);
    FrmEdCPagar.vnovo := False;
    FrmEdCPagar.EdControle.Text := inttostr(ibdm.ibqcpagarcontrole.asinteger);
    FrmEdCPagar.EdHistorico.Text := ibdm.IBQCpagarHISTORICO.AsString;
    FrmEdCPagar.EdVencimento.Date := ibdm.IBQCpagarVENCIMENTO.AsDateTime;
    FrmEdCPagar.EdDocumento.Text := ibdm.IBQCpagarDOCUMENTO.AsString;
    FrmEdCPagar.EdParcela.Text := ibdm.IBQCpagarPARCELA.AsString;
    FrmEdCPagar.EdValor.AsCurrency := ibdm.IBQCpagarVALOR.AsCurrency;
    FrmEdCPagar.EdFornecedor.Text := ibdm.IBQCpagarFORNECEDOR.AsString;
    
    FrmEdCPagar.ShowModal;
    FrmEdCPagar.Free;
    IBDM.IBQCpagar.close;
    IBDM.IBQCpagar.Open;
    DBGrid7.Refresh;
end;

procedure TFrmPrincipal.BitBtn47Click(Sender: TObject);
begin
    FrmEdEtiquetas := TFrmEdEtiquetas.create(application);
    FrmEdEtiquetas.ShowModal;
    FrmEdEtiquetas.free;
end;

procedure TFrmPrincipal.BitBtn42Click(Sender: TObject);
begin
    FrmEdVendedores := TFrmEdVendedores.create(application);
    FrmEdVendedores.ShowModal;
    FrmEdVendedores.Free;
end;

procedure TFrmPrincipal.BitBtn44Click(Sender: TObject);
begin
    FrmEdGrupos := TFrmEdGrupos.create(application);
    IBDM.IBQGrupos.open;
    FrmEdGrupos.ShowModal;
    FrmEdGrupos.Free;
    IBDM.IBQGrupos.Close;
end;

procedure TFrmPrincipal.BitBtn46Click(Sender: TObject);
begin
    FrmEdSubGrupo := TFrmEdSubGrupo.create(application);
    FrmEdSubGrupo.ShowModal;
    FrmEdSubGrupo.Free;
end;

procedure TFrmPrincipal.BitBtn45Click(Sender: TObject);
begin
    FrmTrCaixa := TFrmTrCaixa.Create(application);
    FrmTrCaixa.ShowModal;
    FrmTrCaixa.Free;
end;

procedure TFrmPrincipal.BitBtn43Click(Sender: TObject);
begin
    FrmClasTrib := TFrmClasTrib.create(application);
    FrmClasTrib.ShowModal;
    FrmClasTrib.Free;
end;

procedure TFrmPrincipal.BitBtn53Click(Sender: TObject);
begin

    FrmSuperUsuario := TFrmSuperUsuario.Create(application);
    FrmSuperUsuario.ShowModal;
    FrmSuperUsuario.Free;
end;

procedure TFrmPrincipal.BitBtn54Click(Sender: TObject);
begin
    FrmCopiaSeg := TFrmCopiaSeg.Create(Application);
    FrmCopiaSeg.ShowModal;
    FrmCopiaSeg.Free;
end;

procedure TFrmPrincipal.BitBtn48Click(Sender: TObject);
begin
    FrmEdCRecebidas := TFrmEdCRecebidas.Create(application);
    if edit4.Text <> '' then
    begin
        Frmedcrecebidas.Edit1.Text := edit4.Text;
    end
    else
    begin
        Frmedcrecebidas.Edit1.Text := Trim(ibdm.IBQCreceberHISTORICO.AsString);
    end;
    Frmedcrecebidas.vtipo := vtipo;
    FrmEdCRecebidas.ShowModal;
    FrmEdCRecebidas.Free;
    dbgRID2.Refresh;
end;

procedure TFrmPrincipal.BitBtn49Click(Sender: TObject);
begin
    FrmEdCPagas := TFrmEdCPagas.create(application);
    FrmEdCPagas.ShowModal;
    FrmEdCPagas.Free
end;

procedure TFrmPrincipal.TS1Show(Sender: TObject);
begin
    if frmprincipal.vtipo = 'N' then
    begin
        bitbtn3.Enabled := False;
        bitbtn5.Enabled := False;
        bitbtn6.Enabled := False;
    end;


   With ibdm.IBQParam do
    begin
        close;
        open;
        if fieldByname('UVE').asstring = 'S' then
            begin
                PageControl1.Pages[0].Visible := True;
                with ibdm.IBQDoctos do
                begin
                    close;
                    sql.Clear;
                    sql.Add('select * from doctos');
                    sql.Add('where transacao =:p0');
                    sql.Add('order by data desc,controle desc');
                    params[0].AsString := 'VENDAS';
                    prepare;
                    open;

                end;
            end
           else
            PageControl1.Pages[0].Visible := False;
    end;

    if ibdm.IBQParamUSAECF.AsString = 'S' then
    begin
  //      bitbtn6.Enabled := false;
        bitbtn5.Enabled := true;
        bitbtn4.Enabled := true;
        edit17.Enabled := true;
        label5.Enabled := true;
    end;
    if ibdm.IBQParamUSAECF.AsString = 'N' then
    begin
      //  bitbtn6.Enabled := false;
        bitbtn6.Caption := 'Cancela Venda';
        bitbtn5.Enabled := false;
        bitbtn4.Enabled := false;
        edit17.Enabled := true;
        label5.Enabled := true;
    end;

    if ibdm.IBQParamUOS.AsString = 'S' then
    begin
        GroupBox8.Visible := true;
        bitbtn70.Visible := true;
        bitbtn72.Visible := true;
        bitbtn73.Visible := true;
    end;
    if ibdm.IBQParamUOS.AsString = 'N' then
    begin
        GroupBox8.Visible := false;
        bitbtn70.Visible := false;
        bitbtn72.Visible := false;
        bitbtn73.Visible := false;
    end;

    if ibdm.IBQParamUSANF.AsString = 'S' then
    begin
        GroupBox9.Visible := true;
        bitbtn74.Visible := true;
        bitbtn75.Visible := true;
        bitbtn76.Visible := true;
    end;
    if ibdm.IBQParamUSANF.AsString = 'N' then
    begin
        GroupBox9.Visible := false;
        bitbtn74.Visible := false;
        bitbtn75.Visible := false;
        bitbtn76.Visible := false;
    end;
end;

procedure TFrmPrincipal.TS2Show(Sender: TObject);

var
    vhist : string;
    vvalor : currency;
begin
    if frmprincipal.vtipo <> 'M' then
    begin
        if frmprincipal.vtipo = 'N' then
            bitbtn7.Enabled := False;
        bitbtn8.Enabled := False;
        bitbtn9.Enabled := False;
        bitbtn10.Enabled := False;
  //      bitbtn11.Enabled := False;
        bitbtn78.Enabled := False;
    end;
   With ibdm.IBQParam do
    begin
        close;
        open;
        if fieldByname('UCR').asstring = 'S' then
            begin
                PageControl1.Pages[1].Visible := True;
                With ibdm.IBQCreceber do
                begin
                    close;
                    sql.Clear;
                    sql.Add('select * from creceber');
                    sql.Add('order by vencimento ASC');
                    prepare;
                    open;
                end;
            end
           else
            PageControl1.Pages[1].Visible := False;
    end;

    vvalor := 0;
 {   with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select * from creceber');
        sql.Add('where vencimento<=:p0');
        sql.Add('order by vencimento ASC');
        params[0].AsDate := now;
        prepare;
        open;
        first;
        while (not eof) do
        begin
            if vhist = '' then
                vhist := fields[3].AsString+'    -    Venc.: '+datetostr(fields[1].AsDateTime)
               else
                vhist := vhist+#13+fields[3].AsString+'    -    Venc.: '+datetostr(fields[1].AsDateTime);
            vvalor := vvalor + fields[4].AsCurrency;
            next;
        end;
        showmessage(vhist+#13+#13+'   ==> Valor a Receber: R$ '+formatcurr('0.00',vvalor));
    end;   }
    if vclica = true then
      begin
        if edit4.Text <> '' then
        Bitbtn59.Click ;
        if edit3.Text <> '' then
        ord1.Click ;
      end
     else
      begin
        ord0.click;
      end;
end;

procedure TFrmPrincipal.TS3Show(Sender: TObject);
begin
   With ibdm.IBQParam do
    begin
        open;
        if fieldByname('UCL').asstring = 'S' then
            begin
                PageControl1.Pages[2].Visible := True;
            end
           else
            PageControl1.Pages[2].Visible := False;
    end;
    with ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select distinct cidade from clientes');
        sql.Add('order by cidade') ;
        open;
        Combobox2.Items.Clear;
        Combobox2.Items.Add('Todas');
        While not eof do
        begin
            Combobox2.Items.Add(Fields[0].asstring);
            next;
        end;
    end;

    ibdm.IBTobscli.open;
    with ibdm.IBQClientes do
    begin
        close;
        sql.Clear;
        sql.Add('select * from clientes');
         sql.Add('order by nome ASC');
        prepare;
        open;
    end;
    if frmprincipal.vtipo = 'N' then
    begin
        bitbtn13.Enabled := False;
        bitbtn12.Enabled := False;
        bitbtn83.Enabled := False;
        bitbtn14.Enabled := False;
        bitbtn15.Enabled := False;

        DBnavigator8.Enabled := False;
    end;
    If Frmprincipal.vtipo<>'M' then
      Button7.Enabled:=False;
    edit6.SetFocus;
end;

procedure TFrmPrincipal.TS5Show(Sender: TObject);
begin
   With ibdm.IBQParam do
    begin
        open;
        if fieldByname('UFO').asstring = 'S' then
            begin
                PageControl1.Pages[4].Visible := True;
            end
           else
            PageControl1.Pages[4].Visible := False;
    end;
    with ibdm.IBQFor do
    begin
        close;
        sql.Clear;
        sql.Add('select * from fornecedores');
        sql.Add('order by nome ASC');
        
        prepare;
        open;
    end;
end;

procedure TFrmPrincipal.TS6Show(Sender: TObject);
begin
   With ibdm.IBQParam do
    begin
        close;
        open;
        
        if fieldByname('UES').asstring = 'S' then
            begin
                PageControl1.Pages[6].Visible := True;
            end
           else
            PageControl1.Pages[6].Visible := False;
    end;

    combobox4.Clear;
    combobox4.Items.Add('Todos');
    combobox4.Text := 'Todos';

    combobox3.Clear;
    combobox3.Items.Add('Todos');
    combobox3.Text := 'Todos';
    with ibdm.IBQGrupos do
    begin
        close;
        sql.Clear;
        sql.Add('select * from grupos');
        sql.Add('order by descricao ASC');
        prepare;
        open;
        First;
        while not eof do
        begin
            combobox3.Items.Add(ibdm.IBQGruposDESCRICAO.AsString);
            next;
        end;
    end;
    with ibdm.IBQProdutos do
    begin
        close;
        sql.Clear;
        sql.Add('select * from produtos');
        sql.Add('order by grupo ASC, subgrupo ASC, descricao ASC');
        prepare;
        open;
    end;
    edit11.Text := '';
    edit12.Text := '';
end;

procedure TFrmPrincipal.TS7Show(Sender: TObject);
begin
    LOG('Operador: '+InttoStr(voperador)+' Hora: '+timetostr(time)+' - Entrou no contas a pagar.');

   With ibdm.IBQParam do
    begin
        open;
        if fieldByname('UCP').asstring = 'S' then
            begin
                PageControl1.Pages[6].Visible := True;
            end
           else
            PageControl1.Pages[6].Visible := False;
    end;

    with ibdm.IBQCpagar do
    begin
        close;
        sql.Clear;
        sql.Add('select * from cpagar');
        sql.Add('order by vencimento ASC');
        prepare;
        open;
        first;
        while (ibdm.IBQCpagarVENCIMENTO.AsDateTime <= now) and (not eof) do
        begin
            ShowMessage(ibdm.IBQCpagarHISTORICO.AsString+'  ==>   Valor: R$ '+formatcurr('0.00',ibdm.IBQCpagarVALOR.asCurrency)+#13+#13+' >> Vencimento: '+datetostr(ibdm.IBQCpagarVENCIMENTO.AsDateTime)+' <<');
            next;
        end;
    end;
end;

procedure TFrmPrincipal.TS8Show(Sender: TObject);
begin
   With ibdm.IBQParam do
    begin
        open;
        if fieldByname('UCX').asstring = 'S' then
            begin
                PageControl1.Pages[7].Visible := True;
            end
           else
            PageControl1.Pages[7].Visible := False;
    end;
    with ibdm.IBQCaixa do
    begin
        close;
        sql.Clear;
        sql.Add('select caixa.*, doctos.clifor from caixa,doctos');
        sql.Add('Where doctos.documento=caixa.documento');
        sql.Add('order by caixa.controle DESC, caixa.data DESC');
        prepare;
        open;
    end;
    dtcai.Date := int(now);
    LOG('Operador: '+InttoStr(voperador)+' Hora: '+timetostr(time)+' - Entrou no caixa via menu do sistema.');
end;

procedure TFrmPrincipal.BitBtn50Click(Sender: TObject);
begin
    IF edit19.Text <> '' then
    begin
        with ibdm.IBQCaixa do
        begin
            close;
            sql.Clear;
            sql.Add('select caixa.*,doctos.clifor from caixa,doctos');
            sql.Add('where doctos.documento=caixa.documento and clifor = :p1');
            params[0].AsString := edit19.Text;
            prepare;
            open;
        end;
    end
    else
    begin
    if edit15.Text <> '' then
        begin
            with ibdm.IBQCaixa do
            begin
                close;
                sql.Clear;
                sql.Add('select caixa.*,doctos.clifor from caixa,doctos');
                sql.Add('where doctos.documento=caixa.documento and historico LIKE :p1');
                params[0].AsString := Trim(edit15.Text)+'%';
                prepare;
                open;
            end;
        end
       else
        begin
           with ibdm.IBQCaixa do
           begin
               close;
               sql.Clear;
               sql.Add('select caixa.*,doctos.clifor from caixa,doctos');
               sql.Add('where doctos.documento=caixa.documento');
               prepare;
               open;
           end;
        end;

       if (edit16.Text <> '') and (edit15.Text = '') then
       begin
        if edit16.Text <> '' then
        begin
           with ibdm.IBQCaixa do
            begin
                close;
                sql.Clear;
                sql.Add('select caixa.*,doctos.clifor from caixa,doctos');
                sql.Add('where doctos.documento=caixa.documento and  documento LIKE :p1');
                params[0].AsString := Trim(edit16.Text)+'%';
                prepare;
                open;
            end;
        end
        else
        begin
           with ibdm.IBQCaixa do
           begin
               close;
               sql.Clear;
               sql.Add('select caixa.*,doctos.clifor from caixa,doctos');
               sql.Add('where doctos.documento=caixa.documento');
               prepare;
               open;
           end;
        end;
    end;
    end;
end;

procedure TFrmPrincipal.BitBtn51Click(Sender: TObject);
begin
    if (edit6.Text = '')  or (edit5.text = '') then
    if (edit6.Text = '') then
    begin
        with ibdm.IBQClientes do
           begin
               close;
               sql.Clear;
               sql.Add('select * from clientes');
               sql.Add('order by nome ASC');
               prepare;
               open;
           end;
    end
    Else
    begin
        with ibdm.IBQClientes do
           begin
               close;
               sql.Clear;
               sql.Add('select * from clientes');
               sql.Add('order by codigo ASC');
               open;
           end;
    end;
    if (edit5.Text <> '') or (edit6.Text <> '') or (edit18.Text <> '') then
    begin
        if edit6.Text <> '' then
        begin
            with ibdm.IBQClientes do
            begin
                close;
                sql.Clear;
                sql.Add('select * from clientes');
                sql.Add('where nome LIKE :p0');
                sql.Add('order by nome ASC');
                params[0].AsString := Trim(edit6.Text)+'%';
                prepare;
                open;
            end;
        end
       else
       begin
         if edit5.Text <> '' then
         begin
             with ibdm.IBQClientes do
              begin
                  close;
                  sql.Clear;
                  sql.Add('select * from clientes');
                  sql.Add('where codigo like :p1');
                  sql.Add('order by codigo ASC');
                  params[0].AsString := Trim(edit5.Text)+'%';

                  prepare;
                  open;
              end;
         end
         else
         if edit18.Text <> '' then
         begin
             with ibdm.IBQClientes do
              begin
                  close;
                  sql.Clear;
                  sql.Add('select * from clientes');
                  sql.Add('where NOME like :p1');
                  sql.Add('order by codigo ASC');
                  params[0].AsString := '%'+Trim(edit18.Text)+'%';

                  prepare;
                  open;
              end;
         end
       end;
    end;
end;

procedure TFrmPrincipal.BitBtn59Click(Sender: TObject);
begin
    if vrecord=1 then
    begin
      if lbl1.Caption<> '...' then
      begin
                  with ibdm.IBQCReceber do
                  begin
                      close;
                      sql.Clear;
                      sql.Add('select * from CReceber');
                      sql.Add('where cliente = :p1');
                      sql.Add('order by historico,vencimento ASC');
                      params[0].Asinteger := strtoint(lbl1.caption);
                      open;
                  end;

      end
      else
      begin
          if edit4.Text <> '' then
              begin

                  with ibdm.IBQCReceber do
                  begin
                      close;
                      sql.Clear;
                      sql.Add('select * from CReceber');
                      sql.Add('where historico LIKE :p1');
                      sql.Add('order by historico,vencimento ASC');
                      params[0].AsString := '%'+Trim(edit4.Text)+'%';
                      open;
                  end;
              end
             else
             begin
                 with ibdm.IBQCreceber do
                 begin
                     close;
                     sql.Clear;
                     sql.Add('select * from CReceber');
                     sql.Add('order by historico,vencimento ASC');
                     open;
                 end;
             end;
           end;

           if vrecord=2 then
           begin
           if (edit3.Text <> '' ) then
           begin
               with ibdm.IBQCReceber do
                begin
                    close;
                    sql.Clear;
                    sql.Add('select * from CReceber');
                    sql.Add('where documento LIKE :p1');
                    sql.Add('order by documento,vencimento');
                    params[0].AsString := Trim(edit3.Text)+'%';
                    open;
                end;
           end
           else
           begin
               with ibdm.IBQCReceber do
               begin
                   close;
                   sql.Clear;
                   sql.Add('select * from CReceber');
                   sql.Add('order by documento,vencimento');
                   open;
               end;
           end;
       end;
    end;
end;

procedure TFrmPrincipal.BitBtn55Click(Sender: TObject);
begin
    if edit10.Text <> '' then
        begin
            with ibdm.IBQfor do
            begin
                close;
                sql.Clear;
                sql.Add('select * from empresas');
                sql.Add('where nome LIKE :p1 and fornecedor =:p2');
                sql.Add('order by codigo ASC');
                params[0].AsString := Trim(edit10.Text)+'%';
                params[1].AsString := 'S';
                prepare;
                open;
            end;
        end
       else
       begin
           with ibdm.IBQfor do
           begin
               close;
               sql.Clear;
               sql.Add('select * from empresas');
               sql.Add('where fornecedor =:p0');
               sql.Add('order by codigo ASC');
               params[0].AsString := 'S';
               prepare;
               open;
           end;
       end;

       if (edit9.Text <> '') and (edit10.Text = '') then
       begin
       if edit9.Text <> '' then
       begin
           with ibdm.IBQfor do
            begin
                close;
                sql.Clear;
                sql.Add('select * from empresas');
                sql.Add('where codigo LIKE :p1 and fornecedor =:p2');
                sql.Add('order by codigo ASC');
                params[0].AsString := Trim(edit9.Text)+'%';
                params[1].AsString := 'S';
                prepare;
                open;
            end;
       end
       else
       begin
           with ibdm.IBQfor do
           begin
               close;
               sql.Clear;
               sql.Add('select * from empresas');
               sql.Add('where fornecedor =:p0');
               sql.Add('order by codigo ASC');
               params[0].AsString := 'S';
               prepare;
               open;
           end;
       end;
    end;
end;

procedure TFrmPrincipal.BitBtn56Click(Sender: TObject);
begin
    if edit12.Text <> '' then
        begin
            with ibdm.IBQProdutos do
            begin
                close;
                sql.Clear;
                sql.Add('select * from Produtos');
                sql.Add('where descricao LIKE :p1');
                sql.Add('order by descricao ASC');
                params[0].AsString := Trim(edit12.Text)+'%';
                open;
            end;
        end
       else
       begin
           with ibdm.IBQProdutos do
           begin
               close;
               sql.Clear;
               sql.Add('select * from produtos');
               sql.Add('order by descricao ASC');
               open;
           end;
       end;


       if edit11.Text <> '' then
       begin
           with ibdm.IBQProdutos do
            begin
                close;
                sql.Clear;
                sql.Add('select * from produtos');
                sql.Add('where codigo LIKE :p1');
                sql.Add('order by codigo ASC');
                params[0].AsString := Trim(edit11.Text)+'%';
                open;
            end;
       end


end;

procedure TFrmPrincipal.BitBtn7Click(Sender: TObject);
    var
    vcli:integer;
    ccli:string;
    vdata:real;
    faz:boolean;
    limitedias : integer;
    pode:boolean;
begin
    vcli := ibdm.IBQCreceberCLIENTE.AsInteger;
    ccli := inttostr(vcli);
    ccli := retZero(ccli,5);
    with ibdm.IBQClientes do
    begin
        Close;
        open;
        if locate('codigo',ccli,[]) then
            limitedias := fieldbyname('nrdiasatrazo').asinteger;


    end;
    pode:=True;
    vdata := ibdm.IBQCreceberVENCIMENTO.AsDateTime;
    faz := True;
    with ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select controle,vencimento from creceber');
        sql.Add('Where cliente = :p0 and vencimento < :p1');
        params[0].asinteger := vcli;
        params[1].AsDate := (vdata);
        Open;
        if Fields[0].AsInteger > 0 then
        begin
            if (vdata  - fields[1].AsDatetime) > limitedias then
            begin
                Showmessage('Débito anterior com nr de dias maior que o permitido !');
                pode:=False;
            end;
                //faz:=False;
        end;
    end;
    if faz=True then
    begin
        FrmQuitarConta := TFrmQuitarConta.Create(Application);
        FrmQuitarConta.EdVencimento.Text := datetostr(ibdm.IBQCreceberVENCIMENTO.AsDateTime);
        FrmQuitarConta.EdData.Text := datetostr(now);
        fRMQUITARCONTA.edobs.Text := ibdm.IBQCreceberOBS.AsString;
        FrmQuitarConta.EdValorDevido.AsCurrency := ibdm.IBQCreceberVALORDEVIDO.AsCurrency;
        FrmQuitarConta.EdValorPago.value := ibdm.IBQCreceberVALORDEVIDO.AsCurrency;
        FrmQuitarconta.label11.Caption := 'Cliente: '+ibdm.IBQCreceberHISTORICO.asstring;
        FrmQuitarconta.label12.Caption := 'Documento: '+ibdm.IBQCreceberDOCUMENTO.asstring + '  Parcela: '+ ibdm.IBQCreceberPARCELA.AsString;
        FrmQuitarconta.pode := pode;
        //FrmQuitarConta.EdValorJuros :=
        FrmQuitarConta.ShowModal;
        FrmQuitarConta.Free;
    end
    Else
    Showmessage('Débito anterior com nr de dias maior que o permitido !');
end;

procedure TFrmPrincipal.BitBtn12Click(Sender: TObject);
var
    vcont : integer;
    vdoc,vtam : integer;
    vnovo1 : string;
    limite:currency;
    venda:boolean;
    dias:integer;
    cheques:string;
    vcpf,codigo:string;
    vbloq:integer;
    vatucad:TDateTime ;
    faz:Boolean;
begin
    ibdm.IBQParam.Open;
    vbloq:=ibdm.IBQParamTMPINATIVO.AsInteger;
    vcpf:= ibdm.IBQClientesCPF.AsString;
    cheques := ibdm.IBQClientesCHEQUES.AsString;
    limite := ibdm.IBQClientesLIMCRED.Value;
    venda := True;
    dias := ibdm.IBQClientesNRDIASBL.AsInteger;
    vatucad := IBDM.IBQClientesATUCAD.AsDateTime;
    faz:=True;
    if (Now - vatucad) > vbloq then
    begin
      ShowMessage('Cadastro desatualiado, faça atualização !');
      FRmEdClientes := TFrmEdClientes.create(Application);
    FrmEdClientes.vnovo := False;
    codigo := IBDM.ibqclientescodigo.value;
    FrmEdClientes.Edcodigo.Text := IBDM.ibqclientescodigo.value;
    FrmEdClientes.Ednome.Text := ibdm.IBQClientesNOME.Value;
    FrmEdClientes.EdEndereco.Text := ibdm.IBQClientesENDERECO.Value;
    FrmEdClientes.EdCep.Text := ibdm.IBQClientesCEP.Value;
    FrmEdClientes.EdBairro.Text := ibdm.IBQClientesBAIRRO.Value;
    FrmEdClientes.EdCidade.Text := ibdm.IBQClientesCIDADE.Value;
    FrmEdClientes.EdUf.Text := ibdm.IBQClientesUF.Value;
    FrmEdClientes.EdFone.Text := ibdm.IBQClientesFONE.Value;
    FrmEdClientes.EdCelular.Text := ibdm.IBQClientesCELULAR.Value;
    FrmEdClientes.EdEmail.Text := ibdm.IBQClientesEMAIL.Value;
    FrmEdClientes.EdRefComercial.Text := ibdm.IBQClientesREFCOMERCIAL.Value;
    FrmEdClientes.EdRefBancaria.Text := ibdm.IBQClientesREFBANCARIA.Value;
    FrmEdClientes.EdRg.Text := ibdm.IBQClientesRG.Value;
    FrmEdClientes.EdCpf.Text := ibdm.IBQClientesCPF.Value;
    FrmEdClientes.EdNascimento.Date := ibdm.IBQClientesDTNASC.value;
    if ibdm.IBQClientesCHEQUES.AsString = 'S' then
      Frmedclientes.cheques.Checked := True;
    FrmEdClientes.EdObs.Text := ibdm.IBQClientesOBS.Value;
    FrmEdClientes.edcadastro.Date := ibdm.IBQClientesCADASTRO.AsDateTime;
    Frmedclientes.edptoref.text := ibdm.IBQClientesPTOREF.Value;
    Frmedclientes.edblp.Text := ibdm.ibqclientesnrdiasatrazo.asstring;
    Frmedclientes.edconj_trab.Text := ibdm.IBQClientesCONJ_TRAB.AsString;
    Frmedclientes.Edobsbl.Text:=ibdm.IBQClientesOBSBL.Value;
    if ibdm.IBQClientesTPORES.AsString = 'A' then
        Frmedclientes.edtpores.Text := 'Alugada'
        else
        Frmedclientes.edtpores.Text := 'Própria';
    frmedclientes.edvlralu.Value := ibdm.IBQClientesVLRALU.AsCurrency;
    frmedclientes.edtmpres.Text := ibdm.IBQClientesTMPRES.Value;
    frmedclientes.edcompro.Text := ibdm.IBQClientesCOMPRO.Value;
    frmedclientes.edtpcontato.Text := ibdm.IBQClientesTPCONTATO.Value;
    frmedclientes.edfax.Text := ibdm.IBQClientesFAX.AsString;
    frmedclientes.edorgao.Text := ibdm.IBQClientesORGAOEXP.Value;
    frmedclientes.eddtrg.Date := ibdm.IBQClientesDATARG.AsDateTime;
    frmedclientes.dtnccon.Date := ibdm.IBQClientesDTNCONJ.AsDateTime;
    frmedclientes.Trab.Text := ibdm.IBQClientesEMPRESA.AsString;
    frmedclientes.Fone.Text := ibdm.ibqclientesfoneemp.AsString;
    frmedclientes.edendemp.Text := ibdm.IBQClientesENDEMP.Value;
    frmedclientes.edendemp.Text := ibdm.IBQClientesENDEMP.Value;
    frmedclientes.edempcid.Text := ibdm.IBQClientesCIDEMP.Value;
    frmedclientes.edempcep.Text := ibdm.IBQClientesCEPEMP.Value;
    frmedclientes.edempuf.Text  := ibdm.IBQClientesUFEMP.Value;
    frmedclientes.edoutrend.Value := ibdm.IBQClientesOUTREND.Value;
    frmedclientes.ednatural.Text := ibdm.IBQClientesNATURALID.AsString;
    FrmEdClientes.EdConjuge.Text := ibdm.IBQClientesCONJUGE.AsString;
    FrmEdClientes.NPai.Text := ibdm.IBQClientesNPAI.AsString;
    FrmEdClientes.NMae.Text := ibdm.IBQClientesNMAE.AsString;
    FrmEdClientes.Aut1.Text := ibdm.IBQClientesAUT1.AsString;
    FrmEdClientes.Aut2.Text := ibdm.IBQClientesAUT2.AsString;


    FrmEdClientes.Salario.AsCurrency := ibdm.IBQClientesSALARIO.AsCurrency;
    FrmEdClientes.Cargo.Text := ibdm.IBQClientesCARGo.AsString;
    frmedclientes.edlimcred.Value := ibdm.IBQClientesLIMCRED.Value;
    frmedclientes.edbl.Text := ibdm.IBQClientesBL.Value;
    frmedclientes.enrdias.asinteger := ibdm.IBQClientesNRDIASBL.AsInteger;
    if frmprincipal.vtipo<>'M' then
    begin
        frmedclientes.edlimcred.Enabled := False;
        frmedclientes.edbl.Enabled := False;
        frmedclientes.enrdias.Enabled := False;
        frmedclientes.edblp.Enabled := False;
    end;
    FrmEdClientes.ShowModal;
    FrmEdClientes.Free;
    IBDM.IBQClientes.close;
    IBDM.IBQClientes.Open;
    IBDM.IBQClientes.locate('codigo',codigo,[]);
    vatucad := IBDM.IBQClientesATUCAD.Value;
     faz:=True;

    end;  


    with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select max(data) from doctos');
        sql.Add('Where clifor = :p0');
        params[0].AsInteger := ibdm.IBQClientesCODIGO.Asinteger;
        Open;
        IF Fields[0].AsDateTime > 0 then
        begin
          IF (Fields[0].AsDateTime+vbloq) < now then
          begin
            if (Now - vatucad) > vbloq  then
              begin
                faz:=False  ;
                Showmessage('Atenção, cliente inativo por mais tempo que permitido, atualize cadastro ');
              end;

           // venda:=False;
          end;
       end
       else
       begin
          if (Now - vatucad) > vbloq  then
          begin
            faz:=False;
            ShowMessage('ATENÇÃO, Cliente sem registro de venda, atualizar o cadastro');
          end;
       end;
    end;


    if (vcpf<> '') and  (faz=true ) then
    begin
    With ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select sum(valordevido) from creceber');
        sql.Add('Where cliente = :p0');
        params[0].AsInteger := ibdm.IBQClientesCODIGO.Asinteger;
        Open;
        limite := limite - Fields[0].AsCurrency;
        if limite <=0 then
            begin
                venda:=False;
                Showmessage('Limite de crédito ultrapassado !!');
           end;
    end;
    With ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select min(vencimento) from creceber');
        sql.Add('Where cliente = :p0 and vencimento <:p1');
        params[0].AsInteger := ibdm.IBQClientesCODIGO.Asinteger;
        params[1].AsDate := int(now);
        Open;
        if Fields[0].Asdatetime > 0 then
        if (int(now) - Fields[0].Asdatetime)  >= dias then
        begin
            Showmessage('Cliente com conta vencida em dias maior que o limite, não é permitida nova venda !');
            venda:=False;
        end;
    end;
    if cheques = 'S' then
    begin
      Showmessage('Verifique cadastro de CHEQUES !');
      venda := False;
    end;
    if venda =  True then
    begin
    FrmNotaVenda := TFrmNotaVenda.create(application);
    FrmNotaVenda.tpvenda := 1; // a prazo
    Frmnotavenda.ComboBox1x.Enabled := False;
    Frmnotavenda.vtp:= 1;
    FrmNotaVenda.vtipo := vtipo;
    with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select max(controle) from doctos');
        prepare;
        open;
        vcont := Fields[0].AsInteger + 1;
    end;
    FrmNotaVenda.Edit1.Text := inttostr(vcont);
    FrmNotaVenda.Edit4.Text := datetimetostr(now);
 //   if vtipo = 'M' then
 //       FrmNotaVenda.Edit4.Enabled := true;
//    FrmNotaVenda.Edit2.Text := inttostr(voperador);
//    FrmNotaVenda.Label5.Caption := ibdm.IBQUsuarioNOME.Text;
    FrmNotaVenda.edcfop.Text := icfop;
    // USA impressora fiscal...
    if ibdm.IBQParamUSAECF.AsString = 'S' then
    begin
        FrmNotaVenda.edit5.enabled := false;
        FrmNotaVenda.label8.Enabled := false;
    end;

    // NÃO usa impressora fiscal...
    if ibdm.IBQParamUSAECF.AsString = 'N' then
    begin
        with ibdm.Consulta do
        begin
            close;
            sql.Clear;
            sql.Add('select max(documento) from doctos');
            sql.Add('where transacao =:p0');
            params[0].AsString := 'VENDAS';
            Prepare;
            open;
            if fields[0].AsString = '' then
                vdoc := 0 + 1
               else
                vdoc := fields[0].AsInteger + 1;
        end;
        vtam := Length(inttostr(vdoc));
            Case vtam of
            1: vnovo1 := '00000' + inttostr(vdoc);
            2: vnovo1 := '0000' + inttostr(vdoc);
            3: vnovo1 := '000' + inttostr(vdoc);
            4: vnovo1 := '00' + inttostr(vdoc);
            5: vnovo1 := '0' + inttostr(vdoc);
            6: vnovo1 := inttostr(vdoc);
            end;
        FrmNotaVenda.edit5.Text := vnovo1;
    end;

    FrmNotaVenda.vnome:= ibdm.IBQClientesNOME.AsString;
    FrmNotaVenda.ComboBox1x.Text := ibdm.IBQClientesNOME.AsString;
    frmNotavenda.alerta.Caption := ibdm.IBQClientesBL.AsString;
    frmNotavenda.limite := limite;
    frmNotavenda.lblimite.Caption := 'Limite de crédito: ' + formatCurr('0.00',limite);;
    FrmNotaVenda.Label10.Caption := inttostr(ibdm.IBQClientesCODIGO.Asinteger);
    FrmNotaVenda.Label9.Caption := ibdm.IBQClientesCPF.AsString;
    LOG('Operador: '+InttoStr(voperador)+' Hora: '+timetostr(time)+' - Abriu Nota de Venda: '+frmnotavenda.Edit1.Text);
    Log('Cliente: '+ibdm.IBQClientesNOME.AsString);
    FrmNotaVenda.ShowModal;
    FrmNotaVenda.close;
//    FrmNotaVenda.Release;
//    Veformsabertos;

    FrmNotaVenda.Free;
    ibdm.IBQClientes.close;
    ibdm.IBDB.CloseDataSets;
    ibdm.IBDB.Connected := False;
    ibdm.IBDB.Connected := True;
      with ibdm.IBQClientes do
        begin
            close;
            sql.Clear;
            sql.Add('select * from clientes');
             sql.Add('order by nome ASC');
            prepare;
            open;
        end;
      end;
    end
    else
      Showmessage('Verifique o cadastro !');

end;

procedure TFrmPrincipal.BitBtn23Click(Sender: TObject);
begin
    edit8.Text := inttostr(ibdm.IBQForCodigo.AsInteger);
    label4.Caption := ibdm.IBQForNOME.AsString;
    ts4.Show;
end;

procedure TFrmPrincipal.BitBtn57Click(Sender: TObject);
begin
    if edit14.Text <> '' then
        begin
            with ibdm.IBQCpagar do
            begin
                close;
                sql.Clear;
                sql.Add('select * from Cpagar');
                sql.Add('where historico LIKE :p1');
                params[0].AsString := Trim(edit14.Text)+'%';
                open;
            end;
        end
       else
       begin
           with ibdm.IBQCpagar do
           begin
               close;
               sql.Clear;
               sql.Add('select * from Cpagar');
               open;
           end;
       end;

       if (edit13.Text <> '') and (edit14.Text = '') then
       begin
       if edit13.Text <> '' then
       begin
           with ibdm.IBQCpagar do
            begin
                close;
                sql.Clear;
                sql.Add('select * from Cpagar');
                sql.Add('where documento LIKE :p1');
                params[0].AsString := Trim(edit13.Text)+'%';
                open;
            end;
       end
       else
       begin
           with ibdm.IBQCpagar do
           begin
               close;
               sql.Clear;
               sql.Add('select * from Cpagar');
               open;
           end;
       end;
    end;
end;

procedure TFrmPrincipal.BitBtn4Click(Sender: TObject);
begin
    ibdm.IBQParam.open;
    if ibdm.IBQParamUSAECF.AsString = 'S' then
    begin
        iRetorno := Bematech_FI_LeituraX();
        Analisa_iRetorno();
        Retorno_Impressora();
    end;
end;

procedure TFrmPrincipal.BitBtn5Click(Sender: TObject);
  var
    comando,nome,origem,destino:string;
    dia,mes,ano:Word;
begin
    If MessageDlg('A Redução Z impossibilitará novas impressões'+#13
                    +'de Cupons Fiscais!'+#13+#13+'Continuar???', mtConfirmation,
                    [mbYes, mbNo], 0) = mrYes then
        Begin
          iRetorno := Bematech_FI_ReducaoZ('', '');
          Analisa_iRetorno();
          Retorno_Impressora();
        End;
          ibDM.IBDB.Connected := False;
    DecodeDate(int(Now),ano,mes,dia);
    nome   := 'e:\SV'+inttostr(ano)+inttostr(mes)+inttostr(dia);
    Origem := 'c:\ti\sisloja\dados\Ti_dados.GDB';
    if not DirectoryExists(nome) then
      ForceDirectories(nome);
   CopyFile(Pchar(origem), Pchar(nome+'\ti_dados.gdb'),true);

   comando:='rar a samples c:\windows\samples\*.*';
   WinExec(Pchar(comando),1);
   CopyFile(Pchar('c:\ti\sisloja\samples.rar'), Pchar(nome+'\samples.rar'),true);
   WinExec(Pchar('Cmd.exe /c Move c:\ti\sisloja\sampples.rar'+nome+'\samples.rar'), 0);
   WinExec('Cmd.exe /c Del c:\ti\sisloja\sampples.rar', 0);
   LOG('Operador: '+Combobox1.Text+' Hora: '+timetostr(time)+' - Fez Redução, Backup e finalizou');
   ShowMessage('Cópia de Segurança realizada com sucesso, o programa será encerrado!');
   Application.Terminate;
   close;

end;

procedure TFrmPrincipal.BitBtn3Click(Sender: TObject);
var
    vcont : integer;
    vdoc,vtam : integer;
    vnovo1 : string;
begin
    FrmNotaVenda := TFrmNotaVenda.create(application);
    FrmNotaVenda.tpvenda := 0; //a vista
    FrmNotaVenda.edcfop.Text := icfop;
    with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select max(controle) from doctos');
        prepare;
        open;
        vcont := Fields[0].AsInteger + 1;
    end;
    FrmNotaVenda.Edit1.Text := inttostr(vcont);
    FrmNotaVenda.Edit4.Text := datetimetostr(now);
//    FrmNotaVenda.Edit2.Text := inttostr(voperador);
//    FrmNotaVenda.Label5.Caption := ibdm.IBQUsuarioNOME.Text;

    // USA impressora fiscal...
    if ibdm.IBQParamUSAECF.AsString = 'S' then
    begin
        FrmNotaVenda.edit5.enabled := false;
        FrmNotaVenda.label8.Enabled := false;
    end;

    // NÃO usa impressora fiscal...
    if ibdm.IBQParamUSAECF.AsString = 'N' then
    begin
        with ibdm.Consulta do
        begin
            close;
            sql.Clear;
            sql.Add('select max(documento) from doctos');
            sql.Add('where transacao =:p0');
            params[0].AsString := 'VENDAS';
            Prepare;
            open;
            if fields[0].AsString = '' then
                vdoc := 0 + 1
               else
                vdoc := fields[0].AsInteger + 1;
        end;
        vtam := Length(inttostr(vdoc));
            Case vtam of
            1: vnovo1 := '00000' + inttostr(vdoc);
            2: vnovo1 := '0000' + inttostr(vdoc);
            3: vnovo1 := '000' + inttostr(vdoc);
            4: vnovo1 := '00' + inttostr(vdoc);
            5: vnovo1 := '0' + inttostr(vdoc);
            6: vnovo1 := inttostr(vdoc);
            end;
        FrmNotaVenda.edit5.Text := vnovo1;
    end;

   // FrmNotaVenda.Label9.Caption := ibdm.IBQClientesCPF.AsString;
    LOG('Operador: '+InttoStr(voperador)+' Hora: '+timetostr(time)+' - Abriu Nota de Venda: '+frmnotavenda.Edit1.Text);
    FrmNotaVenda.ShowModal;
    FrmNotaVenda.Free;
    ibdm.IBDB.CloseDataSets;
    ibdm.IBDB.Connected := False;
    ibdm.IBDB.Connected := True;
    with ibdm.IBQDoctos do
                begin
                    close;
                    sql.Clear;
                    sql.Add('select * from doctos');
                    sql.Add('where transacao =:p0');
                    sql.Add('order by data desc');
                    params[0].AsString := 'VENDAS';
                    prepare;
                    open;
                   // last;
                end;
   DBgrid1.Refresh;


end;

procedure TFrmPrincipal.BitBtn17Click(Sender: TObject);
begin
    if (edit8.Text <> '') and (label4.Caption <> 'Nome do Fornecedor') then
    begin
        FrmNotaCompra := TFrmNotaCompra.Create(Application);
        with ibdm.Consulta do
        begin
            close;
            sql.Clear;
            sql.Add('select max(controle) from doctos');
            prepare;
            open;
            FrmNotaCOmpra.Edit1.Text := inttostr(Fields[0].AsInteger + 1);
        end;
        FrmNotaCOmpra.Edit2.Text := edit8.Text;
        FrmNotaCOmpra.Label8.Caption := label4.Caption;
        FrmNotaCOmpra.Edit4.Text := inttostr(voperador);
        FrmNotaCOmpra.Label9.Caption := ibdm.IBQUsuarioNOME.AsString;
        LOG('Operador: '+InttoStr(voperador)+' Hora: '+timetostr(time)+' - Abriu Nota de Compra '+frmnotacompra.Edit1.Text);
        FrmNotaCOmpra.ShowModal;
        FrmNotaCOmpra.Free;
    end
    else
    begin
        ShowMessage('Fornecedor não informado!!!');
        bitbtn60.SetFocus;
    end;
end;

procedure TFrmPrincipal.BitBtn58Click(Sender: TObject);
begin
    if edit7.Text <> '' then
        begin
            with ibdm.IBQDoctos do
            begin
                close;
                sql.Clear;
                sql.Add('select * from Doctos');
                sql.Add('where documento LIKE :p0 and transacao=:p1');
                sql.Add('order by controle ASC');
                params[0].AsString := Trim(edit7.Text)+'%';
                params[1].AsString := 'COMPRA';
                prepare;
                open;
            end;
        end
       else
       begin
           with ibdm.IBQDoctos do
           begin
               close;
               sql.Clear;
               sql.Add('select * from Doctos');
               sql.Add('order by controle ASC');
               prepare;
               open;
           end;
       end;
end;

procedure TFrmPrincipal.BitBtn60Click(Sender: TObject);
begin
    ts5.Show;
end;

procedure TFrmPrincipal.TS4Show(Sender: TObject);
begin
   With ibdm.IBQParam do
    begin
        open;
        if fieldByname('UCM').asstring = 'S' then
            begin
                PageControl1.Pages[3].Visible := True;
                with ibdm.IBQDoctos do
                begin
                    close;
                    sql.Clear;
                    sql.Add('select * from doctos');
                    sql.Add('where transacao =:p0');
                    params[0].AsString := 'COMPRA';
                    prepare;
                    open;
                    last;
                end;
            end
           else
            PageControl1.Pages[3].Visible := False;
    end
end;

procedure TFrmPrincipal.BitBtn10Click(Sender: TObject);
var
    msg : integer;
    vcod : integer;
begin
    vcod := ibdm.IBQCreceberCONTROLE.AsInteger;
    msg := application.MessageBox
        ('Tem certeza que deseja excluir esta Conta a Receber???','Confirmação',68);
    if msg = 6 then
    begin
        if vcod > 0 then
        begin
            with ibdm.Deleta do
            begin
                close;
                sql.Clear;
                sql.Add('delete from creceber');
                sql.Add('where controle =:p1');
                params[0].AsInteger := vcod;
                prepare;
                ExecQuery;
            end;
            LOG('Operador: '+InttoStr(voperador)+' Hora: '+timetostr(time)+' - Exclui uma Conta a Receber: '+inttostr(vcod));
            ibdm.IBQCreceber.Close;
            ibdm.IBQCreceber.Open;
            dbgrid2.Refresh;
            ShowMessage('Conta a Receber excluída com sucesso!!!');
        end;
    end
    else
        exit;
end;

procedure TFrmPrincipal.BitBtn15Click(Sender: TObject);
var
    msg : integer;
    vcod : string;
begin
    vcod := ibdm.IBQClientesCODIGO.AsString;
    Log('Operador: '+InttoStr(voperador)+' Hora: '+timetostr(time)+' Tentativa de excluir cliente '+vcod);
    msg := application.MessageBox
        ('Tem certeza que deseja excluir este Cliente???','Confirmação',68);
    if vtipo = 'M' then
    if msg = 6 then
    begin
        if vcod <> '' then
        begin
            with ibdm.Deleta do
            begin
                close;
                sql.Clear;
                sql.Add('delete from clientes');
                sql.Add('where codigo =:p1');
                params[0].AsString := vcod;
                prepare;
                ExecQuery;
            end;
            LOG('Operador: '+InttoStr(voperador)+' Hora: '+timetostr(time)+' - Exclui um Cliente: '+vcod);
            ibdm.IBQClientes.Close;
            ibdm.IBQClientes.Open;
            dbgrid3.Refresh;
            ShowMessage('Cliente excluído com sucesso!!!');
        end;
    end
    else
       ShowMessage('Operador sem permissão para excluir !');

end;

procedure TFrmPrincipal.BitBtn26Click(Sender: TObject);
var
    msg : integer;
    vcod : integer;
begin
    vcod := ibdm.IBQForCODIGO.AsInteger;
    msg := application.MessageBox
        ('Tem certeza que deseja excluir este Fornecedor???','Confirmação',68);
    if msg = 6 then
    begin
        if vcod > 0 then
        begin
            with ibdm.Deleta do
            begin
                close;
                sql.Clear;
                sql.Add('delete from forncedores');
                sql.Add('where codigo =:p1');
                params[0].AsInteger := vcod;
                prepare;
                ExecQuery;
            end;
            LOG('Operador: '+InttoStr(voperador)+' Hora: '+timetostr(time)+' - Exclui um Fornecedor: '+inttostr(vcod));
            ibdm.IBQFor.Close;
            ibdm.IBQFor.Open;
            dbgrid5.Refresh;
            ShowMessage('Fornecedor excluído com sucesso!!!');
        end;
    end
    else
        exit;
end;

procedure TFrmPrincipal.BitBtn30Click(Sender: TObject);
var
    msg : integer;
    vcod : string;
begin
    vcod := ibdm.IBQProdutosCODIGO.asstring;
    msg := application.MessageBox
        ('Tem certeza que deseja excluir este Produto???','Confirmação',68);
    if msg = 6 then
    begin
        if vcod > '0' then
        begin
            with ibdm.Deleta do
            begin
                close;
                sql.Clear;
                sql.Add('delete from produtos');
                sql.Add('where codigo =:p1');
                params[0].AsString := vcod;
                prepare;
                ExecQuery;
            end;
            LOG('Operador: '+InttoStr(voperador)+' Hora: '+timetostr(time)+' - Exclui um Produto '+vcod);
            ibdm.IBQProdutos.Close;
            ibdm.IBQProdutos.Open;
            dbgrid6.Refresh;
            ShowMessage('Produto excluído com sucesso!!!');
        end;
    end
    else
        exit;
end;

procedure TFrmPrincipal.BitBtn35Click(Sender: TObject);
var
    msg : integer;
    vcod : integer;
begin
    vcod := ibdm.IBQCpagarCONTROLE.AsInteger;
    msg := application.MessageBox
        ('Tem certeza que deseja excluir esta Conta a Pagar???','Confirmação',68);
    if msg = 6 then
    begin
        if vcod > 0 then
        begin
            with ibdm.Deleta do
            begin
                close;
                sql.Clear;
                sql.Add('delete from cpagar');
                sql.Add('where controle =:p1');
                params[0].AsInteger := vcod;
                prepare;
                ExecQuery;
            end;
            LOG('Operador: '+InttoStr(voperador)+' Hora: '+timetostr(time)+' - Exclui uma Conta a Pagar '+inttostr(vcod));
            ibdm.IBQCpagar.Close;
            ibdm.IBQCpagar.Open;
            dbgrid7.Refresh;
            ShowMessage('Conta a Pagar excluída com sucesso!!!');
        end;
    end
    else
        exit;
end;

procedure TFrmPrincipal.BitBtn38Click(Sender: TObject);
var
    msg : integer;
    vcod : integer;
begin
    vcod := ibdm.IBQCaixaCONTROLE.AsInteger;
    msg := application.MessageBox
        ('Tem certeza que deseja excluir este Lançamento do Caixa???','Confirmação',68);
    if msg = 6 then
    begin
        if vcod > 0 then
        begin
              Log('Exclusão Caixa-Doc.'+ibdm.IBQCaixaDOCUMENTO.Text+' - Valor '+FormatCurr('0.00',ibdm.IBQCaixaVALOR.AsCurrency));
            with ibdm.Deleta do
            begin
                close;
                sql.Clear;
                sql.Add('delete from caixa');
                sql.Add('where controle =:p1');
                params[0].AsInteger := vcod;
                prepare;
                ExecQuery;
            end;
            LOG('Operador: '+InttoStr(voperador)+' Hora: '+timetostr(time)+' - Exclui um Lanç. Caixa: '+inttostr(vcod));
            ibdm.IBQCaixa.Close;
            ibdm.IBQCaixa.Open;
            dbgrid8.Refresh;
            ShowMessage('Lançamento do Caixa excluído com sucesso!!!');
        end;
    end
    else
        exit;
end;

procedure TFrmPrincipal.BitBtn62Click(Sender: TObject);
begin
    FrmIcms := TFrmIcms.create(application);
    FrmIcms.ShowModal;
    FrmIcms.Free;
end;

procedure TFrmPrincipal.BitBtn61Click(Sender: TObject);
begin
    FrmRelDataCRec := TFrmRelDataCRec.Create(Application);
    FrmRelDataCRec.tfXPForm1.TitleCaption := 'Relatório de Contas a Pagar por Data';
    FrmRelDataCRec.ShowModal;
    FrmRelDataCRec.Free;
end;

procedure TFrmPrincipal.BitBtn63Click(Sender: TObject);
begin
    FrmComissoes := TFrmComissoes.create(application);
    FrmComissoes.ShowModal;
    FrmComissoes.Free;
end;

procedure TFrmPrincipal.BitBtn6Click(Sender: TObject);
var
    vcontrole : integer;
    cNumeroCupom : string;
    vprod : integer;
    vprod1: string;
    vquantidade : currency;
    vtam : integer;
    vpreco : currency;
    vprtotal : currency;
    vdocto,vnome,vcondpag : string;
    vlocal : TbookMark;
    vcont : integer;
    vnovo : string;
    msg:integer;
begin

    if FrmPrincipal.vtipo = 'M' then
    begin
        vcontrole := ibdm.IBQDoctosCONTROLE.AsInteger;
        cNumeroCupom := ibdm.ibqdoctos.FieldByname('documento').asstring;
        vnome:=IBDM.IBQDoctosNOME.AsString;
        Showmessage('ATENÇÃO !, Exclusão do Documento nr. '+cNumeroCupom);
        msg := Application.MessageBox('Confirma exclusão do documento ??'  , 'Confirmação' ,68);
        if msg = 6 then
        begin
            with ibdm.Deleta do
            begin
                close;
                sql.Clear;
                sql.Add('delete from doctos');
                sql.Add('where documento =:p0');
                params[0].AsString := cNumeroCupom;
                prepare;
                execquery;
            end;
            CommitWork;
            ibdm.IBQDoctos.Close;
            ibdm.IBQDoctos.Open;

            with ibdm.Deleta do
            begin
                close;
                sql.Clear;
                sql.Add('delete from movimento');
                sql.Add('where docto =:p0');
                params[0].AsString := cNumeroCupom;
                prepare;
                execquery;
            end;
            CommitWork;
            ibdm.IBQMovimento.Close;
            ibdm.IBQMovimento.Open;


            with ibdm.Deleta do
            begin
                close;
                sql.Clear;
                sql.Add('delete from caixa');
                sql.Add('where documento = :p0');
                params[0].AsString := cNumeroCupom;
                prepare;
                execquery;
            end;
            CommitWork;
            with ibdm.Deleta do
            begin
                close;
                sql.Clear;
                sql.Add('delete from creceber');
                sql.Add('where documento = :p0');
                params[0].AsString := cNumeroCupom;
                prepare;
                execquery;
            end;
            CommitWork;
            with ibdm.Deleta do
            begin
                close;
                sql.Clear;
                sql.Add('delete from crecebidas');
                sql.Add('where documento =:p0');
                params[0].AsString :=cNumeroCupom;
                prepare;
                execquery;
            end;
            commitwork;
            ibdm.IBQCrecebidas.Close;
            ibdm.IBQCrecebidas.Open;

            with ibdm.Grava do
            begin
                close;
                sql.Clear;
                sql.Add('delete from comissoes');
                sql.Add('where nota =:p0');
                params[0].AsString := cNumeroCupom;
                prepare;
                ExecQuery;
            end;
            CommitWork;
            ibdm.IBQComissoes.Close;
            ibdm.IBQComissoes.Open;

    //        iRetorno := Bematech_FI_CancelaCupom();
    //        FrmPrincipal.Analisa_iRetorno();
    //        FrmPrincipal.Retorno_Impressora();
    //        showmessage('Cupom CANCELADO com sucesso.');


            Log('Operador: '+InttoStr(voperador)+' Hora: '+timetostr(time)+' excluiu venda ' + cnumerocupom +' Cliente: ' + vnome );
       end;
    end
    else
    begin
      ShowMessage('Usuário sem direitos para esta rotina !');
      Log('Operador: '+InttoStr(voperador)+' Hora: '+timetostr(time)+' Tentou excluir venda '+ cnumerocupom);
    end;
end;

procedure TFrmPrincipal.BitBtn11Click(Sender: TObject);
begin
    FrmRelDataCRec := TFrmRelDataCRec.Create(application);
    FrmRelDataCRec.vcreceber := true;
    FrmRelDataCRec.ShowModal;
    FrmRelDataCRec.Free;
end;

procedure TFrmPrincipal.BitBtn16Click(Sender: TObject);
  var
  vcli:string;
begin
    vcli:=IBDM.IBQClientesCODIGO.AsString;
    FrmEscolheImp := TFrmEscolheImp.Create(application);
    FrmEscolheImp.ShowModal;
    FrmEscolheImp.Free;
    IBDM.IBQClientes.First;
    IBDM.IBQClientes.Locate('codigo',vcli,[]);
end;

procedure TFrmPrincipal.BitBtn27Click(Sender: TObject);
begin
    FrmRelFornecedores :=TFrmRelFornecedores.Create(application);
    with ibdm.IBQParam do
    begin
        close;
        open;
        FrmRelFornecedores.QRLabel1.Caption := ibdm.IBQParamUSUARIO.AsString;
    end;
    ibdm.IBQFor.Close;
    ibdm.IBQFor.Open;
    FrmRelFornecedores.QuickRep1.Preview;
    FrmRelFornecedores.Free;
end;

procedure TFrmPrincipal.BitBtn32Click(Sender: TObject);
begin
    FrmPagarConta := TFrmPagarConta.Create(application);
    FrmPagarConta.Edit1.Text := datetostr(ibdm.IBQCpagarVENCIMENTO.asdatetime);
    FrmPagarConta.Edit2.Text := datetostr(now);
    FrmPagarConta.CurrencyEdit1.AsCurrency := ibdm.IBQCpagarVALOR.AsCurrency;
    FrmPagarConta.CurrencyEdit2.AsCurrency := ibdm.IBQCpagarVALOR.AsCurrency;
    FrmPagarConta.ShowModal;
    FrmPagarConta.Free;
end;

procedure TFrmPrincipal.BitBtn31Click(Sender: TObject);
begin
    FrmRelFiltraEst := TFrmRelFiltraEst.Create(application);
    FrmRelFiltraEst.ShowModal;
    FrmRelFiltraEst.Free;
end;

procedure TFrmPrincipal.BitBtn39Click(Sender: TObject);
begin
    ibdm.IBQCaixa.Close;
    DBgrid8.DataSource := nil;
    FrmRelFiltraCai := TFrmRelFiltraCai.Create(application);
    Frmrelfiltracai.lbcli.Caption:=edit19.Text;
    Frmrelfiltracai.vcli:=edit19.Text;
    FrmRelFiltraCai.ShowModal;
    FrmRelFiltraCai.Free;
    DBgrid8.DataSource := IBDM.DTSCaixa;
    IF edit19.Text <> '' then
    begin

        with ibdm.IBQCaixa do
        begin
            close;
            sql.Clear;
            sql.Add('select caixa.*, doctos.clifor from caixa,doctos');
            sql.Add('Where doctos.documento=caixa.documento and clifor=:p1');
            sql.Add('order by caixa.controle DESC, caixa.data DESC');
            params[0].AsString :=edit19.Text;
            prepare;
            open;
        end;
    end
    else
    begin
      with ibdm.IBQCaixa do
        begin
            close;
            sql.Clear;
            sql.Add('select caixa.*, doctos.clifor from caixa,doctos');
            sql.Add('Where doctos.documento=caixa.documento');
            sql.Add('order by caixa.controle DESC, caixa.data DESC');
            prepare;
            open;
        end;
    end;
    DBgrid8.Refresh;
end;

procedure TFrmPrincipal.TS9Show(Sender: TObject);
begin
    LOG('Operador: '+InttoStr(voperador)+' Hora: '+timetostr(time)+' - Entrou na manutenção.');
    With ibdm.IBQParam do
    begin
        close;
        open;
        if fieldByname('UMA').asstring = 'S' then
            begin
              PageControl1.Pages[8].Visible := True;
              dtantesde.date:=Int(Now) ;
            end

           else
            PageControl1.Pages[8].Visible := False;
    end;



end;

procedure TFrmPrincipal.TS10MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
    msg : integer;
begin
  with IBDM.Cheka do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Update param');
    SQL.Add('Set lembrete=:p0');
    Params[0].AsString:=Memo1.Text;
    ExecQuery;

  end;
  CommitWork;
  LOG('Operador: '+InttoStr(voperador)+' Hora: '+timetostr(time)+' - Saiu do Programa');
    if 1<2 then //now - ibdm.IBQParamBACKUP.AsDateTime > 2 then
    begin
        msg := application.MessageBox
                ('Ao finalizar o uso do sistema neste dia, fazer o Salvamento'+#13+#13+'Deseja fazer agora???','ATENÇÃO',68);
        if msg = 6 then
        begin
            bitbtn54.Click;
        end
        else
       //     VeformsAbertos;

            application.Terminate;
    end
    else
        application.Terminate;


end;

procedure TFrmPrincipal.RxLabel1Click(Sender: TObject);
begin
    Application.Terminate;
end;

procedure TFrmPrincipal.BitBtn64Click(Sender: TObject);
begin
    frmbaixaestoque := Tfrmbaixaestoque.Create(application);
    frmbaixaestoque.Label1.Caption := ibdm.IBQProdutosDESCRICAO.AsString;
    frmbaixaestoque.edestatual.Text := currtostr(ibdm.IBQProdutosESTOQUE.ascurrency);
    frmbaixaestoque.Label4.Caption := inttostr(ibdm.IBQProdutosCODIGO.asinteger);
    frmbaixaestoque.edproduto.Text := inttostr(ibdm.IBQProdutosCODIGO.asinteger);
    frmbaixaestoque.eddata.Date := now;
    frmbaixaestoque.edvalor.Text := currtostr(ibdm.IBQProdutosPRECOCUSTO.ascurrency);
    frmbaixaestoque.ShowModal;
    frmbaixaestoque.Destroy;
end;

procedure TFrmPrincipal.BitBtn65Click(Sender: TObject);
var
    vcod : integer;
begin
    FrmEstrutProd:= TFrmEstrutProd.Create(application);
    vcod := ibdm.IBQProdutosCODIGO.asinteger;
    with ibdm.IBQEstrutura do
    begin
        close;
        sql.Clear;
        sql.Add('select * from estrutura');
        sql.Add('where produto = :p0');
        params[0].AsString := inttostr(vcod);
        open;
    end;
    FrmEstrutProd.ShowModal;
    FrmEstrutProd.Destroy;
end;

procedure TFrmPrincipal.BitBtn66Click(Sender: TObject);
begin
    FrmMovimentacao := TFrmMovimentacao.Create(application);
    FrmMovimentacao.Edit1.Text := ibdm.IBQProdutosCODIGO.AsString;
    FrmMovimentacao.DateEdit1.Date := now;
    FrmMovimentacao.DateEdit2.Date := now;
    FrmMovimentacao.ShowModal;
    FrmMovimentacao.Destroy;
end;

procedure TFrmPrincipal.BitBtn22Click(Sender: TObject);
begin
    ShowMessage('Em fase de elaboração!!!');
end;

procedure TFrmPrincipal.Edit17Exit(Sender: TObject);
begin
    if edit17.Text <> '' then
      begin
        with ibdm.IBQDoctos do
            begin
                close;
                open;
                last;
                if strtoint(edit17.Text) = fieldbyname('documento').asinteger then
                begin
                    bitbtn6.Enabled := true;
                    bitbtn6.SetFocus;
                end
                else
                 begin
                    ShowMessage('Verificar se é a última Nota Registrada!!!');
                    bitbtn6.Enabled := false;
                    edit17.Text := '';
                 end;
            end;
      end
      else
        bitbtn6.Enabled := false;
end;

procedure TFrmPrincipal.BitBtn67Click(Sender: TObject);
var
    vcod : string;
    i : integer;
    vcusto : currency;
    vcalc : currency;
    vresult : currency;
begin
    with ibdm.IBQProdutos do
    begin
        close;
        open;
        first;
        while not eof do
        begin
            vcod := fieldbyname('codigo').asstring;
            with ibdm.IBQMovimento do
            begin
                close;
                open;
                last;
                if locate('produto',vcod,[]) then
                begin
                    i := 1;
                    while ibdm.IBQMovimento.fieldbyname('produto').asstring = vcod do
                    begin
                    vcusto := fieldbyname('valorunitario').ascurrency;
                    vcalc := vcalc + vcusto;
                    i := i + 1;
                    prior;
                end;
            end;
            vresult := vcalc / i;
            ibdm.ibqprodutos.Locate('codigo',vcod,[]);
            with ibdm.Grava do
            begin
                close;
                sql.Clear;
                sql.Add('update produtos');
                sql.Add('set customedio=:p0');
                sql.Add('where codigo = :p1');
                params[0].AsCurrency := vresult;
                params[1].AsString := ibdm.ibqprodutoscodigo.AsString;
                prepare;
                execquery;
            end;
            ibdm.IBQProdutos.Next;
        end;
        end;
    end;
    ShowMessage('Custo Médio dos Produtos, calculado com sucesso!!!');
end;

procedure TFrmPrincipal.BitBtn19Click(Sender: TObject);
begin
    if ibdm.IBQDoctosTRANSACAO.AsString = 'COMPRA' then
    begin
        FrmEdNotaCom := TFrmEdNotaCom.Create(application);
        FrmEdNotaCom.Edit1.Text := inttostr(ibdm.IBQDoctosCONTROLE.asinteger);
        FrmEdNotaCom.Edit2.Text := inttostr(ibdm.IBQDoctosCLIFOR.asinteger);
        with ibdm.IBQProdutos do
        begin
            close;
            open;
            locate('codigo',ibdm.IBQDoctosCLIFOR.asinteger,[]);
            FrmEdNotaCom.Label8.Caption := ibdm.ibqprodutosDESCRICAO.AsString;
        end;
        FrmEdNotaCom.Edit3.Text := ibdm.IBQDoctosDOCUMENTO.AsString;
        FrmEdNotaCom.DateEdit1.Date := ibdm.IBQDoctosDATA.AsDateTime;
        FrmEdNotaCom.CurrencyEdit1.AsCurrency := ibdm.IBQDoctosVALORFRETE.AsCurrency;
        FrmEdNotaCom.Edit4.Text := inttostr(ibdm.ibqdoctosoperador.asinteger);
        with ibdm.IBQUsuario do
        begin
            close;
            open;
            locate('codigo',ibdm.ibqdoctosoperador.asinteger,[]);
            FrmEdNotaCom.Label9.Caption := ibdm.IBQUsuarioNOME.AsString;
        end;
        FrmEdNotaCom.ShowModal;
        FrmEdNotaCom.Destroy;
    end
    else
        ShowMessage('Este Documento não é uma Nota de Compra!!!');
end;

procedure TFrmPrincipal.BitBtn20Click(Sender: TObject);
begin
    if ibdm.IBQDoctosTRANSACAO.AsString = 'COMPRA' then
    begin
        FrmEdItensNota := TFrmEdItensNota.Create(Application);
        with ibdm.IBQMovimento do
        begin
            close;
            sql.Clear;
            sql.Add('select * from movimento');
            sql.Add('where docto =:p0');
            params[0].AsString := ibdm.IBQDoctosDOCUMENTO.AsString;
            open;
        end;
        ibdm.IBQMovimento.Close;
        ibdm.IBQMovimento.Open;
        FrmEdItensNota.DBGrid1.Refresh;
        FrmEdItensNota.ShowModal;
        FrmEdItensNota.Destroy;
    end
    else
        ShowMessage('Este documento não é uma Nota de Compra!');
end;

procedure TFrmPrincipal.BitBtn69Click(Sender: TObject);
begin
    frminventario := Tfrminventario.Create(Application);
    frminventario.ShowModal;
    frminventario.Destroy;
end;

procedure TFrmPrincipal.BitBtn71Click(Sender: TObject);
begin
    FrmTipoServ := TFrmTipoServ.Create(Application);
    FrmTipoServ.ShowModal;
    FrmTipoServ.Destroy;
end;

procedure TFrmPrincipal.ComboBox2Click(Sender: TObject);
begin
    if combobox2.Text = 'Todos' then
    begin
      with ibdm.IBQClientes do
        begin
            close;
            sql.Clear;
            sql.Add('select * from clientes');
             sql.Add('order by nome ASC');
            prepare;
            open;
        end;
    end
    Else
    begin
      with ibdm.IBQClientes do
        begin
            close;
            sql.Clear;
            sql.Add('select * from clientes');
            sql.Add('Where cidade like :p0');
            sql.Add('order by nome ASC');
            params[0].AsString := trim(combobox2.Text) ;
            prepare;
            open;
        end;
    end;
end;

procedure TFrmPrincipal.BitBtn70Click(Sender: TObject);
begin
    FrmOrdemServ1 := TFrmOrdemServ1.Create(Application);
    FrmOrdemServ1.vnovo := true;
    with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select max(documento) from doctos');
        sql.Add('where transacao =:p0');
        params[0].AsString := 'VENDAS';
        Prepare;
        open;
        if fields[0].AsString = '' then
            FrmOrdemServ1.Edit1.Text := inttostr(0 + 1)
           else
            FrmOrdemServ1.Edit1.Text := inttostr(fields[0].AsInteger + 1);
    end;
    FrmOrdemServ1.DateEdit1.Date := now;
    FrmOrdemServ1.ShowModal;
    FrmOrdemServ1.Destroy;
end;

procedure TFrmPrincipal.BitBtn72Click(Sender: TObject);
var
    msg : integer;
    vdoc : string;
begin
    msg := Application.MessageBox('Excluir Ordem de Serviço???','ATENÇÃO PARA EXCLUSÃO',68);
    if msg = 6 then
    begin
        vdoc := ibdm.IBQDoctosDOCUMENTO.AsString;
        with ibdm.Deleta do
        begin
            close;
            sql.Clear;
            sql.Add('delete from doctos');
            sql.Add('where documento =:p0');
            params[0].AsString := vdoc;
            prepare;
            ExecQuery;
        end;
        ibdm.IBQDoctos.Close;
        ibdm.IBQDoctos.Open;

        with ibdm.IBQMovimento do
        begin
            close;
            sql.Clear;
            sql.Add('select * from movimento');
            sql.Add('where docto =:p0');
            params[0].AsString := vdoc;
            prepare;
            open;
            first;
            while not eof do
            begin
                with ibdm.Grava do
                begin
                    close;
                    sql.Clear;
                    sql.Add('update produtos');
                    sql.Add('set estoque =:p0');
                    sql.Add('where codigo=:p1');
                    params[0].AsCurrency := ibdm.IBQProdutosESTOQUE.AsCurrency + ibdm.IBQMovimentoQUANTIDADE.AsCurrency;
                    params[1].AsString := ibdm.IBQMovimentoPRODUTO.AsString;
                    prepare;
                    ExecQuery;
                end;
                ibdm.IBQProdutos.Close;
                ibdm.IBQProdutos.Open;
                next;
            end;
            ShowMessage('Estoque atualizado com Sucesso.');
        end;

        with ibdm.Deleta do
        begin
            close;
            sql.Clear;
            sql.Add('delete from movimento');
            sql.Add('where docto =:p0');
            params[0].AsString := vdoc;
            prepare;
            ExecQuery;
        end;
        ibdm.IBQMovimento.Close;
        ibdm.IBQMovimento.Open;

        with ibdm.Deleta do
        begin
            close;
            sql.Clear;
            sql.Add('delete from ordemserv');
            sql.Add('where nr =:p0');
            params[0].AsString := vdoc;
            prepare;
            ExecQuery;
        end;
        ibdm.IBQOrdemServ.Close;
        ibdm.IBQOrdemServ.Open;

        with ibdm.Deleta do
        begin
            close;
            sql.Clear;
            sql.Add('delete from itos');
            sql.Add('where sequencial =:p0');
            params[0].AsString := vdoc;
            prepare;
            ExecQuery;
        end;
        ibdm.IBQitos.Close;
        ibdm.IBQitos.Open;
        ShowMessage('Ordem de Serviço excluída com SUCESSO!!!');
        CommitWork;
    end;
end;

procedure TFrmPrincipal.BitBtn73Click(Sender: TObject);
begin
    FrmOrdemServ1 := TFrmOrdemServ1.Create(Application);
    FrmOrdemServ1.vnovo := false;
    with ibdm.IBQOrdemServ do
    begin
        close;
        sql.Clear;
        sql.Add('select * from ordemserv');
        sql.Add('where nr =:p0');
        params[0].AsString := ibdm.IBQDoctosDOCUMENTO.AsString;
        prepare;
        open;
        FrmOrdemServ1.DateEdit1.Date := ibdm.IBQOrdemServDATA.AsDateTime;
        FrmOrdemServ1.Edit1.Text := ibdm.IBQOrdemServNR.AsString;
        FrmOrdemServ1.Edit2.Text := ibdm.IBQOrdemServEQUIPAMENTO.AsString;
        FrmOrdemServ1.Edit3.Text := ibdm.IBQOrdemServCARACTERISTICA.AsString;
        FrmOrdemServ1.combobox2.Text := ibdm.IBQOrdemServATENDIMENTO.AsString;
        FrmOrdemServ1.Currencyedit1.AsCurrency := ibdm.IBQOrdemServVALORPECA.AsCurrency;
        FrmOrdemServ1.Currencyedit2.AsCurrency := ibdm.IBQOrdemServVALORSERV.AsCurrency;
    end;
    FrmOrdemServ1.ShowModal;
    FrmOrdemServ1.Destroy;
end;

procedure TFrmPrincipal.BitBtn21Click(Sender: TObject);
var
    msg : integer;
    vnota : string;
    vest : currency;
begin
    ibdm.IBQProdutos.Close;
    ibdm.IBQProdutos.Open;
    msg := Application.MessageBox('Deseja realmente EXCLUIR esta nota fiscal???','ANTEÇÃO exclusão de nota',68);
    if msg = 6 then
    begin
        vnota := ibdm.IBQDoctosDOCUMENTO.AsString;
        with ibdm.Deleta do
        begin
            close;
            sql.Clear;
            sql.Add('delete from doctos');
            sql.Add('where documento=:p0');
            params[0].AsString := vnota;
            prepare;
            ExecQuery;
        end;
        with ibdm.Deleta do
        begin
            close;
            sql.Clear;
            sql.Add('delete from cpagar');
            sql.Add('where documento=:p0');
            params[0].AsString := vnota;
            prepare;
            ExecQuery;
        end;
        with ibdm.Deleta do
        begin
            close;
            sql.Clear;
            sql.Add('delete from caixa');
            sql.Add('where documento=:p0');
            params[0].AsString := vnota;
            prepare;
            ExecQuery;
        end;
        with ibdm.IBQMovimento do
        begin
            close;
            sql.Clear;
            sql.Add('select * from movimento');
            sql.Add('where docto=:p0');
            params[0].AsString := vnota;
            prepare;
            open;
            first;
            while not eof do
            begin
                ibdm.IBQProdutos.Locate('codigo',ibdm.IBQMovimentoPRODUTO.AsString,[]);
                vest := ibdm.IBQProdutosESTOQUE.AsCurrency;
                with ibdm.Grava do
                begin
                    close;
                    sql.Clear;
                    sql.Add('update produtos');
                    sql.Add('set estoque=:p0');
                    sql.Add('where codigo=:p1');
                    params[0].AsCurrency := vest - ibdm.IBQMovimentoQUANTIDADE.AsCurrency;
                    params[1].AsString := ibdm.IBQMovimentoPRODUTO.AsString;
                    prepare;
                    ExecQuery;
                end;
                next;
            end;
            ShowMessage('Estoque atualizado.');
        end;
        ShowMessage('NOTA FISCAL ecluída com Sucesso!!!');
    end;
    CommitWork;
    ibdm.IBQDoctos.Close;
    ibdm.IBQDoctos.Open;
    ibdm.IBQProdutos.Close;
    ibdm.IBQProdutos.Open;
    ibdm.IBQCpagar.Close;
    ibdm.IBQCpagar.Open;
    ibdm.IBQCaixa.Close;
    ibdm.IBQCaixa.Open;
end;

procedure TFrmPrincipal.ComboBox3Click(Sender: TObject);
var
    vcod : integer;
begin
    if combobox3.Text = 'Todos' then
    begin
        with ibdm.IBQProdutos do
        begin
            close;
            sql.Clear;
            sql.Add('select * from produtos');
            sql.Add('order by grupo ASC, subgrupo ASC');
            prepare;
            open;
        end;
    end
    else
    begin
        with ibdm.IBQGrupos do
        begin
            if locate('descricao',combobox3.Text,[]) then
            begin
                vcod := ibdm.IBQGruposCODIGO.AsInteger;
                with ibdm.IBQProdutos do
                begin
                    close;
                    sql.Clear;
                    sql.Add('select * from produtos');
                    sql.Add('where grupo =:p0');
                    sql.Add('order by codigo ASC');
                    params[0].AsInteger := vcod;
                    prepare;
                    open;
                end;
            end;
        end;
    end;
    ibdm.IBQProdutos.Close;
    ibdm.IBQProdutos.Open;

    combobox4.Clear;
    combobox4.Items.Add('Todos');
    combobox4.Text := 'Todos';
    with ibdm.IBQSubGrupos do
    begin
        close;
        sql.Clear;
        sql.Add('select * from subgrupos');
        sql.Add('order by descricao ASC,codigo ASC');
        prepare;
        open;
        First;
        while not eof do
        begin
            if ibdm.IBQSubGruposGRUPO.AsInteger = vcod then
                combobox4.Items.Add(ibdm.IBQSUBGruposDESCRICAO.AsString);
            next;
        end;
    end;
end;

procedure TFrmPrincipal.ComboBox4Click(Sender: TObject);
var
    vcod : integer;
    vsub : integer;
begin
    with ibdm.IBQGrupos do
    begin
        close;
        open;
        locate('descricao',combobox3.Text,[]);
        vcod := ibdm.IBQGruposCODIGO.AsInteger;
    end;

    if combobox4.Text = 'Todos' then
    begin
        with ibdm.IBQProdutos do
        begin
            close;
            sql.Clear;
            sql.Add('select * from produtos');
            sql.Add('where grupo =:p0');
            sql.Add('order by codigo ASC');
            params[0].AsInteger := vcod;
            Prepare;
            Open;
        end;
    end
    else
    begin
        with ibdm.IBQSubGrupos do
        begin
            close;
            open;
            locate('descricao',combobox4.Text,[]);
            vsub := ibdm.IBQSubGruposCODIGO.AsInteger;
        end;

        with ibdm.IBQProdutos do
        begin
            close;
            sql.Clear;
            sql.Add('select * from produtos');
            sql.Add('where grupo =:p0 and subgrupo =:p1');
            sql.Add('order by codigo ASC');
            params[0].AsInteger := vcod;
            params[1].AsInteger := vsub;
            prepare;
            open;
        end;
    end;
end;

procedure TFrmPrincipal.BitBtn68Click(Sender: TObject);
begin
    if dateedit1.text = '__/__/____' then
    begin
        ShowMessage('Informe as datas!!! E clique no botão "Ranking" novamente.');
        GroupBox7.Visible := true;
        DateEdit1.Date := now;
        DateEdit2.Date := now;
        DateEdit1.SetFocus;
    end
    else
    begin
        frmranking := TFrmranking.Create(Application);

        with frmranking do
        begin
            DadosGrafico.Close;
            DadosGrafico.SQL.Clear;
            DadosGrafico.SQL.Add('select sum(valortotal) from  doctos');
            DadosGrafico.SQL.Add('where data >=:p0 and data <=:p1 and condpag like :p2');
            DadosGrafico.Params[0].AsDateTime := int(dateedit1.Date);
            DadosGrafico.Params[1].AsDateTime := int(dateedit2.Date);
            DadosGrafico.Params[2].AsString := 'AVISTA';
            DadosGrafico.Prepare;
            DadosGrafico.Open;
            Series1.AddBar(DadosGrafico.Fields[0].AsCurrency,'VENDAS A VISTA',clBlue);

            DadosGrafico.Close;
            DadosGrafico.SQL.Clear;
            DadosGrafico.SQL.Add('select sum(valortotal) from  doctos');
            DadosGrafico.SQL.Add('where data >=:p0 and data <=:p1 and condpag not like :p2');
            DadosGrafico.Params[0].AsDateTime := int(dateedit1.Date);
            DadosGrafico.Params[1].AsDateTime := int(dateedit2.Date);
            DadosGrafico.Params[2].AsString := 'AVISTA';
            DadosGrafico.Prepare;
            DadosGrafico.Open;
            Series1.AddBar(DadosGrafico.Fields[0].AsCurrency,'VENDAS A PRAZO',clRed);

            Grafico.Title.Text.Strings[0] := 'RANKING de VENDAS entre '+dateedit1.Text + ' e '+dateedit2.Text;
            Grafico.LeftAxis.Title.Caption := '';
            Series1.ValueFormat := '#,##0.00';
        end;

        frmranking.ShowModal;
        frmranking.Destroy;
    end;
end;

procedure TFrmPrincipal.BitBtn76Click(Sender: TObject);
var
    msg,msg1 : integer;
    vdoc : string;
begin
    msg1 := Application.MessageBox
        ('Você já excluiu o CUPOM FISCAL desta NOTA FISCAL ???','ATENÇÃO !',68);
    if msg1 = 6 then
    begin
        msg := Application.MessageBox
            ('Deseja realmente excluir esta NOTA FISCAL ???','Atenção Exclusão de Nota!',68);
        if msg = 6 then
        begin
            ibdm.IBQProdutos.Close;
            ibdm.IBQProdutos.Open;
            vdoc := ibdm.IBQDoctosDOCUMENTO.AsString;
            with ibdm.Deleta do
            begin
                close;
                sql.Clear;
                sql.Add('delete from doctos');
                sql.Add('where documento =:p0');
                params[0].AsString := vdoc;
                prepare;
                execquery;
            end;
            ibdm.IBQDoctos.Close;
            ibdm.IBQDoctos.Open;

            with ibdm.IBQMovimento do
            begin
                close;
                sql.Clear;
                sql.Add('select * from movimento');
                sql.Add('where docto =:p0');
                params[0].AsString := vdoc;
                prepare;
                open;
                First;
                while not eof do
                begin
                    if ibdm.IBQProdutos.Locate('codigo',ibdm.IBQMovimentoPRODUTO.AsString,[]) then
                    begin
                        with ibdm.Grava do
                        begin
                            close;
                            sql.Clear;
                            sql.Add('update produtos');
                            sql.Add('set estoque=:p0');
                            sql.Add('where codigo =:p1');
                            params[0].AsCurrency := ibdm.IBQProdutosESTOQUE.AsCurrency + ibdm.IBQMovimentoQUANTIDADE.AsCurrency;
                            params[1].AsString := ibdm.IBQProdutosCODIGO.AsString;
                            prepare;
                            execquery;
                        end;
                    end;
                    next;
                end;
                ShowMessage('Estoque Atualizado com SUCESSO!');
            end;
            with ibdm.Deleta do
            begin
                close;
                sql.Clear;
                sql.Add('delete from movimento');
                sql.Add('where docto =:p0');
                params[0].AsString := vdoc;
                prepare;
                execquery;
            end;
            ibdm.IBQProdutos.Close;
            ibdm.IBQProdutos.Open;
            ibdm.IBQMovimento.Close;
            ibdm.IBQMovimento.Open;
            with ibdm.Deleta do
            begin
                close;
                sql.Clear;
                sql.Add('delete from caixa');
                sql.Add('where documento =:p0');
                params[0].AsString := vdoc;
                prepare;
                execquery;
            end;
            ibdm.IBQCaixa.Close;
            ibdm.IBQCaixa.Open;
            with ibdm.Deleta do
            begin
                close;
                sql.Clear;
                sql.Add('delete from creceber');
                sql.Add('where documento=:p0');
                params[0].AsString := vdoc;
                prepare;
                execquery;
            end;
            ibdm.IBQCreceber.Close;
            ibdm.IBQCreceber.Open;
            with ibdm.Deleta do
            begin
                close;
                sql.Clear;
                sql.Add('delete from comissoes');
                sql.Add('where nota=:p0');
                params[0].Asinteger := strtoint(vdoc);
                prepare;
                execquery;
            end;

            CommitWork;
            ibdm.IBQComissoes.Close;
            ShowMessage('Nota fiscal excluída com SUCESSO!!!');
        end;
        CommitWork;
    end;
end;

procedure TFrmPrincipal.BitBtn75Click(Sender: TObject);
begin
    FrmNotaFiscal := TFrmNotaFiscal.Create(Application);
    FrmNotaFiscal.vnovo := false;
    ibdm.IBTemp.Close;
    ibdm.IBTemp.Open;
    ibdm.IBQClientes.Close;
    ibdm.IBQClientes.Open;
    frmnotafiscal.Edit12.Text := ibdm.IBQDoctosNATOP.AsString;
    frmnotafiscal.Edit10.Text := ibdm.IBQDoctosDOCUMENTO.AsString;
    frmnotafiscal.CheckBox1.Checked := true;
    LOG('Operador: '+InttoStr(voperador)+' Hora: '+timetostr(time)+' - Edição da Nota Fiscal');
    FrmNotaFiscal.ShowModal;
    FrmNotaFiscal.Destroy;
end;

procedure TFrmPrincipal.BitBtn74Click(Sender: TObject);
begin
    FrmNotaFiscal := TFrmNotaFiscal.Create(Application);
    FrmNotaFiscal.vnovo := true;
    with ibdm.Deleta do
    begin
        close;
        sql.Clear;
        sql.Add('delete from temp');
        Prepare;
        ExecQuery;
    end;
    ibdm.IBTemp.Close;
    ibdm.IBTemp.Open;
    LOG('Operador: '+InttoStr(voperador)+' Hora: '+timetostr(time)+' - Nota Fiscal');
    FrmNotaFiscal.ShowModal;
    FrmNotaFiscal.Destroy;
end;

procedure TFrmPrincipal.Button1Click(Sender: TObject);
begin
    with ibdm.IBQProdutos do
    begin
        close;
        sql.Clear;
        sql.Add('select * from produtos');
        sql.Add('order by codigo ASC');
        prepare;
        open;
    end;
    Button1.Enabled := false;
    Button2.Enabled := true;
    edit11.SetFocus;
end;

procedure TFrmPrincipal.Button2Click(Sender: TObject);
begin
    with ibdm.IBQProdutos do
    begin
        close;
        sql.Clear;
        sql.Add('select * from produtos');
        sql.Add('order by descricao ASC');
        prepare;
        open;
    end;
    Button2.Enabled := false;
    Button1.Enabled := true;
    edit12.SetFocus;
end;

procedure TFrmPrincipal.DBGrid1CellClick(Column: TColumn);
begin
    if (ibdm.IBQDoctosIMPRIMIR.AsString = 'S') or (ibdm.IBQDoctosIMPRIMIR.AsString = 'N') then
    begin
        if ibdm.IBQDoctosIMPRIMIR.AsString = 'S' then
            bitbtn75.Visible := false
           else
            bitbtn75.Visible := true;


    end;
      edobsvenda.Text := '';
    edobsvenda.Text := ibdm.ibqdoctosobs.asstring;

end;

procedure TFrmPrincipal.DBGrid6DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if ibdm.IBQProdutosESTOQUE.AsCurrency <= 0 then
    begin
        Dbgrid6.Canvas.Font.Color := clred;
        DbGrid6.Canvas.Font.Style := [fsBold];
    end;
    Dbgrid6.DefaultDrawDataCell(Rect, dbgrid6.columns[datacol].field, State);
end;

procedure TFrmPrincipal.BitBtn52Click(Sender: TObject);
begin
    FrmEstados := TFrmEstados.Create(Application);
    FrmEstados.ShowModal;
    FrmEstados.Destroy;
end;

procedure TFrmPrincipal.BitBtn77Click(Sender: TObject);
begin
    FrmRelEstMinimo := TFrmRelEstMinimo.Create(Application);
    with FrmRelEstMinimo.IBQuery1 do
    begin
        close;
        sql.Clear;
        sql.Add('select * from produtos');
        sql.Add('where estminimo > estoque');
        sql.Add('order by grupo ASC, subgrupo ASC, descricao ASC');
        prepare;
        open;
    end;
    ibdm.IBQParam.Close;
    ibdm.IBQParam.Open;
    FrmRelEstMinimo.QRLabel1.Caption := ibdm.IBQParamUSUARIO.AsString;
    FrmRelEstMinimo.QuickRep1.Preview;
    FrmRelEstMinimo.Destroy;
end;

procedure TFrmPrincipal.Button3Click(Sender: TObject);
begin
    FrmLimpeza := TFrmLimpeza.create(application);
    FrmLimpeza.ShowModal;
    FrmLimpeza.Destroy;

end;

procedure TFrmPrincipal.TS10Show(Sender: TObject);
begin
    with ibdm.IBQParam do
    begin
        close;
        open;
        rxlabel11.Caption := 'Última Cópia de Segurança realizada em: '+datetostr(ibdm.IBQParamBACKUP.asdatetime);
        Memo1.Text:=FieldByname('lembrete').AsString;
    end;
end;

procedure TFrmPrincipal.BitBtn78Click(Sender: TObject);
begin
    FrmSomarCReceber := TFrmSomarCReceber.Create(Application);
    FrmSomarCReceber.ShowModal;
    FrmSomarCReceber.Destroy;
end;

procedure TFrmPrincipal.BitBtn79Click(Sender: TObject);
begin
    FrmConvenio := TFrmConvenio.Create(Application);
    FrmConvenio.ShowModal;
    FrmConvenio.Destroy;
end;

procedure TFrmPrincipal.BitBtn80Click(Sender: TObject);
begin
    FrmFiltraConvenio := TFrmFiltraConvenio.Create(Application);
    FrmFiltraConvenio.ShowModal;
    FrmFiltraConvenio.Destroy;
end;

procedure TFrmPrincipal.BitBtn82Click(Sender: TObject);
var
    Excel : Variant;
    vnome, vcod : string;
    vlinha, vcoluna : integer;
    vvalor : currency;
begin
    ibdm.IBQParam.Close;
    ibdm.IBQParam.Open;
    Excel := CreateOleObject('Excel.Application');
    Excel.Visible := True;
    Excel.Workbooks.Add;
    vlinha := 7;
    vcoluna := 4;
    vnome := Excel.Cells[vlinha,vcoluna];
    while vnome <> '' do
    begin
        with ibdm.IBQClientes do
        begin
           close;
           sql.Clear;
           sql.Add('select * from empresas');
           sql.Add('where nome =:p0 and cliente=:p1');
           params[0].AsString := vnome;
           params[1].AsString := 'S';
           prepare;
           open;
           vcod := ibdm.IBQClientesCODIGO.AsString;
        end;
        with ibdm.IBQCreceber do
        begin
            close;
            sql.Clear;
            sql.Add('select * from creceber');
            sql.Add('where cliente=:p0');
            params[0].AsString := vcod;
            prepare;
            open;
            vvalor := ibdm.IBQCreceberVALORDEVIDO.AsCurrency;
        end;
        Excel.Cells[vlinha,6] := vvalor;
        vlinha := vlinha + 1;
        ShowMessage('Você deve salvar as alterações do arquivo EXCEL!!!');
    end;
end;
procedure TFrmPrincipal.BitBtn81Click(Sender: TObject);
begin
    FrmCartao := TFrmCartao.Create(Application);
    with ibdm.IBQCartao do
    begin
        close;
        sql.Clear;
        sql.Add('select * from cartao');
        sql.Add('order by datacredito ASC');
        prepare;
        open;
    end;
    FrmCartao.ShowModal;
    FrmCartao.Destroy;
end;

procedure TFrmPrincipal.BitBtn83Click(Sender: TObject);
begin
   vrecord:=1;
   vclica:=False;
   edit4.text := ibdm.IBQClientesNOME.AsString;
   lbl1.Caption:=ibdm.IBQClientesCODIGO.AsString;
   vclica:=True;
   TS2.Show ;
end;

procedure TFrmPrincipal.BitBtn84Click(Sender: TObject);
begin
    Frmprecos := TFrmprecos.Create(Application);
    ibdm.IBTPrecos.Open;
    Frmprecos.ShowModal;
    Frmprecos.Destroy;
    ibdm.IBTPrecos.Close;  
end;

procedure TFrmPrincipal.Shape1ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
    if ibdm.vvv2 = True then
    begin
      Frmedcondi := TFrmedcondi.create(Application);
      Frmedcondi.showmodal;
      Frmedcondi.Destroy;
    end;
end;

procedure TFrmPrincipal.DBGrid2CellClick(Column: TColumn);
    var
    x:integer;
    ncli:integer;
begin
    ncli:=0;
    with ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select nadic,clifor from doctos');
        sql.Add('Where documento = :p0');
        params[0].AsString := ibdm.IBQCreceberDOCUMENTO.Value;
        open;
        ncli:= Fields[1].AsInteger;
        label6.Caption := 'Nome adicional: ' + Fields[0].AsString;
        label6.Refresh;
    end;
    x:=1;
    lbp1.caption:='';
    lbp2.caption:='';

    with ibdm.consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select pagamento,pago from crecebidas');
        sql.Add('Where documento = :p0 and parcela = :p1');
        params[0].AsString := ibdm.IBQCreceberDOCUMENTO.Value;
        params[1].AsString := ibdm.IBQCreceberPARCELA.AsString;
        open;
        While not eof do
        begin
            if x=1 then
                lbp1.Caption := '1º Parcial: ' +Datetostr(Fields[0].asdatetime) + ' - ' + formatcurr('0.00',fields[1].ascurrency)
               else
                lbp2.Caption := '2º Parcial: ' +Datetostr(Fields[0].asdatetime) + ' - ' + formatcurr('0.00',fields[1].ascurrency);
            x:=x+1;
            next;
        end;
    end;
    with ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select obs from clientes');
        sql.Add('Where cast(codigo as integer) like :p0');
        params[0].Asstring := trim(inttostr(ncli))+'%';
        open;
        dspob.Text := fields[0].asstring;
        dspob.Refresh;
    end;
    lbp1.Refresh;
    lbp2.Refresh;
    with ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select sum(valordevido) from creceber');
        sql.Add('Where cliente = :p0 and vencimento < :p1');
        params[0].Asinteger := ncli;
        params[1].AsDate := int(now);
        open;
        lbrec1.Caption := 'Vencido  '+Fields[0].AsString;
        Close;
        sql.Clear;
        sql.Add('Select sum(valordevido) from creceber');
        sql.Add('Where cliente = :p0 and vencimento >= :p1');
        params[0].Asinteger := ncli;
        params[1].AsDate := int(now);
        open;
        lbrec2.Caption := 'A vencer '+Fields[0].AsString;
        lbrec1.Refresh;
        lbrec2.Refresh;
    end;

end;

procedure TFrmPrincipal.DBNavigator8BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
    dbedit1.Text := ibdm.IBQClientesCODIGO.AsString;
end;

procedure TFrmPrincipal.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
  var
  ucmp:real;
  vcli:integer;
  vdias:real;
begin
    IF ibdm.IBQClientesCODIGO.Value<> '' then
    begin
    ucmp := int(now);
    vcli := Strtoint(ibdm.IBQClientesCODIGO.Value);
     dspobs.Text := ibdm.IBQClientesOBS.AsString;
    dspobs.Refresh;
    With ibdm.Consulta do
    begin
      Close;
      sql.Clear;
      sql.Add('Select max(data) from doctos');
      sql.Add('Where clifor=:p0');
      params[0].AsInteger := vcli;
      Open;
      IF Fields[0].Asdatetime > 0 then
        ucmp:=int(Fields[0].AsDateTime);
    end;
    vdias := int(now) - ucmp;
    IF vdias > 0 then
        blucmp.Caption := 'Última compra realizada em: '+Datetimetostr(ucmp)+ ' /'+ currtostr(vdias) + ' dias'
       else
        blucmp.Caption := 'Nenhuma compra registrada para este cliente';
    blucmp.Repaint;
    end;
    With ibdm.Consulta do
    begin
      Close;
      sql.Clear;
      sql.Add('Select max(codigo) from clientes');
//      sql.Add('Where clifor=:p0');
//      params[0].AsInteger := vcli;
      Open;
      Label19.Caption :=  Fields[0].AsString;
    end;

    With ibdm.Consulta do
    begin
      Close;
      sql.Clear;
      sql.Add('Select nome from clientes where codigo = :p0');
//      sql.Add('Where clifor=:p0');
      params[0].AsString := (label19.caption);
      Open;
      Label19.Caption := 'Último cliente adicionado ao cadastro: ' + label19.caption + ' / '  +Fields[0].AsString;



    end;

end;

procedure TFrmPrincipal.BitBtn85Click(Sender: TObject);
begin
    with ibdm.IBQuery1 do
    begin
        Close;
        sql.Clear;
        sql.Add('Select movimento.produto,produtos.descricao,movimento.quantidade,movimento.valorunitario,doctos.data from movimento,produtos,doctos');
        sql.Add('Where movimento.docto = :p0 and produtos.codigo = movimento.produto and doctos.documento = movimento.docto');
        params[0].AsString := ibdm.IBQCreceberDOCUMENTO.AsString;
        Open;
    end;

    Frmitvnd := TFrmitvnd.create(application );
    Frmitvnd.showmodal;
    Frmitvnd.destroy;
end;

procedure TFrmPrincipal.BitBtn86Click(Sender: TObject);
begin
    ibdm.IBTmpgto.Open;
    Frmmodopgto := TFrmmodopgto.create(Application);
    Frmmodopgto.showmodal;
    Frmmodopgto.destroy;
    ibdm.IBTmpgto.Close;
end;

procedure TFrmPrincipal.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    edobsvenda.Text := '';
    edobsvenda.Text := ibdm.ibqdoctosobs.asstring;
end;

procedure TFrmPrincipal.Button4Click(Sender: TObject);
    var
    controle:integer;
begin
    controle := ibdm.IBQDoctosCONTROLE.AsInteger;
    with ibdm.Cheka do
    begin
        close;
        sql.Clear;
        sql.Add('update doctos');
        sql.Add('set obs = :p0');
        sql.Add('where controle=:p1');
        params[0].AsString := edobsvenda.Text ;
        params[1].AsInteger := controle;
        Execquery;
    end;
    CommitWork;
    ibdm.IBQDoctos.close;
    ibdm.IBQDoctos.Open;
    DBgrid1.Refresh;
    ibdm.IBQDoctos.Locate('controle',controle,[]);
    edobsvenda.visible := False;
end;

procedure TFrmPrincipal.DBGrid1DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
    edobsvenda.Text := '';
    edobsvenda.Text := ibdm.ibqdoctosobs.asstring;
end;

procedure TFrmPrincipal.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  edobsvenda.Text := '';
    edobsvenda.Text := ibdm.ibqdoctosobs.asstring;
end;

procedure TFrmPrincipal.DBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  edobsvenda.Text := '';
    edobsvenda.Text := ibdm.ibqdoctosobs.asstring;
end;

procedure TFrmPrincipal.Button5Click(Sender: TObject);

begin
    edobsvenda.Visible := True;
    edobsvenda.Text := ibdm.IBQDoctosOBS.AsString;
    edobsvenda.SetFocus;

end;

procedure TFrmPrincipal.DBGrid10DblClick(Sender: TObject);
    var
    controle:integer;
begin
    //
    controle :=  ibdm.IBQCreceberCONTROLE.AsInteger;
    Frmedobsrec := TFrmedobsrec.create(Application);
    Frmedobsrec.controle := controle;
    Frmedobsrec.Edit1.Text := ibdm.IBQCreceberOBS.AsString;
    Frmedobsrec.vtipo:=0;
    Frmedobsrec.ShowModal;
    Frmedobsrec.Destroy;
    ibdm.IBQCreceber.close;
    ibdm.IBQCreceber.Open;
    dbgrid2.Refresh;
    ibdm.IBQCreceber.locate('controle',controle,[]);

end;

procedure TFrmPrincipal.BitBtn87Click(Sender: TObject);
    var
    vtipo:integer;
begin
   vtipo:=0;

    if psdoc.Text <> '' then
    with ibdm.IBQDoctos do
    begin
        close;
        sql.Clear;
        sql.Add('select * from doctos');
        sql.Add('where transacao =:p0 and documento like :p1');
        sql.Add('order by documento desc');
        params[0].AsString := 'VENDAS';
        params[1].AsString := trim(psdoc.Text)+'%';
        prepare;
        open;
        vtipo:=1;
    end;
    if psnome.Text <> '' then
    with ibdm.IBQDoctos do
    begin
        close;
        sql.Clear;
        sql.Add('select * from doctos');
        sql.Add('where transacao =:p0 and nome like :p1');
        sql.Add('order by nome asc');
        params[0].AsString := 'VENDAS';
        params[1].AsString := trim(psnome.Text)+'%';
        prepare;
        open;
        vtipo:=1;
    end;
    if psdata.Date > 0 then
    with ibdm.IBQDoctos do
    begin
        close;
        sql.Clear;
        sql.Add('select * from doctos');
        sql.Add('where transacao =:p0 and data <= :p1');
        sql.Add('order by data desc');
        params[0].AsString := 'VENDAS';
        params[1].Asdate := psdata.Date;
        prepare;
        open;
        vtipo:=1;
    end;
    if vtipo = 0 then
    with ibdm.IBQDoctos do
      begin
          close;
          sql.Clear;
          sql.Add('select * from doctos');
          sql.Add('where transacao =:p0');
          sql.Add('order by data desc');
          params[0].AsString := 'VENDAS';
          prepare;
          open;
      end;
   if pcvcli.Text <> '' then
    with ibdm.IBQDoctos do
      begin
          close;
          sql.Clear;
          sql.Add('select * from doctos');
          sql.Add('where clifor =:p0');
          sql.Add('order by data desc');
          params[0].AsString := pcvcli.Text;;
          prepare;
          open;
      end;




    DBgrid1.Refresh;

end;

procedure TFrmPrincipal.BitBtn88Click(Sender: TObject);
begin
    Frmzoomvd := TFrmzoomvd.create(application);
    Frmzoomvd.vcontrole := ibdm.IBQDoctosCONTROLE.AsInteger;
    Frmzoomvd.vdocto := ibdm.IBQDoctosDOCUMENTO.AsString;
    Frmzoomvd.ShowModal;
    Frmzoomvd.Destroy;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
 //   Application.OnException:=MostraErro;
end;

Procedure TFrmPrincipal.Mostraerro(Sender: TObject; E: Exception);
    var
    mensagem: string;
    Pos1, Pos2: integer;
begin
   If Pos(UpperCase('is not a valid date'), UpperCase(E.Message)) <> 0 then

           showmessage('Data inválida, proceda a correção.')

   else

      if Pos(UpperCase('must have a value'), UpperCase(E.Message)) <> 0 then

           begin

              Pos1:=Pos('''', E.Message);

              mensagem:=E.Message;

              Delete(mensagem, Pos1, 1);



              Pos2:=Pos('''', mensagem);

              mensagem:=copy(E.Message, Pos1 + 1, Pos2 - Pos1);

              showmessage('É obrigatório o preenchimento do campo '+ mensagem + '.');

           end

   else

      If Pos(UpperCase('key violation'), UpperCase(E.Message)) <> 0 then

           showmessage('Houve violação de Chave.  Registro já incluido.')

   else

      If Pos(UpperCase('Input value'), UpperCase(E.Message)) <> 0 then

           showmessage('Campo preenchido com valor não válido. Procedaa correção.')

   else

      If Pos(UpperCase('is not a valid time'), UpperCase(E.Message)) <> 0 then

           showmessage('Hora inválida, proceda a correção.')

   else

      showmessage('Ocorreu o seguinte erro: '+UpperCase(E.Message));




end;
procedure TFrmPrincipal.BitBtn89Click(Sender: TObject);
begin
    ibdm.IBQParam.open;
    RElvendas := TRElvendas.create(Application);
    Relvendas.LBempresa.Caption:= ibdm.IBQParamUSUARIO.AsString;
    Relvendas.lbcnpj.Caption := ibdm.IBQParamCNPJ.AsString;
    Relvendas.lbperiodo.Caption := 'De '+Dateedit1.Text + ' até ' + Dateedit2.Text;
    with ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select Sum(valortotal) from doctos');
        sql.Add('Where data >= :p0 and data <= :p1 and condpag = :p2');
        params[0].AsDate := int(dateedit1.Date);
        params[1].AsDate := int(dateedit2.Date) + 0.99;
        params[2].AsString := 'AVISTA';
        open;
        Relvendas.vavi := Fields[0].AsCurrency;
        Close;
        sql.Clear;
        sql.Add('Select Sum(valortotal) from doctos');
        sql.Add('Where data >= :p0 and data <= :p1 and condpag <> :p2');
        params[0].AsDate := int(dateedit1.Date);
        params[1].AsDate := int(dateedit2.Date) + 0.99;
        params[2].AsString := 'AVISTA';
        open;
        Relvendas.vpra := Fields[0].AsCurrency;
        Close;
        sql.Clear;
        sql.Add('Select cast (data as date) data, documento, clifor, nome , valortotal,condpag  from doctos');
        sql.Add('Where data >= :p0 and data <= :p1');
        sql.Add('Order by documento');
        params[0].AsDate := int(dateedit1.Date);
        params[1].AsDate := int(dateedit2.Date) + 0.99;
        open;
    end;
    Relvendas.LBprz.Enabled := True;
    Relvendas.QRLabel8.Enabled := True;
    Relvendas.QuickRep1.Preview;
    Relvendas.Destroy;
end;

procedure TFrmPrincipal.BitBtn90Click(Sender: TObject);
  var
   impressora:string;
begin
//
{      Frmprinter := TFrmprinter.create(Application);
      Frmprinter.ShowModal;
      Frmprinter.Destroy;}
          impressora:=Getdefaultprintername();
          Setdefaultprinter('MP-4200');

      relteste:=Trelteste.create(Application);
      RELTESTE.Print;
      RELTESTE.Free;
      
      SetDefaultPrinter(impressora);
//
end;

procedure TFrmPrincipal.BitBtn91Click(Sender: TObject);
begin
  ExecAndWait('c:\ti\sisloja\Fiscal.exe', '', SW_SHOW);
end;

procedure TFrmPrincipal.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);

    var mensagem: string;
    Pos1, Pos2: integer;

begin

   If Pos(UpperCase('is not a valid date'), UpperCase(E.Message)) <> 0 then

           showmessage('Data inválida, proceda a correção.')

   else

      if Pos(UpperCase('must have a value'), UpperCase(E.Message)) <> 0 then

           begin

              Pos1:=Pos('''', E.Message);

              mensagem:=E.Message;

              Delete(mensagem, Pos1, 1);



              Pos2:=Pos('''', mensagem);

              mensagem:=copy(E.Message, Pos1 + 1, Pos2 - Pos1);

              showmessage('É obrigatório o preenchimento do campo '+ mensagem + '.');

           end

   else

      If Pos(UpperCase('key violation'), UpperCase(E.Message)) <> 0 then

           showmessage('Houve violação de Chave.  Registro já incluido.')

   else

      If Pos(UpperCase('Input value'), UpperCase(E.Message)) <> 0 then

           showmessage('Campo preenchido com valor não válido. Procedaa correção.')

   else

      If Pos(UpperCase('is not a valid time'), UpperCase(E.Message)) <> 0 then

           showmessage('Hora inválida, proceda a correção.')

   else

      showmessage('Ocorreu o seguinte erro: '+UpperCase(E.Message));

end;



procedure TFrmPrincipal.RxLabel2Click(Sender: TObject);
var
msg:integer;
begin
        msg := application.MessageBox
        ('Tem certeza que deseja  Limpar o Banco de dados ???','Confirmação',68);
        if msg = 6 then
        begin
            With ibdm.Cheka do
            begin
                Close;
                sql.Clear;
                sql.Add('Delete from doctos');
                Execquery;
            end;
            CommitWork;
            With ibdm.Cheka do
            begin
                Close;
                sql.Clear;
                sql.Add('Delete from movimento');
                Execquery;
            end;
            CommitWork;
            With ibdm.Cheka do
            begin
                Close;
                sql.Clear;
                sql.Add('Delete from comissoes');
                Execquery;
            end;
            CommitWork;
            With ibdm.Cheka do
            begin
                Close;
                sql.Clear;
                sql.Add('Delete from caixa');
                Execquery;
            end;
            CommitWork;
            With ibdm.Cheka do
            begin
                Close;
                sql.Clear;
                sql.Add('Delete from creceber');
                Execquery;
            end;
            CommitWork;
            With ibdm.Cheka do
            begin
                Close;
                sql.Clear;
                sql.Add('Delete from crecebidas');
                Execquery;
            end;
            CommitWork;
            With ibdm.Cheka do
            begin
                Close;
                sql.Clear;
                sql.Add('Delete from cpagar');
                Execquery;
            end;
            CommitWork;
            With ibdm.Cheka do
            begin
                Close;
                sql.Clear;
                sql.Add('Delete from cpagas');
                Execquery;
            end;
            CommitWork;
            ibdm.IBDB.Connected := False;
            ibdm.IBDB.Connected := True;
            Showmessage('Limpeza completada com sucesso !!');

        end;

end;

procedure TFrmPrincipal.BitBtn92Click(Sender: TObject);
  var
    vcontrole : integer;
    cNumeroCupom : string;
    vprod : integer;
    vprod1: string;
    vquantidade : currency;
    vtam : integer;
    vpreco : currency;
    vprtotal : currency;
    vdocto : string;
    vlocal : TbookMark;
    vcont : integer;
    vnovo : string;
    msg:integer;
begin
    if ibdm.IBQParamUSAECF.AsString = 'S' then
    begin
        ibdm.IBQDoctos.Close;
        ibdm.IBQDoctos.Open;
        ibdm.IBQDoctos.First;
        vcontrole := ibdm.IBQDoctosCONTROLE.AsInteger;
        cNumeroCupom := ibdm.ibqdoctos.FieldByname('documento').asstring;
        Showmessage('ATENÇÃO !, Cancelamento do Cupom nr. '+cNumeroCupom);
        msg := Application.MessageBox('Confirma o cancelamento ??'  , 'Confirmação' ,68);

        if msg = 6 then
        begin
          iRetorno := Bematech_FI_CancelaCupom();
          FrmPrincipal.Analisa_iRetorno();
          FrmPrincipal.Retorno_Impressora();
          showmessage('Cupom CANCELADO com sucesso.');
        end;

    end;
//        vcontrole := ibdm.IBQDoctosCONTROLE.AsInteger;
//        cNumeroCupom := ibdm.ibqdoctos.FieldByname('documento').asstring;
        Showmessage('ATENÇÃO !, Exclusão do Documento nr. '+cNumeroCupom);
        msg := Application.MessageBox('Confirma exclusão do documento ??'  , 'Confirmação' ,68);
        if msg = 6 then
        begin
            with ibdm.Deleta do
            begin
                close;
                sql.Clear;
                sql.Add('delete from doctos');
                sql.Add('where documento =:p0');
                params[0].AsString := cNumeroCupom;
                prepare;
                execquery;
            end;
            CommitWork;
            ibdm.IBQDoctos.Close;
            ibdm.IBQDoctos.Open;
            with ibdm.Deleta do
            begin
                close;
                sql.Clear;
                sql.Add('delete from movimento');
                sql.Add('where docto =:p0');
                params[0].AsString := cNumeroCupom;
                prepare;
                execquery;
            end;
            CommitWork;
            ibdm.IBQMovimento.Close;
            ibdm.IBQMovimento.Open;


            with ibdm.Deleta do
            begin
                close;
                sql.Clear;
                sql.Add('delete from caixa');
                sql.Add('where documento = :p0');
                params[0].AsString := cNumeroCupom;
                prepare;
                execquery;
            end;
            CommitWork;
            with ibdm.Deleta do
            begin
                close;
                sql.Clear;
                sql.Add('delete from creceber');
                sql.Add('where documento = :p0');
                params[0].AsString := cNumeroCupom;
                prepare;
                execquery;
            end;
            CommitWork;
            with ibdm.Deleta do
            begin
                close;
                sql.Clear;
                sql.Add('delete from crecebidas');
                sql.Add('where documento =:p0');
                params[0].AsString :=cNumeroCupom;
                prepare;
                execquery;
            end;
            commitwork;
            ibdm.IBQCrecebidas.Close;
            ibdm.IBQCrecebidas.Open;

            with ibdm.Grava do
            begin
                close;
                sql.Clear;
                sql.Add('delete from comissoes');
                sql.Add('where nota =:p0');
                params[0].AsString := cNumeroCupom;
                prepare;
                ExecQuery;
            end;
            CommitWork;
            ibdm.IBQComissoes.Close;
            ibdm.IBQComissoes.Open;

       end;


    {
          with ibdm.Deleta do
            begin
                Close;
                sql.Clear;
                sql.Add('Delete from movimento');
                sql.Add('Where contdoc = :p0');
                params[0].asinteger := vcontrole;
                ExecQuery;
            end;
            CommitWork;
            with ibdm.Deleta do
            begin
                Close;
                sql.Clear;
                sql.Add('Delete from doctos');
                sql.Add('Where controle = :p0');
                params[0].asinteger := vcontrole;
                ExecQuery;
            end;
            CommitWork;

          with ibdm.Deleta do
          begin
              close;
              sql.Clear;
              sql.Add('delete from caixa');
              sql.Add('where documento = :p0');
              params[0].AsString := cNumeroCupom;
              prepare;
              execquery;
          end;
          CommitWork;
          with ibdm.Deleta do
          begin
              close;
              sql.Clear;
              sql.Add('delete from creceber');
              sql.Add('where documento = :p0');
              params[0].AsString := cNumeroCupom;
              prepare;
              execquery;
          end;
          CommitWork;
          with ibdm.Deleta do
          begin
              close;
              sql.Clear;
              sql.Add('delete from crecebidas');
              sql.Add('where documento =:p0');
              params[0].AsString :=cNumeroCupom;
              prepare;
              execquery;
          end;
          commitwork;
          ibdm.IBQCrecebidas.Close;
          ibdm.IBQCrecebidas.Open;

          with ibdm.Grava do
          begin
              close;
              sql.Clear;
              sql.Add('delete from comissoes');
              sql.Add('where nota =:p0');
              params[0].AsINTEGER := STRTOINT(cNumeroCupom);
              prepare;
              ExecQuery;
          end;
          CommitWork;
          ibdm.IBQComissoes.Close;
          ibdm.IBQComissoes.Open;

          close;
          showmessage('Cupom CANCELADO com sucesso.');
        end;
    end;        }
     ////////////////////////////////////////////////////////////////////////////////

end;

procedure TFrmPrincipal.BitBtn93Click(Sender: TObject);
  var
  nvende:string;
  entdata:real;
  valent:currency;
  conta:integer;
  d1,v1,d2,v2,d3,v3,d4,v4,d5,v5,d6,v6:string;
begin



          ibdm.IBQParam.open;
          with ibdm.IBQUsuario do
          begin
            Open;
            Locate('codigo',ibdm.IBQDoctosVENDEDOR.AsInteger,[]);
            nvende := FieldByname('nome').asstring;
          end;


          MudaTamPapel(DMPAPER_USER, 215, 140);

          relcarne := Trelcarne.create(Application);
          relcarne.lbnome.Caption := ibdm.IBQParamUSUARIO.AsString;
          relcarne.qrlabel26.Caption := ibdm.IBQParamUSUARIO.AsString;
          relcarne.lbcnpj.Caption := 'CNPJ: '+ibdm.IBQParamCNPJ.AsString;
          relcarne.qrlabel41.Caption := 'CNPJ: '+ibdm.IBQParamCNPJ.AsString;
          relcarne.vtit.Caption := 'Documento nº: ' + ibdm.IBQDoctosDOCUMENTO.AsString;
          relcarne.qrlabel27.Caption := 'Documento nº: ' + ibdm.IBQDoctosDOCUMENTO.AsString;

          relcarne.QRLabel2.Caption := 'Data da Compra: ' + ibdm.IBQDoctosDATA.AsString;
          relcarne.QRLabel28.Caption := 'Data da Compra: ' + ibdm.IBQDoctosDATA.AsString;

          relcarne.QRLabel4.Caption := 'Cliente: ' + ibdm.IBQDoctosNOME.AsString;
          relcarne.QRLabel29.Caption := 'Cliente: ' + ibdm.IBQDoctosNOME.AsString;

          relcarne.QRLabel7.Caption := 'Vendedor: ' + nvende;
          relcarne.QRLabel30.Caption := 'Vendedor: ' + nvende;

          if Copy(ibdm.ibqDoctosCONDPAG.AsString,1,3) = 'ENT' then
            begin
                with ibdm.Consulta do
                begin
                    Close;
                    sql.Clear;
                    sql.Add('Select caixa.*,doctos.clifor from caixa,doctos');
                    sql.Add('Where doctos.documento=caixa.documento and caixa.documento = :p0 and historico like :p1');
                    params[0].AsString := ibdm.IBQDoctosDOCUMENTO.AsString;
                    params[1].AsString := 'ENTRADA%';
                    Open;
                    entdata := int(FieldByname('data').asdatetime);
                    valent  := FieldByname('valor').ascurrency;
                end;

            if int(ibdm.IBQDoctosDATA.asdatetime)=entdata then
            begin
                relcarne.QRLabel16.Caption := 'Entrada paga: ' + FormatCurr('0.00',valent );
                relcarne.QRLabel31.Caption := 'Entrada paga: ' + FormatCurr('0.00',valent );
            end
            else
            begin
                relcarne.QRLabel16.Caption := 'Ent. p/' + datetimetostr(entdata) + ': ' + FormatCurr('0.00',valent );
                relcarne.QRLabel31.Caption := 'Ent. p/' + datetimetostr(entdata) + ': ' + FormatCurr('0.00',valent );
            end;
            end;
          conta:=1;
          d1:='';
          d2:='';
          d3:='';
          d4:='';
          d5:='';
          d6:='';
          v1:='';
          v2:='';
          v3:='';
          v4:='';
          v5:='';
          v6:='';

          with ibdm.Consulta do
          begin
            Close;
            sql.Clear;
            sql.Add('Select * from crecebidas');
            sql.Add('Where documento=:p0 and parcela <> :p1');
            sql.Add('Order by vencimento');
            params[0].AsString := ibdm.IBQDoctosDOCUMENTO.AsString;
            Params[1].AsString := 'E';
            Open;
            While not eof do
            begin
                if conta=1 then
                begin
                    d1:=FieldByname('vencimento').asstring;
                    v1:=FormatCurr('0.00',FieldByname('valor').ascurrency)
                end;
                if conta=2 then
                begin
                    d2:=FieldByname('vencimento').asstring;
                    v2:=FormatCurr('0.00',FieldByname('valor').ascurrency)
                end;
                if conta=3 then
                begin
                    d3:=FieldByname('vencimento').asstring;
                    v3:=FormatCurr('0.00',FieldByname('valor').ascurrency)
                end;
                if conta=4 then
                begin
                    d4:=FieldByname('vencimento').asstring;
                    v4:=FormatCurr('0.00',FieldByname('valor').ascurrency)
                end;
                if conta=5 then
                begin
                    d5:=FieldByname('vencimento').asstring;
                    v5:=FormatCurr('0.00',FieldByname('valor').ascurrency)
                end;
                if conta=6 then
                begin
                    d6:=FieldByname('vencimento').asstring;
                    v6:=FormatCurr('0.00',FieldByname('valor').ascurrency)
                end;
                conta:=conta+1;
                next;
            end;

          end;

          with ibdm.Consulta do
          begin
            Close;
            sql.Clear;
            sql.Add('Select * from creceber');
            sql.Add('Where documento=:p0 and parcela <> :p1');
            sql.Add('Order by vencimento');
            params[0].AsString := ibdm.IBQDoctosDOCUMENTO.AsString;
            Params[1].AsString := 'E';
            Open;

            While not eof do
            begin
                if conta=1 then
                begin
                    d1:=FieldByname('vencimento').asstring;
                    v1:=FormatCurr('0.00',FieldByname('valororiginal').ascurrency)
                end;
                if conta=2 then
                begin
                    d2:=FieldByname('vencimento').asstring;
                    v2:=FormatCurr('0.00',FieldByname('valororiginal').ascurrency)
                end;
                if conta=3 then
                begin
                    d3:=FieldByname('vencimento').asstring;
                    v3:=FormatCurr('0.00',FieldByname('valororiginal').ascurrency)
                end;
                if conta=4 then
                begin
                    d4:=FieldByname('vencimento').asstring;
                    v4:=FormatCurr('0.00',FieldByname('valororiginal').ascurrency)
                end;
                if conta=5 then
                begin
                    d5:=FieldByname('vencimento').asstring;
                    v5:=FormatCurr('0.00',FieldByname('valororiginal').ascurrency)
                end;
                if conta=6 then
                begin
                    d6:=FieldByname('vencimento').asstring;
                    v6:=FormatCurr('0.00',FieldByname('valororiginal').ascurrency)
                end;
                conta:=conta+1;
                next;
            end;
          end;


          relcarne.QRLabel1.Caption := 'Vcto 1ª parc.: ' + d1;
          relcarne.QRLabel40.Caption := 'Vcto 1ª parc.: ' + d1;
          relcarne.QRLabel3.Caption := 'Valor: ' + v1;
          relcarne.QRLabel42.Caption := 'Valor: ' + v1;

          relcarne.QRLabel5.Caption := 'Vcto 2ª parc.: ' + d2;
          relcarne.QRLabel6.Caption := 'Valor: ' + v2;
          relcarne.QRLabel39.Caption := 'Vcto 2ª parc.: ' + d2;
          relcarne.QRLabel43.Caption := 'Valor: ' + v2;

          relcarne.QRLabel8.Caption := 'Vcto 3ª parc.: ' + d3;
          relcarne.QRLabel9.Caption := 'Valor: ' + v3;
          relcarne.QRLabel38.Caption := 'Vcto 3ª parc.: ' + d3;
          relcarne.QRLabel44.Caption := 'Valor: ' + v3;

          relcarne.QRLabel10.Caption := 'Vcto 4ª parc.: ' + d4;
          relcarne.QRLabel11.Caption := 'Valor: ' + v4;
          relcarne.QRLabel37.Caption := 'Vcto 4ª parc.: ' + d4;
          relcarne.QRLabel45.Caption := 'Valor: ' + v4;

          relcarne.QRLabel12.Caption := 'Vcto 5ª parc.: ' + d5;
          relcarne.QRLabel13.Caption := 'Valor: ' + v5;
          relcarne.QRLabel36.Caption := 'Vcto 5ª parc.: ' + d5;
          relcarne.QRLabel46.Caption := 'Valor: ' + v5;

          relcarne.QRLabel14.Caption := 'Vcto 6ª parc.: ' + d6;
          relcarne.QRLabel15.Caption := 'Valor: ' + v6;
          relcarne.QRLabel35.Caption := 'Vcto 6ª parc.: ' + d6;
          relcarne.QRLabel47.Caption := 'Valor: ' + v6;

          relcarne.QRLabel23.Caption := ibdm.IBQDoctosCONDPAG.AsString;
          with ibdm.Consulta do
              begin
                  close;
                  sql.Clear;
                  sql.Add('select * from movimento');
                  sql.Add('where docto =:p0');
                  params[0].AsString := ibdm.ibqdoctosDOCUMENTO.asstring;
                  prepare;
                  open;
              end;
          MudaTamPapel(DMPAPER_USER, 215, 140);
          relcarne.QuickRep1.font.name:='Draft 10Cpi';
          relcarne.QuickRep1.Preview;

     //     QrpToImg(relcarne.QuickRep1,'c:\ti\'+ ibdm.ibqdoctosDOCUMENTO.asstring);

          relcarne.Close;
          relcarne.Destroy;


end;

procedure TFrmPrincipal.ord0Click(Sender: TObject);
begin
    if edit4.Text = '' then
    With ibdm.IBQCreceber do
    begin
        close;
        sql.Clear;
        sql.Add('select * from creceber');
        sql.Add('order by historico,vencimento ASC');
        prepare;
        open;
    end
    else
    With ibdm.IBQCreceber do
    begin
        close;
        sql.Clear;
        sql.Add('select * from creceber');
        sql.Add('where historico like :p0');
        sql.Add('order by historico,vencimento ASC');
        params[0].AsString := '%'+Trim(edit4.Text)+'%';
        prepare;
        open;
    end;
    edit4.SetFocus;
    vrecord:=1;
end;

procedure TFrmPrincipal.ord1Click(Sender: TObject);
begin
    if edit3.Text = '' then
    With ibdm.IBQCreceber do
    begin
        close;
        sql.Clear;
        sql.Add('select * from creceber');
        sql.Add('order by documento,vencimento ASC');
        prepare;
        open;
    end
    else
    With ibdm.IBQCreceber do
    begin
        close;
        sql.Clear;
        sql.Add('select * from creceber');
        sql.Add('where documento like :p0');
        sql.Add('order by documento,vencimento ASC');
        params[0].AsString := Trim(edit3.Text)+'%';
        prepare;
        open;
    end;
    vrecord:=2;
    edit3.Setfocus;
end;


procedure TFrmPrincipal.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);

begin

    if ibdm.IBQCreceberVENCIMENTO.value< int(now) then
    begin
      Dbgrid2.Canvas.Font.Color:= clRed;
      DBgrid2.Canvas.Font.Style:= [fsbold];
    end;
    Dbgrid2.DefaultDrawDataCell(Rect, dbgrid2.columns[datacol].field, State);

end;

procedure TFrmPrincipal.DBGrid2KeyPress(Sender: TObject; var Key: Char);
var
  ncli,x:integer;
begin
    ncli:=0;
    with ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select nadic,clifor from doctos');
        sql.Add('Where documento = :p0');
        params[0].AsString := ibdm.IBQCreceberDOCUMENTO.Value;
        open;
        ncli:= Fields[1].AsInteger;
        label6.Caption := Fields[0].AsString;
        label6.Refresh;
    end;
    x:=1;
    lbp1.caption:='';
    lbp2.caption:='';

    with ibdm.consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select pagamento,pago from crecebidas');
        sql.Add('Where documento = :p0 and parcela = :p1');
        params[0].AsString := ibdm.IBQCreceberDOCUMENTO.Value;
        params[1].AsString := ibdm.IBQCreceberPARCELA.AsString;
        open;
        While not eof do
        begin
            if x=1 then
                lbp1.Caption := '1º Parcial: ' +Datetostr(Fields[0].asdatetime) + ' - ' + formatcurr('0.00',fields[1].ascurrency)
               else
                lbp2.Caption := '2º Parcial: ' +Datetostr(Fields[0].asdatetime) + ' - ' + formatcurr('0.00',fields[1].ascurrency);
            x:=x+1;
            next;
        end;
    end;
    with ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select obs from clientes');
        sql.Add('Where cast(codigo as integer) like :p0');
        params[0].Asstring := trim(inttostr(ncli))+'%';
        open;
        dspob.Text := fields[0].asstring;
        dspob.Refresh;
    end;
    lbp1.Refresh;
    lbp2.Refresh;
    with ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select sum(valordevido) from creceber');
        sql.Add('Where cliente = :p0 and vencimento < :p1');
        params[0].Asinteger := ncli;
        params[1].AsDate := int(now);
        open;
        lbrec1.Caption := 'Vencido  '+Fields[0].AsString;
        Close;
        sql.Clear;
        sql.Add('Select sum(valordevido) from creceber');
        sql.Add('Where cliente = :p0 and vencimento >= :p1');
        params[0].Asinteger := ncli;
        params[1].AsDate := int(now);
        open;
        lbrec2.Caption := 'A vencer '+Fields[0].AsString;
        lbrec1.Refresh;
        lbrec2.Refresh;
    end;

end;

procedure TFrmPrincipal.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
     dspobs.Text := ibdm.IBQClientesOBS.AsString;
    dspobs.Refresh;
end;

procedure TFrmPrincipal.BitBtn94Click(Sender: TObject);
begin
    ibdm.IBQParam.open;
    RElvendas := TRElvendas.create(Application);
    Relvendas.LBempresa.Caption:= ibdm.IBQParamUSUARIO.AsString;
    Relvendas.lbcnpj.Caption := ibdm.IBQParamCNPJ.AsString;
    Relvendas.lbperiodo.Caption := 'De '+Dateedit1.Text + ' até ' + Dateedit2.Text;
    with ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select Sum(valortotal) from doctos');
        sql.Add('Where data >= :p0 and data <= :p1 and condpag = :p2');
        params[0].AsDate := int(dateedit1.Date);
        params[1].AsDateTime := StrToDateTime(DateEdit2.Text+' 23:59:59');
        params[2].AsString := 'AVISTA';
        open;
    //    Relvendas.vavi := Fields[0].AsCurrency;
     {   Close;
        sql.Clear;
        sql.Add('Select Sum(valortotal) from doctos');
        sql.Add('Where data >= :p0 and data <= :p1 and condpag <> :p2');
        params[0].AsDate := int(dateedit1.Date);
        params[1].AsDate := int(dateedit2.Date) + 0.99;
        params[2].AsString := 'AVISTA';
        open;
        Relvendas.vpra := Fields[0].AsCurrency;     }
        Close;
        sql.Clear;
        sql.Add('Select cast (data as date) data, documento, clifor, nome , valortotal,condpag  from doctos');
        sql.Add('Where data >= :p0 and data <= :p1 and condpag = :p2');
        sql.Add('Order by documento');
        params[0].AsDate := int(dateedit1.Date);
        params[1].AsDateTime := StrToDateTime(DateEdit2.Text+' 23:59:59');
        params[2].AsString := 'AVISTA';
        open;
    end;
    Relvendas.QRSysData1.Text := 'Relatório de Vendas a vista';
    Relvendas.QuickRep1.Preview;
    Relvendas.Destroy;
end;

procedure TFrmPrincipal.BitBtn95Click(Sender: TObject);
begin
    ibdm.IBQParam.open;
    RelvendasP := TRelvendasP.create(Application);
    RelvendasP.LBempresa.Caption:= ibdm.IBQParamUSUARIO.AsString;
    RelvendasP.lbcnpj.Caption := ibdm.IBQParamCNPJ.AsString;
    RelvendasP.lbperiodo.Caption := 'De '+Dateedit1.Text + ' até ' + Dateedit2.Text;
    with ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select Sum(valortotal) from doctos');
        sql.Add('Where data >= :p0 and data <= :p1 and condpag <> :p2');
        params[0].AsDate := int(dateedit1.Date);
        params[1].AsDateTime := (dateedit2.Date) + 0.99;
        params[2].AsString := 'AVISTA';
        open;
        if chkrelv.Checked = true then
        RelvendasP.vavi := Fields[0].AsCurrency;
        Close;
        sql.Clear;
        sql.Add('Select nome,clifor,data,documento,valortotal from doctos');
        sql.Add('Where data >= :p0 and data <= :p1 and condpag <> :p2');
        sql.Add('Order by nome,clifor,data,documento');
        params[0].AsDate := int(dateedit1.Date);
        params[1].AsDatetime := (dateedit2.Date) + 0.99;
        params[2].AsString := 'AVISTA';
        open;

   end;
   if chkrelv.Checked =true then
   begin
    RelvendasP.tipo:=1 ;
    RelvendasP.QRLabel8.Enabled := False;
   end
    else
   begin
    RelvendasP.tipo:=2;
    RelvendasP.QRDBText4.Enabled := False;
   end;
   RelvendasP.QRSysData1.Text := 'Relatório de Vendas a Prazo';
   RelvendasP.QuickRep1.Preview;
   RelvendasP.Destroy;

end;

procedure TFrmPrincipal.BitBtn96Click(Sender: TObject);
begin
    ibdm.IBQParam.open;
    RelResVende := TRelResVende.create(Application);
    RelResVende.LBempresa.Caption:= ibdm.IBQParamUSUARIO.AsString;
    RelResVende.lbcnpj.Caption := ibdm.IBQParamCNPJ.AsString;
    RelResVende.lbperiodo.Caption := 'De '+Dateedit1.Text + ' até ' + Dateedit2.Text;
    with ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select doctos.vendedor, usuarios.nome from doctos,usuarios');
        sql.Add('Where usuarios.codigo=doctos.vendedor and data >= :p0 and data <= :p1 ');
        sql.Add('Group by vendedor,nome');
        params[0].AsDate := int(dateedit1.Date);
        params[1].AsDate := int(dateedit2.Date) + 0.99;
        open;

   end;
   RelResVende.QRSysData1.Text := 'Resumo de Vendas por Vendedor';
   RelResVende.dti := int(dateedit1.Date);
   RelResVende.dtf := int(dateedit2.Date) + 0.99;
   RelResVende.QuickRep1.Preview;
   RelResVende.Destroy;

end;

procedure TFrmPrincipal.BitBtn97Click(Sender: TObject);
begin
   vclica:=False;
   edit3.text := ibdm.IBQDoctosDOCUMENTO.AsString;
   vclica:=True;
   TS2.Show ;
end;

procedure TFrmPrincipal.BitBtn98Click(Sender: TObject);
begin
    if (dateedit1.Date > 0) and (dateedit1.Date<=dateedit2.Date) then
    begin
        ibdm.IBQParam.Open;
        with ibdm.Consulta do
        begin
            Close;
            sql.Clear;
            sql.Add('select produto,valorunitario,descricao,ref, sum(quantidade) qtd ,  sum(quantidade*valorunitario) valor from movimento');
            sql.Add('Where data >= :p0 and data <= :p1');
            sql.Add('Group by produto,valorunitario,descricao,ref');
            sql.Add('Order by produto,valorunitario');
            Params[0].AsDate := dateedit1.Date;
            params[1].AsDate := dateedit2.Date;
            Open;
        end;
        Relitvend1 := TRelitvend1.create(Application);
        Relitvend1.LBempresa.Caption := ibdm.IBQParamUSUARIO.AsString;
        Relitvend1.lbcnpj.Caption := ibdm.IBQParamCNPJ.AsString;
        Relitvend1.lbperiodo.Caption := 'De: '+dateedit1.Text+' até: '+dateedit2.Text;

        Relitvend1.QuickRep1.Preview;
        Relitvend1.Destroy;

    end
    Else
    Showmessage('Problemas na informação de datas !!');
end;

procedure TFrmPrincipal.BitBtn99Click(Sender: TObject);
begin
    if (dateedit1.Date > 0) and (dateedit1.Date<=dateedit2.Date) then
    begin
        ibdm.IBQParam.Open;
        with ibdm.Qitvenda do
        begin
            Close;
            sql.Clear;
            sql.Add('select data,produto,valorunitario,descricao, sum(quantidade) qtd , sum(quantidade*valorunitario) valor from movimento');
            sql.Add('Where data >= :p0 and data <= :p1');
            sql.Add('Group by data,produto,valorunitario,descricao');
            sql.Add('Order by data');
            Params[0].AsDate := dateedit1.Date;
            params[1].AsDate := dateedit2.Date;
            Open;
        end;
        Relitvend2 := TRelitvend2.create(Application);
        Relitvend2.LBempresa.Caption := ibdm.IBQParamUSUARIO.AsString;
        Relitvend2.lbcnpj.Caption := ibdm.IBQParamCNPJ.AsString;
        Relitvend2.lbperiodo.Caption := 'De: '+dateedit1.Text+' até: '+dateedit2.Text;

        Relitvend2.QuickRep1.Preview;
        Relitvend2.Destroy;

    end
    Else
    Showmessage('Problemas na informação de datas !!');
end;

procedure TFrmPrincipal.BitBtn100Click(Sender: TObject);
begin
    FrmPrestacoes1:=TFrmPrestacoes1.create(Application);
    FrmPrestacoes1.edvlmerc.Value := 0;
    FrmPrestacoes1.edvlmerc.enabled := True;
    FrmPrestacoes1.BitBtn1.Visible := False;
    FrmPrestacoes1.BitBtn4.Visible := False;
    FrmPrestacoes1.BtnFechar.Enabled := True;
    FrmPrestacoes1.simula := 1;
    FrmPrestacoes1.vtipo := vtipo;
    FrmPrestacoes1.lbnome := 'Simulação';
    FRmPrestacoes1.qcontrole := 0;
    FRmPrestacoes1.lista := ibdm.IBQParamLISTA.AsInteger;
    FrmPrestacoes1.showmodal;
    FrmPrestacoes1.close;
    if FrmPrestacoes1.vfim = true then
        Close;
    FrmPrestacoes1.destroy;
end;

procedure TFrmPrincipal.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ncli,x:integer;
begin
    ncli:=0;
    with ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select nadic,clifor from doctos');
        sql.Add('Where documento = :p0');
        params[0].AsString := ibdm.IBQCreceberDOCUMENTO.Value;
        open;
        ncli:= Fields[1].AsInteger;
        label6.Caption := Fields[0].AsString;
        label6.Refresh;
    end;
    x:=1;
    lbp1.caption:='';
    lbp2.caption:='';

    with ibdm.consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select pagamento,pago from crecebidas');
        sql.Add('Where documento = :p0 and parcela = :p1');
        params[0].AsString := ibdm.IBQCreceberDOCUMENTO.Value;
        params[1].AsString := ibdm.IBQCreceberPARCELA.AsString;
        open;
        While not eof do
        begin
            if x=1 then
                lbp1.Caption := '1º Parcial: ' +Datetostr(Fields[0].asdatetime) + ' - ' + formatcurr('0.00',fields[1].ascurrency)
               else
                lbp2.Caption := '2º Parcial: ' +Datetostr(Fields[0].asdatetime) + ' - ' + formatcurr('0.00',fields[1].ascurrency);
            x:=x+1;
            next;
        end;
    end;
    with ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select obs from clientes');
        sql.Add('Where cast(codigo as integer) like :p0');
        params[0].Asstring := trim(inttostr(ncli))+'%';
        open;
        dspob.Text := fields[0].asstring;
        dspob.Refresh;
    end;
    lbp1.Refresh;
    lbp2.Refresh;
    with ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select sum(valordevido) from creceber');
        sql.Add('Where cliente = :p0 and vencimento < :p1');
        params[0].Asinteger := ncli;
        params[1].AsDate := int(now);
        open;
        lbrec1.Caption := 'Vencido  '+Fields[0].AsString;
        Close;
        sql.Clear;
        sql.Add('Select sum(valordevido) from creceber');
        sql.Add('Where cliente = :p0 and vencimento >= :p1');
        params[0].Asinteger := ncli;
        params[1].AsDate := int(now);
        open;
        lbrec2.Caption := 'A vencer '+Fields[0].AsString;
        lbrec1.Refresh;
        lbrec2.Refresh;
    end;

end;
procedure TFrmPrincipal.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ncli,x:integer;
begin
    ncli:=0;
    with ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select nadic,clifor from doctos');
        sql.Add('Where documento = :p0');
        params[0].AsString := ibdm.IBQCreceberDOCUMENTO.Value;
        open;
        ncli:= Fields[1].AsInteger;
        label6.Caption := Fields[0].AsString;
        label6.Refresh;
    end;
    x:=1;
    lbp1.caption:='';
    lbp2.caption:='';

    with ibdm.consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select pagamento,pago from crecebidas');
        sql.Add('Where documento = :p0 and parcela = :p1');
        params[0].AsString := ibdm.IBQCreceberDOCUMENTO.Value;
        params[1].AsString := ibdm.IBQCreceberPARCELA.AsString;
        open;
        While not eof do
        begin
            if x=1 then
                lbp1.Caption := '1º Parcial: ' +Datetostr(Fields[0].asdatetime) + ' - ' + formatcurr('0.00',fields[1].ascurrency)
               else
                lbp2.Caption := '2º Parcial: ' +Datetostr(Fields[0].asdatetime) + ' - ' + formatcurr('0.00',fields[1].ascurrency);
            x:=x+1;
            next;
        end;
    end;
    with ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select obs from clientes');
        sql.Add('Where cast(codigo as integer) like :p0');
        params[0].Asstring := trim(inttostr(ncli))+'%';
        open;
        dspob.Text := fields[0].asstring;
        dspob.Refresh;
    end;
    lbp1.Refresh;
    lbp2.Refresh;
    with ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select sum(valordevido) from creceber');
        sql.Add('Where cliente = :p0 and vencimento < :p1');
        params[0].Asinteger := ncli;
        params[1].AsDate := int(now);
        open;
        lbrec1.Caption := 'Vencido  '+Fields[0].AsString;
        Close;
        sql.Clear;
        sql.Add('Select sum(valordevido) from creceber');
        sql.Add('Where cliente = :p0 and vencimento >= :p1');
        params[0].Asinteger := ncli;
        params[1].AsDate := int(now);
        open;
        lbrec2.Caption := 'A vencer '+Fields[0].AsString;
        lbrec1.Refresh;
        lbrec2.Refresh;
    end;
end;
procedure TFrmPrincipal.BitBtn101Click(Sender: TObject);
begin
    FrmLimpeza := TFrmLimpeza.create(application);
    FrmLimpeza.ShowModal;
    FrmLimpeza.Destroy;
end;

procedure TFrmPrincipal.BitBtn102Click(Sender: TObject);
    var
    controle:integer;
begin
    controle:=ibdm.IBQCreceberCONTROLE.AsInteger;

    FrmAvisos := TFrmAvisos.create(Application);
    FrmAvisos.ShowModal;
    FrmAvisos.Destroy;

    ibdm.IBQCreceber.locate('controle',controle,[]);
    DBgrid2.Refresh;

end;

procedure TFrmPrincipal.BitBtn103Click(Sender: TObject);
begin
    FRmEdClientes := TFrmEdClientes.create(Application);
    FrmEdClientes.vnovo := False;
    FrmEdClientes.Edcodigo.Text := IBDM.ibqclientescodigo.value;
    FrmEdClientes.Ednome.Text := ibdm.IBQClientesNOME.Value;
    FrmEdClientes.EdEndereco.Text := ibdm.IBQClientesENDERECO.Value;
    FrmEdClientes.EdCep.Text := ibdm.IBQClientesCEP.Value;
    FrmEdClientes.EdBairro.Text := ibdm.IBQClientesBAIRRO.Value;
    FrmEdClientes.EdCidade.Text := ibdm.IBQClientesCIDADE.Value;
    FrmEdClientes.EdUf.Text := ibdm.IBQClientesUF.Value;
    FrmEdClientes.EdFone.Text := ibdm.IBQClientesFONE.Value;
    FrmEdClientes.EdCelular.Text := ibdm.IBQClientesCELULAR.Value;
    FrmEdClientes.EdEmail.Text := ibdm.IBQClientesEMAIL.Value;
    FrmEdClientes.EdRefComercial.Text := ibdm.IBQClientesREFCOMERCIAL.Value;
    FrmEdClientes.EdRefBancaria.Text := ibdm.IBQClientesREFBANCARIA.Value;
    FrmEdClientes.EdRg.Text := ibdm.IBQClientesRG.Value;
    FrmEdClientes.EdCpf.Text := ibdm.IBQClientesCPF.Value;
    FrmEdClientes.EdNascimento.Date := ibdm.IBQClientesDTNASC.value;
    FrmEdClientes.EdObs.Text := ibdm.IBQClientesOBS.Value;
    FrmEdClientes.edcadastro.Date := ibdm.IBQClientesCADASTRO.AsDateTime;
    Frmedclientes.edptoref.text := ibdm.IBQClientesPTOREF.Value;
    Frmedclientes.edblp.Text := ibdm.ibqclientesnrdiasatrazo.asstring;
    Frmedclientes.edconj_trab.Text := ibdm.IBQClientesCONJ_TRAB.AsString;
    if ibdm.IBQClientesTPORES.AsString = 'A' then
        Frmedclientes.edtpores.Text := 'Alugada'
        else
        Frmedclientes.edtpores.Text := 'Própria';
    frmedclientes.edvlralu.Value := ibdm.IBQClientesVLRALU.AsCurrency;
    frmedclientes.edtmpres.Text := ibdm.IBQClientesTMPRES.Value;
    frmedclientes.edcompro.Text := ibdm.IBQClientesCOMPRO.Value;
    frmedclientes.edtpcontato.Text := ibdm.IBQClientesTPCONTATO.Value;
    frmedclientes.edfax.Text := ibdm.IBQClientesFAX.AsString;
    frmedclientes.edorgao.Text := ibdm.IBQClientesORGAOEXP.Value;
    frmedclientes.eddtrg.Date := ibdm.IBQClientesDATARG.AsDateTime;
    frmedclientes.dtnccon.Date := ibdm.IBQClientesDTNCONJ.AsDateTime;
    frmedclientes.Trab.Text := ibdm.IBQClientesEMPRESA.AsString;
    frmedclientes.Fone.Text := ibdm.ibqclientesfoneemp.AsString;
    frmedclientes.edendemp.Text := ibdm.IBQClientesENDEMP.Value;
    frmedclientes.edendemp.Text := ibdm.IBQClientesENDEMP.Value;
    frmedclientes.edempcid.Text := ibdm.IBQClientesCIDEMP.Value;
    frmedclientes.edempcep.Text := ibdm.IBQClientesCEPEMP.Value;
    frmedclientes.edempuf.Text  := ibdm.IBQClientesUFEMP.Value;
    frmedclientes.edoutrend.Value := ibdm.IBQClientesOUTREND.Value;

    FrmEdClientes.EdConjuge.Text := ibdm.IBQClientesCONJUGE.AsString;
    FrmEdClientes.NPai.Text := ibdm.IBQClientesNPAI.AsString;
    FrmEdClientes.NMae.Text := ibdm.IBQClientesNMAE.AsString;
    FrmEdClientes.Aut1.Text := ibdm.IBQClientesAUT1.AsString;
    FrmEdClientes.Aut2.Text := ibdm.IBQClientesAUT2.AsString;


    FrmEdClientes.Salario.AsCurrency := ibdm.IBQClientesSALARIO.AsCurrency;
    FrmEdClientes.Cargo.Text := ibdm.IBQClientesCARGo.AsString;
    frmedclientes.edlimcred.Value := ibdm.IBQClientesLIMCRED.Value;
    frmedclientes.edbl.Text := ibdm.IBQClientesBL.Value;
    frmedclientes.enrdias.asinteger := ibdm.IBQClientesNRDIASBL.AsInteger;
    if frmprincipal.vtipo<>'M' then
    begin
        frmedclientes.edlimcred.Enabled := False;
        frmedclientes.edbl.Enabled := False;
        frmedclientes.enrdias.Enabled := False;
        frmedclientes.edblp.Enabled := False;
    end;
    Frmedclientes.edauto.Enabled := False;
    Frmedclientes.Btngravar.Enabled := False;
    FrmEdClientes.ShowModal;
    FrmEdClientes.Destroy;
end;

procedure TFrmPrincipal.Button6Click(Sender: TObject);

begin
  MsgVoz(Edit20.text);
end;

procedure TFrmPrincipal.BitBtn104Click(Sender: TObject);
    var
    cliente:integer;
    controle:integer;
    msg:string;
begin

    controle := ibdm.IBQCreceberCONTROLE.Value;
    cliente := ibdm.IBQCreceberCLIENTE.Value;
    ibdm.IBTTemprec.close;
    ibdm.IBTTemprec.EmptyTable;

    With ibdm.Cheka do
    begin
        Close;
        sql.Clear;
        sql.Add('Insert into temprec Select creceber.* ,:p0,:p1 from creceber where creceber.cliente = :p2 order by creceber.vencimento');
        params[0].AsString := ' ' ;
        params[1].AsCurrency := 0;
        params[2].asInteger := cliente;
        Execquery;
    end;
    ibdm.IBTTemprec.open;

    FrmPagMult := TFrmPagMult.create(Application);
    FrmPagMult.ShowModal;
    FrmPagMult.Destroy;
    ibdm.IBQCreceber.locate('controle',controle+1,[]);
    DBGrid2.Refresh;
end;

procedure TFrmPrincipal.BitBtn105Click(Sender: TObject);
    var
    cliente:string;
Begin
    cliente := ibdm.IBQClientesCODIGO.AsString;
    with ibdm.IBTspcpesq do
    begin
        Close;
        Filtered := False;
        filter := 'Cliente='+QuotedStr(cliente);
        filtered := True;
        Open;
    end;
    FrmSPCPesq := TFrmSPCPesq.Create(Application);
    FrmSPCPesq.cliente := cliente;
    FrmSPCPesq.lbcliente.Caption := Trim(ibdm.IBQClientesNOME.AsString)+' ('+cliente+')';
    FrmSPCPesq.ShowModal;
    FrmSPCPesq.Destroy;
end;

procedure TFrmPrincipal.BitBtn106Click(Sender: TObject);
    var
    cliente:string;
Begin

    cliente := RetZero(ibdm.IBQCreceberCLIENTE.AsString,5); //ibdm.IBQClientesCODIGO.AsString;
    with ibdm.IBTspcpesq do
    begin
        Close;
        Filtered := False;
        filter := 'Cliente='+QuotedStr(cliente);
        filtered := True;
        Open;
    end;
    FrmSPCPesq := TFrmSPCPesq.Create(Application);
    FrmSPCPesq.cliente := cliente;
    FrmSPCPesq.lbcliente.Caption := Trim(ibdm.IBQCreceberHISTORICO.AsString)+' ('+cliente+')';
    FrmSPCPesq.ShowModal;
    FrmSPCPesq.Destroy;
end;




procedure TFrmPrincipal.BitBtn107Click(Sender: TObject);
    var
    cliente:string;
Begin
    if ibdm.IBQDoctosCLIFOR.Value > 0 then
    begin
        cliente := RetZero(ibdm.IBQDoctosCLIFOR.AsString,5);
        with ibdm.IBTspcpesq do
        begin
            Close;
            Filtered := False;
            filter := 'Cliente='+QuotedStr(cliente);
            filtered := True;
            Open;
        end;
        FrmSPCPesq := TFrmSPCPesq.Create(Application);
        FrmSPCPesq.cliente := cliente;
        FrmSPCPesq.lbcliente.Caption := Trim(ibdm.IBQDoctosNOME.AsString)+' ('+cliente+')';
        FrmSPCPesq.ShowModal;
        FrmSPCPesq.Destroy;
    end
    Else
        Showmessage('Tipo de venda que não gera esta pesquisa !!');    
end;

procedure TFrmPrincipal.BitBtn108Click(Sender: TObject);
begin
  if vtipo = 'M' then
  begin
    FrmZoom := TFrmZoom.create(Application);
    FrmZoom.ShowModal;
    FrmZoom.Destroy;
  end;
end;

procedure TFrmPrincipal.btnjClick(Sender: TObject);
  var
  vcli:integer;
  msg:string;
  vsoma:currency;
begin
  if vtipo = 'M' then
  begin
     vcli := ibdm.IBQClientesCODIGO.AsInteger;
     with ibdm.Q1 do
     begin
      Close;
      sql.Clear;
      sql.Add('Select cast(min(data) as date) from doctos');
      sql.Add('Where clifor = :p0');
      params[0].AsInteger := vcli;
      Open;
      msg := '1ª compra: '+Fields[0].asstring;
     end;
     with ibdm.Q1 do
     begin
      Close;
      sql.Clear;
      sql.Add('Select max(data) from doctos');
      sql.Add('Where clifor = :p0');
      params[0].AsInteger := vcli;
      Open;
      msg := msg + ' / ult. compra: '+Fields[0].asstring;
     end;
     with ibdm.Q1 do
     begin
      Close;
      sql.Clear;
      sql.Add('Select sum(valortotal) from doctos');
      sql.Add('Where clifor = :p0');
      params[0].AsInteger := vcli;
      Open;
      msg := msg + #13 +'Valor total em compras: '+FormatCurr('0.00',Fields[0].ascurrency);
     end;
     with ibdm.Q1 do
     begin
      Close;
      sql.Clear;
      sql.Add('Select doctos.documento,(select sum(valor) from caixa where caixa.documento=doctos.documento and transacao=4)');
      sql.Add('from doctos where doctos.clifor=:p0');
      params[0].AsInteger := vcli;
      Open;
      vsoma:=0;
      While not eof do
      begin
        vsoma:=vsoma+Fields[1].ascurrency;
        next;
      end;
      msg := msg + #13 +'Valor de juros pagos: '+FormatCurr('0.00',vsoma);
     end;


     Showmessage(msg);
  end;

end;

procedure TFrmPrincipal.Button7Click(Sender: TObject);
    var
    cliente:string;
Begin
    cliente := ibdm.IBQClientesCODIGO.AsString;
    edit19.Text := cliente;
    TS8.Show;
    Bitbtn50.Click;

end;

procedure TFrmPrincipal.BitBtn109Click(Sender: TObject);
  var
  vcliente:string;
begin
  vcliente:=ibdm.IBQClientesCODIGO.AsString;
  pcvcli.Text:=vcliente;
  TS1.Show;
  Bitbtn87.Click;

end;

procedure TFrmPrincipal.btn1Click(Sender: TObject);
  var
    vdata:Tdatetime;
    vcontrole:integer;
    vvala,vvalp,vvalr:currency;
begin
    if (dateedit1.Date > 0) and (dateedit1.Date<=dateedit2.Date) then
    begin
          with ibdm.Cheka do
          begin
            close;
            sql.Clear;
            sql.Add('delete from temprec');
            execquery;
          end;
          CommitWork;
          with ibdm.IBTTemprec do
          begin
            vdata:=dateedit1.Date;
            vcontrole:=1;
            close;
            open;
            While vdata<=dateedit2.Date do
            begin
              vvala:=0;
              vvalp:=0;
              vvalr:=0;
              with ibdm.Consulta do
              begin
                Close;
                sql.Clear;
                sql.Add('Select condpag,sum(valortotal) from doctos');
                sql.Add('where data=:p0');
                sql.Add('Group by condpag');
                params[0].AsDate:=vdata;
                Open;
                While not eof do
                  begin
                    IF Fields[0].AsString = 'AVISTA' then
                      vvala:=vvala+Fields[1].AsCurrency
                      else
                      vvalp:=vvalp+Fields[1].AsCurrency;
                    Next;
                  end;
                Close;
                sql.Clear;
                sql.Add('Select SUM(valor) from caixa');
                sql.Add('Where Cast(data as date) = :p0 and transacao = :p1');
                params[0].AsDate:=vdata;
                params[1].AsInteger:=3;
                Open;
                vvalr:=vvalr+fields[0].AsCurrency;
              end;

              ibdm.IBTTemprec.insert ;
              ibdm.IBTTemprec.FieldByname('controle').asinteger:=vcontrole;
              ibdm.IBTTemprec.Fieldbyname('vencimento').asdatetime:=vdata;
              ibdm.IBTTemprec.FieldByname('valororiginal').ascurrency:=vvala;
              ibdm.IBTTemprec.FieldByname('valordevido').ascurrency:=vvalp;
              ibdm.IBTTemprec.FieldByname('totalpago').ascurrency:=vvalr;
              ibdm.IBTTemprec.Post;
              vcontrole:=vcontrole+1;
              vdata:=vdata+1;
            end;
          end;
          ibdm.IBTTemprec.close;
          ibdm.IBTTemprec.Open;
          ibdm.IBTTemprec.First;
          Relmovdia:=TRelmovdia.create(Application);
          Relmovdia.llbdata.Caption:= 'De: '+dateedit1.Text+ ' até: '+dateedit2.Text;
          Relmovdia.Preview;
          Relmovdia.Free;

    end
      else
        Showmessage('Informe as datas !');
end;

procedure TFrmPrincipal.DBGrid3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     dspobs.Text := ibdm.IBQClientesOBS.AsString;
    dspobs.Refresh;

end;

procedure TFrmPrincipal.DBGrid3CellClick(Column: TColumn);
begin
     dspobs.Text := ibdm.IBQClientesOBS.AsString;
    dspobs.Refresh;

end;

procedure TFrmPrincipal.btn2Click(Sender: TObject);
begin
  lbl1.Caption:='...';
  edit3.Text:='';
  edit4.Text:='';

end;

procedure TFrmPrincipal.BitBtn110Click(Sender: TObject);
    var
    cliente:string;
Begin
    cliente := ibdm.IBQClientesCODIGO.AsString;
    edit19.Text := cliente;
    TS8.Show;
    Bitbtn50.Click;
end;

procedure TFrmPrincipal.DBGrid3TitleClick(Column: TColumn);
var
  nmColSel: string;
  idColSel: Integer;
begin
  nmColSel := Column.FieldName;
  idColSel := Column.Index;

  with DBGrid3 do
  begin
 //   Columns[idColSel].FieldName := Columns[0].FieldName;
 //   Columns[0].FieldName := nmColSel;
  end;
end;
procedure TFrmPrincipal.BitBtn111Click(Sender: TObject);
  var
  arquivo:TextFile;
  linha,vmodo,vdocto,vhisto,pedaco:string;
  vdata:TDateTime;
  vvalor:Currency;
  vcontador,vx,vz,ax:Integer;
  vok:Boolean;
  tipo:string;
begin
  AssignFile(arquivo,'c:\ti\sisloja\dados\chkvendas.txt');
  Rewrite(arquivo);
  WriteLN(arquivo,'SISLOJA - Verificação de dados de vendas - de: '+dateedit1.text+' ate: '+dateedit2.text);
  Writeln(arquivo,'----------------------------------------------------------------------------');
  if  dateedit1.text = '__/__/____' then
    DateEdit1.Date:= StrToDate('01/01/2000');
  if  dateedit2.text = '__/__/____' then
    DateEdit2.Date:= Int(Now);
  Writeln(arquivo,'Verificando registro de vendas...');
  with IBDM.Consulta do
    begin
        Close;
      SQL.Clear;
      SQL.Add('Select * from doctos');
      SQL.Add('Where data>=:p0 and data<=:p1');
      SQL.Add('Order by controle');
      params[0].asdate:=Int(DateEdit1.Date);
      Params[1].AsDate:=Int(DateEdit2.Date);
      Open;
      while not Eof do
      begin
        tipo:='';
        vok:=True;
        vdata:=FieldByname('data').AsDateTime;
        vdocto:=FieldByname('documento').AsString;
        vvalor:=Fieldbyname('valortotal').AsCurrency;
        vmodo:=FieldByname('condpag').AsString;
        vhisto:=FieldByname('nome').AsString;
        if vmodo='AVISTA' then
        begin
          with IBDM.Q1 do
          begin
            Close;
            SQL.Clear;
            SQL.Add('Select count(0) from caixa');
            SQL.Add('Where documento=:p0');
            Params[0].AsString:=vdocto;
            Open;
            if Fields[0].AsInteger=0 then
            begin
              vok:=False;
              tipo:=tipo+'AV sem Caixa ';
            end;

          end;
        end
        else
        begin
          if Copy(vmodo,1,3)='ENT' then
          with IBDM.q2 do
          begin
            Close;
            SQL.Clear;
            SQL.Add('Select count(0) from caixa');
            SQL.Add('Where historico like :p0 and documento = :p1');
            Params[0].AsString:='ENTRADA%';
            Params[1].AsString :=vdocto;
            Open;
            if Fields[0].AsInteger=0 then
            begin
              vok:=False;
              tipo:=tipo+'-ET sem caixa ';
            end
          end;
          vcontador:=Length(vmodo);
          pedaco:='';
          vz:=0;
          if vcontador>0 then
          begin
            for vx := 1 to vcontador do
            begin
              if Copy(vmodo,vx,1)='-' then
              begin
                if pedaco <> 'ENT' then
                begin
                  if ((Copy(pedaco,1,1) = '0') or (Copy(pedaco,1,1) = '1')) then
                  begin
                    vz:=vz+1;
                  end;
                end;
                pedaco:='';
              end
              else
                pedaco:=pedaco+Copy(vmodo,vx,1);
            end;
            if vz>0 then
            begin
              with IBDM.q2 do
              begin
                Close;
                SQL.Clear;
                SQL.Add('Select count(0) from creceber');
                SQL.Add('Where documento=:p0');
                Params[0].AsString := vdocto;
                Open;
                ax:=Fields[0].AsInteger;
                if ax < vz then
                begin
                  Close;
                  SQL.Clear;
                  SQL.Add('Select count(0) from crecebidas');
                  SQL.Add('Where documento=:p0');
                  Params[0].AsString := vdocto;
                  Open;
                  IF (Fields[0].AsInteger+ax) < vz then
                  begin
                    vok:=False;
                    tipo:=tipo+'-Qt Prest ';
                  end;

                end;
              end;
            end;
          end;

        end;
        if vok=False then
        begin
          writeln(arquivo,'Doc: '+ vdocto+ ' Data: ' + datetostr(vdata)+ ' Cliente: '+vhisto+' / '+tipo);
        end;
        Next;
      end;
      Writeln(arquivo,'Verificando lctos no caixa duplos...');

      with IBDM.Consulta do
        begin
          Close;
          SQL.Clear;
          SQL.Add('Select data,documento,historico,parcela,count(0) from caixa');
          SQL.Add('Where data>=:p0 and data<=:p1');
          SQL.Add('Group by data,documento,historico,parcela');
          SQL.Add('Order by 5 desc');
          params[0].asdate:=Int(DateEdit1.Date);
          Params[1].AsDate:=Int(DateEdit2.Date);
          Open;
          while not Eof do
          begin
            IF Fields[4].AsInteger>1 then
              Writeln(arquivo,'Data: '+Fields[0].asstring+' - Documento: '+Fields[1].asstring+' - Cliente: '+Fields[2].asstring);
            Next;
          end;


        end;
        Writeln(arquivo,'Verificando prestações duplas...');
        with IBDM.Consulta do
        begin
          Close;
          SQL.Clear;
          SQL.Add('Select vencimento,documento,historico,parcela,count(0) from creceber');
          SQL.Add('Where vencimento>=:p0 and vencimento<=:p1');
          SQL.Add('Group By vencimento,documento,historico,parcela');
          SQL.Add('Order by 5 desc');
          params[0].asdate:=Int(DateEdit1.Date);
          Params[1].AsDate:=Int(DateEdit2.Date);
          Open;
          while not Eof do
          begin
            IF Fields[4].AsInteger>1 then
              Writeln(arquivo,'Data: '+Fields[0].asstring+' - Documento: '+Fields[1].asstring+' - Cliente: '+Fields[2].asstring);
            Next;
          end;


        end;

    end;

    CloseFile(arquivo);
    If CheckBox1.Checked=True then
    begin
      IF FileExists('c:\ti\sisloja\dados\chkvendas.txt') then
      begin
        ExecFile('c:\ti\sisloja\dados\chkvendas.txt');
      end;

    end;


end;

procedure TFrmPrincipal.BitBtn112Click(Sender: TObject);
begin
  edit19.text:='';
  edit15.text:='';
  edit16.text:='';
  BitBtn50.Click;
end;

procedure TFrmPrincipal.btn3Click(Sender: TObject);
begin
  FrmTesteImp:=TFrmTesteImp.create(Application);
  FrmTesteImp.ShowModal;
  FrmTesteImp.Free;

end;

procedure TFrmPrincipal.btn4Click(Sender: TObject);
  var
  nvende:string;
  entdata:real;
  valent:currency;
  conta:integer;
  d1,v1,d2,v2,d3,v3,d4,v4,d5,v5,d6,v6:string;
  impressora:string;
begin

          ibdm.IBQParam.open;
          with ibdm.IBQUsuario do
          begin
            Open;
            Locate('codigo',ibdm.IBQDoctosVENDEDOR.AsInteger,[]);
            nvende := FieldByname('nome').asstring;
          end;


//          MudaTamPapel(DMPAPER_USER, 215, 140);

          impressora:=Getdefaultprintername();
          Setdefaultprinter('MP-4200');

          relcarneMP := TrelcarneMP.create(Application);
          MudaTamPapel(DMPAPER_USER, 215, 140);
          relcarneMP.lbnome.Caption := ibdm.IBQParamUSUARIO.AsString;
          relcarneMP.lbcnpj.Caption := 'CNPJ: '+ibdm.IBQParamCNPJ.AsString;
          relcarneMP.vtit.Caption := 'Documento nº: ' + ibdm.IBQDoctosDOCUMENTO.AsString;
          relcarneMP.QRLabel2.Caption := 'Data da Compra: ' + ibdm.IBQDoctosDATA.AsString;
          relcarneMP.QRLabel4.Caption := 'Cliente: '+ibdm.IBQDoctosCLIFOR.AsString ;
          relcarneMP.QRLabel7.Caption := 'Vendedor: ' + nvende;
          relcarneMP.qrlbl1.caption:=ibdm.IBQDoctosNOME.AsString;
          relcarneMP.qrlbl2.Enabled:=False;
          relcarneMP.qrlblnome.Caption:=ibdm.IBQDoctosNOME.AsString;
          if Copy(ibdm.ibqDoctosCONDPAG.AsString,1,3) = 'ENT' then
            begin
                with ibdm.Consulta do
                begin
                    Close;
                    sql.Clear;
                    sql.Add('Select caixa.*,doctos.clifor from caixa,doctos');
                    sql.Add('Where doctos.documento=caixa.documento and caixa.documento = :p0 and historico like :p1');
                    params[0].AsString := ibdm.IBQDoctosDOCUMENTO.AsString;
                    params[1].AsString := 'ENTRADA%';
                    Open;
                    entdata := int(FieldByname('data').asdatetime);
                    valent  := FieldByname('valor').ascurrency;
                end;

            if int(ibdm.IBQDoctosDATA.asdatetime)=entdata then
            begin
                relcarneMP.QRLabel16.Caption := 'Entrada paga: ' + FormatCurr('0.00',valent );
            end
            else
            begin
                relcarneMP.QRLabel16.Caption := 'Ent. p/' + datetimetostr(entdata) + ': ' + FormatCurr('0.00',valent );
            end;
            end;
          conta:=1;
          d1:='';
          d2:='';
          d3:='';
          d4:='';
          d5:='';
          d6:='';
          v1:='';
          v2:='';
          v3:='';
          v4:='';
          v5:='';
          v6:='';

          with ibdm.Consulta do
          begin
            Close;
            sql.Clear;
            sql.Add('Select * from crecebidas');
            sql.Add('Where documento=:p0 and parcela <> :p1');
            sql.Add('Order by vencimento');
            params[0].AsString := ibdm.IBQDoctosDOCUMENTO.AsString;
            Params[1].AsString := 'E';
            Open;
            While not eof do
            begin
                if conta=1 then
                begin
                    d1:=FieldByname('vencimento').asstring;
                    v1:=FormatCurr('0.00',FieldByname('valor').ascurrency)
                end;
                if conta=2 then
                begin
                    d2:=FieldByname('vencimento').asstring;
                    v2:=FormatCurr('0.00',FieldByname('valor').ascurrency)
                end;
                if conta=3 then
                begin
                    d3:=FieldByname('vencimento').asstring;
                    v3:=FormatCurr('0.00',FieldByname('valor').ascurrency)
                end;
                if conta=4 then
                begin
                    d4:=FieldByname('vencimento').asstring;
                    v4:=FormatCurr('0.00',FieldByname('valor').ascurrency)
                end;
                if conta=5 then
                begin
                    d5:=FieldByname('vencimento').asstring;
                    v5:=FormatCurr('0.00',FieldByname('valor').ascurrency)
                end;
                if conta=6 then
                begin
                    d6:=FieldByname('vencimento').asstring;
                    v6:=FormatCurr('0.00',FieldByname('valor').ascurrency)
                end;
                conta:=conta+1;
                next;
            end;

          end;

          with ibdm.Consulta do
          begin
            Close;
            sql.Clear;
            sql.Add('Select * from creceber');
            sql.Add('Where documento=:p0 and parcela <> :p1');
            sql.Add('Order by vencimento');
            params[0].AsString := ibdm.IBQDoctosDOCUMENTO.AsString;
            Params[1].AsString := 'E';
            Open;

            While not eof do
            begin
                if conta=1 then
                begin
                    d1:=FieldByname('vencimento').asstring;
                    v1:=FormatCurr('0.00',FieldByname('valororiginal').ascurrency)
                end;
                if conta=2 then
                begin
                    d2:=FieldByname('vencimento').asstring;
                    v2:=FormatCurr('0.00',FieldByname('valororiginal').ascurrency)
                end;
                if conta=3 then
                begin
                    d3:=FieldByname('vencimento').asstring;
                    v3:=FormatCurr('0.00',FieldByname('valororiginal').ascurrency)
                end;
                if conta=4 then
                begin
                    d4:=FieldByname('vencimento').asstring;
                    v4:=FormatCurr('0.00',FieldByname('valororiginal').ascurrency)
                end;
                if conta=5 then
                begin
                    d5:=FieldByname('vencimento').asstring;
                    v5:=FormatCurr('0.00',FieldByname('valororiginal').ascurrency)
                end;
                if conta=6 then
                begin
                    d6:=FieldByname('vencimento').asstring;
                    v6:=FormatCurr('0.00',FieldByname('valororiginal').ascurrency)
                end;
                conta:=conta+1;
                next;
            end;
          end;


          relcarneMP.QRLabel1.Caption := 'Vcto 1ª parc.: ' + d1;
          relcarneMP.QRLabel3.Caption := 'Valor: ' + v1;

          relcarneMP.QRLabel5.Caption := 'Vcto 2ª parc.: ' + d2;
          relcarneMP.QRLabel6.Caption := 'Valor: ' + v2;

          relcarneMP.QRLabel8.Caption := 'Vcto 3ª parc.: ' + d3;
          relcarneMP.QRLabel9.Caption := 'Valor: ' + v3;

          relcarneMP.QRLabel10.Caption := 'Vcto 4ª parc.: ' + d4;
          relcarneMP.QRLabel11.Caption := 'Valor: ' + v4;

          relcarneMP.QRLabel12.Caption := 'Vcto 5ª parc.: ' + d5;
          relcarneMP.QRLabel13.Caption := 'Valor: ' + v5;

          relcarneMP.QRLabel14.Caption := 'Vcto 6ª parc.: ' + d6;
          relcarneMP.QRLabel15.Caption := 'Valor: ' + v6;

          relcarneMP.QRLabel23.Caption := ibdm.IBQDoctosCONDPAG.AsString;
          with ibdm.Consulta do
              begin
                  close;
                  sql.Clear;
                  sql.Add('select * from movimento');
                  sql.Add('where docto =:p0');
                  params[0].AsString := ibdm.ibqdoctosDOCUMENTO.asstring;
                  prepare;
                  open;
              end;
          relcarneMP.QuickRep1.Preview;

     //     QrpToImg(relcarne.QuickRep1,'c:\ti\'+ ibdm.ibqdoctosDOCUMENTO.asstring);

          relcarneMP.Close;
          relcarneMP.Free;

          SetDefaultPrinter(impressora);

end;

procedure TFrmPrincipal.BitBtn113Click(Sender: TObject);
begin
  with IBDM.Cheka do
  begin
    Close;
    sql.Clear;
    sql.Add('Delete from movimento1');
    ExecQuery;
  end;
  CommitWork;

  frmItensVenda1 := TfrmItensVenda1.Create(Application);
  frmItensVenda1.lbnome.Caption := IBDM.IBQClientesNOME.AsString;
  frmItensVenda1.lbvend.Caption := IBDM.IBQUsuarioNOME.AsString;
  frmItensVenda1.vtipo := vtipo;
  frmItensVenda1.vcontrole := 1;
  frmItensVenda1.Ednota.Text := '1';
  frmItensVenda1.limite := IBDM.IBQClientesLIMCRED.Value;
  frmItensVenda1.vcli := IBDM.IBQClientesCODIGO.AsInteger;
  frmItensVenda1.ShowModal;
  Frmitensvenda1.Close;
end;

procedure TFrmPrincipal.BitBtn114Click(Sender: TObject);
begin
  FrmTesteImp:=TFrmTesteImp.create(Application);
  FrmTesteImp.ShowModal;
  FrmTesteImp.Free;
end;

//procedure TFrmPrincipal.WMSysCommand(var Message: TWMSysCommand);
//begin
//if Message.CmdType = 61536 then Message.CmdType:= 1;
//inherited ;
//end;


procedure TFrmPrincipal.Button8Click(Sender: TObject);
  var
     vdoc,vdocatual,vdocaltera:string;
     vdata:TDate  ;
     vregistro:Integer;
begin
    vdoc:= edtnrdoc.Text;
    vdata := dtantesde.Date;
    // documentos
    with ibdm.Consulta do
    begin
      Close;
      SQL.Clear;
      sql.Add('Select * from doctos');
      SQL.Add('Where documento <= :p0 and data < :p1');
      Params[0].AsString := vdoc;
      Params[1].AsDate := vdata;
      Open;
      while not Eof do
      begin
        vdocatual := FieldByname('documento').AsString;
        vregistro := FieldByname('controle').AsInteger;
          IF Copy(vdocatual,1,1) <> '5' then
          begin
             vdocaltera := '5'+ Copy(vdocatual,2,5);
             with ibdm.Cheka do
             begin
              Close;
              sql.clear;
              sql.Add('Update doctos') ;
              sql.Add('Set documento = :p0');
              sql.Add('Where controle = :p1');
              Params[0].AsString := vdocaltera;
              Params[1].AsInteger := vregistro;
              ExecQuery;
             end;
             //
             with IBDM.Cheka do
             begin
              Close;
              sql.Clear;
              sql.Add('Update movimento');
              sql.Add('Set DOCTO = :p0');
              sql.Add('Where CONTDOC = :p1');
              Params[0].AsString := vdocaltera  ;
              Params[1].asinteger := vregistro ;
              ExecQuery;
             end;
             //
             with IBDM.Cheka do
             begin
              Close;
              sql.Clear;
              sql.Add('Update creceber');
              sql.Add('Set DOCUMENTO = :p0');
              sql.Add('Where DOCUMENTO = :p1 AND VENCIMENTO < :P2');
              Params[0].AsString := vdocaltera  ;
              Params[1].asstring := vdocatual ;
              Params[2].asdate  := vdata  ;
              ExecQuery;
             end;
             //
             with IBDM.Cheka do
             begin
               Close;
              sql.Clear;
              sql.Add('Update crecebidas');
              sql.Add('Set DOCUMENTO = :p0');
              sql.Add('Where DOCUMENTO = :p1 AND VENCIMENTO < :P2');
              Params[0].AsString := vdocaltera  ;
              Params[1].asstring := vdocatual ;
              Params[2].asdate  := vdata  ;
              ExecQuery;
             end;
             //
             with IBDM.Cheka do
             begin
               Close;
              sql.Clear;
              sql.Add('Update caixa');
              sql.Add('Set DOCUMENTO = :p0');
              sql.Add('Where DOCUMENTO = :p1 AND DATA < :P2');
              Params[0].AsString := vdocaltera  ;
              Params[1].asstring := vdocatual ;
              Params[2].asdate  := vdata  ;
              ExecQuery;
             end;
             //
             with IBDM.Cheka do
             begin
               Close;
              sql.Clear;
              sql.Add('Update COMISSOES');
              sql.Add('Set NOTA = :p0');
              sql.Add('Where NOTA = :p1 AND LIBERADO < :P2');
              Params[0].AsString := vdocaltera  ;
              Params[1].asstring := vdocatual ;
              Params[2].asdate  := vdata  ;
              ExecQuery;
             end;
             //




          end;
        Next;
      end;
    end;
     CommitWork;


end;

end.


