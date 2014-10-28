unit UComissoes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DBCtrls, XP_Form, Mask,
  rxToolEdit;

type
  TFrmComissoes = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    btn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmComissoes: TFrmComissoes;

implementation

uses DM, UPrincipal, URelComissoes;

{$R *.DFM}

procedure TFrmComissoes.BitBtn1Click(Sender: TObject);
begin
    frmComissoes.Close;
end;

procedure TFrmComissoes.BitBtn2Click(Sender: TObject);
var
    vnota : integer;
    vvend : integer;
    vcomis : real;
    vnome : string;
    vcont : integer;
begin
    vcomis := 0;
    vvend := ibdm.IBQComissoesVENDEDOR.Value;
    with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select comissao,vendedor,pago from comissoes');
        sql.Add('where vendedor =:p0 and liberado >=:p1 and liberado <=:p2 and pago is null');
        params[0].AsInteger := vvend;
        params[1].AsDate := int(dateedit1.Date);
        params[2].AsDate := int(dateedit2.Date);
        prepare;
        open;
        first;
        while not eof do
        begin
            vcomis := vcomis + Fields[0].AsCurrency;
            next;
        end;
        ShowMessage('Valor Pago = ' + FormatCurr('0.00',vcomis));

        if ibdm.IBQUsuario.Locate('codigo',vvend,[]) then
            vNOME := ibdm.IBQUsuarioNOME.AsString;
    end;
    //Debito no caixa
   { with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select max(controle) from caixa');
        prepare;
        open;
        vcont := fields[0].AsInteger + 1;
    end;
    with ibdm.Grava do
    begin
        close;
        sql.Clear;
        sql.Add('insert into caixa');
        sql.Add('(controle,documento,historico,data,valor,operacao,transacao,operador)');
        sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)');
        params[0].AsInteger := vcont;
        params[1].asstring := 'COMISSÃO';
        params[2].AsString := 'PAGAMENTOS em GERAL(comissão) - '+vnome;
        params[3].AsDateTime := int(now);
        params[4].AsCurrency := vcomis;
        params[5].AsString := 'D';
        params[6].AsInteger := 6;
        params[7].AsInteger := frmprincipal.voperador;
        prepare;
        ExecQuery;
    end;   }

    // Fazer relatório resumo do pagamento;

    with ibdm.Grava do
    begin
        close;
        sql.Clear;
        sql.Add('update comissoes');
        sql.Add('set pago=:p0');
        sql.Add('where vendedor =:p1 and liberado >=:p2 and liberado <=:p3 and pago is null');
        params[0].AsDate := int(now);
        params[1].AsInteger := vvend;
        params[2].AsDate := int(dateedit1.Date);
        params[3].AsDate := int(dateedit2.Date);
        ExecQuery;
    end;
    CommitWork;
    ibdm.IBQComissoes.Close;
    ibdm.IBQComissoes.Open;
    DBgrid1.Refresh;

end;

procedure TFrmComissoes.FormActivate(Sender: TObject);
begin
    with ibdm.IBQComissoes do
    begin
        Close;
        sql.Clear;
        sql.Add('Select * from comissoes');
        sql.Add('order by nota desc,vendedor ASC') ;
        Open;
    end;
    dateedit1.Date := now;
    dateedit2.Date := now;
end;

procedure TFrmComissoes.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFrmComissoes.BitBtn3Click(Sender: TObject);
    var
    vendedor:integer;
begin
    vendedor:=ibdm.IBQComissoesVENDEDOR.AsInteger;
    FrmRelComissoes := TFrmRelComissoes.Create(application);
    with ibdm.IBQParam do
    begin
        open;
        FrmRelComissoes.QRLabel1.Caption := ibdm.IBQParamUSUARIO.AsString;
        close;
    end;
    with ibdm.IBQComissoes do
    begin
        close;
        sql.Clear;
        sql.Add('select * from comissoes');
        sql.Add('where vendedor =:p0 and liberado >=:p1 and liberado <=:p2 and pago is null');
        params[0].AsInteger := vendedor;
        params[1].AsDate := int(dateedit1.Date);
        params[2].AsDate := int(dateedit2.Date);
        open;
    end;
    FrmRelComissoes.QRLabel2.Caption := 'Comissões Liberadas - '+dateedit1.Text+' até '+dateedit2.Text;
    FrmRelComissoes.QuickRep1.Preview;
    FrmRelComissoes.Destroy;
    ibdm.IBQComissoes.close;
    ibdm.IBQComissoes.Open;
    dbgrid1.Refresh;
end;

procedure TFrmComissoes.BitBtn4Click(Sender: TObject);
    var
    vendedor:integer;
