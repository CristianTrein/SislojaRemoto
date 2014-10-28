unit UGrupos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, Grids, DBGrids, XP_Form;

type
  TFrmEdGrupos = class(TForm)
    Edit1: TEdit;
    BitBtn6: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEdGrupos: TFrmEdGrupos;

implementation

uses DM, UIncluirGrupo, URelGrupos;

{$R *.DFM}

procedure TFrmEdGrupos.BitBtn1Click(Sender: TObject);
begin
    Close;
end;

procedure TFrmEdGrupos.FormActivate(Sender: TObject);
begin
    ibdm.IBQGrupos.Open;
end;

procedure TFrmEdGrupos.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFrmEdGrupos.BitBtn2Click(Sender: TObject);
begin
    FrmIncluirGrupo := TFrmIncluirGrupo.Create(application);
    FrmIncluirGrupo.vnovo := true;
    with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select max(codigo) from grupos');
        prepare;
        open;
        frmincluirgrupo.Edit1.Text := IntToStr(Fields[0].AsInteger + 1);
    end;
    FrmIncluirGrupo.ShowModal;
    FrmIncluirGrupo.Destroy;
end;

procedure TFrmEdGrupos.BitBtn3Click(Sender: TObject);
begin
    FrmIncluirGrupo := TFrmIncluirGrupo.Create(application);
    FrmIncluirGrupo.Edit1.Text := inttostr(ibdm.IBQGruposCODIGO.AsInteger);
    FrmIncluirGrupo.Edit2.Text := ibdm.IBQGruposDESCRICAO.AsString;
    FrmIncluirGrupo.vnovo := false;
    FrmIncluirGrupo.ShowModal;
    FrmIncluirGrupo.Destroy;
end;

procedure TFrmEdGrupos.BitBtn4Click(Sender: TObject);
var
    vcod : integer;
begin
    vcod := ibdm.ibqgruposcodigo.AsInteger;
    with ibdm.Deleta do
    begin
        close;
        sql.Clear;
        sql.Add('delete from grupos');
        sql.Add('where codigo = :p0');
        params[0].AsInteger := vcod;
        prepare;
        execquery;
    end;
    ibdm.ibqgrupos.close;
    ibdm.ibqgrupos.open;
    ShowMessage('Grupo do Estoque excluído com sucesso!');
    CommitWork;

end;

procedure TFrmEdGrupos.BitBtn5Click(Sender: TObject);
begin
    ibdm.IBQGrupos.open;
    RelGrupos := TRelGrupos.Create(Application);
    RelGrupos.QuickRep1.Preview;
    RelGrupos.Destroy;
end;

procedure TFrmEdGrupos.BitBtn6Click(Sender: TObject);
begin
    if edit1.Text <> '' then
        begin
            with ibdm.IBQgrupos do
            begin
                close;
                sql.Clear;
                sql.Add('select * from grupos');
                sql.Add('where descricao LIKE :p1');
                params[0].AsString := Trim(edit1.Text)+'%';
                open;
            end;
        end
       else
        begin
           with ibdm.IBQGrupos do
           begin
               close;
               sql.Clear;
               sql.Add('select * from grupos');
               open;
           end;
        end;
end;

end.
