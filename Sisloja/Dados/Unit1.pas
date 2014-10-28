unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, IBDatabase, IBSQL, IBCustomDataSet, IBQuery, Db, DBTables;

type
  TFrmPonte = class(TForm)
    Table1: TTable;
    Table1CODIGO: TStringField;
    Table1O: TStringField;
    Table1NOME: TStringField;
    Table1BL: TStringField;
    Table1PAI: TStringField;
    Table1MAE: TStringField;
    Table1NATURALID: TStringField;
    Table1RG: TStringField;
    Table1DATA_EXPED: TDateField;
    Table1ORGAO_EXP: TStringField;
    Table1DATA_NASC: TDateField;
    Table1CPF: TStringField;
    Table1PROFISSAO: TStringField;
    Table1EMPRESA: TStringField;
    Table1TEMPO: TStringField;
    Table1END_PROF: TStringField;
    Table1FONE_PROF: TStringField;
    Table1CASADO: TStringField;
    Table1DATA_CONJ: TDateField;
    Table1CONJUGE: TStringField;
    Table1CONJ_TRAB: TStringField;
    Table1ENDERECO: TStringField;
    Table1BAIRRO: TStringField;
    Table1CIDADE: TStringField;
    Table1UF: TStringField;
    Table1CEP: TStringField;
    Table1FONE: TStringField;
    Table1TEMPO_DOM: TStringField;
    Table1REF_END: TStringField;
    Table1END_ANT: TStringField;
    Table1REFERENCIA: TStringField;
    Table1CONTATOS: TStringField;
    Table1VERIFICADO: TStringField;
    Table1INFO: TStringField;
    Table1AUTORIZA: TStringField;
    Table1DATA_CAD: TDateField;
    Table1ATUALIZA: TDateField;
    Table1ULT_COMPRA: TDateField;
    Table1NR_COMPRAS: TSmallintField;
    Table1MED_ATRASO: TSmallintField;
    DataSource1: TDataSource;
    IBDatabase1: TIBDatabase;
    IBQuery1: TIBQuery;
    IBSQL1: TIBSQL;
    IBTransaction1: TIBTransaction;
    Button1: TButton;
    IBQuery1CODIGO: TIBStringField;
    IBQuery1NOME: TIBStringField;
    IBQuery1CONTATO: TIBStringField;
    IBQuery1ENDERECO: TIBStringField;
    IBQuery1BAIRRO: TIBStringField;
    IBQuery1PTOREF: TIBStringField;
    IBQuery1TPORES: TIBStringField;
    IBQuery1TMPRES: TIBStringField;
    IBQuery1VLRALU: TIBBCDField;
    IBQuery1COMPRO: TIBStringField;
    IBQuery1CIDADE: TIBStringField;
    IBQuery1CEP: TIBStringField;
    IBQuery1UF: TIBStringField;
    IBQuery1FONE: TIBStringField;
    IBQuery1FAX: TIBStringField;
    IBQuery1CELULAR: TIBStringField;
    IBQuery1EMAIL: TIBStringField;
    IBQuery1TPCONTATO: TIBStringField;
    IBQuery1REFCOMERCIAL: TIBStringField;
    IBQuery1REFBANCARIA: TIBStringField;
    IBQuery1RG: TIBStringField;
    IBQuery1ORGAOEXP: TIBStringField;
    IBQuery1DATARG: TDateTimeField;
    IBQuery1CPF: TIBStringField;
    IBQuery1DTNASC: TDateTimeField;
    IBQuery1CADASTRO: TDateTimeField;
    IBQuery1EMPRESA: TIBStringField;
    IBQuery1CARGO: TIBStringField;
    IBQuery1SALARIO: TIBBCDField;
    IBQuery1OUTREND: TIBBCDField;
    IBQuery1ENDEMP: TIBStringField;
    IBQuery1CIDEMP: TIBStringField;
    IBQuery1CEPEMP: TIBStringField;
    IBQuery1UFEMP: TIBStringField;
    IBQuery1CONJUGE: TIBStringField;
    IBQuery1DTNCONJ: TDateTimeField;
    IBQuery1CONVENIO: TIntegerField;
    IBQuery1NPAI: TIBStringField;
    IBQuery1NMAE: TIBStringField;
    IBQuery1AUT1: TIBStringField;
    IBQuery1AUT2: TIBStringField;
    IBQuery1LIMCRED: TIBBCDField;
    IBQuery1OBS: TIBStringField;
    IBQuery1BL: TIBStringField;
    IBQuery1NRDIASBL: TIntegerField;
    IBQuery1FONEEMP: TIBStringField;
    IBQuery1NRDIASATRAZO: TIntegerField;
    IBQuery1CONJ_TRAB: TIBStringField;
    IBQuery1NATURAL: TIBStringField;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPonte: TFrmPonte;

implementation

{$R *.DFM}

procedure TFrmPonte.Button1Click(Sender: TObject);
    var
    vcodigo:string;
    vnatural:string;
begin
    With table1 do
    begin
        open;
        first;
        While not eof do
        begin
            vcodigo:=FieldByname('codigo').asstring;
            vnatural:=FieldByname('naturalid').asstring;
            with ibsql1 do
            begin
                Close;
                sql.Clear;
                sql.Add('Update clientes');
                sql.Add('Set clientes.naturalid=:p0');
                sql.Add('Where codigo=:p1');
                params[0].AsString :=vnatural;
                params[1].AsString :=vcodigo;
                Execquery;
            end;
            next;
        end;
    end;
    Showmessage('Rotina concluida !');
end;

end.
