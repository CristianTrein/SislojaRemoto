unit UTrCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DBCtrls, XP_Form;

type
  TFrmTrCaixa = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTrCaixa: TFrmTrCaixa;

implementation

uses DM, UIncluirtribcai;

{$R *.DFM}

procedure TFrmTrCaixa.BitBtn1Click(Sender: TObject);
begin
    FrmTrCaixa.Close;
end;

procedure TFrmTrCaixa.FormActivate(Sender: TObject);
begin
    ibdm.IBQTrCaixa.Close;
    ibdm.IBQTrCaixa.Open;
    ibdm.IBQTrCaixa.Last;
end;

procedure TFrmTrCaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFrmTrCaixa.BitBtn2Click(Sender: TObject);
begin
    FrmIcluirTribCai := TFrmIcluirTribCai.Create(application);
    FrmIcluirTribCai.vnovo := true;
    with ibdm.IBQTrCaixa do
    begin
        last;
        FrmIcluirTribCai.Edit1.Text := inttostr(ibdm.ibqtrcaixacodigo.asinteger + 1);
    end;
    FrmIcluirTribCai.ShowModal;
    FrmIcluirTribCai.Destroy;
end;

procedure TFrmTrCaixa.BitBtn3Click(Sender: TObject);
begin
    FrmIcluirTribCai := TFrmIcluirTribCai.Create(application);
    FrmIcluirTribCai.vnovo := false;
    FrmIcluirTribCai.Edit1.Text := inttostr(ibdm.IBQtrcaixaCODIGO.AsInteger);
    FrmIcluirTribCai.Edit2.Text := ibdm.IBQTrCaixaDESCRICAO.asstring;
    FrmIcluirTribCai.Edit3.Text := ibdm.IBQTrCaixaOPERACAO.AsString;
    FrmIcluirTribCai.ShowModal;
    FrmIcluirTribCai.Destroy;
end;

procedure TFrmTrCaixa.BitBtn4Click(Sender: TObject);
var
    vcod : integer;
begin
    vcod := ibdm.IBQTrCaixaCODIGO.AsInteger;
    with ibdm.Deleta do
    begin
        close;
        sql.Clear;
        sql.Add('delete from trcaixa');
        sql.Add('where codigo = :p0');
        params[0].AsInteger := vcod;
        prepare;
        execquery;
    end;
    ibdm.IBQTrCaixa.close;
    ibdm.IBQTrCaixa.Open;
    DBGrid1.Refresh;
end;

end.
