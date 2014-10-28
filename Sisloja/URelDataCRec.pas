unit URelDataCRec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, rxToolEdit, Buttons, ComCtrls, ExtCtrls, XP_Form;

type
  TFrmRelDataCRec = class(TForm)
    tfXPForm1: TtfXPForm;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    DateEdit3: TDateEdit;
    Label2: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vcreceber : boolean;
  end;

var
  FrmRelDataCRec: TFrmRelDataCRec;

implementation

uses URelContReceber, DM, URelFornecedores, URelCPagar, UPrincipal;

{$R *.DFM}

procedure TFrmRelDataCRec.BitBtn2Click(Sender: TObject);
begin
    FrmRelDataCRec.Close;
end;

procedure TFrmRelDataCRec.BitBtn1Click(Sender: TObject);
    var
    vval:real;
begin
    if vcreceber = true then
    begin
        if radiobutton1.Checked = true then    //todos
        begin
          FrmRelContReceber := TFrmRelContReceber.Create(application);
          with ibdm.Consulta do
          begin
              Close;
              SQL.Clear;
              SQL.Add('select sum(valordevido) from CReceber');
              SQL.Add('where vencimento >= :p0 and vencimento <= :p1');
              Params[0].AsDatetime := dateedit1.Date;
              Params[1].AsDatetime := dateedit2.Date;
              prepare;
              open;
              vval := Fields[0].AsCurrency;
          end;
          with FrmRelContReceber.IBQuery1 do
          begin
              Close;
              SQL.Clear;
              SQL.Add('select * from CReceber');
              SQL.Add('where vencimento >= :p0 and vencimento <= :p1');
              SQL.Add('order by historico,vencimento');
              Params[0].AsDatetime := dateedit1.Date;
              Params[1].AsDatetime := dateedit2.Date;
              prepare;
              open;

          end;
          with ibdm.IBQParam do
          begin
              close;
              open;
              FrmRelContReceber.QRLabel1.Caption := ibdm.IBQParamUSUARIO.AsString;
          end;

          if checkbox1.Checked = False then  // valor corrigido
            begin
     //         FrmRelContReceber.QRLabel15.Enabled:=False;
              FrmRelContReceber.QRDBText4.Enabled:=False;
              FrmRelContReceber.QRLabel12.Enabled:=False;
              FrmRelContReceber.QRLabel21.Enabled:=False;
              FrmRelContReceber.QRLabel22.Enabled:=False;

             end
          else
            begin
              FrmRelContReceber.QRLabel21.Enabled:=True;
              FrmRelContReceber.QRLabel22.Enabled:=True;
       //       FrmRelContReceber.QRLabel15.Enabled:=False;
              FrmRelContReceber.QRDBText4.Enabled:=False;
              FrmRelContReceber.QRLabel12.Enabled:=False;
            end;
          if CheckBox3.Checked = False then  // valor original
          begin
            FrmRelContReceber.QRDBText4.Enabled:=False;
            FrmRelContReceber.QRLabel12.Enabled:=False;

           // FrmRelContReceber.QRLabel21.Enabled:=False;
           // FrmRelContReceber.QRLabel22.Enabled:=False;
           // FrmRelContreceber.QRExpr1.Enabled := False;
         //   FrmRelContreceber.QRLabel14.Enabled := False;
            FrmRelContreceber.QRLabel11.Enabled := False;
            FrmRelContreceber.QRLabel5.Enabled := False;
         //   FrmRelContreceber.QRLabel8.Enabled := False;
          end
          else
          begin
            FrmRelContReceber.QRDBText4.Enabled:=True;
            FrmRelContReceber.QRLabel12.Enabled:=True;
         //   FrmRelContReceber.QRLabel21.Enabled:=True;
         //   FrmRelContReceber.QRLabel22.Enabled:=True;
        //
            FrmRelContreceber.QRLabel11.Enabled := True;
