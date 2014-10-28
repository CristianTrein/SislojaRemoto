object FrmPonte: TFrmPonte
  Left = 192
  Top = 114
  Width = 696
  Height = 480
  Caption = 'FrmPonte'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 292
    Top = 207
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Table1: TTable
    DatabaseName = 'sisloja'
    TableName = 'CLIENTES.DBF'
    Left = 440
    Top = 40
    object Table1CODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 5
    end
    object Table1O: TStringField
      FieldName = 'O'
      Size = 1
    end
    object Table1NOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object Table1BL: TStringField
      FieldName = 'BL'
      Size = 1
    end
    object Table1PAI: TStringField
      FieldName = 'PAI'
      Size = 35
    end
    object Table1MAE: TStringField
      FieldName = 'MAE'
      Size = 35
    end
    object Table1NATURALID: TStringField
      FieldName = 'NATURALID'
      Size = 30
    end
    object Table1RG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object Table1DATA_EXPED: TDateField
      FieldName = 'DATA_EXPED'
    end
    object Table1ORGAO_EXP: TStringField
      FieldName = 'ORGAO_EXP'
      Size = 10
    end
    object Table1DATA_NASC: TDateField
      FieldName = 'DATA_NASC'
    end
    object Table1CPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object Table1PROFISSAO: TStringField
      FieldName = 'PROFISSAO'
    end
    object Table1EMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 30
    end
    object Table1TEMPO: TStringField
      FieldName = 'TEMPO'
      Size = 10
    end
    object Table1END_PROF: TStringField
      FieldName = 'END_PROF'
      Size = 30
    end
    object Table1FONE_PROF: TStringField
      FieldName = 'FONE_PROF'
      Size = 14
    end
    object Table1CASADO: TStringField
      FieldName = 'CASADO'
      Size = 15
    end
    object Table1DATA_CONJ: TDateField
      FieldName = 'DATA_CONJ'
    end
    object Table1CONJUGE: TStringField
      FieldName = 'CONJUGE'
      Size = 35
    end
    object Table1CONJ_TRAB: TStringField
      FieldName = 'CONJ_TRAB'
      Size = 30
    end
    object Table1ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 30
    end
    object Table1BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 15
    end
    object Table1CIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object Table1UF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object Table1CEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object Table1FONE: TStringField
      FieldName = 'FONE'
      Size = 10
    end
    object Table1TEMPO_DOM: TStringField
      FieldName = 'TEMPO_DOM'
      Size = 10
    end
    object Table1REF_END: TStringField
      FieldName = 'REF_END'
      Size = 30
    end
    object Table1END_ANT: TStringField
      FieldName = 'END_ANT'
      Size = 30
    end
    object Table1REFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 40
    end
    object Table1CONTATOS: TStringField
      FieldName = 'CONTATOS'
      Size = 30
    end
    object Table1VERIFICADO: TStringField
      FieldName = 'VERIFICADO'
      Size = 1
    end
    object Table1INFO: TStringField
      FieldName = 'INFO'
      Size = 100
    end
    object Table1AUTORIZA: TStringField
      FieldName = 'AUTORIZA'
      Size = 40
    end
    object Table1DATA_CAD: TDateField
      FieldName = 'DATA_CAD'
    end
    object Table1ATUALIZA: TDateField
      FieldName = 'ATUALIZA'
    end
    object Table1ULT_COMPRA: TDateField
      FieldName = 'ULT_COMPRA'
    end
    object Table1NR_COMPRAS: TSmallintField
      FieldName = 'NR_COMPRAS'
    end
    object Table1MED_ATRASO: TSmallintField
      FieldName = 'MED_ATRASO'
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 408
    Top = 40
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\TI\Sisloja\Dados\TI_DADOS.GDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=ibdb'
      '')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 1
    TraceFlags = []
    Left = 112
    Top = 40
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    CachedUpdates = False
    SQL.Strings = (
      'Select * from clientes')
    Left = 112
    Top = 88
    object IBQuery1CODIGO: TIBStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object IBQuery1NOME: TIBStringField
      FieldName = 'NOME'
      Size = 50
    end
    object IBQuery1CONTATO: TIBStringField
      FieldName = 'CONTATO'
      Size = 50
    end
    object IBQuery1ENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object IBQuery1BAIRRO: TIBStringField
      FieldName = 'BAIRRO'
    end
    object IBQuery1PTOREF: TIBStringField
      FieldName = 'PTOREF'
    end
    object IBQuery1TPORES: TIBStringField
      FieldName = 'TPORES'
      Size = 1
    end
    object IBQuery1TMPRES: TIBStringField
      FieldName = 'TMPRES'
      Size = 10
    end
    object IBQuery1VLRALU: TIBBCDField
      FieldName = 'VLRALU'
      Precision = 18
      Size = 0
    end
    object IBQuery1COMPRO: TIBStringField
      FieldName = 'COMPRO'
    end
    object IBQuery1CIDADE: TIBStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object IBQuery1CEP: TIBStringField
      FieldName = 'CEP'
      Size = 10
    end
    object IBQuery1UF: TIBStringField
      FieldName = 'UF'
      Size = 2
    end
    object IBQuery1FONE: TIBStringField
      FieldName = 'FONE'
      Size = 15
    end
    object IBQuery1FAX: TIBStringField
      FieldName = 'FAX'
      Size = 15
    end
    object IBQuery1CELULAR: TIBStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object IBQuery1EMAIL: TIBStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object IBQuery1TPCONTATO: TIBStringField
      FieldName = 'TPCONTATO'
      Size = 1
    end
    object IBQuery1REFCOMERCIAL: TIBStringField
      FieldName = 'REFCOMERCIAL'
      Size = 40
    end
    object IBQuery1REFBANCARIA: TIBStringField
      FieldName = 'REFBANCARIA'
      Size = 40
    end
    object IBQuery1RG: TIBStringField
      FieldName = 'RG'
      Size = 15
    end
    object IBQuery1ORGAOEXP: TIBStringField
      FieldName = 'ORGAOEXP'
      Size = 10
    end
    object IBQuery1DATARG: TDateTimeField
      FieldName = 'DATARG'
    end
    object IBQuery1CPF: TIBStringField
      FieldName = 'CPF'
      Size = 15
    end
    object IBQuery1DTNASC: TDateTimeField
      FieldName = 'DTNASC'
    end
    object IBQuery1CADASTRO: TDateTimeField
      FieldName = 'CADASTRO'
    end
    object IBQuery1EMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Size = 50
    end
    object IBQuery1CARGO: TIBStringField
      FieldName = 'CARGO'
    end
    object IBQuery1SALARIO: TIBBCDField
      FieldName = 'SALARIO'
      Precision = 18
      Size = 0
    end
    object IBQuery1OUTREND: TIBBCDField
      FieldName = 'OUTREND'
      Precision = 18
      Size = 0
    end
    object IBQuery1ENDEMP: TIBStringField
      FieldName = 'ENDEMP'
      Size = 50
    end
    object IBQuery1CIDEMP: TIBStringField
      FieldName = 'CIDEMP'
      Size = 30
    end
    object IBQuery1CEPEMP: TIBStringField
      FieldName = 'CEPEMP'
      Size = 10
    end
    object IBQuery1UFEMP: TIBStringField
      FieldName = 'UFEMP'
      Size = 2
    end
    object IBQuery1CONJUGE: TIBStringField
      FieldName = 'CONJUGE'
      Size = 50
    end
    object IBQuery1DTNCONJ: TDateTimeField
      FieldName = 'DTNCONJ'
    end
    object IBQuery1CONVENIO: TIntegerField
      FieldName = 'CONVENIO'
    end
    object IBQuery1NPAI: TIBStringField
      FieldName = 'NPAI'
      Size = 40
    end
    object IBQuery1NMAE: TIBStringField
      FieldName = 'NMAE'
      Size = 40
    end
    object IBQuery1AUT1: TIBStringField
      FieldName = 'AUT1'
      Size = 30
    end
    object IBQuery1AUT2: TIBStringField
      FieldName = 'AUT2'
      Size = 30
    end
    object IBQuery1LIMCRED: TIBBCDField
      FieldName = 'LIMCRED'
      Precision = 18
      Size = 0
    end
    object IBQuery1OBS: TIBStringField
      FieldName = 'OBS'
      Size = 250
    end
    object IBQuery1BL: TIBStringField
      FieldName = 'BL'
      Size = 2
    end
    object IBQuery1NRDIASBL: TIntegerField
      FieldName = 'NRDIASBL'
    end
    object IBQuery1FONEEMP: TIBStringField
      FieldName = 'FONEEMP'
      Size = 15
    end
    object IBQuery1NRDIASATRAZO: TIntegerField
      FieldName = 'NRDIASATRAZO'
    end
    object IBQuery1CONJ_TRAB: TIBStringField
      FieldName = 'CONJ_TRAB'
      Size = 30
    end
    object IBQuery1NATURAL: TIBStringField
      FieldName = 'NATURAL'
      Size = 50
    end
  end
  object IBSQL1: TIBSQL
    Database = IBDatabase1
    ParamCheck = True
    Transaction = IBTransaction1
    Left = 152
    Top = 96
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 152
    Top = 40
  end
end
