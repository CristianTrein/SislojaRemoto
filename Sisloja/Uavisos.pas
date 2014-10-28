unit Uavisos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, XP_Form, Grids, DBGrids, StdCtrls, Buttons, Mask, rxToolEdit;

type
  TFrmAvisos = class(TForm)
    Button2: TButton;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    Label1: TLabel;
    ComboBox1: TComboBox;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    Label2: TLabel;
    eddata: TDateEdit;
    BitBtn6: TBitBtn;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    DBGrid1: TDBGrid;
    BitBtn7: TBitBtn;
    edobs: TEdit;
    Button1: TButton;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure edobsExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    StarIsThere: Boolean;
  end;

var
  FrmAvisos: TFrmAvisos;

implementation

uses DM, Urelavisos, Uetiqcli;

{$R *.DFM}

procedure TFrmAvisos.BitBtn5Click(Sender: TObject);
begin
    Close;
end;

procedure TFrmAvisos.FormShow(Sender: TObject);
begin
    Combobox1.ItemIndex := 0;
    ibdm.IBQavisos.Close;

    ibdm.IBQavisos.Open;
    DBgrid1.refresh;
    eddata.Date := int(now);
end;

procedure TFrmAvisos.BitBtn1Click(Sender: TObject);
    var
    msg:integer;
    controle:integer;
    qcontrole:integer;
    qdata:integer;
    faz:boolean;
begin
    msg := application.MessageBox('Confirma a carga de Avisos ???','Confirmação',68);
    if msg = 6 then
    begin
        controle:=ibdm.ibqavisos.FieldByname('controle').asinteger;
        with ibdm.IBQCreceber do
        begin

         //   Close;
         //   Open;
            First;
            While not eof do
            begin
                if FieldByname('vencimento').asdatetime < int(now)  then
                begin
                    faz:=True;
                    qcontrole:=FieldByname('controle').asinteger;
                    with ibdm.Consulta do
                    begin
                        Close;
                        sql.Clear;
                        sql.Add('Select Count(0) from avisos');
                        sql.Add('Where controle=:p0');
                        params[0].AsInteger := qcontrole;
                        Open;
                        If Fields[0].AsInteger > 0 then
                            faz:=False;
                    end;
                    if faz = True then
                    begin
                        With ibdm.Cheka do
                        begin
                            Close;
                            Sql.Clear;
                            sql.Add('Insert into Avisos');
                            sql.Add('(controle)');
                            sql.Add('Values(:p0)');
                            params[0].AsInteger := qcontrole;
                            ExecQuery;
                        end;
                    end;
                end;
                next;
            end;
        end;
        CommitWork;
        ibdm.IBQavisos.Close;
        ibdm.IBQavisos.Open;
    //    ibdm.IBQavisos.Locate('controle',controle,[]);
        DBgrid1.Refresh;
    end;
end;

procedure TFrmAvisos.BitBtn7Click(Sender: TObject);
begin
    edobs.Text := ibdm.IBQavisosOBS.AsString;
    edobs.Enabled := True;
end;

procedure TFrmAvisos.edobsExit(Sender: TObject);
    var
    controle:integer;

begin
    controle := ibdm.IBQavisosCONTROLE.AsInteger;
    with ibdm.Cheka do
    begin
        Close;
        sql.Clear;
        sql.Add('Update avisos');
        sql.Add('Set obs=:p0');
        sql.Add('Where controle=:p1');
        params[0].AsString := edobs.Text;
        params[1].AsInteger := controle;
        ExecQuery;

    end;
    CommitWork;
    with ibdm.IBQavisos do
    begin
        Close;
        Open;
        DBgrid1.Refresh;
        Locate('controle',controle,[]);
    end;
    edobs.Text := '';
    edobs.Enabled := False;
end;

procedure TFrmAvisos.Button1Click(Sender: TObject);
    var
    controle:integer;
    tipo : integer;
