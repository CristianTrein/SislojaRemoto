unit UCopiaSeg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, FileCtrl, XP_Form;

type
  TFrmCopiaSeg = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    DriveComboBox1: TDriveComboBox;
    Label2: TLabel;
    DriveComboBox2: TDriveComboBox;
    Label5: TLabel;
    Dir_2: TDirectoryListBox;
    Label4: TLabel;
    Dir_1: TDirectoryListBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCopiaSeg: TFrmCopiaSeg;

implementation

uses DM;

const SHFMT_ID_DEFAULT = $FFFF;
// Formating options
SHFMT_OPT_QUICKFORMAT = $0000;
SHFMT_OPT_FULL = $0001;
SHFMT_OPT_SYSONLY = $0002;
// Error codes
SHFMT_ERROR = $FFFFFFFF;
SHFMT_CANCEL = $FFFFFFFE;
SHFMT_NOFORMAT = $FFFFFFFD;

function SHFormatDrive(Handle: HWND; Drive, ID, Options: Word): LongInt; stdcall; external 'shell32.dll' name 'SHFormatDrive'

{$R *.DFM}

procedure TFrmCopiaSeg.BitBtn1Click(Sender: TObject);
Var
    retCode : LongInt;
    Msg : String;
    destino : string;
    origem : string;
    drive,origem1, destino1 : string;
begin
    IF Uppercase(Dir_2.Drive) = 'A' Then
    Begin
      // Showmessage('Antes de fazer a cópia de seguranca, vamos Formatar o(s) disquete(s) de Backup. Use o modo de formatação completo, para maior segurança dos dados. Insira o disquete no Drive A: e tecle <enter> quando pronto.');
      // retCode := SHFormatDrive(Handle, 0, SHFMT_ID_DEFAULT, SHFMT_OPT_QUICKFORMAT);
      // IF retCode < 0 then
      //    exit;
        WinExec('Command.com /c Del a:*.zip', 0)

    End;

   with ibdm.Grava do
   begin
       close;
       sql.Clear;
       sql.Add('update param');
       sql.Add('set backup =:p0');
       sql.Add('where codigo =:p1');
       params[0].AsDate := int(now);
       params[1].AsString := ibdm.IBQParamCODIGO.AsString;
       prepare;
       execquery;
   end;
   ibdm.IBQParam.Close;

   ibDM.IBDB.Connected := False;

    IF Uppercase(DriveComboBox2.Drive) = 'C' Then
       Destino:= Dir_2.Directory+'\'+Edit1.Text
    Else
       Destino:= Dir_2.Directory+Edit1.Text;

    Origem := Dir_1.Directory + '\Ti_dados.GDB';
    drive := 'C:\TI\sisloja\dados';
  //  deletefile(drive+'\Ti_dados.bd');
    CopyFile(Pchar(Dir_1.Directory+'\Ti_dados.gdb'), Pchar(Dir_2.Directory+'\Ti_dados.bd'),true);
//    if DirectoryExists( PChar('C:\Arquivos de Programas') ) = True then
//    WinExec(PChar('C:\Arquivos de Programas\WinZip\WinZip32 -a -r "'+Destino+'" '+'"'+Origem+'"'),1)
//      else
//    WinExec(PChar('C:\Program Files\WinZip\WinZip32 -a -r "'+Destino+'" '+'"'+Origem+'"'),1);

    // SALVO NO HD

    origem1 := 'C:\TI\sisloja\dados\ti_dados.gdb';
    destino1 := 'C:\TI\sisloja\backup\salva';
    //CopyFile(Pchar(drive+'\Ti_dados.gdb'), Pchar(drive+'\Ti_dados.bd'),true);
//    WinExec(PChar('C:\Arquivos de Programas\WinZip\WinZip32 -a -r "'+Destino1+'" '+'"'+Origem1+'"'),1);


   ShowMessage('Cópia de Segurança realizada com sucesso, o programa será encerrado!');
   Application.Terminate;
   close;

end;

procedure TFrmCopiaSeg.FormShow(Sender: TObject);
begin
    Dir_1.Directory := 'C:\ti\sisloja\dados';
    dir_2.Directory := 'C:\ti';
end;

procedure TFrmCopiaSeg.BitBtn2Click(Sender: TObject);
begin
    close;
end;

end.
