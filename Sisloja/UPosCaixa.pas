unit UPosCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ComCtrls, Mask, ExtCtrls,
  DBCtrls, XP_Form, MegaEditDataHora,variants;

type
  TFrmPosCaixa = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edposdata: TMegaEditDataHora;
    BitBtn3: TBitBtn;
    DBNavigator1: TDBNavigator;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPosCaixa: TFrmPosCaixa;

implementation

uses DM, UPrincipal;

{$R *.DFM}

procedure TFrmPosCaixa.BitBtn3Click(Sender: TObject);
begin
    FrmPosCaixa.Close;
end;

procedure TFrmPosCaixa.FormActivate(Sender: TObject);
begin
    ibdm.IBQPosCaixa.Close;
    ibdm.IBQPosCaixa.Open;
    ibdm.IBQPosCaixa.Last;
    EdPosData.Date := now;
end;

procedure TFrmPosCaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFrmPosCaixa.BitBtn2Click(Sender: TObject);
var
    vdata1 : real;
    vdata2 : real;
    vsaldo : currency;
    voperador : integer;
begin
    voperador := FrmPrincipal.voperador;
    vdata1 := edposdata.Date;
    vdata2 := vdata1 - 1;
    if  ibdm.IBQPosCaixa.Locate('Data;operador',VarArrayOf([vdata1,voperador]),[]) then
        ShowMessage('Já existe posição nesta data !')
       else
       begin
        With ibdm.IBQPosCaixa do
        begin
            if locate('Data;operador',VarArrayOf([vdata2,voperador]),[]) then
              begin
                vsaldo := Fieldbyname('saldo').ascurrency;
                vdata2 := vdata2 + 1;
              end
             else
              begin
                Prior;
                if bof then
                   begin
                    with ibdm.IBQCaixa do
                        begin
                            //indexfieldnames := 'Data;controle';
                            open;
                            First;
                            vdata2 := Fieldbyname('data').asdatetime ;
                            close;
                        end;
                    vsaldo := 0;
                   end
                  else
                   begin
                    If Fieldbyname('operador').asinteger <> voperador then
                        begin
                            While Fieldbyname('operador').asinteger <> voperador do
                                prior;
                        end;
                    if not bof then
                       begin
                            vdata2 := FieldByName('Data').asdatetime ;
                            vsaldo := Fieldbyname('saldo').ascurrency;
                       end
                      else
                       begin
                            with ibdm.IBQCaixa do
                                begin
                                    //indexfieldnames := 'Data;controle';
                                    open;
                                    First;
                                    vdata2 := Fieldbyname('data').asdatetime ;
                                    close;
                                end;
                            vsaldo := 0;
                       end;
                   end;
              end;
        end;
        With ibdm.IBQCaixa do
        begin
            //indexfieldnames := 'data;controle';
            open;
            First;
            IF Locate('Data',vdata2,[]) then
                begin
                    While (Fieldbyname('data').asdatetime <= vdata1) and (not eof) do
                        begin
                            IF FieldByname('operacao').asstring = 'C' then
                                vsaldo := vsaldo + FieldByname('Valor').ascurrency
                               else
                                vsaldo := vsaldo - FieldByname('Valor').ascurrency;
                            vdata2 := Fieldbyname('data').asdatetime;
                            With ibdm.IBQPosCaixa do
                                begin
                                    if not Locate('Data',vdata2,[]) then
                                    begin
                                        with ibdm.Grava do
                                        begin
                                            close;
                                            sql.Clear;
                                            sql.Add('insert into poscaixa');
                                            sql.Add('(data,saldo,operador)');
                                            sql.Add('values(:p0,:p1,:p2)');
                                            params[0].AsDate := vdata2;
                                            params[1].AsCurrency := vsaldo;
                                            params[2].AsInteger := voperador;
                                            prepare;
                                            execquery;
                                        end;
                                    end
                                    else
                                     begin
                                        with ibdm.Grava do
                                        begin
                                            close;
                                            sql.Clear;
                                            sql.Add('update poscaixa');
                                            sql.Add('set saldo=:p0');
                                            sql.Add('where operador =:p1 and data =:p2');
                                            params[0].AsCurrency := vsaldo;
                                            params[1].AsInteger := voperador;
                                            params[2].AsDate := edposdata.Date;
                                            prepare;
                                            execquery;
                                        end;
                                     end;
                                end;
                            ibdm.IBQPosCaixa.Close;
                            ibdm.IBQPosCaixa.Open;
                            next;
                        end;
                  end
                else
                  With ibdm.IBQPosCaixa do
                    begin
                         if not Locate('Data',vdata2,[]) then
                          begin
                              with ibdm.Grava do
                              begin
                                close;
                                sql.Clear;
                                sql.Add('insert into poscaixa');
                                sql.Add('(data,saldo,operador)');
                                sql.Add('values(:p0,:p1,:p2)');
                                params[0].AsDate := vdata2;
                                params[1].AsCurrency := vsaldo;
                                params[2].AsInteger := voperador;
                                prepare;
                                execquery;
                              end;
                          end
                         else
                         begin
                             with ibdm.Grava do
                             begin
                                close;
                                sql.Clear;
                                sql.Add('update poscaixa');
                                sql.Add('set saldo=:p0');
                                sql.Add('where operador =:p1, data=:p2');
                                params[0].AsCurrency := vsaldo;
                                params[1].AsInteger := voperador;
                                params[2].AsDate := edposdata.Date;
                                prepare;
                                execquery;
                             end;
                         end;
                   end;
                   ibdm.IBQPosCaixa.Close;
                   ibdm.IBQPosCaixa.Open;
        end;
        end;
    ibdm.IBQPosCaixa.Last;
    CommitWork;
end;

procedure TFrmPosCaixa.BitBtn1Click(Sender: TObject);
var
    Vdata:real;
begin
    if Application.MessageBox('Excluir posições apartir do registro selecionado ??','Confirmação de EXCLUSÃO',MB_ICONQUESTION+ MB_YESNO+MB_DEFBUTTON2)=idyes  then
    with ibdm.Deleta do
        begin
           vdata := int(IBDM.IBQPosCaixaDATA.AsDateTime);
           close;
           sql.Clear;
           sql.Add('delete from poscaixa');
           sql.Add('where data >= :p0');
           params[0].AsDate := vdata;
           prepare;
           execquery;
           CommitWork;
           ibdm.IBQPosCaixa.Close;
           ibdm.IBQPosCaixa.Open;
           DBGrid1.Refresh;
        end;
end;

end.
