unit UInventario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, XP_Form;

type
  TFrmInventario = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    btngravar: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInventario: TFrmInventario;

implementation

uses DM, UFiltraEst, URelRegInven;

{$R *.DFM}

procedure TFrmInventario.BitBtn2Click(Sender: TObject);
begin
    edit1.Enabled:=true;
    edit2.Enabled:=true;
    edit3.Enabled:=true;
    edit1.SetFocus;
    btngravar.Enabled:=true;
    edit2.text := datetostr(now);
end;

procedure TFrmInventario.btngravarClick(Sender: TObject);
begin
    with ibdm.Grava do
    begin
        close;
        sql.Clear;
        sql.Add('insert into inventario');
        sql.Add('(produto,data,quantidade)');
        sql.Add('values(:p0,:p1,:p2)');
        params[0].AsString := edit1.Text;
        params[1].AsDate := strtodate(edit2.text);
        params[2].AsCurrency := strtocurr(edit3.text);
        prepare;
        execquery;
    end;
    ibdm.IBQInventario.Close;
    ibdm.IBQInventario.Open;
    edit1.Text := '';
    edit2.Text := datetostr(now);
    edit3.Text := '';
end;

procedure TFrmInventario.BitBtn3Click(Sender: TObject);
var
    vcod:integer;
    vsld:currency;
begin
    with ibdm.ibqInventario do
    begin
        close;
        open;
        first;
        While not eof do
            begin
//                vcod := ibdm.ibqInventarioCodigo.AsInteger;
                vsld := ibdm.ibqinventarioquantidade.AsCurrency;
                with ibdm.ibqprodutos do
                    begin
                        locate('Codigo',edit1.Text,[]);
                        with ibdm.Grava do
                        begin
                            close;
                            sql.Clear;
                            sql.Add('update produtos');
                            sql.Add('set quantidade =:p0');
                            sql.Add('where codigo =:p1');
                            params[0].AsCurrency := vsld;
                            params[1].AsString := edit1.Text;
                            prepare;
                            execquery;
                        end;
                    end;
                next;
            end;
        close;
    end;
end;

procedure TFrmInventario.Edit1Exit(Sender: TObject);
begin
    with ibdm.ibqprodutos do
    begin
        close;
        open;
        if locate('codigo',edit1.text,[]) then
            label4.Caption := ibdm.IBQProdutosDESCRICAO.AsString
           else
            label4.Caption := 'CÓDIGO NÃO LOCALIZADO...';
    end;
end;

procedure TFrmInventario.BitBtn7Click(Sender: TObject);
begin
    close;
end;

procedure TFrmInventario.BitBtn1Click(Sender: TObject);
begin
    FrmFiltraEst := TFrmFiltraEst.Create(Application);
    FrmFiltraEst.ShowModal;
    FrmFiltraEst.Destroy;
end;

procedure TFrmInventario.BitBtn4Click(Sender: TObject);
begin
    FrmRelRegInven := TFrmRelRegInven.create(application);
    FrmRelRegInven.IBQuery1.Close;
    FrmRelRegInven.IBQuery1.Open;
    FrmRelRegInven.quickrep1.preview;
    FrmRelRegInven.Destroy;
end;

end.
