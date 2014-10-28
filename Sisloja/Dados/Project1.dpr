program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FrmPonte};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPonte, FrmPonte);
  Application.Run;
end.
