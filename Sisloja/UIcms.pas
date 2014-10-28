unit UIcms;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, Grids, DBGrids, XP_Form;

type
  TFrmIcms = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIcms: TFrmIcms;

implementation

uses DM, UIncluirIcms;

{$R *.DFM}

procedure TFrmIcms.BitBtn1Click(Sender: TObject);
begin
    frmicms.Close;
end;

procedure TFrmIcms.FormActivate(Sender: TObject);
begin
    ibdm.IBQIcms.Close;
    ibdm.IBQIcms.Open;
end;

procedure TFrmIcms.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFrmIcms.BitBtn2Click(Sender: TObject);
begin
    frmincluiricms := Tfrmincluiricms.Create(application);
    frmincluiricms.vnovo := true;
    with ibdm.IBQIcms do
    begin
        last;
        frmincluiricms.Edit1.Text := inttostr(ibdm.ibqicmscodigo.asinteger + 1);
    end;
    frmincluiricms.ShowModal;
    frmincluiricms.Destroy;
end;

procedure TFrmIcms.BitBtn4Click(Sender: TObject);
begin
    frmincluiricms := Tfrmincluiricms.Create(application);
    Frmincluiricms.Edit1.Text := inttostr(ibdm.IBQIcmsCODIGO.asinteger);
    Frmincluiricms.Edit2.Text := ibdm.IBQIcmsALIQUOTA.AsString;
    frmincluiricms.vnovo := false;
    frmincluiricms.ShowModal;
    frmincluiricms.Destroy;
end;

procedure TFrmIcms.BitBtn3Click(Sender: TObject);
var
    vcod : integer;
begin
    vcod := ibdm.IBQIcmsCODIGO.AsInteger;
    with ibdm.Deleta do
    begin
        close;
        sql.Clear;
        sql.Add('delete from icms');
        sql.Add('where codigo = :p0');
        params[0].AsInteger := vcod;
        prepare;
        execquery;
    end;
    ibdm.IBQIcms.Close;
    ibdm.IBQIcms.Open;
    dbgrid1.Refresh;
end;

end.
