unit Uspcpesq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Buttons, Grids, DBGrids, RXDBCtrl, ExtCtrls, XP_Form;

type
  TFrmSPCPesq = class(TForm)
    BitBtn1: TBitBtn;
    RxDBGrid1: TRxDBGrid;
    lbcliente: TLabel;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    cliente:string;
  end;

var
  FrmSPCPesq: TFrmSPCPesq;

implementation

uses DM, RelSPC_;

{$R *.DFM}

procedure TFrmSPCPesq.BitBtn1Click(Sender: TObject);
begin
    Close;
end;

procedure TFrmSPCPesq.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
//  var
//  seq:integer;
begin
{    if Button = nBinsert then
    begin
        seq:=1;
        with ibdm.Q1 do
        begin
            Close;
            sql.Clear;
            sql.Add('Select max(seq) from SPCPESQ');
            sql.Add('Where cliente=:p0');
            params[0].AsString := cliente;
            Open;
            seq := Fields[0].asinteger + 1;
        end;
        ibdm.IBTspcpesq.Insert;
        ibdm.IBTspcpesq.FieldByName('cliente').asstring := cliente;
        ibdm.IBTspcpesq.FieldByName('seq').asinteger := seq;
        ibdm.IBTspcpesq.post;
        ibdm.IBTspcpesq.edit;
    end;     }
end;

procedure TFrmSPCPesq.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
  var
  seq:integer;
begin
    if Button = nBinsert then
    begin
        seq:=1;
        with ibdm.Q1 do
        begin
            Close;
            sql.Clear;
            sql.Add('Select max(seq) from SPCPESQ');
            sql.Add('Where cliente=:p0');
            params[0].AsString := cliente;
            Open;
            seq := Fields[0].asinteger + 1;
        end;
        ibdm.IBTspcpesq.Insert;
        ibdm.IBTspcpesq.FieldByName('cliente').asstring := cliente;
        ibdm.IBTspcpesq.FieldByName('seq').asinteger := seq;
        ibdm.IBTspcpesq.post;
        ibdm.IBTspcpesq.edit;
    end;
end;
procedure TFrmSPCPesq.BitBtn2Click(Sender: TObject);
begin
  IBDM.IBTspcpesq.First;
  RelSPC:=TRelSPC.create(Application);
  RelSPC.Preview;
  RelSPC.Free;
  IBDM.IBTspcpesq.First;
end;

end.
