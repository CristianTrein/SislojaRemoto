unit UClasTrib;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DBCtrls, XP_Form;

type
  TFrmClasTrib = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmClasTrib: TFrmClasTrib;

implementation

uses DM, UIncluirTribut;

{$R *.DFM}

procedure TFrmClasTrib.FormActivate(Sender: TObject);
begin
    ibdm.IBQClasTrib.Close;
    ibdm.IBQClasTrib.Open;
    dbgrid1.Refresh;
end;

procedure TFrmClasTrib.BitBtn1Click(Sender: TObject);
begin
    frmclastrib.Close;
end;

procedure TFrmClasTrib.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFrmClasTrib.BitBtn2Click(Sender: TObject);
begin
    FrmIncluirTribut := TFrmIncluirTribut.Create(application);
    FrmIncluirTribut.vnovo := true;
    with ibdm.IBQClasTrib do
    begin
        close;
        open;
        last;
        frmincluirtribut.Edit1.Text := inttostr(strtoint(ibdm.IBQClasTribCODIGO.asstring) + strtoint('1'));
    end;
    FrmIncluirTribut.ShowModal;
    FrmIncluirTribut.Destroy;
end;

procedure TFrmClasTrib.BitBtn3Click(Sender: TObject);
begin
    FrmIncluirTribut := TFrmIncluirTribut.Create(application);
    FrmIncluirTribut.vnovo := false;
    FrmIncluirTribut.Edit1.Text := ibdm.IBQClasTribCODIGO.AsString;
    FrmIncluirTribut.Edit2.Text := ibdm.IBQClasTribDESCRICAO.AsString;
    FrmIncluirTribut.ShowModal;
    FrmIncluirTribut.Destroy;
end;

procedure TFrmClasTrib.BitBtn4Click(Sender: TObject);
var
    vcod : string;
begin
    vcod := ibdm.IBQClasTribCODIGO.Asstring;
    with ibdm.Deleta do
    begin
        close;
        sql.Clear;
        sql.Add('delete from clastrib');
        sql.Add('where codigo = :p0');
        params[0].AsString := vcod;
        prepare;
        execquery;
    end;
    ibdm.IBQClasTrib.Close;
    ibdm.IBQClasTrib.Open;
    dbgrid1.Refresh;
end;

end.