//            FrmRelContreceber.QRLabel5.Enabled := True;
//            FrmRelContreceber.QRLabel8.Enabled := True;
          end;


          if CheckBox4.Checked = True then  // valor original e corrigido
            begin
              FrmRelContReceber.QRLabel21.Enabled:=True;
              FrmRelContReceber.QRLabel22.Enabled:=True;
              FrmRelContreceber.QRExpr1.Enabled := True;
              FrmRelContReceber.QRLabel12.Enabled:=True;
              FrmRelContReceber.QRDBText4.Enabled:=True;
            end ;

          if CheckBox5.Checked = True then
          begin
            if CheckBox1.Checked = True then
            begin
              FrmRelContreceber.QRExpr1.Enabled := False;
              FrmRelContreceber.QRLabel14.Enabled := True;
              FrmRelContreceber.QRLabel15.Enabled := True;
              FrmRelContreceber.QRLabel8.Enabled := False;
             end
             else
             if CheckBox3.Checked = True then
             begin
              FrmRelContreceber.QRExpr1.Enabled := True;
              FrmRelContreceber.QRLabel14.Enabled := False;
              FrmRelContreceber.QRLabel15.Enabled := False;
              FrmRelContreceber.QRLabel8.Enabled := True;
             end
             else
             begin
              FrmRelContreceber.QRExpr1.Enabled := True;
              FrmRelContreceber.QRLabel14.Enabled := True;
              FrmRelContreceber.QRLabel15.Enabled := True;
              FrmRelContreceber.QRLabel8.Enabled := True;

             end;

          end
          else
          begin
              FrmRelContreceber.QRExpr1.Enabled := False;
              FrmRelContreceber.QRLabel14.Enabled := False;
              FrmRelContreceber.QRLabel15.Enabled := False;
              FrmRelContreceber.QRLabel8.Enabled := False;
          end;

          if checkbox2.Checked = False then
          begin
            FrmRelContReceber.QRLabel7.Enabled:=False;
            FrmRelContReceber.QRLabel16.Enabled:=False;
            FrmRelContReceber.QRLabel18.Enabled:=False;
            FrmRelContReceber.QRLabel19.Enabled:=False;
            FrmRelContReceber.QRLabel14.Enabled:=False;
       //     FrmRelContReceber.QRLabel15.Enabled:=False;
          end;
          if CheckBox2.Checked = True then
            FrmRelContReceber.aviso := True
            else
            FrmRelContReceber.aviso := False;
          FrmRelContReceber.QRLabel3.Caption := 'Entre os Vencimentos '+datetostr(dateedit1.date)+ ' até '+ datetostr(dateedit2.date)+ ' - Valor em: '+dateedit3.text ;
          FrmRelContReceber.qrlabel8.caption :=  FormatCurr('0.00',vval);
          FrmRelContReceber.QuickRep1.Preview;
          FrmRelContReceber.Destroy;
      end
      else  // para um cliente
        begin
          FrmRelContReceber := TFrmRelContReceber.Create(application);
              with ibdm.consulta do
              begin
                  Close;
                  SQL.Clear;
                  SQL.Add('select sum(valordevido) from CReceber');
                  SQL.Add('where vencimento >= :p0 and vencimento <= :p1 and cliente= :p2');
                  Params[0].AsDatetime := dateedit1.Date;
                  Params[1].AsDatetime := dateedit2.Date;
                  params[2].AsInteger := ibdm.IBQCreceberCLIENTE.AsInteger;
                  prepare;
                  open;
                  vval := Fields[0].AsCurrency;
              end;
              with FrmRelContReceber.IBQuery1 do
              begin
                  Close;
                  SQL.Clear;
                  SQL.Add('select * from CReceber');
                  SQL.Add('where vencimento >= :p0 and vencimento <= :p1 and cliente= :p2');
                  SQL.Add('order by historico,vencimento');
                  Params[0].AsDatetime := dateedit1.Date;
                  Params[1].AsDatetime := dateedit2.Date;
                  params[2].AsInteger := ibdm.IBQCreceberCLIENTE.AsInteger;
                  prepare;
                  open;

              end;
              with ibdm.IBQParam do
              begin
                  close;
                  open;
                  FrmRelContReceber.QRLabel1.Caption := ibdm.IBQParamUSUARIO.AsString;
              end;

          if checkbox1.Checked = False then  // valor corrigido
            begin
     //         FrmRelContReceber.QRLabel15.Enabled:=False;
              FrmRelContReceber.QRDBText4.Enabled:=False;
              FrmRelContReceber.QRLabel12.Enabled:=False;
              FrmRelContReceber.QRLabel21.Enabled:=False;
              FrmRelContReceber.QRLabel22.Enabled:=False;

             end
          else
            begin
              FrmRelContReceber.QRLabel21.Enabled:=True;
              FrmRelContReceber.QRLabel22.Enabled:=True;
       //       FrmRelContReceber.QRLabel15.Enabled:=False;
              FrmRelContReceber.QRDBText4.Enabled:=False;
              FrmRelContReceber.QRLabel12.Enabled:=False;
            end;
          if CheckBox3.Checked = False then  // valor original
          begin
            FrmRelContReceber.QRDBText4.Enabled:=False;
            FrmRelContReceber.QRLabel12.Enabled:=False;

           // FrmRelContReceber.QRLabel21.Enabled:=False;
           // FrmRelContReceber.QRLabel22.Enabled:=False;
           // FrmRelContreceber.QRExpr1.Enabled := False;
         //   FrmRelContreceber.QRLabel14.Enabled := False;
            FrmRelContreceber.QRLabel11.Enabled := False;
            FrmRelContreceber.QRLabel5.Enabled := False;
         //   FrmRelContreceber.QRLabel8.Enabled := False;
          end
          else
          begin
            FrmRelContReceber.QRDBText4.Enabled:=True;
            FrmRelContReceber.QRLabel12.Enabled:=True;
         //   FrmRelContReceber.QRLabel21.Enabled:=True;
         //   FrmRelContReceber.QRLabel22.Enabled:=True;
        //
            FrmRelContreceber.QRLabel11.Enabled := True;
