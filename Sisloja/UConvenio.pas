unit UConvenio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Grids, DBGrids, Buttons, ExtCtrls, XP_Form;

type
  TFrmConvenio = class(TForm)
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    BitBtn6: TBitBtn;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vnovo : boolean;
  end;

var
  FrmConvenio: TFrmConvenio;

implementation

uses DM;

{$R *.DFM}

procedure TFrmConvenio.BitBtn5Click(Sender: TObject);
begin
    close;
end;

procedure TFrmConvenio.BitBtn2Click(Sender: TObject);
begin
    vnovo := true;
    label1.Visible := true;
    label2.Visible := true;
    edit2.Visible := true;
    edit3.Visible := true;
    bitbtn6.Visible := true;
    with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select max(codigo) from convenio');
        prepare;
        open;
        edit2.Text := inttostr(Fields[0].AsInteger + 1);
    end;
    edit3.SetFocus;
end;

procedure TFrmConvenio.BitBtn6Click(Sender: TObject);
begin
    if vnovo = true then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('insert into convenio');
            sql.Add('(codigo,nome)');
            sql.Add('values(:p0,:p1)');
            params[0].AsInteger := strtoint(edit2.Text);
            params[1].AsString := edit3.Text;
            prepare;
            ExecQuery;
        end;
    end;

    if vnovo = false then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('update convenio');
            sql.Add('set nome=:p0');
            sql.Add('where codigo =:p1');
            params[0].AsString := edit3.Text;
            params[1].AsInteger := strtoint(edit2.Text);
            prepare;
            ExecQuery;
        end;
    end;
    ibdm.IBQConvenio.Close;
    ibdm.IBQConvenio.Open;
    CommitWork;

    edit2.Text := '';
    edit3.Text := '';
    label1.Visible := false;
    label2.Visible := false;
    edit2.Visible := false;
    edit3.Visible := false;
    bitbtn6.Visible := false;

end;

procedure TFrmConvenio.BitBtn3Click(Sender: TObject);
begin
    vnovo := false;
    label1.Visible := true;
    label2.Visible := true;
    edit2.Visible := true;
    edit2.Enabled := false;
    edit3.Visible := true;
    bitbtn6.Visible := true;
    edit3.SetFocus;
    edit2.Text := inttostr(ibdm.IBQConvenioCODIGO.asinteger);
    edit3.Text := ibdm.IBQConvenioNOME.AsString;
end;

procedure TFrmConvenio.BitBtn4Click(Sender: TObject);
begin
    with ibdm.Deleta do
    begin
        close;
        sql.Clear;
        sql.Add('delete from convenio');
        sql.Add('where codigo=:p0');
        params[0].AsInteger := ibdm.IBQConvenioCODIGO.AsInteger;
        prepare;
        ExecQuery;
    end;
    ibdm.IBQConvenio.Close;
    ibdm.IBQConvenio.Open;
    CommitWork;
    ShowMessage('Convênio excluído com sucesso!');
end;

procedure TFrmConvenio.FormActivate(Sender: TObject);
begin
    ibdm.IBQConvenio.Close;
    ibdm.IBQConvenio.Open;
    ibdm.IBQConvenio.Last;
end;

procedure TFrmConvenio.BitBtn1Click(Sender: TObject);
begin
    if edit1.Text <> '' then
    begin
        with ibdm.IBQConvenio do
        begin
            close;
            sql.Clear;
            sql.Add('select * from convenio');
            sql.Add('where nome LIKE :p1');
            params[0].AsString := Trim(edit1.Text)+'%';
            prepare;
            open;
        end;
    end
    else
    begin
        with ibdm.IBQConvenio do
        begin
            close;
            sql.Clear;
            sql.Add('select * from convenio');
            sql.Add('order by codigo ASC');
            prepare;
            open;
        end;
    end;
end;

end.
