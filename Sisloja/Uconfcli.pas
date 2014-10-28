unit Uconfcli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, XP_Form;

type
  Tfrmconfcli = class(TForm)
    Label1: TLabel;
    LBNOME: TLabel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconfcli: Tfrmconfcli;

implementation

uses UNotaVenda, UItensVenda1;

{$R *.dfm}

procedure Tfrmconfcli.BitBtn1Click(Sender: TObject);
begin

  try
    frmitensvenda1.bitbtn1.Enabled := False;
    frmitensvenda1.vsegue:=False;
  except
    FrmNotaVenda.bitbtn1.Enabled:=False;
    FrmNotaVenda.vsegue:=False;

  end;
  Close;
end;

procedure Tfrmconfcli.BitBtn2Click(Sender: TObject);
begin
    FrmNotaVenda.bitbtn1.Enabled:=True;
    FrmNotaVenda.vsegue:=True;
    Close;
end;

end.
