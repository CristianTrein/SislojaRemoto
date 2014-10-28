unit Uzoomvd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, XP_Form, Grids, DBGrids;

type
  TFrmzoomvd = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    DBGrid2: TDBGrid;
    Label3: TLabel;
    DBGrid3: TDBGrid;
    Label4: TLabel;
    DBGrid4: TDBGrid;
    BtnFechar: TBitBtn;
    procedure BtnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    vcontrole:integer;
    vdocto:string;
    { Public declarations }
  end;

var
  Frmzoomvd: TFrmzoomvd;

implementation

uses  DM;

{$R *.DFM}

procedure TFrmzoomvd.BtnFecharClick(Sender: TObject);
begin
    Close;
end;

procedure TFrmzoomvd.FormShow(Sender: TObject);
begin
    with IBDM.IBQDoctos do
    begin
      First;
      Locate('controle',vcontrole,[]);

    end;

    with ibdm.IBQuery1 do
    begin
        Close;
        sql.Clear;
        sql.Add('Select movimento.produto,movimento.descricao,movimento.quantidade,movimento.valorunitario,ref from movimento');
        sql.Add('Where movimento.contdoc = :p0');
        params[0].AsInteger := vcontrole;
        open;
    end;
    with ibdm.IBQ1 do
    begin
        Close;
        sql.Clear;
        sql.Add('Select vencimento,valororiginal,totalpago,parcela,mpgto from creceber');
        sql.Add('Where documento = :p0');
        params[0].Asstring := vdocto;
        open;
    end;
    with ibdm.IBQ2 do
    begin
        Close;
        sql.Clear;
        sql.Add('Select data, valor, caixa.operacao, descricao, operador, mpgto from caixa,trcaixa');
        sql.Add('Where documento = :p0 and transacao = codigo');
        params[0].Asstring := vdocto;
        open;
    end;




end;

end.
