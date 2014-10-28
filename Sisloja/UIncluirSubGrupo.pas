unit UIncluirSubGrupo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, XP_Form;

type
  TFrmIncluirSubGrupo = class(TForm)
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vnovo : boolean;
  end;

var
  FrmIncluirSubGrupo: TFrmIncluirSubGrupo;

implementation

uses DM, UTrCaixa, USubGrupo;

{$R *.DFM}

procedure TFrmIncluirSubGrupo.BitBtn2Click(Sender: TObject);
begin
    close;
end;

procedure TFrmIncluirSubGrupo.BitBtn1Click(Sender: TObject);
var
    vcod : integer;
begin
    with ibdm.IBQGrupos do
    begin
        close;
        open;
        locate('descricao',combobox1.Text,[]);
        vcod := ibdm.ibqgruposCODIGO.asinteger;
    end;
    if vnovo = true then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('insert into subgrupos');
            sql.Add('(codigo,grupo,descricao)');
            sql.Add('values (:p0,:p1,:p2)');
            params[0].AsInteger := strtoint(edit1.text);
            params[1].AsInteger := vcod;
            params[2].AsString := edit3.Text;
            prepare;
            execquery;
        end;
        ibdm.IBQSubgrupos.close;
        ibdm.IBQSubgrupos.Open;
        Frmedsubgrupo.DBGrid1.Refresh;
    end;

    if vnovo = false then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('Update subgrupos');
            sql.Add('set descricao=:p0,grupo=:p1,codigo=:p2');
            sql.Add('where codigo=:p2') ;
            params[0].AsString := edit3.Text;
            params[1].Asinteger := vcod;
            params[2].AsInteger := strtoint(edit1.text);
            prepare;
            execquery;
        end;
        ibdm.IBQsubgrupos.close;
        ibdm.IBQsubgrupos.Open;
        frmedsubgrupo.DBGrid1.Refresh;
    end;
    close;
end;

procedure TFrmIncluirSubGrupo.FormActivate(Sender: TObject);
begin
    with ibdm.IBQGrupos do
    begin
        close;
        open;
        prior;
        while not eof do
        begin
            combobox1.Items.Add(fieldbyname('descricao').asstring);
            next;
        end;
    end;
end;

procedure TFrmIncluirSubGrupo.ComboBox1Exit(Sender: TObject);
var
    vcod : integer;
begin
    with ibdm.IBQGrupos do
    begin
        close;
        open;
        locate('descricao',combobox1.Text,[]);
        vcod := ibdm.ibqgruposCODIGO.asinteger;
    end;

    with ibdm.IBQsubgrupos do
    begin
        close;
        open;
        if locate('grupo',vcod,[]) then
        begin
            while (FieldByname('grupo').asinteger = vcod) and (not eof) do
            begin
                Edit1.Text := inttostr(FieldByname('codigo').asinteger + 1);
                next;
            end;
        end
        else
            edit1.Text := '1';
    end;
end;

end.
