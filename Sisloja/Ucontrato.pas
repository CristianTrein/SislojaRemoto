unit Ucontrato;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, RxRichEd, rxDBRichEd, ExtCtrls, XP_Form;

type
  TFrmcontrato = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    txtcontrato: TRxRichEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmcontrato: TFrmcontrato;

implementation

uses DM;

{$R *.DFM}

procedure TFrmcontrato.BitBtn1Click(Sender: TObject);
    var
    contrato:string;

begin
    contrato := txtcontrato.Text;
    with ibdm.Cheka do
    begin
        Close;
        sql.Clear;
        sql.Add('update param');
        sql.Add('Set contrato = :p0');
        params[0].AsString := contrato;
        ExecQuery;
    end;
    CommitWork;
    ibdm.IBQParam.Close;
    ibdm.IBQParam.Open;
    Close;
end;

procedure TFrmcontrato.BitBtn2Click(Sender: TObject);
begin
    Close;
end;

end.