//            FrmRelContreceber.QRLabel5.Enabled := True;
//            FrmRelContreceber.QRLabel8.Enabled := True;
          end;


          if CheckBox4.Checked = True then  // valor original e corrigido
            begin
              FrmRelContReceber.QRLabel21.Enabled:=True;
              FrmRelContReceber.QRLabel22.Enabled:=True;
              FrmRelContreceber.QRExpr1.Enabled := True;
              FrmRelContReceber.QRLabel12.Enabled:=True;
              FrmRelContReceber.QRDBText4.Enabled:=True;
            end ;

          if CheckBox5.Checked = True then
          begin
            if CheckBox1.Checked = True then
            begin
              FrmRelContreceber.QRExpr1.Enabled := False;
              FrmRelContreceber.QRLabel14.Enabled := True;
              FrmRelContreceber.QRLabel15.Enabled := True;
              FrmRelContreceber.QRLabel8.Enabled := False;
             end
             else
             if CheckBox3.Checked = True then
             begin
              FrmRelContreceber.QRExpr1.Enabled := True;
              FrmRelContreceber.QRLabel14.Enabled := False;
              FrmRelContreceber.QRLabel15.Enabled := False;
              FrmRelContreceber.QRLabel8.Enabled := True;
             end
             else
             begin
              FrmRelContreceber.QRExpr1.Enabled := True;
              FrmRelContreceber.QRLabel14.Enabled := True;
              FrmRelContreceber.QRLabel15.Enabled := True;
              FrmRelContreceber.QRLabel8.Enabled := True;

             end;

          end
          else
          begin
              FrmRelContreceber.QRExpr1.Enabled := False;
              FrmRelContreceber.QRLabel14.Enabled := False;
              FrmRelContreceber.QRLabel15.Enabled := False;
              FrmRelContreceber.QRLabel8.Enabled := False;
          end;


              if checkbox2.Checked = False then
              begin
                FrmRelContReceber.QRLabel7.Enabled:=False;
                FrmRelContReceber.QRLabel16.Enabled:=False;
                FrmRelContReceber.QRLabel18.Enabled:=False;
                FrmRelContReceber.QRLabel19.Enabled:=False;
                FrmRelContReceber.QRLabel14.Enabled:=False;
            //    FrmRelContReceber.QRLabel15.Enabled:=False;
              end;
              if CheckBox2.Checked = True then
                FrmRelContReceber.aviso := True
                else
                FrmRelContReceber.aviso := False;
