unit UListaProdutos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, XP_Form, StdCtrls, Buttons,db;

type
  TFrmProdutos = class(TForm)
    Edit1: TEdit;
    BtnFechar: TBitBtn;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    procedure BtnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProdutos: TFrmProdutos;

implementation

uses DM, UItensVenda;

{$R *.DFM}

procedure TFrmProdutos.BtnFecharClick(Sender: TObject);
begin
    Close;
end;

procedure TFrmProdutos.FormShow(Sender: TObject);
begin
    with  ibdm.IBQProdutos do
    begin
        Close;
        sql.Clear;
        sql.Add('Select * from produtos');
        sql.Add('order by descricao');
    end;
    ibdm.IBQProdutos.Open;
end;

procedure TFrmProdutos.DBGrid1DblClick(Sender: TObject);
begin
    Frmitensvenda.Edcodigo.Text := ibdm.IBQProdutosCODIGO.AsString;
    Close;
end;

procedure TFrmProdutos.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
    with ibdm.IBQProdutos do
        locate('descricao',edit1.text + key,[loPartialKey]);
end;

end.
