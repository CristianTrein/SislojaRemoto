unit UMovimentacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, rxToolEdit,
  XP_Form;

type
  TFrmMovimentacao = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    Label7: TLabel;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure Edit1Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMovimentacao: TFrmMovimentacao;

implementation

uses DM, URelMovimento;

{$R *.DFM}

procedure TFrmMovimentacao.Edit1Exit(Sender: TObject);
begin
    with ibdm.IBQProdutos do
    begin
        if locate('codigo',edit1.text,[]) then
          begin
            label1.Caption := ibdm.IBQProdutosDESCRICAO.AsString;
            label6.Caption := currtostr(ibdm.IBQProdutosESTOQUE.ascurrency);
          end
           else
            label1.Caption := 'Produto não localizado...';
    end;

    if label1.Caption <> 'Produto não localizado...' then
      begin
        bitbtn1.Enabled := true;
        bitbtn1.SetFocus;
        bitbtn3.Enabled := true;
      end;
end;

procedure TFrmMovimentacao.BitBtn2Click(Sender: TObject);
begin
    FrmMovimentacao.Close;
end;

procedure TFrmMovimentacao.BitBtn1Click(Sender: TObject);
begin
    with ibdm.IBQEntradas do
    begin
        close;
        sql.Clear;
        sql.Add('select * from movimento');
        sql.Add('where data >= :p0 and data <= :p1');
        params[0].AsDate := dateedit1.Date;
        params[1].AsDate := dateedit2.Date;
        open;
    end;

    dbgrid1.Visible := true;
    dbgrid1.Refresh;
end;

procedure TFrmMovimentacao.BitBtn3Click(Sender: TObject);
begin
    FrmRelMovimentacao := TFrmRelMovimentacao.create(application);
    FrmRelMovimentacao.QRLabel4.Caption := label1.Caption;
    with ibdm.IBQParam do
    begin
        close;
        open;
        FrmRelMovimentacao.QRLabel1.Caption := ibdm.IBQParamUSUARIO.AsString;
    end;
    with ibdm.IBQMovimento do
    begin
        close;
        sql.Clear;
        sql.Add('select * from movimento');
        sql.Add('where data >= :p0 and data <= :p1');
        params[0].AsDate := dateedit1.Date;
        params[1].AsDate := dateedit2.Date;
        open;
    end;
    FrmRelMovimentacao.QuickRep1.Preview;
    FrmRelMovimentacao.Destroy;
end;

procedure TFrmMovimentacao.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
