unit Uprecos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, Grids, DBGrids, ExtCtrls, XP_Form;

type
  TFrmprecos = class(TForm)
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmprecos: TFrmprecos;

implementation

uses DM, UItensVenda, UItensVenda1;

{$R *.DFM}

procedure TFrmprecos.BitBtn1Click(Sender: TObject);
begin
    Close;
end;

procedure TFrmprecos.FormShow(Sender: TObject);
begin
    ibdm.IBTPrecos.Close;
    ibdm.IBTPrecos.Open;
end;

procedure TFrmprecos.DBGrid1DblClick(Sender: TObject);
begin
   try
      Frmitensvenda1.Edref.Text := ibdm.IBTPrecosREF.AsString;
    except
      Frmitensvenda.Edref.Text := ibdm.IBTPrecosREF.AsString;
    end;
    Close;
end;

end.
