unit UCartao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, Grids, DBGrids, ExtCtrls, XP_Form;

type
  TFrmCartao = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCartao: TFrmCartao;

implementation

uses DM, UEdCartao;

{$R *.DFM}

procedure TFrmCartao.BitBtn1Click(Sender: TObject);
begin
    FrmEdCartao := TFrmEdCartao.Create(Application);
    FrmEdCartao.vnovo := true;
    with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select max(controle) from cartao');
        prepare;
        open;
        FrmEdCartao.Edit1.Text := inttostr(fields[0].AsInteger + 1);
    end;
    FrmEdCartao.ShowModal;
    FrmEdCartao.Destroy;
end;

procedure TFrmCartao.BitBtn2Click(Sender: TObject);
begin
    FrmEdCartao := TFrmEdCartao.Create(Application);
    FrmEdCartao.vnovo := false;
    FrmEdCartao.Edit1.Text := ibdm.IBQCartaoCONTROLE.AsString;
    FrmEdCartao.DateEdit1.Date := ibdm.IBQCartaoDATA.AsDateTime;
    FrmEdCartao.DateEdit2.Date := ibdm.IBQCartaoDATACREDITO.AsDateTime;
    FrmEdCartao.Edit2.Text := ibdm.IBQCartaoNOME.AsString;
    FrmEdCartao.Edit3.Text := ibdm.IBQCartaoNUMCARTAO.AsString;
    FrmEdCartao.Edit4.Text := ibdm.IBQCartaoVALIDADE.AsString;
    FrmEdCartao.Edit5.Text := ibdm.IBQCartaoPARCELAS.AsString;
    FrmEdCartao.MegaEditNumerico1.AsCurrency := ibdm.IBQCartaoVALOR.AsCurrency;
    FrmEdCartao.ShowModal;
    FrmEdCartao.Destroy;
end;

procedure TFrmCartao.BitBtn3Click(Sender: TObject);
begin
    with ibdm.Deleta do
    begin
        close;
        sql.Clear;
        sql.Add('delete from cartao');
        sql.Add('where controle =:p0');
        params[0].AsInteger := ibdm.IBQCartaoCONTROLE.AsInteger;
        prepare;
        ExecQuery;
    end;
    CommitWork;
    ibdm.IBQCartao.Close;
    ibdm.IBQCartao.Open;
end;

procedure TFrmCartao.BitBtn4Click(Sender: TObject);
begin
    close;
end;

end.
