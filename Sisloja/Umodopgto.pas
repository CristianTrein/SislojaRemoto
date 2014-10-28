unit Umodopgto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Buttons;

type
  TFrmmodopgto = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BtnFechar: TBitBtn;
    procedure BtnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmmodopgto: TFrmmodopgto;

implementation

uses DM;

{$R *.DFM}

procedure TFrmmodopgto.BtnFecharClick(Sender: TObject);
begin
    cLOSE;
end;

end.
