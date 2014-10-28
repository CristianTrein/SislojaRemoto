unit URelFiltraEst;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, XP_Form;

type
  TFrmRelFiltraEst = class(TForm)
    tfXPForm1: TtfXPForm;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure ComboBox2Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    vcodg : integer;
    vcods : integer;
    { Public declarations }
  end;

var
  FrmRelFiltraEst: TFrmRelFiltraEst;

implementation

uses DM, URelEstoque;

{$R *.DFM}

procedure TFrmRelFiltraEst.FormActivate(Sender: TObject);
begin
    with ibdm.IBQGrupos do
    begin
        close;
        open;
        first;
        While not eof do
        begin
            Combobox1.Items.Add(ibdm.IBQGruposDESCRICAO.Value);
            next;
        end;
    end;

    with ibdm.IBQSubGrupos do
    begin
        close;
        open;
        first;
        combobox2.Clear;
        combobox2.Items.Add('Todos');
        combobox2.Text := 'Todos';
        while not eof do
        begin
            combobox2.Items.Add(ibdm.IBQSubGruposDESCRICAO.Value);
            next;
        end;
    end;
end;

procedure TFrmRelFiltraEst.BitBtn2Click(Sender: TObject);
begin
    FrmRelFiltraEst.Close;
end;

procedure TFrmRelFiltraEst.BitBtn1Click(Sender: TObject);
begin
    FrmRelEstoque := TFrmRelEstoque.Create(application);
    with ibdm.IBQParam do
    begin
        close;
        open;
        FrmRelEstoque.QRLabel1.Caption := ibdm.IBQParamUSUARIO.AsString;
    end;
    if combobox2.Text = 'Todos' then
    begin
        with ibdm.IBQProdutos do
        begin
            close;
            sql.Clear;
            sql.Add('select * from produtos');
            sql.Add('where grupo = :p0');
            if CheckBox1.Checked = true then
                sql.Add('order by codigo ASC');
            if CheckBox2.Checked = true then
                sql.Add('order by descricao ASC');
            params[0].AsInteger := vcodg;
            prepare;
            open;
        end;
        FrmRelEstoque.QRSysData3.Text := 'Grupo: '+combobox1.Text;
    end
    else
    begin
        with ibdm.IBQProdutos do
        begin
            close;
            sql.Clear;
            sql.Add('select * from produtos');
            sql.Add('where grupo = :p0 and subgrupo = :p1');
            if CheckBox1.Checked = true then
                sql.Add('order by codigo ASC');
            if CheckBox2.Checked = true then
                sql.Add('order by descricao ASC');
            params[0].AsInteger := vcodg;
            params[1].AsInteger := vcods;
            open;
        end;
        FrmRelEstoque.QRSysData3.Text := 'Grupo: '+combobox1.Text+ '  -  SubGrupo: '+combobox2.Text;
    end;
    FrmRelEstoque.QuickRep1.Preview;
    FrmRelEstoque.Destroy;
    FrmRelFiltraEst.Close;
     with ibdm.IBQProdutos do
     begin
        close;
        sql.Clear;
        sql.Add('select * from produtos');
        sql.Add('order by codigo ASC');
        open;
     end;
end;

procedure TFrmRelFiltraEst.ComboBox1Exit(Sender: TObject);
begin
    if ibdm.IBQGrupos.Locate('descricao',combobox1.text,[]) then
        vcodg := ibdm.IBQGruposCODIGO.AsInteger;

  {  with ibdm.Cheka do
    begin
        close;
        sql.Clear;
        sql.Add('select * from grupos');
        sql.Add('where descricao = :p0');
        params[0].AsString := combobox1.Text;
        prepare;
        ExecQuery;
        vcodg := ibdm.IBQGruposCODIGO.AsInteger;
    end;
  }
end;

procedure TFrmRelFiltraEst.ComboBox2Exit(Sender: TObject);
begin
    if combobox2.Text <> 'Todos' then
    begin
        if ibdm.IBQSubGrupos.Locate('descricao',combobox2.text,[]) then
            vcods := ibdm.IBQSubGruposCODIGO.AsInteger;
    {
        with ibdm.Cheka do
        begin
            close;
            sql.Clear;
            sql.Add('select * from subgrupos');
            sql.Add('where descricao = :p0');
            params[0].AsString := combobox2.Text;
            prepare;
            ExecQuery;
        end;
    }
    end;
end;

procedure TFrmRelFiltraEst.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFrmRelFiltraEst.CheckBox1Click(Sender: TObject);
begin
    if CheckBox1.Checked = true then
        CheckBox2.Checked := false;
    if CheckBox1.Checked = false then
        CheckBox2.Checked := true;
end;

procedure TFrmRelFiltraEst.CheckBox2Click(Sender: TObject);
begin
    if CheckBox2.Checked = true then
        CheckBox1.Checked := false;
    if CheckBox2.Checked = false then
        CheckBox1.Checked := true;
end;

end.
