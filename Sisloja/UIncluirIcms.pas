unit UIncluirIcms;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TFrmIncluirIcms = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vnovo : boolean;
  end;

var
  FrmIncluirIcms: TFrmIncluirIcms;

implementation

uses DM, UIcms;

{$R *.DFM}

procedure TFrmIncluirIcms.BitBtn1Click(Sender: TObject);
begin
    if vnovo = true then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('Insert into icms');
            sql.Add('(codigo,aliquota)');
            sql.Add('values (:p0,:p1)');
            params[0].AsInteger := strtoint(edit1.text);
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
            sql.Add('Update icms');
            sql.Add('set aliquota=:p0,codigo=:p1');
            sql.Add('where codigo = :p1') ;
            params[0].AsString := edit2.Text;
            params[1].AsInteger := strtoint(edit2.Text);
            prepare;
            execquery;
        end;
    end;
    ibdm.IBQIcms.Close;
    ibdm.IBQIcms.open;
    FrmIcms.DBGrid1.Refresh;
    close;
end;

procedure TFrmIncluirIcms.BitBtn2Click(Sender: TObject);
begin
    frmincluiricms.Close;
end;

end.