begin
    controle := ibdm.IBQavisosCONTROLE.AsInteger;
    tipo := combobox1.ItemIndex+1 ;
    if tipo=1 then
    begin
        if ibdm.IBQavisosAVISO1.Value > 0 then
            Showmessage('Este aviso já foi enviado !!')
           else
            with ibdm.Cheka do
            begin
                close;
                sql.Clear;
                sql.Add('update avisos');
                sql.Add('set marca1=:p0');
                sql.Add('where controle=:p1');
                params[0].AsString := 'X';
                params[1].AsInteger := controle;
                Execquery;
             end;
    end;
    if tipo=2 then
    begin
        if ibdm.IBQavisosAVISO2.Value > 0 then
            Showmessage('Este aviso já foi enviado !!')
           else
            with ibdm.Cheka do
            begin
                close;
                sql.Clear;
                sql.Add('update avisos');
                sql.Add('set marca2=:p0');
                sql.Add('where controle=:p1');
                params[0].AsString := 'X';
                params[1].AsInteger := controle;
                Execquery;
             end;
    end;
    if tipo=3 then
    begin
        if ibdm.IBQavisosAVISO3.Value > 0 then
            Showmessage('Este aviso já foi enviado !!')
           else
            with ibdm.Cheka do
            begin
                close;
                sql.Clear;
                sql.Add('update avisos');
                sql.Add('set marca3=:p0');
                sql.Add('where controle=:p1');
                params[0].AsString := 'X';
                params[1].AsInteger := controle;
                Execquery;
             end;
    end;
    if tipo=4 then
    begin
        if ibdm.IBQavisosSPCENT.Value > 0 then
            Showmessage('Este aviso já foi enviado !!')
           else
            with ibdm.Cheka do
            begin
                close;
                sql.Clear;
                sql.Add('update avisos');
                sql.Add('set marcaspce=:p0');
                sql.Add('where controle=:p1');
                params[0].AsString := 'X';
                params[1].AsInteger := controle;
                Execquery;
             end;
    end;
    if tipo=5 then
    begin
        if ibdm.IBQavisosSPCSAI.Value > 0 then
            Showmessage('Este aviso já foi enviado !!')
           else
            with ibdm.Cheka do
            begin
                close;
                sql.Clear;
                sql.Add('update avisos');
                sql.Add('set marcaspcs=:p0');
                sql.Add('where controle=:p1');
                params[0].AsString := 'X';
                params[1].AsInteger := controle;
                Execquery;
             end;
    end;
    CommitWork;
    ibdm.IBQavisos.close;
    ibdm.IBQavisos.open;
    ibdm.IBQavisos.locate('controle',controle,[]);
    DBGrid1.Refresh;
end;

procedure TFrmAvisos.BitBtn3Click(Sender: TObject);
    var
    controle:integer;
    tipo : integer;
begin
    controle := ibdm.IBQavisosCONTROLE.AsInteger;
    tipo := combobox1.ItemIndex+1 ;
    if tipo=1 then
    begin
        if ibdm.IBQavisosAVISO1.Value > 0 then
            Showmessage('Este aviso já foi enviado !!')
           else
            with ibdm.Cheka do
            begin
                close;
                sql.Clear;
                sql.Add('update avisos');
                sql.Add('set marca1=:p0');
                sql.Add('where controle=:p1');
                params[0].AsString := ' ';
                params[1].AsInteger := controle;
                Execquery;
             end;
    end;
    if tipo=2 then
    begin
        if ibdm.IBQavisosAVISO2.Value > 0 then
            Showmessage('Este aviso já foi enviado !!')
           else
            with ibdm.Cheka do
            begin
                close;
                sql.Clear;
                sql.Add('update avisos');
                sql.Add('set marca2=:p0');
                sql.Add('where controle=:p1');
                params[0].AsString := ' ';
                params[1].AsInteger := controle;
                Execquery;
             end;
    end;
    if tipo=3 then
    begin
        if ibdm.IBQavisosAVISO3.Value > 0 then
            Showmessage('Este aviso já foi enviado !!')
           else
            with ibdm.Cheka do
            begin
                close;
                sql.Clear;
                sql.Add('update avisos');
                sql.Add('set marca3=:p0');
                sql.Add('where controle=:p1');
                params[0].AsString := ' ';
                params[1].AsInteger := controle;
                Execquery;
             end;
    end;
    if tipo=4 then
    begin
        if ibdm.IBQavisosSPCENT.Value > 0 then
            Showmessage('Este aviso já foi enviado !!')
           else
            with ibdm.Cheka do
            begin
                close;
                sql.Clear;
                sql.Add('update avisos');
                sql.Add('set marcaspce=:p0');
                sql.Add('where controle=:p1');
                params[0].AsString := ' ';
                params[1].AsInteger := controle;
                Execquery;
             end;
    end;
    if tipo=5 then
    begin
        if ibdm.IBQavisosSPCSAI.Value > 0 then
            Showmessage('Este aviso já foi enviado !!')
           else
            with ibdm.Cheka do
            begin
                close;
                sql.Clear;
                sql.Add('update avisos');
                sql.Add('set marcaspcs=:p0');
                sql.Add('where controle=:p1');
                params[0].AsString := ' ';
                params[1].AsInteger := controle;
                Execquery;
             end;
    end;
    CommitWork;
    ibdm.IBQavisos.close;
    ibdm.IBQavisos.open;
    ibdm.IBQavisos.locate('controle',controle,[]);
    DBGrid1.Refresh;
