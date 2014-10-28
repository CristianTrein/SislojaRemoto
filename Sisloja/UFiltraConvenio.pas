unit UFiltraConvenio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, rxToolEdit, ExtCtrls, XP_Form;

type
  TFrmFiltraConvenio = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    DateEdit2: TDateEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFiltraConvenio: TFrmFiltraConvenio;

implementation

uses DM, URelConvenioCli;

{$R *.DFM}

procedure TFrmFiltraConvenio.BitBtn2Click(Sender: TObject);
begin
    close;
end;

procedure TFrmFiltraConvenio.FormActivate(Sender: TObject);
begin
    with ibdm.IBQConvenio do
    begin
        close;
        sql.Clear;
        sql.Add('select * from convenio');
        sql.Add('order by codigo ASC');
        prepare;
        open;
        first;
        while not eof do
        begin
            combobox1.Items.Add(ibdm.IBQConvenioNOME.AsString);
            next;
        end;
    end;
    dateedit1.Date := now;
    dateedit2.Date := now;
end;

procedure TFrmFiltraConvenio.BitBtn1Click(Sender: TObject);
begin
    FrmRelConvenioCli := TFrmRelConvenioCli.Create(Application);
    ibdm.IBQParam.Close;
    ibdm.IBQParam.Open;
    FrmRelConvenioCli.QRLabel1.Caption := ibdm.IBQParamUSUARIO.AsString;
    FrmRelConvenioCli.QRLabel6.Caption := 'Data inicial: '+datetostr(DateEdit1.Date)+' data final: '+datetostr(DateEdit2.Date);
    FrmRelConvenioCli.QRLabel7.Caption := 'Convênio: '+combobox1.Text;
    with FrmRelConvenioCli.IBQuery1 do
    begin
        close;
        sql.Clear;
        sql.Add('select * from creceber');
        sql.Add('where creceber.vencimento>=:p0 and creceber.vencimento<=:p1 and creceber.cliente in (select empresas.codigo from empresas where empresas.convenio=:p2 and empresas.cliente=:p3)');
        params[0].AsDate := int(DateEdit1.Date);
        params[1].AsDate := int(DateEdit2.Date);
        params[2].AsInteger := strtoint(label4.Caption);
        params[3].AsString := 'S';
        prepare;
        open;
    end;
    FrmRelConvenioCli.QuickRep1.Preview;
    FrmRelConvenioCli.Destroy;
    FrmFiltraConvenio.Close;
end;

procedure TFrmFiltraConvenio.ComboBox1Click(Sender: TObject);
begin
    with ibdm.IBQConvenio do
    begin
        close;
        open;
        locate('nome',combobox1.Text,[]);
        label4.Caption := inttostr(ibdm.IBQConvenioCODIGO.AsInteger);
    end;
end;

end.
