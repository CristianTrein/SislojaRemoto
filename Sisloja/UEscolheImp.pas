unit UEscolheImp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxGIF, XP_Button, StdCtrls, ExtCtrls, XP_Form, QRExport,Mask, Buttons,
  rxToolEdit;

type
  TFrmEscolheImp = class(TForm)
    Shape1: TShape;
    Label7: TLabel;
    Edit19: TEdit;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    btn5: TBitBtn;
    btn6: TBitBtn;
    btn7: TBitBtn;
    Button1: TButton;
    dti: TDateEdit;
    dtf: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure tfXPButton3Click(Sender: TObject);
    procedure tfXPButton2Click(Sender: TObject);
    procedure tfXPButton1Click(Sender: TObject);
    procedure tfXPButton4Click(Sender: TObject);
    procedure tfXPButton5Click(Sender: TObject);
    procedure tfXPButton7Click(Sender: TObject);
    procedure tfXPButton6Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEscolheImp: TFrmEscolheImp;

implementation

uses URelClientes, DM, Urelcadastr, Uetiqcli, Urelcli_1, URelCliNiver,
  USelCli;

{$R *.DFM}

procedure TFrmEscolheImp.tfXPButton3Click(Sender: TObject);
begin
     Close;
end;

procedure TFrmEscolheImp.tfXPButton2Click(Sender: TObject);
begin
        ibdm.IBQParam.Open;
        FrmRelClientes := TFrmRelClientes.Create(application);
        FrmRelClientes.QRLabel1.Caption := ibdm.IBQParamUSUARIO.AsString;
        IBDM.IBQClientes.Close;
        IBDM.IBQClientes.Open;
        FrmRelClientes.QuickRep1.Preview;
        FrmRelClientes.Destroy;
        ibdm.IBQParam.close;
end;

procedure TFrmEscolheImp.tfXPButton1Click(Sender: TObject);
    var
    vcli:string;
    vcnpj:string;

begin
    vcli:=ibdm.IBQClientesCODIGO.AsString;
    if vcli <> '' then
    begin
      Relcadastro :=TRelcadastro.Create(Application);
      with Relcadastro.dados do
      begin
          Close;
          sql.Clear;
          sql.Add('Select * from clientes');
          sql.Add('where codigo = :p0');
          params[0].AsString := vcli;
          Open;
      end;
      ibdm.IBQParam.Open;

      Relcadastro.QRMemo1.Lines.Text := ibdm.IBQParamCONTRATO.asstring;
      vcnpj:= ibdm.IBQParamCNPJ.AsString ;
      vcnpj:= Copy(vcnpj,1,2)+'.'+Copy(vcnpj,3,3)+'.'+Copy(vcnpj,6,3)+'/'+Copy(vcnpj,9,4)+'-'+Copy(vcnpj,13,2);
      Relcadastro.QRSysData1.Text := ibdm.IBQParamUSUARIO.AsString;
      Relcadastro.lbcnpj.Caption := 'CNPJ: '+vcnpj;
      Relcadastro.dados.Active := True;
      Relcadastro.DataSource1.Enabled := True;

      Relcadastro.QuickRep1.Preview;
      Relcadastro.Destroy;
      ibdm.IBQParam.Close;
    end;
end;

procedure TFrmEscolheImp.tfXPButton4Click(Sender: TObject);
    var
    vcli:string;
begin
    vcli := ibdm.IBQClientesCODIGO.AsString;
    with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('Select clientes.codigo, clientes.nome, clientes.bairro ,clientes.endereco, clientes.cidade, clientes.cep, clientes.uf from clientes');
        sql.Add('Where codigo=:p0');
        params[0].Asstring := vcli;
        Open;
    end;
    EtiqCli := TEtiqCli.create(application);
    EtiqCli.QuickRep1.Preview;
    EtiqCli.Destroy;

end;

procedure TFrmEscolheImp.tfXPButton5Click(Sender: TObject);
begin
//
  Relcli_1 := TRelcli_1.create(Application);
  Relcli_1.QRLabel1.Caption := ibdm.IBQParamUSUARIO.AsString;
  with ibdm.Consulta do
  begin
    Close;
    sql.Clear;
    sql.Add('Select clientes.codigo, clientes.nome,clientes.cadastro, clientes.limcred, max(cast(doctos.data as date)) udata from clientes, doctos');
    sql.Add('where doctos.clifor = cast(clientes.codigo as integer)');
    sql.Add('group by clientes.codigo, clientes.nome,clientes.cadastro, clientes.limcred');
    sql.Add('order by clientes.nome');
    open;
  end;
  Relcli_1.Preview;
  Relcli_1.Destroy;


end;


procedure TFrmEscolheImp.tfXPButton7Click(Sender: TObject);
begin
         IF edit19.text <> '' then
         begin
             FrmRelCliNiver := TFrmRelCliNiver.Create(Application);
             with ibdm.IBQClientes do
             begin
                close;
                sql.Clear;
                sql.Add('select clientes.*, extract(DAY from dtnasc) dia  from clientes');
                sql.Add('where extract(MONTH from dtnasc) =:p0 ');
                sql.Add('order by dia ASC');
                params[0].Asstring := edit19.text;
                prepare;
                open;
              end;
            ibdm.IBQParam.open;
            FrmRelCliNiver.QRLabel8.Caption := ibDM.IBQParamUSUARIO.AsString;
            FrmRelCliniver.QRLabel1.Caption := 'Lista de aniversariantes do mês - '+edit19.text;
            FrmRelCliNiver.QuickRep1.Preview;
            FrmRelCliNiver.Destroy;
            ibdm.IBQParam.Close;
        end
        Else
        Showmessage('Faltou indicar o mês !!');

end;

