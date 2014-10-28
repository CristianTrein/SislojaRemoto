unit Uedobsrec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFrmedobsrec = class(TForm)
    Edit1: TEdit;
    Button4: TButton;
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vtipo:Integer;
    controle:integer;
  end;

var
  Frmedobsrec: TFrmedobsrec;

implementation

uses DM;

{$R *.DFM}

procedure TFrmedobsrec.Button4Click(Sender: TObject);
begin
    if  vtipo = 0 then
    with ibdm.Cheka do
    begin
        Close;
        sql.Clear;
        sql.Add('update creceber');
        sql.Add('Set obs = :p0');
        sql.Add('where controle=:p1');
        params[0].AsString := edit1.Text;
        params[1].AsInteger := controle;
        ExecQuery;
    end
    else
        with ibdm.Cheka do
    begin
        Close;
        sql.Clear;
        sql.Add('update crecebidas');
        sql.Add('Set obs = :p0');
        sql.Add('where controle=:p1');
        params[0].AsString := edit1.Text;
        params[1].AsInteger := controle;
        ExecQuery;
    end;
    CommitWork;
    Close
end;

end.
