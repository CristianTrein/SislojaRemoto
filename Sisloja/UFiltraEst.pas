unit UFiltraEst;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TFrmFiltraEst = class(TForm)
    RGroup: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ComboBox1: TComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFiltraEst: TFrmFiltraEst;

implementation

uses DM, URelInventario;

{$R *.DFM}

procedure TFrmFiltraEst.BitBtn2Click(Sender: TObject);
begin
    close;
end;

procedure TFrmFiltraEst.BitBtn1Click(Sender: TObject);
var
    vnome : string;
    vsetor : integer;
begin
    vnome := Combobox1.Text;
    if ibdm.IBQGrupos.Locate('setor',vnome,[]) then
        vsetor := ibdm.IBQGruposCODIGO.Value
       else
        vsetor := 0;

    FrmInventaRel := TFrmInventaRel.create(application);
    with FrmInventaRel do
        begin
            IBQuery1.Close;
            IBQuery1.SQL.Clear;
            IBQuery1.SQL.add('Select * from produtos');
            if vsetor > 0 then
                begin
                    IBQuery1.sql.Add('Where grupo =:p1');
                    IBQuery1.sql.Add('Order by produto');
                    IBQuery1.Params[0].asinteger := vsetor;
                end;
            IBQuery1.open;
        end;
    FrmInventaRel.QuickRep1.Preview;
    FrmInventaRel.Destroy;
    frmFiltraEst.close;
end;

procedure TFrmFiltraEst.FormActivate(Sender: TObject);
var
    vnome : string;
begin
    combobox1.Text := '';
    combobox1.Items.Add('Todos');
    with ibdm.IBQGrupos do
      begin
        close;
        open;
        While not eof do
            begin
                vnome := ibdm.IBQGruposDESCRICAO.AsString;
                combobox1.Items.Add(vnome);
                next;
            end;
      end;
end;
end.
