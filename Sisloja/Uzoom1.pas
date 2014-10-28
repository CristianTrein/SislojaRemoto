unit Uzoom1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmZoom = class(TForm)
    GroupBox1: TGroupBox;
    lbnome: TLabel;
    BitBtn1: TBitBtn;
    lbnrcmp: TLabel;
    lbvlcmp: TLabel;
    lb1ac: TLabel;
    lbuc: TLabel;
    lblimite: TLabel;
    lbbloq: TLabel;
    lbprespg: TLabel;
    lbprespga: TLabel;
    lbpresap: TLabel;
    lbpresapa: TLabel;
    lbvprespg: TLabel;
    lbvprespga: TLabel;
    lbvpresap: TLabel;
    lbvpresapa: TLabel;
    lbmaiorat: TLabel;
    Lbmedat: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    lbav1: TLabel;
    lbav2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmZoom: TFrmZoom;

implementation

uses DM;

{$R *.dfm}

procedure TFrmZoom.FormShow(Sender: TObject);
  var
  vcli:integer;
begin
  vcli := Strtoint(ibdm.IBQClientesCODIGO.asstring);
  lbnome.Caption := 'Nome: ' + ibdm.IBQClientesnome.AsString ;
  lblimite.Caption := 'Limite de crédito: '+ ibdm.IBQClientesLIMCRED.AsString;
  lbbloq.Caption := 'Código de Bloqueio: ' + ibdm.IBQClientesBL.AsString;
  with ibdm.Q1 do
  begin
    Close;
    sql.Clear;
    sql.Add('Select count(0) from doctos');
    sql.Add('Where clifor=:p0');
    Params[0].AsInteger := vcli;
    Open;
    lbnrcmp.Caption := 'Nr. de compras: '+inttostr(Fields[0].AsInteger);
  end;
  with ibdm.Q1 do
  begin
    Close;
    sql.Clear;
    sql.Add('Select Min(data) from doctos');
    sql.Add('Where clifor=:p0');
    Params[0].AsInteger := vcli;
    Open;
    lb1ac.Caption := 'Data 1ª compra: '+ datetostr(fields[0].AsDateTime);
  end;
  with ibdm.Q1 do
  begin
    Close;
    sql.Clear;
    sql.Add('Select Max(data) from doctos');
    sql.Add('Where clifor=:p0');
    Params[0].AsInteger := vcli;
    Open;
    lbuc.Caption := 'Data Ultima compra: '+ datetostr(fields[0].AsDateTime);
  end;
  with ibdm.Q1 do
  begin
    Close;
    sql.Clear;
    sql.Add('Select Sum(valortotal) from doctos');
    sql.Add('Where clifor=:p0');
    Params[0].AsInteger := vcli;
    Open;
    lbvlcmp.Caption := 'Valor total de compras: '+ FormatCurr('0.00',Fields[0].AsCurrency);
  end;
  with ibdm.Q1 do
  begin
    Close;
    sql.Clear;
    sql.Add('Select Count(controle) from crecebidas');
    sql.Add('Where cliente=:p0 and vencimento>=pagamento');
    Params[0].AsInteger := vcli;
    Open;
    lbprespg.Caption := 'Nr. prest. pagas sem atrazo: '+ inttostr(Fields[0].asinteger);
  end;
  with ibdm.Q1 do
  begin
    Close;
    sql.Clear;
    sql.Add('Select Count(controle) from crecebidas');
    sql.Add('Where cliente=:p0 and vencimento<pagamento');
    Params[0].AsInteger := vcli;
    Open;
    lbprespga.Caption := 'Nr. prest. pagas com atraso: '+  inttostr(Fields[0].asinteger);
  end;
  with ibdm.Q1 do
  begin
    Close;
    sql.Clear;
    sql.Add('Select Sum(pago) from crecebidas');
    sql.Add('Where cliente=:p0 and vencimento>=pagamento');
    Params[0].AsInteger := vcli;
    Open;
    lbvprespg.Caption := 'Valor pago sem atrazo: '+  FormatCurr('0.00',Fields[0].AsCurrency);
  end;
  with ibdm.Q1 do
  begin
    Close;
    sql.Clear;
    sql.Add('Select Sum(pago) from crecebidas');
    sql.Add('Where cliente=:p0 and vencimento<pagamento');
    Params[0].AsInteger := vcli;
    Open;
    lbvprespga.Caption := 'Valor pago com atraso: '+  FormatCurr('0.00',Fields[0].AsCurrency);
  end;
  //
  with ibdm.Q1 do
  begin
    Close;
    sql.Clear;
    sql.Add('Select Count(controle) from creceber');
    sql.Add('Where cliente=:p0 and vencimento>=current_timestamp');
    Params[0].AsInteger := vcli;
    Open;
    lbpresap.Caption := 'Nr. prest. não vencidas: '+ inttostr(Fields[0].asinteger);
  end;
  with ibdm.Q1 do
  begin
    Close;
    sql.Clear;
    sql.Add('Select Count(controle) from creceber');
    sql.Add('Where cliente=:p0 and vencimento<current_timestamp');
    Params[0].AsInteger := vcli;
    Open;
    lbpresapa.Caption := 'Nr. prest. atrasadas: '+  inttostr(Fields[0].asinteger);
  end;
  with ibdm.Q1 do
  begin
    Close;
    sql.Clear;
    sql.Add('Select Sum(valordevido) from creceber');
    sql.Add('Where cliente=:p0 and vencimento>=current_timestamp');
    Params[0].AsInteger := vcli;
    Open;
    lbvpresap.Caption := 'Valor não vencido: '+  FormatCurr('0.00',Fields[0].AsCurrency);
  end;
  with ibdm.Q1 do
  begin
    Close;
    sql.Clear;
    sql.Add('Select Sum(valordevido) from creceber');
    sql.Add('Where cliente=:p0 and vencimento<current_timestamp');
    Params[0].AsInteger := vcli;
    Open;
    lbvpresapa.Caption := 'Valor prest. atrasadas: '+  FormatCurr('0.00',Fields[0].AsCurrency);
  end;
  with ibdm.Q1 do
  begin
    Close;
    sql.Clear;
    sql.Add('Select max(pagamento-vencimento) from crecebidas');
    sql.Add('Where cliente=:p0');
    Params[0].AsInteger := vcli;
    Open;
    lbmaiorat.Caption := 'Maior atraso em dias: '+  FormatCurr('0.',Fields[0].AsCurrency);
  end;
  with ibdm.Q1 do
  begin
    Close;
    sql.Clear;
    sql.Add('Select avg(pagamento-vencimento) from crecebidas');
    sql.Add('Where cliente=:p0');
    Params[0].AsInteger := vcli;
    Open;
    lbmedat.Caption := 'Média de atraso em dias: '+  FormatCurr('0.',Fields[0].AsCurrency);
  end;
  with ibdm.Q1 do
  begin
    Close;
    sql.Clear;
    sql.Add('select count(avisos.aviso1), count(avisos.aviso2), count(avisos.aviso3), count(avisos.spcent), count(avisos.spcsai) from creceber, avisos');
    sql.Add('Where cliente=:p0 and avisos.controle=creceber.controle and  (aviso1 is not null or aviso2 is not null or aviso3 is not null or spcent is not null or spcsai is not null)');
    Params[0].AsInteger := vcli;
    Open;
    lbav2.Caption := 'Avisos_1:  '+  Fields[0].Asstring + '  Avisos_2:  '+  Fields[1].Asstring +'  Avisos_3:  '+  Fields[2].Asstring +'  SPC_e:  '+  Fields[3].Asstring +'  SPC_s:  '+  Fields[4].Asstring ;
  end;
  with ibdm.Q1 do
  begin
    Close;
    sql.Clear;
    sql.Add('select count(avisos.aviso1), count(avisos.aviso2), count(avisos.aviso3), count(avisos.spcent), count(avisos.spcsai) from crecebidas, avisos');
    sql.Add('Where cliente=:p0 and avisos.controle=crecebidas.controle and  (aviso1 is not null or aviso2 is not null or aviso3 is not null or spcent is not null or spcsai is not null)');
    Params[0].AsInteger := vcli;
    Open;
    lbav1.Caption := 'Avisos_1:  '+  Fields[0].Asstring + '  Avisos_2:  '+  Fields[1].Asstring +'  Avisos_3:  '+  Fields[2].Asstring +'  SPC_e:  '+  Fields[3].Asstring +'  SPC_s:  '+  Fields[4].Asstring ;
  end;




end;

procedure TFrmZoom.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
