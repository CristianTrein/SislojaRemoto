unit UCPagas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, XP_Form;

type
  TFrmEdCPagas = class(TForm)
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEdCPagas: TFrmEdCPagas;

implementation

uses DM;

{$R *.DFM}

procedure TFrmEdCPagas.BitBtn1Click(Sender: TObject);
begin
    FrmEdCPagas.Close;
end;

procedure TFrmEdCPagas.FormActivate(Sender: TObject);
begin
    ibdm.IBQCpagas.Open;
end;

procedure TFrmEdCPagas.BitBtn2Click(Sender: TObject);
begin
    if edit1.Text <> '' then
    begin
        with ibdm.IBQCpagas do
        begin
            close;
            sql.Clear;
            sql.Add('select * from Cpagas');
            sql.Add('where historico LIKE :p1');
            params[0].AsString := Trim(edit1.Text)+'%';
            open;
        end;
    end
    else
    begin
        with ibdm.IBQCpagas do
        begin
            close;
            sql.Clear;
            sql.Add('select * from Cpagas');
            sql.Add('order by vencimento ASC');
            open;
        end;
    end;
end;

procedure TFrmEdCPagas.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFrmEdCPagas.BitBtn3Click(Sender: TObject);
var
    msg : integer;
begin
    msg := Application.MessageBox('Deseja excluir esta conta já paga???','Exclusão...',68);
    if msg = 6 then
    begin
        with ibdm.Deleta do
        begin
            close;
            sql.Clear;
            sql.Add('delete from cpagas');
            sql.Add('where documento =:p0');
            params[0].AsString := ibdm.IBQCpagasDOCUMENTO.AsString;
            prepare;
            ExecQuery;
        end;
        ibdm.IBQCpagas.Close;
        ibdm.IBQCpagas.Open;
        CommitWork;
    end;
end;

end.
