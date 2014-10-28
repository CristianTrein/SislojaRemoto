unit Ucd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons,db;

type
  TFrmedcondi = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    BitBtn24: TBitBtn;
    BitBtn25: TBitBtn;
    BitBtn26: TBitBtn;
    BitBtn27: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn24Click(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmedcondi: TFrmedcondi;

implementation

uses DM, UEDCD;

{$R *.DFM}

procedure TFrmedcondi.BitBtn2Click(Sender: TObject);
begin
    Close;
end;

procedure TFrmedcondi.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
    ibdm.TBCD.locate('nomecli',edit1.Text,[loPartialKey]);
end;

procedure TFrmedcondi.BitBtn24Click(Sender: TObject);
    var
    vcont:integer;
begin
    vcont:=0;
    with ibdm.Q1 do
    begin
        Close;
        sql.Clear;
        sql.Add('Select max(controle) from DOC');
        open;
        vcont:= Fields[0].AsInteger;
    end;
    ibdm.TBCD.insert;
    ibdm.TBCDCONTROLE.Asinteger := vcont+1;
    ibdm.TBCDACE.asstring:='N';
    FrmEDCD:= TFrmEDCD.create(Application);
    FrmEDCD.ShowModal;
    FrmEDCD.Destroy;
    DBgrid1.Refresh;
end;

procedure TFrmedcondi.BitBtn25Click(Sender: TObject);
begin
    ibdm.TBCD.edit;
    FrmEDCD:= TFrmEDCD.create(Application);
    FrmEDCD.ShowModal;
    FrmEDCD.Destroy;
    DBgrid1.Refresh;
end;

procedure TFrmedcondi.BitBtn26Click(Sender: TObject);
    var
    msg:integer;
    vcont:integer;
begin
{    msg := application.MessageBox('Tem certeza da exclusão deste lançamento ???','Confirmação',68);
    if msg = 6 then
    begin
        vcont:=ibdm.TBCDCONTROLE.AsInteger;
        with ibdm.S1 do
        begin
            Close;
            sql.Clear;
            sql.Add('Delete from MOV');
            sql.Add('Where controle=:p0');
            params[0].AsInteger := vcont;
            Execquery;
        end;
        Commitwork1;
        ibdm.TBCD.Delete;
        ibdm.TBCD.Next;
    end;    }
end;

procedure TFrmedcondi.RadioButton1Click(Sender: TObject);
    var
    v1:string;
begin

    if radiobutton1.Checked = true then
    begin
        v1:='S';
        with ibdm.TBCD do
        begin
          filtered := False;
          close;
          filter:='ACE ='+QuotedStr(v1);
          filtered := True;
          open;
        end;
    end;
end;

procedure TFrmedcondi.RadioButton2Click(Sender: TObject);
    var
    v1:string;
begin
    if radiobutton2.Checked = true then
    begin
        v1:='N';
        with ibdm.TBCD do
        begin
          Filtered:=False;
          close;
          filter:='ACE ='+QuotedStr(v1);
          filtered := True;
          open;
        end;
    end;

end;

procedure TFrmedcondi.RadioButton3Click(Sender: TObject);
begin
    if radiobutton3.Checked = true then
    begin
        with ibdm.TBCD do
        begin
          Filtered:=False;
          close;
          filter:='';
          filtered := False;
          open;
        end;
    end;

end;

procedure TFrmedcondi.FormShow(Sender: TObject);
begin
    ibdm.TBCD.open;
    ibdm.TBICD.open;
end;

end.
