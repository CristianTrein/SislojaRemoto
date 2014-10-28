unit UMostraLimp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons,DB,OleServer, ComOBJ;

type
  TFrmDadoslimp = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    eddoc: TEdit;
    ednome: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDadoslimp: TFrmDadoslimp;

implementation

uses DM, Uzoomvd, UPrincipal;

{$R *.DFM}

procedure TFrmDadoslimp.BitBtn3Click(Sender: TObject);
begin
    Close;
end;

procedure TFrmDadoslimp.BitBtn1Click(Sender: TObject);
    var
    controle:integer;
    marca:string;
begin
    controle := ibdm.ibtLimpaCONTROLE.AsInteger;
    if ibdm.ibtLimpaMARCA.asstring = 'X' then
        marca:= ' '
        else
        marca:= 'X';
    with ibdm.ibtLimpa do
    begin
        edit;
        fieldByname('marca').asstring := marca;
        post;
        DBgrid1.Repaint;
    end;
end;

procedure TFrmDadoslimp.FormShow(Sender: TObject);
begin
    ibdm.ibtLimpa.Close;
    ibdm.ibtLimpa.Open;

end;

procedure TFrmDadoslimp.BitBtn2Click(Sender: TObject);
    var
    controle:integer;
    marca:string;
begin
    controle  := ibdm.ibtLimpaCONTROLE.AsInteger;
    if ibdm.ibtLimpaMARCA.asstring = 'X' then
        marca:= ' '
        else
        marca:= 'X';
    with ibdm.Cheka do
    begin
        Close;
        sql.Clear;
        sql.Add('Update limpa');
        sql.Add('Set marca=:p0');
        params[0].AsString := marca;
        ExecQuery;
    end;
    CommitWork;
    ibdm.ibtLimpa.Close;
    ibdm.ibtLimpa.Open;
    DBgrid1.Refresh;
    ibdm.ibtLimpa.locate('controle',controle,[]);
end;

procedure TFrmDadoslimp.BitBtn4Click(Sender: TObject);
begin
    if eddoc.Text <>'' then // é pelo documento
    begin
        with ibdm.ibtLimpa do
        begin
            Close;
            indexfieldnames := 'DOCUMENTO';
            OPen;
            DBgrid1.Refresh;
            Locate('documento',eddoc.Text,[]);
        end;
    end
    else
    begin
        with ibdm.ibtLimpa do
        begin
            Close;
            indexfieldnames := 'NOME';
            OPen;
            DBgrid1.Refresh;
            Locate('nome',ednome.Text,[LoPartialKey]);
        end; 

    end;
end;

procedure TFrmDadoslimp.BitBtn5Click(Sender: TObject);
begin
    Frmzoomvd := TFrmzoomvd.create(application);
    Frmzoomvd.vcontrole := ibdm.ibtLimpaCONTROLE.AsInteger;
    Frmzoomvd.vdocto := ibdm.IBtlimpaDOCUMENTO.AsString;
    Frmzoomvd.ShowModal;
    Frmzoomvd.Destroy;

end;

procedure TFrmDadoslimp.BitBtn6Click(Sender: TObject);
var
    vcontrole1 : integer;
    cNumeroCupom : string;
    vprod : integer;
    vprod1: string;
    vquantidade : currency;
    vtam : integer;
    vpreco : currency;
    vprtotal : currency;
//    vdocto1 : string;
    vlocal : TbookMark;
    vcont : integer;
    vnovo : string;
    msg:integer;
    Excel : Variant;
    Linha:Integer;