//              if CheckBox3.Checked = False then
//              begin
//                FrmRelContreceber.QRExpr1.Enabled := False;
//                FrmRelContreceber.QRLabel14.Enabled := False;
//                FrmRelContreceber.QRLabel11.Enabled := False;
//                FrmRelContreceber.QRLabel5.Enabled := False;
//                FrmRelContreceber.QRLabel8.Enabled := False;
//              end;
              FrmRelContReceber.QRLabel3.Caption := 'Entre os Vencimentos '+datetostr(dateedit1.date)+ ' até '+ datetostr(dateedit2.date)+ ' Cliente: '+ibdm.IBQCreceberHISTORICO.AsString;
              FrmRelContReceber.qrlabel8.caption :=  FormatCurr('0.00',vval);
              FrmRelContReceber.QuickRep1.Preview;
              FrmRelContReceber.Destroy;
          end;
      end;


    if vcreceber = false then
    begin
        FrmRelCPagar := TFrmRelCPagar.Create(application);
        with FrmRelcpagar.IBQuery1 do
        begin
            Close;
            SQL.Clear;
            SQL.Add('select sum(valor) from CPAGAR');
            SQL.Add('where vencimento >= :p0 and vencimento <= :p1');
            SQL.Add('order by historico');
            Params[0].AsDatetime := dateedit1.Date;
            Params[1].AsDatetime := dateedit2.Date;
            prepare;
            open;
            vval := Fields[0].AsCurrency;
            Close;
            SQL.Clear;
            SQL.Add('select * from CPAGAR');
            SQL.Add('where vencimento >= :p0 and vencimento <= :p1');
            SQL.Add('order by historico');
            Params[0].AsDatetime := dateedit1.Date;
            Params[1].AsDatetime := dateedit2.Date;
            prepare;
            open;

        end;
        with ibdm.IBQParam do
        begin
            close;
            open;
            FrmRelCPagar.QRLabel1.Caption := ibdm.IBQParamUSUARIO.AsString;
        end;
        ibdm.IBQCpagar.Open;
        FrmRelCpagar.QRLabel8.Caption := 'Entre os Vencimentos '+datetostr(dateedit1.date)+ ' até '+ datetostr(dateedit2.date);
        FrmRelCpagar.qrlabel9.caption := 'Valor Total: '+ FormatCurr('0.00',vval);
        FrmRelCPagar.QuickRep1.Preview;
        FrmRelCPagar.Destroy;
    end;

    with ibdm.IBQCreceber do
    begin
        close;
//        sql.Clear;
//        sql.Add('select * from CReceber');
//        sql.Add('order by controle ASC');
        open;
    end;
    FrmRelDataCRec.Close;
end;

procedure TFrmRelDataCRec.FormActivate(Sender: TObject);
begin
    if frmprincipal.vtipo = 'N' then
        radiobutton1.Enabled := False;

    dateedit1.date := now;
    dateedit2.Date := now;
    dateedit3.Date := now;

    with ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select min(vencimento) from creceber');
        open;
        Dateedit1.Date := Fields[0].AsDateTime;
    end;
    with ibdm.Consulta do
    begin
        Close;
        sql.Clear;
        sql.Add('Select max(vencimento) from creceber');
        open;
        Dateedit2.Date := Fields[0].AsDateTime;
    end;



end;

procedure TFrmRelDataCRec.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFrmRelDataCRec.CheckBox1Click(Sender: TObject);
begin
    if Checkbox1.Checked = False then
        Dateedit3.Text := '  /  /    '
       else
       begin
        CheckBox2.Checked:=False;
        CheckBox3.Checked:=False;
       end;

end;

procedure TFrmRelDataCRec.CheckBox2Click(Sender: TObject);
begin
  IF CheckBox2.Checked=True then
    CheckBox1.Checked:=False;
end;

procedure TFrmRelDataCRec.CheckBox3Click(Sender: TObject);
begin
  IF CheckBox3.Checked=True then
    CheckBox1.Checked:=False;

end;

end.
