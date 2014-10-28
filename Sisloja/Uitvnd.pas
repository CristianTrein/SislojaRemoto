unit Uitvnd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, XP_Form, StdCtrls, Buttons;

type
  TFrmitvnd = class(TForm)
    BtnFechar: TBitBtn;
    DBGrid1: TDBGrid;
    procedure BtnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmitvnd: TFrmitvnd;

implementation

uses DM;

{$R *.DFM}

procedure TFrmitvnd.BtnFecharClick(Sender: TObject);
begin
    Close;
end;

end.
