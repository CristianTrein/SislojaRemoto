unit UChequeComp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, XP_Form;

type
  TFrmChequeComp = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmChequeComp: TFrmChequeComp;

implementation

{$R *.DFM}

procedure TFrmChequeComp.BitBtn2Click(Sender: TObject);
begin
    close;
end;

end.
