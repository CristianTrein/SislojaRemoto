unit UCheque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, Grids, DBGrids, ExtCtrls, XP_Form;

type
  TFrmCheques = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn7: TBitBtn;
    DBNavigator1: TDBNavigator;
    Edit2: TEdit;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCheques: TFrmCheques;

implementation

uses DM, UCadCheques, UChequeComp;

{$R *.DFM}

procedure TFrmCheques.BitBtn5Click(Sender: TObject);
begin
    if edit1.Text <> '' then
    begin
        with ibdm.IBQCheque do
        begin
            close;
            sql.Clear;
            sql.Add('select * from cheque');
            sql.Add('where emitente like :p0');
            params[0].AsString := edit1.Text+'%';
            prepare;
            open;
        end;
    end;

    if edit2.Text <> '' then
    begin
        with ibdm.IBQCheque do
        begin
            close;
            sql.Clear;
            sql.Add('select * from cheque');
            sql.Add('where documento =:p0');
            params[0].AsString := edit2.Text;
            prepare;
            open;
        end;
    end;

    if (edit1.Text = '') and (edit2.Text = '') then
    begin
        with ibdm.IBQCheque do
        begin
            close;
            sql.Clear;
            sql.Add('select * from cheque');
            sql.Add('order by depositar ASC');
            prepare;
            open;
        end;
    end;
end;

procedure TFrmCheques.BitBtn6Click(Sender: TObject);
begin
    close;
end;

procedure TFrmCheques.BitBtn1Click(Sender: TObject);
begin
    FrmCadCheque := TFrmCadCheque.Create(Application);
    FrmCadCheque.vnovo := true;
    with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select max(codigo) from cheque');
        prepare;
        open;
        FrmCadCheque.Edit1.Text := inttostr(fields[0].AsInteger + 1);
    end;
    FrmCadCheque.ShowModal;
    FrmCadCheque.Destroy;
end;

procedure TFrmCheques.BitBtn2Click(Sender: TObject);
begin
    FrmCadCheque := TFrmCadCheque.Create(Application);
    FrmCadCheque.vnovo := false;
    FrmCadCheque.Edit1.Text := inttostr(ibdm.IBQChequeCODIGO.asinteger);
    FrmCadCheque.Edit2.Text := ibdm.IBQChequeEMITENTE.AsString;
    FrmCadCheque.Edit3.Text := ibdm.IBQChequeDOCUMENTO.AsString;
    FrmCadCheque.Edit4.Text := inttostr(ibdm.IBQChequeCLIENTE.asinteger);
    FrmCadCheque.MegaEditNumerico1.AsCurrency := ibdm.IBQChequeVALOR.AsCurrency;
    FrmCadCheque.DateEdit1.Date := ibdm.IBQChequeENTRADA.AsDateTime;
    FrmCadCheque.Edit5.Text := ibdm.IBQChequeNCHEQUE.AsString;
    FrmCadCheque.Edit6.Text := ibdm.IBQChequeBANCO.AsString;
    FrmCadCheque.Edit7.Text := ibdm.IBQChequeAGENCIA.AsString;
    FrmCadCheque.DateEdit2.Date := ibdm.IBQChequeDEPOSITAR.AsDateTime;
    FrmCadCheque.Edit8.Text := inttostr(ibdm.IBQChequeLKCONTA.AsInteger);
    FrmCadCheque.ShowModal;
    FrmCadCheque.Destroy;
end;

procedure TFrmCheques.BitBtn3Click(Sender: TObject);
var
    msg : integer;
begin
    msg := Application.MessageBox('Deseja Excluir este CHEQUE???','ATENÇÃO para EXCLUSÃO',68);
    if msg = 6 then
    begin
        with ibdm.Deleta do
        begin
            close;
            sql.Clear;
            sql.Add('delete from cheque');
            sql.Add('where codigo =:p0');
            params[0].AsInteger := ibdm.IBQChequeCODIGO.AsInteger;
            prepare;
            ExecQuery;
        end;
        CommitWork;
        ibdm.IBQCheque.Close;
        ibdm.IBQCheque.Open;
    end;
end;

procedure TFrmCheques.BitBtn4Click(Sender: TObject);
var
    vemit,vdoc,vcheq,vbanco,vagen : string;
    ventr,vdepos : real;
    vcli,vconta,vcod,vcod1 : integer;
    vvalor : currency;
begin
    with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('select max(codigo) from cheque1');
        prepare;
        open;
        vcod1 := fields[0].AsInteger + 1;
    end;
    vcod := ibdm.IBQChequeCODIGO.AsInteger;
    vemit := ibdm.IBQChequeEMITENTE.AsString;
    vdoc := ibdm.IBQChequeDOCUMENTO.AsString;
    vcheq := ibdm.IBQChequeNCHEQUE.AsString;
    vbanco := ibdm.IBQChequeBANCO.AsString;
    vagen := ibdm.IBQChequeAGENCIA.AsString;
    ventr := int(ibdm.IBQChequeENTRADA.AsDateTime);
    vdepos := int(ibdm.IBQChequeDEPOSITAR.AsDateTime);
    vcli := ibdm.IBQChequeCLIENTE.AsInteger;
    vconta := ibdm.IBQChequeLKCONTA.AsInteger;
    vvalor := ibdm.IBQChequeVALOR.AsCurrency;
    with ibdm.Grava do
    begin
        close;
        sql.Clear;
        sql.Add('insert into cheque1');
        sql.Add('(codigo,emitente,documento,entrada,cliente,valor,ncheque,banco,agencia,depositar,lkconta,deposito)');
        sql.Add('values(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11)');
        params[0].AsInteger := vcod1;
        params[1].AsString := vemit;
        params[2].AsString := vdoc;
        params[3].AsDate := int(ventr);
        params[4].AsInteger := vcli;
        params[5].AsCurrency := vvalor;
        params[6].AsString := vcheq;
        params[7].AsString := vbanco;
        params[8].AsString := vagen;
        params[9].AsDate := int(vdepos);
        params[10].AsInteger := vconta;
        params[11].AsDate := int(now);
        prepare;
        ExecQuery;
    end;
    CommitWork;
    ibdm.ibqcheque1.close;
    ibdm.IBQCheque1.Open;

    with ibdm.Deleta do
    begin
        close;
        sql.Clear;
        sql.Add('delete from cheque');
        sql.Add('where codigo =:p0');
        params[0].AsInteger := vcod;
        prepare;
        ExecQuery;
    end;
    ibdm.IBQCheque.Close;
    ibdm.IBQCheque.Open;
    CommitWork;
    ShowMessage('Cheque COMPENSADO com sucesso!!!');
end;

procedure TFrmCheques.BitBtn7Click(Sender: TObject);
begin
    FrmChequeComp := TFrmChequeComp.Create(Application);
    FrmChequeComp.ShowModal;
    FrmChequeComp.Destroy;
end;

end.
