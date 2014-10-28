unit UIncluirVend;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, rxToolEdit, rxCurrEdit;

type
  TFrmIncluirVend = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    edit3: TCurrencyEdit;
    edit6: TCurrencyEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vnovo : boolean;
  end;

var
  FrmIncluirVend: TFrmIncluirVend;

implementation

uses DM, UVendedores;

{$R *.DFM}

procedure TFrmIncluirVend.BitBtn2Click(Sender: TObject);
begin
    FrmIncluirVend.Close;
end;

procedure TFrmIncluirVend.BitBtn1Click(Sender: TObject);
begin
    if vnovo = true then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('insert into usuarios');
            sql.Add('(codigo,nome,comissao,super,senha,comissao1)');
            sql.Add('values (:p0,:p1,:p2,:p3,:p4,:p5)');
            params[0].AsInteger := strtoint(edit1.text);
            params[1].AsString := edit2.Text;
            params[2].Ascurrency := edit3.Value;
            params[3].Asstring := Copy(COMBOBOX1.Text,1,1);
            params[4].AsInteger := strtoint(edit4.Text);
            params[5].AsCurrency := edit6.Value;
            prepare;
            execquery;
        end;
        ibdm.IBQUsuario.close;
        ibdm.IBQusuario.Open;
    end;

    if vnovo = false then
    begin
        with ibdm.Grava do
        begin
            close;
            sql.Clear;
            sql.Add('Update usuarios');
            sql.Add('set nome=:p0,comissao=:p1,senha =:p2,super =:p3,comissao1=:p4');
            sql.Add('where codigo=:p5') ;
            params[0].AsString := edit2.Text;
            params[1].Ascurrency := edit3.Value;
            params[2].AsInteger := strtoint(edit4.text);
            params[3].asstring := Copy(COMBOBOX1.Text,1,1);
            params[4].AsCurrency := edit6.Value;
            params[5].AsInteger := strtoint(edit1.text);
            prepare;
            execquery;
        end;
        ibdm.IBQUsuario.Close;
        ibdm.IBQUsuario.Open;
    end;
    CommitWork;
    close;
end;

procedure TFrmIncluirVend.Edit5Exit(Sender: TObject);
begin
    if strtoint(edit4.Text) <> strtoint(edit5.text) then
    begin
        edit4.Text := '';
        edit5.Text := '';
        ShowMessage('Senha Incorreta!!!');
        edit4.SetFocus;
    end;
end;

procedure TFrmIncluirVend.Edit1Exit(Sender: TObject);
begin
    if vnovo = true then
    begin
        if ibdm.IBQUsuario.locate('codigo',strtoint(edit1.text),[]) then
        begin
            Showmessage('Este código de cliente já está cadastrado para '+ibdm.IBQUsuarioNOME.AsString);
            edit1.text := '';
        end;
    end;
end;

end.