end;

procedure TFrmAvisos.Button2Click(Sender: TObject);
    var
    controle:integer;
    tipo : integer;
begin
    controle := ibdm.IBQavisosCONTROLE.AsInteger;
    tipo := combobox1.ItemIndex+1 ;
    if tipo=1 then
    begin
            with ibdm.Cheka do
            begin
                close;
                sql.Clear;
                sql.Add('update avisos');
                sql.Add('set marca1=:p0');
                sql.Add('where aviso1 is null');
                params[0].AsString := 'X';
                Execquery;
             end;
    end;
    if tipo=2 then
    begin
            with ibdm.Cheka do
            begin
                close;
                sql.Clear;
                sql.Add('update avisos');
                sql.Add('set marca2=:p0');
                sql.Add('where aviso2 is null');
                params[0].AsString := 'X';
                Execquery;
             end;
    end;
    if tipo=3 then
    begin
            with ibdm.Cheka do
            begin
                close;
                sql.Clear;
                sql.Add('update avisos');
                sql.Add('set marca3=:p0');
                sql.Add('where aviso3 is null');
                params[0].AsString := 'X';
                Execquery;
             end;
    end;
    if tipo=4 then
    begin
            with ibdm.Cheka do
            begin
                close;
                sql.Clear;
                sql.Add('update avisos');
                sql.Add('set marcaspce=:p0');
                sql.Add('where spcent is null');
                params[0].AsString := 'X';
                Execquery;
             end;
    end;
    if tipo=5 then
    begin
            with ibdm.Cheka do
            begin
                close;
                sql.Clear;
                sql.Add('update avisos');
                sql.Add('set marcaspcs=:p0');
                sql.Add('where spcsai=:p1');
                params[0].AsString := 'X';
                Execquery;
             end;
    end;
    CommitWork;
    ibdm.IBQavisos.close;
    ibdm.IBQavisos.open;
    ibdm.IBQavisos.locate('controle',controle,[]);
    DBGrid1.Refresh;
end;




procedure TFrmAvisos.BitBtn2Click(Sender: TObject);
    var
    controle:integer;
    tipo : integer;
begin
    controle := ibdm.IBQavisosCONTROLE.AsInteger;
    tipo := combobox1.ItemIndex+1;
    if tipo=1 then
    begin
            with ibdm.Cheka do
            begin
                close;
                sql.Clear;
                sql.Add('update avisos');
                sql.Add('set marca1=:p0');
                sql.Add('where aviso1 is null');
                params[0].AsString := ' ';
                Execquery;
             end;
    end;
    if tipo=2 then
    begin
            with ibdm.Cheka do
            begin
                close;
                sql.Clear;
                sql.Add('update avisos');
                sql.Add('set marca2=:p0');
                sql.Add('where aviso2 is null');
                params[0].AsString := ' ';
                Execquery;
             end;
    end;
    if tipo=3 then
    begin
            with ibdm.Cheka do
            begin
                close;
                sql.Clear;
                sql.Add('update avisos');
                sql.Add('set marca3=:p0');
                sql.Add('where aviso3 is null');
                params[0].AsString := ' ';
                Execquery;
             end;
    end;
    if tipo=4 then
    begin
            with ibdm.Cheka do
            begin
                close;
                sql.Clear;
                sql.Add('update avisos');
                sql.Add('set marcaspce=:p0');
                sql.Add('where spcent is null');
                params[0].AsString := ' ';
                Execquery;
             end;
    end;
    if tipo=5 then
    begin
            with ibdm.Cheka do
            begin
                close;
                sql.Clear;
                sql.Add('update avisos');
                sql.Add('set marcaspcs=:p0');
                sql.Add('where spcsai=:p1');
                params[0].AsString := ' ';
                Execquery;
             end;
    end;
    CommitWork;
    ibdm.IBQavisos.close;
    ibdm.IBQavisos.open;
    ibdm.IBQavisos.locate('controle',controle,[]);
    DBGrid1.Refresh;
