unit UfrmresumoCX;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, XP_Form, RXCtrls, XP_Panel;

type
  TFrmresumoCX = class(TForm)
    ttfXP_Panel1: ttfXP_Panel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Shape1: TShape;
    BtnFechar: TBitBtn;
    procedure BtnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmresumoCX: TFrmresumoCX;

implementation

{$R *.DFM}

procedure TFrmresumoCX.BtnFecharClick(Sender: TObject);
begin
    Close;
end;

end.