procedure TFrmEscolheImp.tfXPButton6Click(Sender: TObject);
begin

     IF edit19.text <> '' then
     begin
          with ibdm.Consulta do
          begin
              close;
              sql.Clear;
              sql.Add('select clientes.*, extract(DAY from dtnasc) dia  from clientes');
              sql.Add('where extract(MONTH from dtnasc) =:p0 ');
              sql.Add('order by dia ASC');
              params[0].Asstring := edit19.text;
              Open;
          end;
          FrmSelCli := TFrmSelCli.Create(Application);
          FrmSelCli.ShowModal;
          FrmSelCli.Destroy;
    end
    Else
    Showmessage('Faltou indicar o mês !!');

end;

procedure TFrmEscolheImp.btn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmEscolheImp.btn2Click(Sender: TObject);
begin
         IF edit19.text <> '' then
         begin
             FrmRelCliNiver := TFrmRelCliNiver.Create(Application);
             with ibdm.IBQClientes do
             begin
                close;
                sql.Clear;
                sql.Add('select clientes.*, extract(DAY from dtnasc) dia  from clientes');
                sql.Add('where extract(MONTH from dtnasc) =:p0 ');
                sql.Add('order by dia ASC');
                params[0].Asstring := edit19.text;
                prepare;
                open;
              end;
            ibdm.IBQParam.open;
            FrmRelCliNiver.QRLabel8.Caption := ibDM.IBQParamUSUARIO.AsString;
            FrmRelCliniver.QRLabel1.Caption := 'Lista de aniversariantes do mês - '+edit19.text;
            FrmRelCliNiver.QuickRep1.Preview;
            FrmRelCliNiver.Destroy;
            ibdm.IBQParam.Close;
        end
        Else
        Showmessage('Faltou indicar o mês !!');

end;

procedure TFrmEscolheImp.btn3Click(Sender: TObject);
begin

     IF edit19.text <> '' then
     begin
          with ibdm.Consulta do
          begin
              close;
              sql.Clear;
              sql.Add('select clientes.*, extract(DAY from dtnasc) dia  from clientes');
              sql.Add('where extract(MONTH from dtnasc) =:p0 ');
              sql.Add('order by dia ASC');
              params[0].Asstring := edit19.text;
              Open;
          end;
          FrmSelCli := TFrmSelCli.Create(Application);
          FrmSelCli.ShowModal;
          FrmSelCli.Destroy;
    end
    Else
    Showmessage('Faltou indicar o mês !!');
end;


procedure TFrmEscolheImp.btn4Click(Sender: TObject);
begin
        ibdm.IBQParam.Open;
        FrmRelClientes := TFrmRelClientes.Create(application);
        FrmRelClientes.QRLabel1.Caption := ibdm.IBQParamUSUARIO.AsString;
        IBDM.IBQClientes.Close;
        IBDM.IBQClientes.Open;
        FrmRelClientes.QuickRep1.Preview;
        FrmRelClientes.Destroy;
        ibdm.IBQParam.close;
end;

procedure TFrmEscolheImp.btn5Click(Sender: TObject);
begin
  Relcli_1 := TRelcli_1.create(Application);
  Relcli_1.QRLabel1.Caption := ibdm.IBQParamUSUARIO.AsString;
  with ibdm.Consulta do
  begin
    Close;
    sql.Clear;
    sql.Add('Select clientes.codigo, clientes.nome,clientes.cadastro, clientes.limcred, max(cast(doctos.data as date)) udata from clientes, doctos');
    sql.Add('where doctos.clifor = cast(clientes.codigo as integer)');
    sql.Add('group by clientes.codigo, clientes.nome,clientes.cadastro, clientes.limcred');
    sql.Add('order by clientes.nome');
    open;
  end;
  Relcli_1.Preview;
  Relcli_1.Destroy;

end;

procedure TFrmEscolheImp.btn6Click(Sender: TObject);
    var
    vcli:string;
    vcnpj:string;

begin
    vcli:=ibdm.IBQClientesCODIGO.AsString;
    if vcli <> '' then
    begin
      Relcadastro :=TRelcadastro.Create(Application);
      with Relcadastro.dados do
      begin
          Close;
          sql.Clear;
          sql.Add('Select * from clientes');
          sql.Add('where codigo = :p0');
          params[0].AsString := vcli;
          Open;
      end;
      ibdm.IBQParam.Open;

      Relcadastro.QRMemo1.Lines.Text := ibdm.IBQParamCONTRATO.asstring;
      vcnpj:= ibdm.IBQParamCNPJ.AsString ;
      vcnpj:= Copy(vcnpj,1,2)+'.'+Copy(vcnpj,3,3)+'.'+Copy(vcnpj,6,3)+'/'+Copy(vcnpj,9,4)+'-'+Copy(vcnpj,13,2);
      Relcadastro.QRSysData1.Text := ibdm.IBQParamUSUARIO.AsString;
      Relcadastro.lbcnpj.Caption := 'CNPJ: '+vcnpj;
      Relcadastro.dados.Active := True;
      Relcadastro.DataSource1.Enabled := True;

      Relcadastro.QuickRep1.Preview;
      Relcadastro.Destroy;
      ibdm.IBQParam.Close;
    end;
end;

procedure TFrmEscolheImp.btn7Click(Sender: TObject);
    var
    vcli:string;
begin
    vcli := ibdm.IBQClientesCODIGO.AsString;
    with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('Select clientes.codigo, clientes.nome, clientes.bairro ,clientes.endereco, clientes.cidade, clientes.cep, clientes.uf from clientes');
        sql.Add('Where codigo=:p0');
        params[0].Asstring := vcli;
        Open;
    end;
    EtiqCli := TEtiqCli.create(application);
    EtiqCli.QuickRep1.Preview;
    EtiqCli.Destroy;

end;

end.