end;

procedure TFrmAvisos.BitBtn9Click(Sender: TObject);
    var
    controle:integer;
begin
    controle := ibdm.IBQavisosCONTROLE.AsInteger;
    with ibdm.Cheka do
    begin
        Close;
        sql.Clear;
        sql.Add('Update avisos');
        sql.Add('Set spcent = :p0');
        sql.Add('where marcaspce =:p1 and spcent is null');
        params[0].AsDate := eddata.Date;
        params[1].AsString := 'X';
        ExecQuery;
    end;
    CommitWork;
    ibdm.IBQavisos.close;
    ibdm.IBQavisos.open;
    ibdm.IBQavisos.locate('controle',controle,[]);
    DBGrid1.Refresh;

end;

procedure TFrmAvisos.BitBtn10Click(Sender: TObject);
    var
    controle:integer;
begin
    controle := ibdm.IBQavisosCONTROLE.AsInteger;
    with ibdm.Cheka do
    begin
        Close;
        sql.Clear;
        sql.Add('Update avisos');
        sql.Add('Set spcsai = :p0');
        sql.Add('where marcaspcs =:p1 and spcsai is null');
        params[0].AsDate := eddata.Date;
        params[1].AsString := 'X';
        Execquery;
    end;
    CommitWork;
    ibdm.IBQavisos.close;
    ibdm.IBQavisos.open;
    ibdm.IBQavisos.locate('controle',controle,[]);
    DBGrid1.Refresh;

end;

procedure TFrmAvisos.BitBtn4Click(Sender: TObject);
    var
    tipo:integer;
begin
    //
    tipo := combobox1.ItemIndex+1 ;
    ibdm.IBQParam.open;
//    if tipo = 1 then
//    begin
        with ibdm.Consulta do
        begin
            Close;
            sql.Clear;
            sql.Add('Select creceber.cliente, creceber.historico from creceber,avisos');
            sql.Add('Where creceber.controle = avisos.controle and marca1=:p0 and aviso1 is null');
            sql.Add('Group by creceber.cliente, creceber.historico');
            sql.Add('order by creceber.historico');
            params[0].AsString := 'X';
            Open;
        end;
        RelAvisos := TRelAvisos.create(application);
        Relavisos.QRMemo2.lines.Text := 'Pode ter sido esquecimento, por isso queremos gentilmente informar que está(ão) vencida(s)'+#13+#10+ 'a(s) sua(s) prestação(ões):';
        RelAvisos.tipo := 1;
        RelAvisos.tit.Text := ibdm.IBQParamUSUARIO.AsString;
        RelAvisos.QuickRep1.Preview;
        RelAvisos.Destroy;
//    if tipo = 2 then
//    begin
        with ibdm.Consulta do
        begin
            Close;
            sql.Clear;
            sql.Add('Select creceber.cliente, creceber.historico from creceber,avisos');
            sql.Add('Where creceber.controle = avisos.controle and marca2=:p0 and aviso2 is null');
            sql.Add('Group by creceber.cliente, creceber.historico');
            sql.Add('order by  creceber.historico');
            params[0].AsString := 'X';
            Open;
        end;
        RelAvisos := TRelAvisos.create(application);
        Relavisos.QRMemo2.lines.text := 'Reiteramos  os termos do aviso  anterior  referente  a(s) prestação(ões) vencida(s) nº.:';
        Relavisos.QRMemo1.lines.text := 'No prazo de até cinco dias solicitamos seu comparecimento  em nossa loja.' + #13+#10 + 'Desejamos continuar contando com V.Sa. como cliente.'+ #13+#10 + Relavisos.QRMemo1.lines.text;
        RelAvisos.tipo := 2;
        RelAvisos.tit.Text := ibdm.IBQParamUSUARIO.AsString;
        RelAvisos.QuickRep1.Preview;
        RelAvisos.Destroy;
