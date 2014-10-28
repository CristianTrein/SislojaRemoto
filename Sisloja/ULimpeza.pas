unit ULimpeza;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, rxToolEdit;

type
  TFrmLimpeza = class(TForm)
    Label1: TLabel;
    DTI: TDateEdit;
    DTF: TDateEdit;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Label7: TLabel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLimpeza: TFrmLimpeza;

implementation

uses Ufuncoes, DM, UMostraLimp;

{$R *.DFM}

procedure TFrmLimpeza.Edit1KeyPress(Sender: TObject; var Key: Char);
    var
    senha:string;
    ultimodia:Tdatetime  ;
    dia,mes,ano,dia1,mes1,ano1:word;
    diferenca:integer;
begin
    senha := edit1.Text + Key;
    Decodedate(int(now),ano,mes,dia);
    ultimodia := Ultimodiadomes(int(now),False);
    Decodedate(Ultimodia,ano1,mes1,dia1);
    Diferenca := dia1-dia;
    if senha = 'CC'+inttostr(mes)+inttostr(diferenca) then
        Bitbtn3.Enabled := True;

end;

procedure TFrmLimpeza.BitBtn4Click(Sender: TObject);
begin
    Close;
end;

procedure TFrmLimpeza.BitBtn1Click(Sender: TObject);
begin
    If Application.MessageBox('Deseja Continuar??','Confirmação',MB_ICONQUESTION+ MB_YESNO+MB_DEFBUTTON2)=idyes then
    begin
       ibdm.ibtLimpa.close;
       ibdm.ibtLimpa.Open;
        with ibdm.Deleta do
        begin
            Close;
            sql.Clear;
            sql.Add('Delete from limpa');
            ExecQuery;
        end;
        CommitWork;
        With ibdm.Consulta do
        begin
            Close;
            sql.Clear;
            sql.Add('Select distinct doctos.controle, doctos.* from doctos,creceber');
            sql.Add('where data between :p0 and :p1  and doctos.documento not in (creceber.documento)');
            sql.Add('order by doctos.controle');
            params[0].AsDate := dti.Date;
            params[1].AsDate := dtf.Date;
            Open;
            while not eof do
            begin
                IF Copy(FieldByname('CONDPAG').AsString,1,6)='AVISTA' then
                with ibdm.ibtLimpa do
                begin
                    insert;
                    Fieldbyname('controle').asinteger := ibdm.consulta.fieldbyname('controle').asinteger;
                    Fieldbyname('data').asdatetime := ibdm.Consulta.Fieldbyname('data').asdatetime;
                    Fieldbyname('documento').asstring := ibdm.consulta.Fieldbyname('documento').asstring;
                    Fieldbyname('clifor').asinteger := ibdm.consulta.Fieldbyname('clifor').asinteger;
                    Fieldbyname('nome').asstring := ibdm.Consulta.Fieldbyname('nome').asstring;
                    Fieldbyname('nadic').asstring := ibdm.Consulta.Fieldbyname('nadic').asstring;
                    Fieldbyname('vendedor').asinteger := ibdm.consulta.Fieldbyname('vendedor').asinteger;
                    Fieldbyname('operador').asinteger := ibdm.Consulta.Fieldbyname('operador').asinteger;
                    Fieldbyname('valortotal').ascurrency := ibdm.consulta.Fieldbyname('valortotal').ascurrency;
                    Fieldbyname('condpag').asstring := ibdm.Consulta.Fieldbyname('condpag').asstring;
                    Fieldbyname('marca').asstring := 'X';
                    Fieldbyname('obs').asstring := ibdm.Consulta.Fieldbyname('obs').asstring;
                    post;
                end;
                next;
            end;
            Showmessage('Rotina concluida  !');
        end;
    end;
end;

procedure TFrmLimpeza.BitBtn2Click(Sender: TObject);
begin
    FrmDadoslimp := TFrmDadoslimp.create(Application);
    FrmDadoslimp.ShowModal;
    FrmDadoslimp.Destroy;
end;

procedure TFrmLimpeza.BitBtn3Click(Sender: TObject);
begin
    If Application.MessageBox('Efetuar a Limpeza dos itens marcados ??','Confirmação',MB_ICONQUESTION+ MB_YESNO+MB_DEFBUTTON2)=idyes then
    begin

    end;
end;

procedure TFrmLimpeza.BitBtn5Click(Sender: TObject);
begin
    If Application.MessageBox('Deseja Continuar??','Confirmação',MB_ICONQUESTION+ MB_YESNO+MB_DEFBUTTON2)=idyes then
    begin
       ibdm.ibtLimpa.close;
       ibdm.ibtLimpa.Open;
        with ibdm.Deleta do
        begin
            Close;
            sql.Clear;
            sql.Add('Delete from limpa');
            ExecQuery;
        end;
        CommitWork;
        With ibdm.Consulta do
        begin
            Close;
            sql.Clear;
            sql.Add('Select distinct doctos.controle, doctos.* from doctos,creceber');
            sql.Add('where data between :p0 and :p1  and doctos.documento not in (creceber.documento)');
            sql.Add('order by doctos.controle');
            params[0].AsDate := dti.Date;
            params[1].AsDate := dtf.Date;
            Open;
            while not eof do
            begin
                IF Copy(FieldByname('CONDPAG').AsString,1,6)<>'AVISTA' then
                with ibdm.ibtLimpa do
                begin
                    insert;
                    Fieldbyname('controle').asinteger := ibdm.consulta.fieldbyname('controle').asinteger;
                    Fieldbyname('data').asdatetime := ibdm.Consulta.Fieldbyname('data').asdatetime;
                    Fieldbyname('documento').asstring := ibdm.consulta.Fieldbyname('documento').asstring;
                    Fieldbyname('clifor').asinteger := ibdm.consulta.Fieldbyname('clifor').asinteger;
                    Fieldbyname('nome').asstring := ibdm.Consulta.Fieldbyname('nome').asstring;
                    Fieldbyname('nadic').asstring := ibdm.Consulta.Fieldbyname('nadic').asstring;
                    Fieldbyname('vendedor').asinteger := ibdm.consulta.Fieldbyname('vendedor').asinteger;
                    Fieldbyname('operador').asinteger := ibdm.Consulta.Fieldbyname('operador').asinteger;
                    Fieldbyname('valortotal').ascurrency := ibdm.consulta.Fieldbyname('valortotal').ascurrency;
                    Fieldbyname('condpag').asstring := ibdm.Consulta.Fieldbyname('condpag').asstring;
                    Fieldbyname('marca').asstring := 'X';
                    Fieldbyname('obs').asstring := ibdm.Consulta.Fieldbyname('obs').asstring;
                    post;
                end;
                next;
            end;
            Showmessage('Rotina concluida  !');
        end;
    end;

end;

end.
