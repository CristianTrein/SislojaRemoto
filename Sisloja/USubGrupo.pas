unit USubGrupo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DBCtrls, XP_Form;

type
  TFrmEdSubGrupo = class(TForm)
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    BitBtn7: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEdSubGrupo: TFrmEdSubGrupo;

implementation

uses DM, UIncluirSubGrupo, URelSubGrupos;

{$R *.DFM}

procedure TFrmEdSubGrupo.BitBtn3Click(Sender: TObject);
begin
    Close;
end;

procedure TFrmEdSubGrupo.FormActivate(Sender: TObject);
begin
    with ibdm.IBQSubGrupos do
    begin
        close;
        sql.Clear;
        sql.Add('select * from subgrupos');
        sql.Add('order by grupo ASC, codigo ASC');
        prepare;
        Open;
    end;
end;

procedure TFrmEdSubGrupo.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFrmEdSubGrupo.BitBtn1Click(Sender: TObject);
begin
    FrmIncluirSubGrupo := TFrmIncluirSubGrupo.Create(application);
    FrmIncluirSubGrupo.vnovo := true;
    FrmIncluirSubGrupo.ShowModal;
    FrmIncluirSubGrupo.Destroy;
end;

procedure TFrmEdSubGrupo.BitBtn4Click(Sender: TObject);
var
    vdesc : string;
begin
    FrmIncluirSubGrupo := TFrmIncluirSubGrupo.Create(application);
    FrmIncluirSubGrupo.Edit1.Text := inttostr(ibdm.IBQSubGruposCODIGO.asinteger);
    with ibdm.IBQGrupos do
    begin
        close;
        open;
        locate('codigo',ibdm.ibqsubgruposgrupo.asinteger,[]);
        vdesc := ibdm.ibqgruposdescricao.asstring;
    end;
    FrmIncluirSubGrupo.combobox1.Text := vdesc;
    FrmIncluirSubGrupo.Edit3.Text := ibdm.IBQSubGruposDESCRICAO.AsString;
    FrmIncluirSubGrupo.vnovo := false;
    FrmIncluirSubGrupo.ShowModal;
    FrmIncluirSubGrupo.Destroy;
end;

procedure TFrmEdSubGrupo.BitBtn2Click(Sender: TObject);
var
    vcod : integer;
    vgrupo : integer;
begin
    vcod := ibdm.IBQSubGruposCODIGO.AsInteger;
    vgrupo := ibdm.IBQSubGruposGRUPO.AsInteger;
    with ibdm.Deleta do
    begin
        close;
        sql.Clear;
        sql.Add('delete from subgrupos');
        sql.Add('where codigo = :p0 and grupo = :p1');
        params[0].AsInteger := vcod;
        params[1].AsInteger := vgrupo;
        prepare;
        execquery;
    end;
    ibdm.IBQSubgrupos.close;
    ibdm.IBQSubgrupos.Open;
    CommitWork;
    ShowMessage('Subgrupo excluído com SUCESSO!!!');
end;

procedure TFrmEdSubGrupo.BitBtn5Click(Sender: TObject);
begin
    with IBDM.IBRel do
    begin
        Close;
        sql.Clear;
        sql.add('select grupos.descricao, subgrupos.grupo, subgrupos.codigo, subgrupos.descricao from subgrupos, grupos');
        sql.Add('subgrupos.grupo = grupos.codigo');        
        sql.add('order by subgrupos.grupo, subgrupos.codigo');
        open;
    end;
    RelSubgrupo := TRelSubgrupo.Create(Application);

    RelSubgrupo.QuickRep1.Preview;
    RelSubgrupo.Destroy;
end;

procedure TFrmEdSubGrupo.BitBtn7Click(Sender: TObject);
begin
    if edit1.Text <> '' then
        begin
            with ibdm.IBQsubgrupos do
            begin
                close;
                sql.Clear;
                sql.Add('select * from subgrupos');
                sql.Add('where descricao LIKE :p1');
                params[0].AsString := Trim(edit1.Text)+'%';
                open;
            end;
        end
       else
        begin
           with ibdm.IBQsubGrupos do
           begin
               close;
               sql.Clear;
               sql.Add('select * from subgrupos');
               open;
           end;
        end;
end;

end.