begin
    vendedor:=ibdm.IBQComissoesVENDEDOR.AsInteger;
    FrmRelComissoes := TFrmRelComissoes.Create(application);
    with ibdm.IBQParam do
    begin
   //     close;
        open;
        FrmRelComissoes.QRLabel1.Caption := ibdm.IBQParamUSUARIO.AsString;
    end;
    with ibdm.IBQComissoes do
    begin
        close;
        sql.Clear;
        sql.Add('select * from comissoes');
        sql.Add('where liberado is null and vendedor=:p0');
        params[0].Asinteger := vendedor;
        prepare;
        open;
    end;
    FrmRelComissoes.QRLabel2.Caption := 'Relatório de Comissões Não Liberadas!';
    FrmRelComissoes.QuickRep1.Preview;
    FrmRelComissoes.Destroy;
    ibdm.IBQComissoes.close;
    ibdm.IBQComissoes.Open;
    dbgrid1.Refresh;
end;

procedure TFrmComissoes.BitBtn5Click(Sender: TObject);
    var
    vendedor:integer;
begin
    vendedor:=ibdm.IBQComissoesVENDEDOR.AsInteger;
    FrmRelComissoes := TFrmRelComissoes.Create(application);
    with ibdm.IBQParam do
    begin
//        close;
        open;
        FrmRelComissoes.QRLabel1.Caption := ibdm.IBQParamUSUARIO.AsString;
    end;
    with ibdm.IBQComissoes do
    begin
        close;
        sql.Clear;
        sql.Add('select * from comissoes');
        sql.Add('where pago = :p0 and vendedor=:p1');
        params[0].AsDatetime := Dateedit1.Date;
        params[1].Asinteger := vendedor;
        prepare;
        open;
    end;
    FrmRelComissoes.QRLabel2.Caption := 'Relatório de Comissões Pagas em '+dateedit1.Text;
    FrmRelComissoes.QuickRep1.Preview;
    FrmRelComissoes.Destroy;
    ibdm.IBQComissoes.Close;
    ibdm.IBQComissoes.Open;
    DBgrid1.Refresh;
end;

procedure TFrmComissoes.BitBtn6Click(Sender: TObject);
var
    vcomis : currency;
    vvend : integer;
    vnome : string;
begin
    ibdm.IBQUsuario.Close;
    ibdm.IBQUsuario.Open;
    vcomis := 0;
    vvend := ibdm.IBQComissoesVENDEDOR.Value;
    with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select comissao,vendedor,pago from comissoes');
        sql.Add('where vendedor =:p0 and liberado >=:p1 and liberado <=:p2 and pago is null');
        params[0].AsInteger := vvend;
        params[1].AsDate := int(dateedit1.Date);
        params[2].AsDate := int(dateedit2.Date);
        prepare;
        open;
        first;
        while not eof do
        begin
            vcomis := vcomis + Fields[0].AsCurrency;
            next;
        end;
        if ibdm.IBQUsuario.Locate('codigo',vvend,[]) then
            vNOME := ibdm.IBQUsuarioNOME.AsString;
    end;
    ShowMessage('Cód. Func.: '+inttostr(vvend)+' - '+vnome+#13+#13+'Comissão: R$ '+formatcurr('0.00',vcomis));
end;

procedure TFrmComissoes.BitBtn7Click(Sender: TObject);
    var
    nota:integer;
    vendedor:integer;
begin
    Case MessageBox (Application.Handle, Pchar ('Deseja excluir esta comissão ??'), 'Confirmação', MB_YESNOCANCEL) of
    idYes:
    begin
    nota:=ibdm.IBQComissoesNOTA.value;
    vendedor:=ibdm.IBQComissoesVENDEDOR.Value;
    with ibdm.Deleta do
    begin
        Close;
        sql.Clear;
        sql.Add('Delete from comissoes');
        sql.Add('where nota = :p0 and vendedor = :p1');
        params[0].AsInteger := nota;
        params[1].AsInteger := vendedor;
        ExecQuery;
    end;
    CommitWork;
    ibdm.IBQComissoes.Close;
    ibdm.IBQComissoes.Open;
    dbgrid1.Refresh;
    end;
    end;


end;

procedure TFrmComissoes.btn1Click(Sender: TObject);
    var
    nota:integer;
    vendedor:integer;
begin
  Case MessageBox (Application.Handle, Pchar ('Deseja limpar as comissões pagas até data indicada??'), 'Confirmação', MB_YESNOCANCEL) of
    idYes:
    begin
      with ibdm.Deleta do
      begin
        Close;
        sql.Clear;
        sql.Add('Delete from comissoes');
        sql.Add('where pago <= :p1');
        params[0].AsDate := DateEdit2.Date;
        ExecQuery;
      end;
      CommitWork;
      ibdm.IBQComissoes.Close;
      ibdm.IBQComissoes.Open;
      dbgrid1.Refresh;
    end;
  end;


end;

end.
