unit UTipoServ;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, Grids, DBGrids, Mask, rxToolEdit,
  rxCurrEdit, MegaEditNumerico, XP_Form;

type
  TFrmTipoServ = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    CurrencyEdit1: TMegaEditNumerico;
    Label3: TLabel;
    BitBtn5: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vnovo : boolean;
  end;

var
  FrmTipoServ: TFrmTipoServ;

implementation

uses DM;

{$R *.DFM}

procedure TFrmTipoServ.BitBtn1Click(Sender: TObject);
var
    vtam : integer;
    vcod : integer;
    vped : string;
begin
    vnovo := true;
    with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select max(codigo) from tiposerv');
        prepare;
        open;
        if Fields[0].AsString = '' then
            vcod := 1
           else
            vcod := Fields[0].AsInteger + 1;
    end;
    vtam := Length(Trim(inttostr(vcod)));
    Case vtam of
        1: vped := '0000' + inttostr(vcod);
        2: vped := '000' + inttostr(vcod);
        3: vped := '00' + inttostr(vcod);
        4: vped := '0' + inttostr(vcod);
        5: vped := inttostr(vcod);
    end;
    edit1.Text := vped;
    edit1.Enabled := false;
    edit2.SetFocus;
    bitbtn5.Enabled := true;
end;

procedure TFrmTipoServ.FormActivate(Sender: TObject);
begin
    ibdm.IBQTipoServ.Close;
    ibdm.IBQTipoServ.Open;
end;

procedure TFrmTipoServ.BitBtn4Click(Sender: TObject);
begin
    close;
end;

procedure TFrmTipoServ.BitBtn5Click(Sender: TObject);
begin
    if vnovo = true then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('insert into tiposerv');
            sql.Add('(descricao,valor,codigo)');
            sql.Add('values(:p0,:p1,:p2)');
            params[0].AsString := edit2.Text;
            params[1].AsCurrency := currencyedit1.AsCurrency;
            params[2].AsString := edit1.Text;
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
            sql.Add('update tiposerv');
            sql.Add('set descricao=:p0,valor=:p1');
            sql.Add('where codigo=:p2');
            params[0].AsString := edit2.Text;
            params[1].AsCurrency := currencyedit1.AsCurrency;
            params[2].AsString := edit1.Text;
            prepare;
            ExecQuery;
        end;
    end;
    ibdm.IBQTipoServ.Close;
    ibdm.IBQTipoServ.Open;
    CommitWork;
    edit1.Text := '';
    edit2.Text := '';
    currencyedit1.AsCurrency := 0;
    bitbtn5.Enabled := false;
end;

procedure TFrmTipoServ.BitBtn2Click(Sender: TObject);
begin
    vnovo := false;
    edit1.Text := ibdm.IBQTipoServCODIGO.AsString;
    edit2.Text := ibdm.IBQTipoServDESCRICAO.AsString;
    currencyedit1.AsCurrency := ibdm.IBQTipoServVALOR.AsCurrency;
    edit1.Enabled := false;
    edit2.SetFocus;
    bitbtn5.Enabled := true;
end;

procedure TFrmTipoServ.BitBtn3Click(Sender: TObject);
var
    msg : integer;
begin
    msg := Application.MessageBox('Deseja excluir Serviço???','Atenção p/ EXCLUSÃO',68);
    if msg = 6 then
    begin
        with ibdm.Deleta do
        begin
            close;
            sql.Clear;
            sql.Add('delete from tiposerv');
            sql.Add('where codigo=:p0');
            params[0].AsString := ibdm.IBQTipoServCODIGO.AsString;
            prepare;
            ExecQuery;
        end;
        ibdm.IBQTipoServ.Close;
        ibdm.IBQTipoServ.Open;
        CommitWork;
    end;
end;

end.
