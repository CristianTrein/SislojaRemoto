unit USelCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids,DB;

type
  TFrmSelCli = class(TForm)
    DBGrid1: TDBGrid;
    pscli: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button1: TButton;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure pscliKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelCli: TFrmSelCli;

implementation

uses DM, Uetiqcli;

{$R *.dfm}

procedure TFrmSelCli.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmSelCli.BitBtn2Click(Sender: TObject);
  var
  controle:integer;
  marca:string;
begin
  controle := ibdm.IBTTemprecCONTROLE.Asinteger;
  marca := ibdm.IBTTemprecM.AsString;
  if marca = 'X' then
    marca := ' '
   else
    marca := 'X';
  with ibdm.IBTTemprec do
  begin
    edit;
    FieldByname('M').AsString := marca;
    Post;
  end;
  DBgrid1.Repaint;

end;

procedure TFrmSelCli.pscliKeyPress(Sender: TObject; var Key: Char);
begin
  with ibdm.IBTTemprec do
  begin
    Locate('historico',pscli.text+key,[LoPartialKey]);
  end;
end;

procedure TFrmSelCli.FormShow(Sender: TObject);
  var
  cliente:string;
  nome:string;
  dtnasc:real;
  vcontador:integer;
begin
  vcontador := 1;
  with ibdm.IBTTemprec do
  begin
    EmptyTable;
    Close;
    Open;
  end;
  With ibdm.Consulta do
  begin
    First;
    While not eof do
    begin
      cliente := FieldByname('codigo').AsString;
      nome := FieldByname('nome').AsString;
      dtnasc := FieldByname('dtnasc').AsDateTime;
      with ibdm.IBTTemprec do
      begin
        insert;
        FieldByname('controle').asinteger := vcontador;
        FieldByname('cliente').AsString:=cliente;
        FieldByname('historico').AsString := nome;
        FieldByname('vencimento').AsDateTime := dtnasc;
        FieldByname('M').AsString := 'X';
        Post;
        vcontador:= vcontador+1;
      end;
      next;
    end;
    CommitWork;
  end;

end;

procedure TFrmSelCli.Button1Click(Sender: TObject);
  var
  controle:integer;
  marca:string;
begin
  controle := ibdm.IBTTemprecCONTROLE.Asinteger;
  marca := ibdm.IBTTemprecM.AsString;
  if marca = 'X' then
    marca := ' '
   else
    marca := 'X';
  with ibdm.IBTTemprec do
  begin
    First;
    While not eof do
    begin
      edit;
      FieldByname('M').AsString := marca;
      Post;
      Next;
   end;
  end;
  DBgrid1.Repaint;



end;

procedure TFrmSelCli.BitBtn3Click(Sender: TObject);
begin
       with ibdm.Consulta do
          begin
              close;
              sql.Clear;
              sql.Add('select clientes.*, temprec.m  from clientes,temprec');
              sql.Add('where clientes.codigo=temprec.cliente and temprec.m = :p0');
              sql.Add('order by nome');
              params[0].Asstring := 'X';
              Open;
              First;
              EtiqCli := TEtiqCli.create(application);
              EtiqCli.QuickRep1.Preview;
              EtiqCli.Destroy;
          end;

end;

end.
