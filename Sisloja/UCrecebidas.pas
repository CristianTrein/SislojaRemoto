unit UCrecebidas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DBCtrls, XP_Form;

type
  TFrmEdCRecebidas = class(TForm)
    eddoc: TEdit;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    vtipo:string;
  end;

var
  FrmEdCRecebidas: TFrmEdCRecebidas;

implementation

uses DM, Urelrecibo1, Ufuncoes, UPrincipal, Uedobsrec;

{$R *.DFM}

procedure TFrmEdCRecebidas.BitBtn1Click(Sender: TObject);
begin
    FrmEdCRecebidas.Close;
end;

procedure TFrmEdCRecebidas.FormActivate(Sender: TObject);
begin
    with ibdm.IBQCRecebidas do
        begin
            close;
            sql.Clear;
            sql.Add('select * from CRecebidas');
            sql.Add('order by pagamento DESC');
            Open;
        end;

    if vtipo = 'M' then
        bitbtn3.Enabled := True;
    if edit1.Text <> '' then
        BitBtn2.Click;

end;

procedure TFrmEdCRecebidas.BitBtn2Click(Sender: TObject);
begin
    with ibdm.IBQCRecebidas do
        begin
            close;
            sql.Clear;
            sql.Add('select * from CRecebidas');
            sql.Add('order by pagamento DESC');
        end;
    if eddoc.Text <> '' then
    with ibdm.IBQCRecebidas do
        begin
            close;
            sql.Clear;
            sql.Add('select * from CRecebidas');
            sql.Add('where documento = :p1');
            sql.Add('order by pagamento DESC');
            params[0].AsString := Trim(edit1.Text)+'%';
        end;

    if edit1.Text <> '' then
    with ibdm.IBQCRecebidas do
        begin
            close;
            sql.Clear;
            sql.Add('select * from CRecebidas');
            sql.Add('where historico LIKE :p1');
            sql.Add('order by pagamento DESC');
            params[0].AsString := '%'+Trim(edit1.Text)+'%';
        end;
    if ((eddoc.Text <> '') and (Edit1.Text <> '')) then
    begin
        with ibdm.IBQCRecebidas do
        begin
            close;
            sql.Clear;
            sql.Add('select * from CRecebidas');
            sql.Add('where documento= :p0 and historico LIKE :p1');
            sql.Add('order by pagamento DESC');
            Params[0].asstring:=eddoc.text;
            params[1].AsString := '%'+Trim(edit1.Text)+'%';
        end ;
    end;
    ibdm.IBQCrecebidas.Open;
end;

procedure TFrmEdCRecebidas.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFrmEdCRecebidas.BitBtn3Click(Sender: TObject);
var
    msg : integer;
    controle,vcont:integer;
    docto,parcela :string;
    histo,histo1:string;
    faz:boolean;
    vpos:integer;
    vllc:real;
    TextoLog:string;
begin
    msg := Application.MessageBox('Deseja reverter o pagamento desta conta já recebida???','Confirmação',68);
    if msg = 6 then
    begin

         docto:= ibdm.IBQCrecebidasDOCUMENTO.AsString;
         parcela:=ibdm.IBQCrecebidasPARCELA.AsString;
         histo:=ibdm.IBQCrecebidasHISTORICO.Value;
         vllc := ibdm.IBQCrecebidasPAGO.Value;
         histo1:=histo;
         vpos:=POS('-',histo);
         histo:=Copy(histo,vpos+1,50);
         vpos:=POS('-',histo);
         histo:=Copy(histo,vpos+1,50);
         TextoLog := 'Desfaz Pagamento NF '+docto+ ' parcela/' + parcela + ' Hist. '+ histo + ' Valor '+FormatCurr('0.00',vllc);
         LOG(textolog);
         with ibdm.Consulta do
         begin
            Close;
            sql.Clear;
            sql.Add('Select parcial,controle from creceber');
            sql.Add('Where documento=:p0 and parcela=:p1');
            params[0].AsString := docto;
            params[1].Asstring:=parcela;
            open;
            if Fields[1].AsInteger > 0 then // achou lançamento, é parcial
            begin
                faz:=false;
                Showmessage('Pagamento Parcial, não é possivel desfazer !!');
            end
            Else
            begin
                faz:=True;
                textolog := 'Validou, não tem parcial...';
                LOG(textolog);
            end;
         end;
         if faz = True then
         begin
         controle := ibdm.IBQCrecebidasCONTROLE.Asinteger;
         with ibdm.Consulta do
         begin
            close;
            sql.Clear;
            sql.Add('select max(controle) from creceber');
            prepare;
            open;
            vcont := Fields[0].AsInteger + 1;
         end;
         with ibdm.Cheka do
         begin
          close;
          sql.Clear;
          sql.Add('Insert into creceber');
          sql.Add('(controle,vencimento,documento,historico,valororiginal,valordevido,parcela,cliente,obs)');
          sql.Add('Values(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8)');
          params[0].AsInteger := vcont;
          params[1].AsDateTime := ibdm.IBQCrecebidasVENCIMENTO.Value;
          params[2].AsString := ibdm.IBQCrecebidasDOCUMENTO.Value;
          params[3].AsString := histo;
          params[4].AsCurrency := ibdm.IBQCrecebidasVALOR.Value;
          params[5].AsCurrency := ibdm.IBQCrecebidasVALOR.Value;
          params[6].AsString := parcela;
          params[7].AsString := ibdm.IBQCrecebidasCLIENTE.AsString;
          params[8].AsString := ibdm.IBQCrecebidasOBS.Value;
          ExecQuery;
         end;
         commitWork;
         Textolog := 'Incluiu em contas a receber, controle nr '+inttostr(vcont);
         LOG(textolog);
        with ibdm.Cheka do
        begin
            Close;
            sql.Clear;
            sql.Add('Update comissoes');
            sql.Add('Set liberado = null');
            sql.Add('Where nota=:p0 and parcela=:p1');
            params[0].AsInteger := strtoint(docto);
            params[1].AsString := parcela;
            Execquery;
        end;
        Commitwork;
        textolog := 'Reverteu liberação da comissão...';
        LOG(textolog);
        with ibdm.Deleta do
        begin
            close;
            sql.Clear;
            sql.Add('delete from caixa');
            sql.Add('where documento =:p0 and parcela = :p1'); // and valor = :p2');
            params[0].Asstring := docto;
            params[1].AsString := parcela;
       //     params[2].AsCurrency := vllc;
            prepare;
            ExecQuery;
            textolog := 'Deletou do caixa, docto '+docto;
            LOG(textolog);
        end;
        commitWork;
        with ibdm.Deleta do
        begin
            close;
            sql.Clear;
            sql.Add('delete from crecebidas');
            sql.Add('where controle =:p0');
            params[0].Asinteger := controle;
            prepare;
            ExecQuery;
            textolog := 'Deletou de contas a receber, controle nr '+inttostr(controle);
            LOG(textolog);
        end;
        CommitWork;
        ibdm.IBQCrecebidas.Close;
        ibdm.IBQCrecebidas.Open;
        frmprincipal.DBGrid2.Repaint;
         textolog := 'Finalizou reversão de pagamento *****************';
         LOG(textolog);
        end;
    end;
