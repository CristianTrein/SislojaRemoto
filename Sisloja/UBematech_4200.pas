unit UBematech_4200;

interface
uses
  SysUtils, Dialogs,ShellApi,classes,printers,DB,stdctrls,syncobjs,WinTypes,jpeg ,Qrctrls, QuickRpt,graphics,forms,
   ExtCtrls, ComObj,DBTables,DBitypes,DBiprocs,DBierrs,winspool,IBQuery;


function IniciaPorta( Porta: string ): integer; stdcall; far; external 'MP2032.DLL';

function FechaPorta: integer; stdcall; far; external 'MP2032.DLL';

function BematechTX( BufTrans: string ): integer; stdcall; far; external 'MP2032.DLL';

function ComandoTX( BufTrans: string; TamBufTrans: integer ): integer; stdcall; far; external 'MP2032.DLL';

function CaracterGrafico( BufTrans: string; TamBufTrans: integer ): integer; stdcall; far; external 'MP2032.DLL';

function DocumentInserted: integer; stdcall; far; external 'MP2032.DLL';

function Le_Status: integer; stdcall; far; external 'MP2032.DLL';

function AutenticaDoc( texto: string; tempo: integer ): integer; stdcall; far; external 'MP2032.DLL';

function Le_Status_Gaveta: integer; stdcall; far; external 'MP2032.DLL';

function ConfiguraTamanhoExtrato( NumeroLinhas: Integer ): integer; stdcall; far; external 'MP2032.DLL';

function HabilitaExtratoLongo( Flag: Integer ): integer; stdcall; far; external 'MP2032.DLL';

function HabilitaEsperaImpressao( Flag: Integer ): integer; stdcall; far; external 'MP2032.DLL';

function EsperaImpressao: integer; stdcall; far; external 'MP2032.DLL';

function ConfiguraModeloImpressora( ModeloImpressora: integer ): integer; stdcall; far; external 'MP2032.DLL';

function AcionaGuilhotina( Modo: integer ): integer; stdcall; far; external 'MP2032.DLL';

function FormataTX (BufTras: string; TpoLtra: integer; Italic: integer; Sublin: integer; expand: integer; enfat: integer ): integer; stdcall; far; external 'MP2032.DLL';

function HabilitaPresenterRetratil( iFlag: integer ): integer; stdcall; far; external 'MP2032.DLL';

function ProgramaPresenterRetratil( iTempo: integer ): integer; stdcall; far; external 'MP2032.DLL';

function VerificaPapelPresenter: integer; stdcall; far; external 'MP2032.DLL';



// Função para Configuração dos Códigos de Barras

function ConfiguraCodigoBarras( Altura: integer; Largura: integer; PosicaoCaracteres: integer; Fonte: integer; Margem: integer ): integer; stdcall; far; external 'MP2032.DLL';



// Funções para impressão dos códigos de barras

function ImprimeCodigoBarrasUPCA( Codigo: string ): integer; stdcall; far; external 'MP2032.DLL';

function ImprimeCodigoBarrasUPCE( Codigo: string ): integer; stdcall; far; external 'MP2032.DLL';

function ImprimeCodigoBarrasEAN13( Codigo: string ): integer; stdcall; far; external 'MP2032.DLL';

function ImprimeCodigoBarrasEAN8( Codigo: string ): integer; stdcall; far; external 'MP2032.DLL';

function ImprimeCodigoBarrasCODE39( Codigo: string ): integer; stdcall; far; external 'MP2032.DLL';

function ImprimeCodigoBarrasCODE93( Codigo: string ): integer; stdcall; far; external 'MP2032.DLL';

function ImprimeCodigoBarrasCODE128( Codigo: string ): integer; stdcall; far; external 'MP2032.DLL';

function ImprimeCodigoBarrasITF( Codigo: string ): integer; stdcall; far; external 'MP2032.DLL';

function ImprimeCodigoBarrasCODABAR( Codigo: string ): integer; stdcall; far; external 'MP2032.DLL';

function ImprimeCodigoBarrasISBN( Codigo: string ): integer; stdcall; far; external 'MP2032.DLL';

function ImprimeCodigoBarrasMSI( Codigo: string ): integer; stdcall; far; external 'MP2032.DLL';

function ImprimeCodigoBarrasPLESSEY( Codigo: string ): integer; stdcall; far; external 'MP2032.DLL';

function ImprimeCodigoBarrasPDF417( NivelCorrecaoErros: integer; Altura: integer; Largura: integer; Colunas: integer; Codigo: string ): integer; stdcall; far; external 'MP2032.DLL';



// Funções para impressão de BitMap

function ImprimeBitmap ( name: string; mode: integer): integer; stdcall; far; external 'MP2032.DLL';

function ImprimeBmpEspecial ( name: string; xScale: integer; yScale: integer; angle: integer): integer; stdcall; far; external 'MP2032.DLL';

function AjustaLarguraPapel ( width: integer): integer; stdcall; far; external 'MP2032.DLL';

function SelectDithering ( mode: integer): integer; stdcall; far; external 'MP2032.DLL';



function PrinterReset : integer; stdcall; far; external 'MP2032.DLL';

function LeituraStatusEstendido        ( A: array of byte ): integer; stdcall; far; external 'MP2032.DLL';

function IoControl        ( flag: Integer; mode : Boolean ): integer; stdcall; far; external 'MP2032.DLL';

Function GetStatus(vok:Boolean):Boolean;

implementation



Function GetStatus(vok:Boolean):Boolean;
  //Sender: TObject
var

  hPrinter        : THandle;
  need           : Cardinal;
  ret            : Bool;
  data           : integer;
  pData          : Pointer;
  ret1           : integer;
  PrinterDefaults: TPrinterDefaults;
  //Statusspooler  : Tmemo;

begin
  try

      with PrinterDefaults do
      begin
         DesiredAccess := PRINTER_ACCESS_ADMINISTER;
         pDatatype := nil;
         pDevMode := nil;
      end;
      pData := @data;
      ret := OpenPrinter(pCHAR('MP-4200 TH'),hPrinter,@PrinterDefaults);
      if ret = true then
      begin
         ret1 := GetPrinterData(hPrinter,'PRINTERSTATUS',nil,pData,sizeof(data),need);
         if ret1 = ERROR_SUCCESS then

            if ( data = 0 ) then
               begin
                showmessage('Off/Off-line/Disconnected');
                vok:=False;
               end
            else

               begin
                  vok:=False;

                  if (data and 1) <> 0 then
                  begin
                     vok:=True;
                    // showmessage('On-Line');
                  end;
                  if (data and 2) <> 0 then

                      showmessage('Fim do papel');

                  if ( data and 4) <> 0 then

                      showmessage('Pouco Papel');

                  if ( data and 8 ) <> 0 then

                      showmessage('Tampa aberta');

                  if ( data and 16 ) <> 0 then

                      showmessage('Memória cheia');

                  if ( data and 32 ) <> 0 then

                      showmessage('Erro no cortador de papel');

                  if ( data and 64 ) <> 0 then

                      showmessage('Impressora muito quente');

                  if ( data and 128 ) <> 0 then

                      showmessage('Papel amassado');

                  if ( data and 256 ) <>  0 then

                      showmessage('Impressora sem papel');

               end;

      end
      else
      begin
        ShowMessage('Impressora desligada !!');
        vok:=False;
      end;
   except
        ShowMessage('Impressora desligada !!');
        vok:=False;
   end;
      ClosePrinter(hPrinter);
      Result:=vok;
end;








end.
