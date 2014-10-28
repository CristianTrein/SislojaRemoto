unit UIncluirTribut;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TFrmIncluirTribut = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vnovo : boolean;
  end;

var
  FrmIncluirTribut: TFrmIncluirTribut;

implementation

uses DM, UClasTrib;

{$R *.DFM}

procedure TFrmIncluirTribut.BitBtn2Click(Sender: TObject);
begin
    FrmIncluirTribut.Close;
end;

procedure TFrmIncluirTribut.BitBtn1Click(Sender: TObject);
begin
    if vnovo = true then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('insert into clastrib');
            sql.Add('(codigo,descricao)');
            sql.Add('values (:p0,:p1)');
            params[0].AsString := edit1.text;
            params[1].AsString := edit2.Text;
            prepare;
            execquery;
        end;
    end;

    if vnovo = false then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('Update clastrib');
            sql.Add('set descricao=:p0,codigo=:p1');
            sql.Add('where codigo=:p1') ;
            params[0].AsString := edit2.Text;
            params[1].AsString := edit1.Text;
            prepare;
            execquery;
        end;
    end;
    ibdm.IBQClasTrib.Close;
    ibdm.IBQClasTrib.Open;
    FrmClasTrib.DBGrid1.Refresh;
    close;
end;

end.
