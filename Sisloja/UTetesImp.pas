unit UTetesImp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmTesteImp = class(TForm)
    btn1: TBitBtn;
    edt1: TEdit;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTesteImp: TFrmTesteImp;

implementation

uses UBematech_4200;

{$R *.dfm}

procedure TFrmTesteImp.btn1Click(Sender: TObject);
  var
    iretorno:Integer;
begin
  iRetorno := Le_Status();
  edt1.Text := IntToStr(iretorno);

end;

procedure TFrmTesteImp.btn2Click(Sender: TObject);
var
  x:Boolean;
begin
//
  if GetStatus(x) then
    ShowMessage('Blz')
    else
    ShowMessage('not Blz');


end;

end.