//    end;
//    if tipo = 3 then
//    begin
        with ibdm.Consulta do
        begin
            Close;
            sql.Clear;
            sql.Add('Select creceber.cliente, creceber.historico from creceber,avisos');
            sql.Add('Where creceber.controle = avisos.controle and marca3=:p0 and aviso3 is null');
            sql.Add('Group by creceber.cliente, creceber.historico');
            sql.Add('order by creceber.historico');
            params[0].AsString := 'X';
            Open;
        end;
        RelAvisos := TRelAvisos.create(application);
        Relavisos.QRMemo2.lines.text := 'Solicitamos que, no prazo de cinco dias,  v.sa.  atualize seu atraso ref. prestação(ões)  vencida(s) nº.';
        Relavisos.QRMemo1.lines.text := 'Caso V. Sa. deixe de fazê-lo, somos obrigados a registrá-lo no Serviço de proteçäo ao crédito.'+#13+#10+'Compareça a nossa loja, pois desejamos ajudá-lo a resolver a pendência.' + #13+#10 + Relavisos.QRMemo1.lines.text;
        RelAvisos.tipo := 3;
        RelAvisos.tit.Text := ibdm.IBQParamUSUARIO.AsString;
        RelAvisos.QuickRep1.Preview;
        RelAvisos.Destroy;
 //   end;
       If Application.MessageBox('Avisos emitidos e impressos ??','Confirmação',MB_ICONQUESTION+ MB_YESNO+MB_DEFBUTTON2)=idyes then
        begin
            with ibdm.Cheka do
            begin
                Close;
                sql.Clear;
                sql.Add('Update avisos');
                sql.Add('Set aviso1=:p0');
                sql.Add('Where marca1=:p1 and aviso1 is null');
                params[0].AsDate := eddata.Date;
                params[1].AsString := 'X';
                Execquery;
            end;
            with ibdm.Cheka do
            begin
                Close;
                sql.Clear;
                sql.Add('Update avisos');
                sql.Add('Set aviso2=:p0');
                sql.Add('Where marca2=:p1 and aviso2 is null');
                params[0].AsDate := eddata.Date;
                params[1].AsString := 'X';
                Execquery;
            end;
            with ibdm.Cheka do
            begin
                Close;
                sql.Clear;
                sql.Add('Update avisos');
                sql.Add('Set aviso3=:p0');
                sql.Add('Where marca3=:p1 and aviso3 is null');
                params[0].AsDate := eddata.Date;
                params[1].AsString := 'X';
                Execquery;
            end;
            CommitWork;
        end;
//    end;



    ibdm.IBQavisos.Close;
    ibdm.IBQavisos.Open;

end;

procedure TFrmAvisos.RadioButton1Click(Sender: TObject);
begin
    if RadioButton1.Checked = True then
    begin
         With ibdm.ibqavisos do
        begin
            Close;
            sql.Clear;
            sql.Add('Select avisos.*, creceber.* from avisos, creceber');
            sql.add('where creceber.controle = avisos.controle');
            Open;
        end;
        DBgrid1.refresh;
        eddata.Date := int(now);
    end;
end;

procedure TFrmAvisos.RadioButton2Click(Sender: TObject);
begin
    if RadioButton2.Checked = True then
    begin
        With ibdm.ibqavisos do
        begin
            Close;
            sql.Clear;
            sql.Add('Select avisos.*, creceber.* from avisos, creceber');
            sql.add('where creceber.controle = avisos.controle and marca1=:p0');
            params[0].AsString := 'X';
            Open;
        end;
        DBgrid1.refresh;
        eddata.Date := int(now);
    end;
end;

