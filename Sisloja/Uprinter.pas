unit Uprinter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,printers,wintypes,syncobjs ,Dialogs,ShellApi ,Controls, Forms,
  StdCtrls, Buttons;

type
  TFrmprinter = class(TForm)
    StaticText1: TStaticText;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Memo1: TMemo;
    edcomp: TEdit;
    edalt: TEdit;
    Button6: TButton;
    BitBtn1: TBitBtn;
    procedure AtualizaPrn;
    procedure MostraTamPapel;
    function PegaTamanhoPapel(dmPaperSize: word):string;
    Procedure MostraDevMode(const M: TDevMode) ;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmprinter: TFrmprinter;

implementation

uses Ufuncoes, tbPrn;

{$R *.DFM}


procedure TFrmprinter.AtualizaPrn;
begin
StaticText1.Caption := ImpressoraCorrente;
end;

procedure TFrmprinter.MostraTamPapel;
var
ADevice, ADriver, APort: array[0..255] of char;
DeviceMode: THandle;
M: PDevMode;
s: string;
begin
// Força o uso de Printer. Se esta linha for removida, a primeira
// invocação falha. Bug da VCL
S := Printer.Printers[Printer.PrinterIndex];
// Pega dados da impressora atual
Printer.GetPrinter(ADevice, ADriver, APort, DeviceMode);
// Pega um ponteiro para DEVMODE
M := GlobalLock(DeviceMode);
if M <> nil then
    MostraDevMode(M^);
end;

function TFrmprinter.PegaTamanhoPapel(dmPaperSize: word): string;
begin
Result := 'Desconhecido';
// Verifica ALGUNS TAMANHOS POSSÍVEIS. Existem outros, veja DEVMODE
case dmPaperSize of
DMPAPER_USER: Result := 'Definido pelo usuário';
DMPAPER_LETTER: Result := 'Letter, 8 1/2- by 11-inches';
DMPAPER_LEGAL: Result := 'Legal, 8 1/2- by 14-inches';
DMPAPER_A4: Result := 'A4 Sheet, 210- by 297-millimeters';
end;
end;

procedure TFrmprinter.MostraDevMode(const M: TDevMode);
begin
// Mostra o valor de alguns campos
with M do
begin
// Mostra nome da impressora
Memo1.Lines.Add('Nome:' + dmDeviceName);
// Verifica se campo tamanho do papel esta preenchido e mostra
if dmFields and DM_PAPERSIZE <> 0 then
Memo1.Lines.Add(PegaTamanhoPapel(dmPaperSize));
if dmFields and DM_PAPERLENGTH <> 0 then
Memo1.Lines.Add(Format('Altura:%d', [dmPaperLength]));
if dmFields and DM_PAPERWIDTH <> 0 then
Memo1.Lines.Add(Format('Comprimento:%d', [dmPaperWidth]));
end;
end;

procedure TFrmprinter.Button2Click(Sender: TObject);
var
P: TPrinterSetupDialog;
begin
P := TPrinterSetupDialog.Create(self);
try
P.Execute;
finally
P.Free;
end;
AtualizaPrn;
end;

procedure TFrmprinter.Button4Click(Sender: TObject);
begin
MudaTamPapel(DMPAPER_LETTER, 0, 0);
MostraTamPapel;
end;

procedure TFrmprinter.Button1Click(Sender: TObject);
begin
MudaTamPapel(DMPAPER_USER, StrToInt(EdComp.Text), StrToInt(EdAlt.Text));
end;

procedure TFrmprinter.Button3Click(Sender: TObject);
begin
Printer.Title := 'Teste de filha';
Printer.BeginDoc;
Printer.EndDoc;
end;

procedure TFrmprinter.Button5Click(Sender: TObject);
begin
MostraTamPapel;
end;


procedure TFrmprinter.FormShow(Sender: TObject);
begin
 AtualizaPrn;
end;

procedure TFrmprinter.Button6Click(Sender: TObject);
  var
    Papel: TtbPrnPaper;
begin
    Papel.Size := 256; // 256 é o tam. personalizado
    Papel.Width := 2100; // 21 cm
    Papel.Height := 1000; // 10 cm
    Papel := tbPrnSetPaperSize(Papel);
    try
      Printer.BeginDoc;
      try

        printer.canvas.textout(5,5,'ALO MUNDO');

      finally
        Printer.EndDoc;
      end;
    finally
      tbPrnSetPaperSize(Papel); // Restaura o tamanho
    end;
end;


procedure TFrmprinter.BitBtn1Click(Sender: TObject);
begin
  with Printer.Fonts do
  if IndexOf('Draft 10cpi') >= 0 then
  ShowMessage('A impressora possui a fonte.')
  else
  ShowMessage('A impressora NÃO possui a fonte.');

end;

end.





