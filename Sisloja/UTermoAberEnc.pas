unit UTermoAberEnc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, XP_Form;

type
  TFrmTermoAberEnc = class(TForm)
    Label9: TLabel;
    Edit4: TEdit;
    Label11: TLabel;
    Edit11: TEdit;
    Edit12: TEdit;
    Label12: TLabel;
    Label10: TLabel;
    Edit5: TEdit;
    Label1: TLabel;
    Edit6: TEdit;
    Label2: TLabel;
    Edit7: TEdit;
    Label3: TLabel;
    Edit8: TEdit;
    Label4: TLabel;
    Edit9: TEdit;
    Edit1: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit2: TEdit;
    Edit10: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Edit3: TEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTermoAberEnc: TFrmTermoAberEnc;

implementation

uses DM;

{$R *.DFM}

procedure TFrmTermoAberEnc.FormActivate(Sender: TObject);
begin
    with ibdm.iBQparam do
    begin
        close;
        open;
        edit6.Text := ibdm.IBQParamUSUARIO.AsString; //dbedit1.Text;
        edit7.Text := ibdm.IBQParamENDERECO.AsString; //dbedit2.Text;
        edit8.Text := ibdm.IBQParamCIDADE.AsString; //dbedit3.Text;
        edit9.Text := ibdm.IBQParamUF.AsString; //dbedit4.Text;
        edit10.Text := ibdm.IBQParamCNPJ.AsString; //dbedit7.Text;
    end;
end;

procedure TFrmTermoAberEnc.BitBtn2Click(Sender: TObject);
begin
    close;
end;

end.
