unit UExcel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,OleServer,ComOBJ,
  StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
    Excel : Variant;
begin
    Excel := CreateOleObject('Excel.Application');
    Excel.Visible := True;
    {Excel.Workbooks.Add;}
    Excel.WorkBooks.Open('d:\ti\13modas\trezemodas_ago03.xls');
    Excel.WorkBooks[1].Sheets[1].Cells[2,7]:=Now;
    Excel.WorkBooks[1].SaveAs('d:\ti\13modas\trezemodas_ago03.xls');
end;

end.
