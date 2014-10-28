unit Uchkspc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, XP_Form, StdCtrls, Buttons, Grids, DBGrids;

type
  TFrmCHKSPC = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
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
  FrmCHKSPC: TFrmCHKSPC;

implementation

uses DM;

{$R *.DFM}

procedure TFrmCHKSPC.BitBtn1Click(Sender: TObject);
begin
    Close;
end;

procedure TFrmCHKSPC.BitBtn2Click(Sender: TObject);
  var
  vcontrole:integer;
begin
  vcontrole := ibdm.Consulta.fieldbyname('controle').AsInteger;
  With ibdm.Cheka do
  begin
    Close;
    sql.Clear;
    sql.Add('update avisos');
    sql.Add('Set spcsai = :p0, marcaspcs=:p1');
    sql.Add('Where controle=:p2');
    params[0].AsDate := Now;
    params[1].AsString := 'X';
    params[2].AsInteger := vcontrole;
    ExecQuery;
  end;
  CommitWork;
  with ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('select avisos.controle, crecebidas.documento ,crecebidas.historico nome from avisos,crecebidas');
        sql.Add(' where  (Select count(*) from creceber where controle = avisos.controle) =0 and avisos.spcent is not null and avisos.spcsai is null and crecebidas.contdoc= avisos.controle');
        sql.Add('Order by crecebidas.historico');
        Open;
    end;
    DBgrid1.Repaint;
end;

end.