procedure TFrmAvisos.RadioButton3Click(Sender: TObject);
begin
    if RadioButton3.Checked = True then
    begin
        With ibdm.ibqavisos do
        begin
            Close;
            sql.Clear;
            sql.Add('Select avisos.*, creceber.* from avisos, creceber');
            sql.add('where creceber.controle = avisos.controle and marca2=:p0');
            params[0].AsString := 'X';
            Open;
        end;
        DBgrid1.refresh;
        eddata.Date := int(now);
    end;

end;

procedure TFrmAvisos.RadioButton4Click(Sender: TObject);
begin
    if RadioButton4.Checked = True then
    begin
        With ibdm.ibqavisos do
        begin
            Close;
            sql.Clear;
            sql.Add('Select avisos.*, creceber.* from avisos, creceber');
            sql.add('where creceber.controle = avisos.controle and marca3=:p0');
            params[0].AsString := 'X';
            Open;
        end;
        DBgrid1.refresh;
        eddata.Date := int(now);
    end;

end;

procedure TFrmAvisos.RadioButton5Click(Sender: TObject);
begin
    if RadioButton5.Checked = True then
    begin
        With ibdm.ibqavisos do
        begin
            Close;
            sql.Clear;
            sql.Add('Select avisos.*, creceber.* from avisos, creceber');
            sql.add('where creceber.controle = avisos.controle and MARCASPCE=:p0');
            params[0].AsString := 'X';
            Open;
        end;
        DBgrid1.refresh;
        eddata.Date := int(now);
    end;

end;

procedure TFrmAvisos.RadioButton6Click(Sender: TObject);
begin
    if RadioButton6.Checked = True then
    begin
        With ibdm.ibqavisos do
        begin
            Close;
            sql.Clear;
            sql.Add('Select avisos.*, creceber.* from avisos, creceber');
            sql.add('where creceber.controle = avisos.controle and MARCASPCS=:p0');
            params[0].AsString := 'X';
            Open;
        end;
        DBgrid1.refresh;
        eddata.Date := int(now);
    end;

end;

procedure TFrmAvisos.DBGrid1CellClick(Column: TColumn);
    var
    controle:integer;
    marca:string;
    Vlabel : string;
    faz:boolean;