end;

procedure TFrmEdCRecebidas.BitBtn4Click(Sender: TObject);
    var
    vcontrole:integer;
    texto:string;
begin
    // emitir 2a via somente no mesmo dia do recebimento ..
    if (FrmPrincipal.vtipo <> 'M') and (int(ibdm.IBQCrecebidasPAGAMENTO.AsDatetime)  < int(now)) then
    Begin
        Showmessage('Impressão não autorizada !!');
        Close;
    end
    else
    begin
        vcontrole := ibdm.IBQCrecebidasCONTROLE.AsInteger;
        with ibdm.consulta do
        begin
            Close;
            sql.Clear;
            sql.Add('Select historico nome, documento,parcela from crecebidas');
            sql.Add('Where controle = :p0');
            params[0].asinteger := vcontrole;
            open;
        end;
        RelRecibo1 := TRelRecibo1.create(Application);
        MudaTamPapel(DMPAPER_USER, 215, 140);
        Relrecibo1.lbnome.Caption := ibdm.IBQParamUSUARIO.AsString;
        Relrecibo1.lbcnpj.Caption := 'CNPJ: '+ibdm.IBQParamCNPJ.AsString;
        RelRecibo1.QRLabel2.Caption := 'O valor de:  R$' + Formatcurr('0.00',ibdm.IBQCrecebidasPAGO.AsCurrency);
        Relrecibo1.LBCLIENTE.Caption := ibdm.IBQCrecebidasHISTORICO.AsString;
        RelRecibo1.QRLabel5.Caption := Extenso(ibdm.IBQCrecebidasPAGO.AsCurrency);
        if (ibdm.IBQCrecebidasVALOR.ascurrency > ibdm.IBQCrecebidasPAGO.AsCurrency)  then
            texto := 'ref. o pagamento parc. ' + ibdm.consulta.fieldByname('parcela').asstring +  ' do documento '
           else
            texto := 'ref. o pagamento ' + ibdm.consulta.fieldByname('parcela').asstring  + ' do documento ';
        Relrecibo1.QRLabel6.caption:= texto ;
        RelRecibo1.QuickRep1.Print;
        RelRecibo1.Destroy;
    end;
end;

procedure TFrmEdCRecebidas.DBGrid2DblClick(Sender: TObject);
  var
  controle:Integer;

begin
    controle :=  ibdm.IBQCrecebidasCONTROLE.AsInteger;
    Frmedobsrec := TFrmedobsrec.create(Application);
    Frmedobsrec.controle := controle;
    Frmedobsrec.Edit1.Text := ibdm.IBQCrecebidasOBS.AsString;
    Frmedobsrec.vtipo:=1;
    Frmedobsrec.ShowModal;
    Frmedobsrec.Destroy;
    ibdm.IBQCrecebidas.close;
    ibdm.IBQCrecebidas.Open;
    dbgrid2.Refresh;
    ibdm.IBQCrecebidas.locate('controle',controle,[]);

end;

procedure TFrmEdCRecebidas.DBGrid1CellClick(Column: TColumn);
var
  ncli:Integer;

begin
    ncli:=0;
    with ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select nadic,clifor from doctos');
        sql.Add('Where documento = :p0');
        params[0].AsString := ibdm.IBQCrecebidasDOCUMENTO.Value;
        open;
        ncli:= Fields[1].AsInteger;
        label1.Caption := 'Nome adicional: ' + Fields[0].AsString;
        label1.Refresh;
    end;

end;

procedure TFrmEdCRecebidas.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ncli:Integer;

begin
    ncli:=0;
    with ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select nadic,clifor from doctos');
        sql.Add('Where documento = :p0');
        params[0].AsString := ibdm.IBQCrecebidasDOCUMENTO.Value;
        open;
        ncli:= Fields[1].AsInteger;
        label1.Caption := 'Nome adicional: ' + Fields[0].AsString;
        label1.Refresh;
    end;
end;

end.
