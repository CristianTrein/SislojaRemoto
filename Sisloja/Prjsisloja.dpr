program Prjsisloja;

uses
  Forms,
  Udiv in 'Udiv.pas' {Form1},
  DM in 'DM.pas' {IBDM: TDataModule},
  URelFiltraCai in 'URelFiltraCai.pas' {FrmRelFiltraCai},
  URelCaixa in 'URelCaixa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TIBDM, IBDM);
  Application.CreateForm(TFrmRelFiltraCai, FrmRelFiltraCai);
  Application.Run;
end.