begin
    //
    faz:=False;
    with DBgrid1.SelectedField do
    begin
        vlabel := DisplayLabel;
    //    Showmessage(Vlabel);
        if DisplayLabel = 'MARCA1' then
            begin

                controle := ibdm.IBQavisosCONTROLE.AsInteger;
                //tipo := combobox1.ItemIndex+1 ;
                if ibdm.IBQavisosMARCA1.asstring = 'X' then
                    marca := ' '
                   else
                    marca := 'X';
                if ibdm.IBQavisosAVISO1.Value > 0 then
                    Showmessage('Este aviso já foi enviado !!')
                   else
                    with ibdm.Cheka do
                    begin
                        faz:=True;
                        close;
                        sql.Clear;
                        sql.Add('update avisos');
                        sql.Add('set marca1=:p0');
                        sql.Add('where controle=:p1');
                        params[0].AsString := marca;
                        params[1].AsInteger := controle;
                        Execquery;
                     end;
            end;

       if DisplayLabel = 'MARCA2' then
            begin
                controle := ibdm.IBQavisosCONTROLE.AsInteger;
                //tipo := combobox1.ItemIndex+1 ;
                if ibdm.IBQavisosMARCA2.asstring = 'X' then
                    marca := ' '
                   else
                    marca := 'X';
                if ibdm.IBQavisosAVISO2.Value > 0 then
                    Showmessage('Este aviso já foi enviado !!')
                   else
                    with ibdm.Cheka do
                    begin
                        faz:=True;
                        close;
                        sql.Clear;
                        sql.Add('update avisos');
                        sql.Add('set marca2=:p0');
                        sql.Add('where controle=:p1');
                        params[0].AsString := marca;
                        params[1].AsInteger := controle;
                        Execquery;
                     end;
            end;

       if DisplayLabel = 'MARCA3' then
            begin
                controle := ibdm.IBQavisosCONTROLE.AsInteger;
                //tipo := combobox1.ItemIndex+1 ;
                if ibdm.IBQavisosMARCA3.asstring = 'X' then
                    marca := ' '
                   else
                    marca := 'X';
                if ibdm.IBQavisosAVISO3.Value > 0 then
                    Showmessage('Este aviso já foi enviado !!')
                   else
                    with ibdm.Cheka do
                    begin
                        faz:=True;
                        close;
                        sql.Clear;
                        sql.Add('update avisos');
                        sql.Add('set marca3=:p0');
                        sql.Add('where controle=:p1');
                        params[0].AsString := marca;
                        params[1].AsInteger := controle;
                        Execquery;
                     end;
            end;

       if DisplayLabel = 'MARCASPCE' then
            begin
                controle := ibdm.IBQavisosCONTROLE.AsInteger;
                //tipo := combobox1.ItemIndex+1 ;
                if ibdm.IBQavisosMARCASPCE.asstring = 'X' then
                    marca := ' '
                   else
                    marca := 'X';
                if ibdm.IBQavisosSPCENT.Value > 0 then
                    Showmessage('Este aviso já foi enviado !!')
                   else
                    with ibdm.Cheka do
                    begin
                        faz:=True;
                        close;
                        sql.Clear;
                        sql.Add('update avisos');
                        sql.Add('set marcaspce=:p0');
                        sql.Add('where controle=:p1');
                        params[0].AsString := marca;
                        params[1].AsInteger := controle;
                        Execquery;
                     end;
            end;
       if DisplayLabel = 'MARCASPCS' then
            begin
                controle := ibdm.IBQavisosCONTROLE.AsInteger;
                //tipo := combobox1.ItemIndex+1 ;
                if ibdm.IBQavisosMARCASPCS.asstring = 'X' then
                    marca := ' '
                   else
                    marca := 'X';
                if ibdm.IBQavisosSPCSAI.Value > 0 then
                    Showmessage('Este aviso já foi enviado !!')
                   else
                    with ibdm.Cheka do
                    begin
                        faz:=True;
                        close;
                        sql.Clear;
                        sql.Add('update avisos');
                        sql.Add('set marcaspcs=:p0');
                        sql.Add('where controle=:p1');
                        params[0].AsString := marca;
                        params[1].AsInteger := controle;
                        Execquery;
                     end;
            end;




            if faz = True then
            begin
                CommitWork;
                ibdm.IBQavisos.close;
                ibdm.IBQavisos.open;
                ibdm.IBQavisos.locate('controle',controle,[]);
                DBgrid1.Repaint;

            end;

    end;

end;

procedure TFrmAvisos.DBGrid1ColEnter(Sender: TObject);
begin
    with DBGrid1.SelectedField do
//    DisplayLabel := '* ' + DisplayLabel;
    StarIsThere := True;
end;

procedure TFrmAvisos.DBGrid1ColExit(Sender: TObject);
//var
//  TheLabel: string;
begin
  {  if StarIsThere then
      begin
        with DBGrid1.SelectedField do
        begin
          TheLabel := DisplayLabel;
          Delete(TheLabel, 1, 2);
          DisplayLabel := TheLabel;
        end;
      end;   }
end;

procedure TFrmAvisos.BitBtn6Click(Sender: TObject);
begin
    with ibdm.Consulta do
    begin
        close;
        sql.Clear;
        sql.Add('Select creceber.cliente, creceber.historico nome, clientes.endereco, clientes.cidade, clientes.cep, clientes.uf from creceber,avisos,clientes');
        sql.Add('Where creceber.controle = avisos.controle and cast(clientes.codigo as integer) = creceber.cliente  and (aviso1=:p0 or aviso2=:p1 or aviso3=:p2)');
        sql.Add('Group by creceber.cliente, creceber.historico, clientes.endereco, clientes.cidade, clientes.cep, clientes.uf');
        sql.Add('order by creceber.historico');
        params[0].Asdate := eddata.Date;
        params[1].Asdate := eddata.Date;
        params[2].Asdate := eddata.Date;
        Open; 
    end;
    EtiqCli := TEtiqCli.create(application);
    EtiqCli.QuickRep1.Preview;
    EtiqCli.Destroy;
    
end;

end.