begin
  Excel := CreateOleObject('Excel.Application');
  Excel.Visible :=True;
{Excel.Workbooks.Add;}
  Excel.WorkBooks.Open('c:\ti\Gerar.xls');
  Excel.WorkBooks[1].Sheets[1].Cells[2,1]:=Now;
  Excel.WorkBooks[1].Sheets[1].Cells[2,5]:='Dados processados na Limpeza';
  Excel.WorkBooks[1].Sheets[1].Cells[4,2]:='Data';
  Excel.WorkBooks[1].Sheets[1].Cells[4,3]:='Documento';
  Excel.WorkBooks[1].Sheets[1].Cells[4,4]:='Cod_cli';
  Excel.WorkBooks[1].Sheets[1].Cells[4,5]:='Nome';
  Excel.WorkBooks[1].Sheets[1].Cells[4,6]:='Valor_total';
  Excel.WorkBooks[1].Sheets[1].Cells[4,7]:='Cond_Pag';
  Excel.WorkBooks[1].Sheets[1].Cells[4,8]:='Vendedor';
  Linha:=6;
  with IBDM.ibtLimpa do
  begin
    Close;
    Open;
    First;
    While not IBDM.ibtLimpa.Eof do
    Begin
      IF FieldByName('marca').asstring='X' then
      begin
        Excel.WorkBooks[1].Sheets[1].Cells[Linha,2]:=FieldByname('Data').asstring;
        Excel.WorkBooks[1].Sheets[1].Cells[Linha,3]:=FieldByname('Documento').asstring;
        Excel.WorkBooks[1].Sheets[1].Cells[Linha,4]:=FieldByname('clifor').asstring;
        Excel.WorkBooks[1].Sheets[1].Cells[Linha,5]:=FieldByname('nome').asstring;
        Excel.WorkBooks[1].Sheets[1].Cells[Linha,6]:=FieldByname('valortotal').ascurrency;
        Excel.WorkBooks[1].Sheets[1].Cells[Linha,7]:=FieldByname('condpag').asstring;
        Excel.WorkBooks[1].Sheets[1].Cells[Linha,8]:=FieldByname('vendedor').asstring;
      end;
      Next;
      Linha:=Linha+1;
    end;
  end;
  Excel.WorkBooks[1].SaveAs('c:\ti\Controle.xls');

  with IBDM.ibtLimpa do
  begin
    Close;
    Open;
    First;
    While not eof do
    begin
        if IBDM.ibtLimpaMARCA.AsString='X' then
        if FrmPrincipal.vtipo = 'M' then
        begin
            vcontrole1 := ibdm.IBtlimpaCONTROLE.AsInteger;
            cNumeroCupom := ibdm.ibtlimpa.FieldByname('documento').asstring;
          //  Showmessage('ATENÇÃO !, Exclusão do Documento nr. '+cNumeroCupom);
          //  msg := Application.MessageBox('Confirma exclusão do documento ??'  , 'Confirmação' ,68);
            if 1 < 6 then
            begin
                with ibdm.Deleta do
                begin
                    close;
                    sql.Clear;
                    sql.Add('delete from doctos');
                    sql.Add('where documento =:p0');
                    params[0].AsString := cNumeroCupom;
                    prepare;
                    execquery;
                end;
                CommitWork;
                ibdm.IBQDoctos.Close;
                ibdm.IBQDoctos.Open;
                with ibdm.Deleta do
                begin
                    close;
                    sql.Clear;
                    sql.Add('delete from movimento');
                    sql.Add('where docto =:p0');
                    params[0].AsString := cNumeroCupom;
                    prepare;
                    execquery;
                end;
                CommitWork;
                ibdm.IBQMovimento.Close;
                ibdm.IBQMovimento.Open;


                with ibdm.Deleta do
                begin
                    close;
                    sql.Clear;
                    sql.Add('delete from caixa');
                    sql.Add('where documento = :p0');
                    params[0].AsString := cNumeroCupom;
                    prepare;
                    execquery;
                end;
                CommitWork;
                with ibdm.Deleta do
                begin
                    close;
                    sql.Clear;
                    sql.Add('delete from creceber');
                    sql.Add('where documento = :p0');
                    params[0].AsString := cNumeroCupom;
                    prepare;
                    execquery;
                end;
                CommitWork;
                with ibdm.Deleta do
                begin
                    close;
                    sql.Clear;
                    sql.Add('delete from crecebidas');
                    sql.Add('where documento =:p0');
                    params[0].AsString :=cNumeroCupom;
                    prepare;
                    execquery;
                end;
                commitwork;
                ibdm.IBQCrecebidas.Close;
                ibdm.IBQCrecebidas.Open;

                with ibdm.Grava do
                begin
                    close;
                    sql.Clear;
                    sql.Add('delete from comissoes');
                    sql.Add('where nota =:p0');
                    params[0].AsString := cNumeroCupom;
                    prepare;
                    ExecQuery;
                end;
                CommitWork;
                ibdm.IBQComissoes.Close;
                ibdm.IBQComissoes.Open;

        //        iRetorno := Bematech_FI_CancelaCupom();
        //        FrmPrincipal.Analisa_iRetorno();
        //        FrmPrincipal.Retorno_Impressora();
        //        showmessage('Cupom CANCELADO com sucesso.');

                  ibdm.ibtLimpa.Delete;
             Log('Operador: '+InttoStr(FrmPrincipal.voperador)+' Hora: '+timetostr(time)+'  excluiu venda '+ cnumerocupom);
           end;
        end
        else
        begin
          ShowMessage('Usuário sem direitos para esta rotina !');
          Log('Operador: '+InttoStr(FrmPrincipal.voperador)+' Hora: '+timetostr(time)+' Tentou excluir venda '+ cnumerocupom);
        end;
        Next;
    end;
  end;
  CommitWork;
  IBDM.ibtLimpa.Close;
  IBDM.ibtLimpa.Open;
end;
end.
