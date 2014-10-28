object IBDM: TIBDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 442
  Top = 115
  Height = 601
  Width = 748
  object IBDB: TIBDatabase
    Params.Strings = (
      'user_name=sysdba')
    LoginPrompt = False
    DefaultTransaction = IBTr
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 8
    Top = 9
  end
  object IBTr: TIBTransaction
    Active = False
    DefaultDatabase = IBDB
    AutoStopAction = saNone
    Left = 56
    Top = 9
  end
  object IBQClientes: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from clientes'
      'order by nome ASC')
    Left = 16
    Top = 120
    object IBQClientesCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = 'CLIENTES.CODIGO'
      Required = True
      Size = 10
    end
    object IBQClientesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'CLIENTES.NOME'
      Size = 50
    end
    object IBQClientesCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = 'CLIENTES.CONTATO'
      Size = 50
    end
    object IBQClientesENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'CLIENTES.ENDERECO'
      Size = 50
    end
    object IBQClientesBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'CLIENTES.BAIRRO'
    end
    object IBQClientesPTOREF: TIBStringField
      FieldName = 'PTOREF'
      Origin = 'CLIENTES.PTOREF'
    end
    object IBQClientesTPORES: TIBStringField
      FieldName = 'TPORES'
      Origin = 'CLIENTES.TPORES'
      FixedChar = True
      Size = 1
    end
    object IBQClientesTMPRES: TIBStringField
      FieldName = 'TMPRES'
      Origin = 'CLIENTES.TMPRES'
      Size = 10
    end
    object IBQClientesVLRALU: TIBBCDField
      FieldName = 'VLRALU'
      Origin = 'CLIENTES.VLRALU'
      Precision = 18
      Size = 2
    end
    object IBQClientesCOMPRO: TIBStringField
      FieldName = 'COMPRO'
      Origin = 'CLIENTES.COMPRO'
    end
    object IBQClientesCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'CLIENTES.CIDADE'
      Size = 30
    end
    object IBQClientesCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'CLIENTES.CEP'
      Size = 10
    end
    object IBQClientesUF: TIBStringField
      FieldName = 'UF'
      Origin = 'CLIENTES.UF'
      Size = 2
    end
    object IBQClientesFONE: TIBStringField
      FieldName = 'FONE'
      Origin = 'CLIENTES.FONE'
      Size = 15
    end
    object IBQClientesFAX: TIBStringField
      FieldName = 'FAX'
      Origin = 'CLIENTES.FAX'
      Size = 15
    end
    object IBQClientesCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = 'CLIENTES.CELULAR'
      Size = 15
    end
    object IBQClientesEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = 'CLIENTES.EMAIL'
      Size = 40
    end
    object IBQClientesTPCONTATO: TIBStringField
      FieldName = 'TPCONTATO'
      Origin = 'CLIENTES.TPCONTATO'
      FixedChar = True
      Size = 1
    end
    object IBQClientesREFCOMERCIAL: TIBStringField
      FieldName = 'REFCOMERCIAL'
      Origin = 'CLIENTES.REFCOMERCIAL'
      Size = 40
    end
    object IBQClientesREFBANCARIA: TIBStringField
      FieldName = 'REFBANCARIA'
      Origin = 'CLIENTES.REFBANCARIA'
      Size = 40
    end
    object IBQClientesRG: TIBStringField
      FieldName = 'RG'
      Origin = 'CLIENTES.RG'
      Size = 15
    end
    object IBQClientesORGAOEXP: TIBStringField
      FieldName = 'ORGAOEXP'
      Origin = 'CLIENTES.ORGAOEXP'
      Size = 10
    end
    object IBQClientesDATARG: TDateTimeField
      FieldName = 'DATARG'
      Origin = 'CLIENTES.DATARG'
    end
    object IBQClientesCPF: TIBStringField
      FieldName = 'CPF'
      Origin = 'CLIENTES.CPF'
      Size = 15
    end
    object IBQClientesDTNASC: TDateTimeField
      FieldName = 'DTNASC'
      Origin = 'CLIENTES.DTNASC'
    end
    object IBQClientesCADASTRO: TDateTimeField
      FieldName = 'CADASTRO'
      Origin = 'CLIENTES.CADASTRO'
    end
    object IBQClientesEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = 'CLIENTES.EMPRESA'
      Size = 50
    end
    object IBQClientesCARGO: TIBStringField
      FieldName = 'CARGO'
      Origin = 'CLIENTES.CARGO'
    end
    object IBQClientesSALARIO: TIBBCDField
      FieldName = 'SALARIO'
      Origin = 'CLIENTES.SALARIO'
      Precision = 18
      Size = 2
    end
    object IBQClientesOUTREND: TIBBCDField
      FieldName = 'OUTREND'
      Origin = 'CLIENTES.OUTREND'
      Precision = 18
      Size = 2
    end
    object IBQClientesENDEMP: TIBStringField
      FieldName = 'ENDEMP'
      Origin = 'CLIENTES.ENDEMP'
      Size = 50
    end
    object IBQClientesCIDEMP: TIBStringField
      FieldName = 'CIDEMP'
      Origin = 'CLIENTES.CIDEMP'
      Size = 30
    end
    object IBQClientesCEPEMP: TIBStringField
      FieldName = 'CEPEMP'
      Origin = 'CLIENTES.CEPEMP'
      Size = 10
    end
    object IBQClientesUFEMP: TIBStringField
      FieldName = 'UFEMP'
      Origin = 'CLIENTES.UFEMP'
      Size = 2
    end
    object IBQClientesCONJUGE: TIBStringField
      FieldName = 'CONJUGE'
      Origin = 'CLIENTES.CONJUGE'
      Size = 50
    end
    object IBQClientesDTNCONJ: TDateTimeField
      FieldName = 'DTNCONJ'
      Origin = 'CLIENTES.DTNCONJ'
    end
    object IBQClientesCONVENIO: TIntegerField
      FieldName = 'CONVENIO'
      Origin = 'CLIENTES.CONVENIO'
    end
    object IBQClientesNPAI: TIBStringField
      FieldName = 'NPAI'
      Origin = 'CLIENTES.NPAI'
      Size = 40
    end
    object IBQClientesNMAE: TIBStringField
      FieldName = 'NMAE'
      Origin = 'CLIENTES.NMAE'
      Size = 40
    end
    object IBQClientesAUT1: TIBStringField
      FieldName = 'AUT1'
      Origin = 'CLIENTES.AUT1'
      Size = 30
    end
    object IBQClientesAUT2: TIBStringField
      FieldName = 'AUT2'
      Origin = 'CLIENTES.AUT2'
      Size = 30
    end
    object IBQClientesLIMCRED: TIBBCDField
      FieldName = 'LIMCRED'
      Origin = 'CLIENTES.LIMCRED'
      Precision = 18
      Size = 2
    end
    object IBQClientesOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'CLIENTES.OBS'
      Size = 250
    end
    object IBQClientesBL: TIBStringField
      FieldName = 'BL'
      Origin = 'CLIENTES.BL'
      FixedChar = True
      Size = 2
    end
    object IBQClientesNRDIASBL: TIntegerField
      FieldName = 'NRDIASBL'
      Origin = 'CLIENTES.NRDIASBL'
    end
    object IBQClientesFONEEMP: TIBStringField
      FieldName = 'FONEEMP'
      Origin = 'CLIENTES.FONEEMP'
      Size = 15
    end
    object IBQClientesNRDIASATRAZO: TIntegerField
      FieldName = 'NRDIASATRAZO'
      Origin = 'CLIENTES.NRDIASATRAZO'
    end
    object IBQClientesCONJ_TRAB: TIBStringField
      FieldName = 'CONJ_TRAB'
      Origin = 'CLIENTES.CONJ_TRAB'
      Size = 30
    end
    object IBQClientesNATURALID: TIBStringField
      FieldName = 'NATURALID'
      Origin = 'CLIENTES.NATURALID'
      Size = 50
    end
    object IBQClientesCHEQUES: TIBStringField
      FieldName = 'CHEQUES'
      Origin = 'CLIENTES.CHEQUES'
      FixedChar = True
      Size = 1
    end
    object IBQClientesOBSBL: TIBStringField
      FieldName = 'OBSBL'
      Origin = 'CLIENTES.OBSBL'
      Size = 100
    end
    object IBQClientesATUCAD: TDateTimeField
      FieldName = 'ATUCAD'
      Origin = 'CLIENTES.ATUCAD'
    end
  end
  object DTSClientes: TDataSource
    DataSet = IBQClientes
    Left = 16
    Top = 72
  end
  object DTSFor: TDataSource
    DataSet = IBQFor
    Left = 68
    Top = 72
  end
  object IBQFor: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from fornecedores '
      'order by nome ASC')
    Left = 68
    Top = 120
    object IBQForCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object IBQForNOME: TIBStringField
      FieldName = 'NOME'
      Size = 50
    end
    object IBQForCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Size = 50
    end
    object IBQForNASCIMENTO: TDateTimeField
      FieldName = 'NASCIMENTO'
    end
    object IBQForBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
    end
    object IBQForCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object IBQForCEP: TIBStringField
      FieldName = 'CEP'
      Size = 10
    end
    object IBQForUF: TIBStringField
      FieldName = 'UF'
      Size = 2
    end
    object IBQForFONE: TIBStringField
      FieldName = 'FONE'
      Size = 15
    end
    object IBQForFAX: TIBStringField
      FieldName = 'FAX'
      Size = 15
    end
    object IBQForCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object IBQForEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object IBQForSITE: TIBStringField
      FieldName = 'SITE'
      Size = 30
    end
    object IBQForCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Size = 15
    end
    object IBQForINSC: TIBStringField
      FieldName = 'INSC'
      Size = 15
    end
    object IBQForOBS: TIBStringField
      FieldName = 'OBS'
      Size = 50
    end
    object IBQForBANCO: TIBStringField
      FieldName = 'BANCO'
      Size = 5
    end
    object IBQForAGENCIA: TIBStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object IBQForCONTA: TIBStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object IBQForCADASTRO: TDateTimeField
      FieldName = 'CADASTRO'
    end
    object IBQForENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
  end
  object IBQProdutos: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from produtos'
      'order by DESCRICAO')
    Left = 120
    Top = 120
    object IBQProdutosCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 15
    end
    object IBQProdutosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object IBQProdutosUNIMED: TIBStringField
      FieldName = 'UNIMED'
      Size = 2
    end
    object IBQProdutosGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object IBQProdutosSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
    end
    object IBQProdutosOBS: TIBStringField
      FieldName = 'OBS'
      Size = 50
    end
    object IBQProdutosESTMINIMO: TIBBCDField
      FieldName = 'ESTMINIMO'
      Precision = 18
      Size = 2
    end
    object IBQProdutosESTOQUE: TIBBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 2
    end
    object IBQProdutosPRECOCUSTO: TIBBCDField
      FieldName = 'PRECOCUSTO'
      Precision = 18
      Size = 2
    end
    object IBQProdutosPRECOVENDA: TIBBCDField
      FieldName = 'PRECOVENDA'
      Precision = 18
      Size = 2
    end
    object IBQProdutosCUSTOMEDIO: TIBBCDField
      FieldName = 'CUSTOMEDIO'
      Precision = 18
      Size = 2
    end
    object IBQProdutosUREAJUSTE: TDateTimeField
      FieldName = 'UREAJUSTE'
    end
    object IBQProdutosIPI: TIBBCDField
      FieldName = 'IPI'
      Precision = 18
      Size = 2
    end
    object IBQProdutosICMS: TIBBCDField
      FieldName = 'ICMS'
      Precision = 18
      Size = 2
    end
    object IBQProdutosBASECALCULO: TIBBCDField
      FieldName = 'BASECALCULO'
      Precision = 18
      Size = 2
    end
    object IBQProdutosSTRIBU: TIBStringField
      FieldName = 'STRIBU'
      Size = 2
    end
    object IBQProdutosCADASTRO: TDateTimeField
      FieldName = 'CADASTRO'
    end
    object IBQProdutosLOCAL: TIBStringField
      FieldName = 'LOCAL'
      Size = 10
    end
  end
  object DTSProdutos: TDataSource
    DataSet = IBQProdutos
    Left = 120
    Top = 72
  end
  object DTSCaixa: TDataSource
    DataSet = IBQCaixa
    Left = 168
    Top = 72
  end
  object IBQCaixa: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select caixa.*, doctos.clifor from caixa,doctos'
      'where doctos.documento=caixa.documento'
      'order by controle,data ASC')
    Left = 168
    Top = 120
    object IBQCaixaDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'CAIXA.DATA'
      Required = True
    end
    object IBQCaixaCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Origin = 'CAIXA.CONTROLE'
      Required = True
    end
    object IBQCaixaDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = 'CAIXA.DOCUMENTO'
      Size = 10
    end
    object IBQCaixaHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = 'CAIXA.HISTORICO'
      Size = 80
    end
    object IBQCaixaVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'CAIXA.VALOR'
      Precision = 18
      Size = 2
    end
    object IBQCaixaOPERACAO: TIBStringField
      FieldName = 'OPERACAO'
      Origin = 'CAIXA.OPERACAO'
      FixedChar = True
      Size = 1
    end
    object IBQCaixaTRANSACAO: TIntegerField
      FieldName = 'TRANSACAO'
      Origin = 'CAIXA.TRANSACAO'
    end
    object IBQCaixaOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
      Origin = 'CAIXA.OPERADOR'
    end
    object IBQCaixaMPGTO: TIntegerField
      FieldName = 'MPGTO'
      Origin = 'CAIXA.MPGTO'
    end
    object IBQCaixaPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Origin = 'CAIXA.PARCELA'
      Size = 5
    end
    object IBQCaixaCLIFOR: TIntegerField
      FieldName = 'CLIFOR'
      Origin = 'DOCTOS.CLIFOR'
    end
  end
  object IBQCreceber: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from creceber'
      'order by Controle ASC')
    Left = 223
    Top = 120
    object IBQCreceberCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Required = True
    end
    object IBQCreceberVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
    end
    object IBQCreceberDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Size = 10
    end
    object IBQCreceberHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object IBQCreceberVALORORIGINAL: TIBBCDField
      FieldName = 'VALORORIGINAL'
      Precision = 18
      Size = 2
    end
    object IBQCreceberVALORDEVIDO: TIBBCDField
      FieldName = 'VALORDEVIDO'
      Precision = 18
      Size = 2
    end
    object IBQCreceberTOTALPAGO: TIBBCDField
      FieldName = 'TOTALPAGO'
      Precision = 18
      Size = 2
    end
    object IBQCreceberPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Size = 5
    end
    object IBQCreceberCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object IBQCreceberPARCIAL: TIntegerField
      FieldName = 'PARCIAL'
    end
    object IBQCreceberMPGTO: TIntegerField
      FieldName = 'MPGTO'
    end
    object IBQCrecebero: TStringField
      FieldKind = fkCalculated
      FieldName = 'o'
      KeyFields = 'OBS'
      Size = 1
      Calculated = True
    end
    object IBQCreceberOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'CRECEBER.OBS'
      Size = 200
    end
  end
  object DTSCreceber: TDataSource
    DataSet = IBQCreceber
    Left = 223
    Top = 72
  end
  object DTSDoctos: TDataSource
    DataSet = IBQDoctos
    Left = 343
    Top = 72
  end
  object IBQDoctos: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from doctos'
      'order by controle desc')
    Left = 343
    Top = 120
    object IBQDoctosCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Required = True
    end
    object IBQDoctosDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object IBQDoctosDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Size = 10
    end
    object IBQDoctosTRANSACAO: TIBStringField
      FieldName = 'TRANSACAO'
      Size = 10
    end
    object IBQDoctosCLIFOR: TIntegerField
      FieldName = 'CLIFOR'
    end
    object IBQDoctosOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object IBQDoctosNATOP: TIBStringField
      FieldName = 'NATOP'
      Size = 6
    end
    object IBQDoctosTRANSPORTADOR: TIntegerField
      FieldName = 'TRANSPORTADOR'
    end
    object IBQDoctosVALORTOTAL: TIBBCDField
      FieldName = 'VALORTOTAL'
      Precision = 18
      Size = 2
    end
    object IBQDoctosVALORFRETE: TIBBCDField
      FieldName = 'VALORFRETE'
      Precision = 18
      Size = 2
    end
    object IBQDoctosVALORICMS: TIBBCDField
      FieldName = 'VALORICMS'
      Precision = 18
      Size = 2
    end
    object IBQDoctosIMPRIMIR: TIBStringField
      FieldName = 'IMPRIMIR'
      Size = 1
    end
    object IBQDoctosNOME: TIBStringField
      FieldName = 'NOME'
      Size = 50
    end
    object IBQDoctosNADIC: TIBStringField
      FieldName = 'NADIC'
      Size = 50
    end
    object IBQDoctosVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object IBQDoctosOBS: TIBStringField
      FieldName = 'OBS'
      Size = 200
    end
    object IBQDoctosCONDPAG: TIBStringField
      FieldName = 'CONDPAG'
      Size = 40
    end
  end
  object IBQEtiquetas: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from etiquetas'
      'order by codigo ASC')
    Left = 24
    Top = 240
    object IBQEtiquetasCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Size = 15
    end
    object IBQEtiquetasPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Size = 50
    end
    object IBQEtiquetasPRECOVENDA: TIBBCDField
      FieldName = 'PRECOVENDA'
      Precision = 18
      Size = 2
    end
  end
  object DTSEtiquetas: TDataSource
    DataSet = IBQEtiquetas
    Left = 24
    Top = 192
  end
  object DTSInventario: TDataSource
    DataSet = IBQInventario
    Left = 96
    Top = 192
  end
  object DTSMovimento: TDataSource
    DataSet = IBQMovimento
    Left = 168
    Top = 192
  end
  object IBQInventario: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *  from INVENTARIO')
    Left = 96
    Top = 240
    object IBQInventarioDATA: TDateTimeField
      FieldName = 'DATA'
      Required = True
    end
    object IBQInventarioPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 15
    end
    object IBQInventarioQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Precision = 18
      Size = 0
    end
    object IBQInventarioVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 0
    end
  end
  object IBQMovimento: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from movimento'
      'order by controle ASC ')
    Left = 168
    Top = 240
    object IBQMovimentoCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Required = True
    end
    object IBQMovimentoPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 15
    end
    object IBQMovimentoDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object IBQMovimentoDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Size = 10
    end
    object IBQMovimentoT: TIBStringField
      FieldName = 'T'
      Size = 1
    end
    object IBQMovimentoQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Precision = 18
      Size = 2
    end
    object IBQMovimentoVALORUNITARIO: TIBBCDField
      FieldName = 'VALORUNITARIO'
      Precision = 18
      Size = 2
    end
    object IBQMovimentoVALORICMS: TIBBCDField
      FieldName = 'VALORICMS'
      Precision = 18
      Size = 2
    end
    object IBQMovimentoVALORIPI: TIBBCDField
      FieldName = 'VALORIPI'
      Precision = 18
      Size = 2
    end
    object IBQMovimentoCONTDOC: TIntegerField
      FieldName = 'CONTDOC'
    end
    object IBQMovimentoCFOP: TIBStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object IBQMovimentoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object IBQMovimentoREF: TIntegerField
      FieldName = 'REF'
    end
  end
  object IBQParam: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from param')
    Left = 248
    Top = 248
    object IBQParamUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Required = True
      Size = 50
    end
    object IBQParamCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Size = 15
    end
    object IBQParamINSC: TIBStringField
      FieldName = 'INSC'
      Size = 15
    end
    object IBQParamENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object IBQParamBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object IBQParamCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object IBQParamCEP: TIBStringField
      FieldName = 'CEP'
      Size = 10
    end
    object IBQParamUF: TIBStringField
      FieldName = 'UF'
      Size = 10
    end
    object IBQParamFONE: TIBStringField
      FieldName = 'FONE'
      Size = 15
    end
    object IBQParamFAX: TIBStringField
      FieldName = 'FAX'
      Size = 15
    end
    object IBQParamEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object IBQParamCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object IBQParamDATALIC: TDateTimeField
      FieldName = 'DATALIC'
    end
    object IBQParamUSAECF: TIBStringField
      FieldName = 'USAECF'
      Size = 1
    end
    object IBQParamTXJUROS: TIBBCDField
      FieldName = 'TXJUROS'
      Precision = 18
      Size = 2
    end
    object IBQParamUVE: TIBStringField
      FieldName = 'UVE'
      Size = 1
    end
    object IBQParamUCR: TIBStringField
      FieldName = 'UCR'
      Size = 1
    end
    object IBQParamUCL: TIBStringField
      FieldName = 'UCL'
      Size = 1
    end
    object IBQParamUCM: TIBStringField
      FieldName = 'UCM'
      Size = 1
    end
    object IBQParamUFO: TIBStringField
      FieldName = 'UFO'
      Size = 1
    end
    object IBQParamUES: TIBStringField
      FieldName = 'UES'
      Size = 1
    end
    object IBQParamUCP: TIBStringField
      FieldName = 'UCP'
      Size = 1
    end
    object IBQParamUCX: TIBStringField
      FieldName = 'UCX'
      Size = 1
    end
    object IBQParamUMA: TIBStringField
      FieldName = 'UMA'
      Size = 1
    end
    object IBQParamPROXPROD: TIntegerField
      FieldName = 'PROXPROD'
    end
    object IBQParamPROXCLI: TIntegerField
      FieldName = 'PROXCLI'
    end
    object IBQParamPROXFOR: TIntegerField
      FieldName = 'PROXFOR'
    end
    object IBQParamBACKUP: TDateTimeField
      FieldName = 'BACKUP'
    end
    object IBQParamUOS: TIBStringField
      FieldName = 'UOS'
      Size = 1
    end
    object IBQParamUSANF: TIBStringField
      FieldName = 'USANF'
      Size = 1
    end
    object IBQParamEST: TIBStringField
      FieldName = 'EST'
      Size = 1
    end
    object IBQParamFINANC: TIBStringField
      FieldName = 'FINANC'
      Size = 1
    end
    object IBQParamARQUIVO: TIBStringField
      FieldName = 'ARQUIVO'
      Size = 30
    end
    object IBQParamBLCADASTRO: TIBStringField
      FieldName = 'BLCADASTRO'
      Size = 1
    end
    object IBQParamNRDIASBL: TIntegerField
      FieldName = 'NRDIASBL'
    end
    object IBQParamLIMCFRED: TIBBCDField
      FieldName = 'LIMCFRED'
      Precision = 18
      Size = 2
    end
    object IBQParamCFOP: TIBStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object IBQParamCONTRATO: TBlobField
      FieldName = 'CONTRATO'
      Size = 8
    end
    object IBQParamCARENCIA: TIntegerField
      FieldName = 'CARENCIA'
    end
    object IBQParamJURMO: TIBBCDField
      FieldName = 'JURMO'
      Precision = 18
      Size = 2
    end
    object IBQParamDESCPR: TIBBCDField
      FieldName = 'DESCPR'
      Precision = 18
      Size = 2
    end
    object IBQParamDESCAV: TIBBCDField
      FieldName = 'DESCAV'
      Precision = 18
      Size = 2
    end
    object IBQParamTIMP: TIntegerField
      FieldName = 'TIMP'
    end
    object IBQParamVPROMO: TIBStringField
      FieldName = 'VPROMO'
      Size = 25
    end
    object IBQParamLISTA: TIntegerField
      FieldName = 'LISTA'
    end
    object IBQParamchkprt1: TIntegerField
      FieldName = 'chkprt1'
      Origin = 'PARAM.chkprt1'
    end
    object IBQParamchkprt2: TIntegerField
      FieldName = 'chkprt2'
      Origin = 'PARAM.chkprt2'
    end
    object IBQParamVOZ: TIntegerField
      FieldName = 'VOZ'
      Origin = 'PARAM.VOZ'
    end
    object IBQParamPERCMAX: TIBBCDField
      FieldName = 'PERCMAX'
      Origin = 'PARAM.PERCMAX'
      Precision = 9
      Size = 2
    end
    object IBQParamTMPINATIVO: TIntegerField
      FieldName = 'TMPINATIVO'
      Origin = 'PARAM.TMPINATIVO'
    end
    object IBQParamVARIAVEL: TIntegerField
      FieldName = 'VARIAVEL'
      Origin = 'PARAM.VARIAVEL'
    end
    object IBQParamLEMBRETE: TBlobField
      FieldName = 'LEMBRETE'
      Origin = 'PARAM.LEMBRETE'
      Size = 8
    end
  end
  object DTSParam: TDataSource
    DataSet = IBQParam
    Left = 248
    Top = 192
  end
  object DTSUsuario: TDataSource
    DataSet = IBQUsuario
    Left = 312
    Top = 192
  end
  object DTSIcms: TDataSource
    DataSet = IBQIcms
    Left = 384
    Top = 192
  end
  object IBQUsuario: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from usuarios'
      'order by codigo ASC')
    Left = 312
    Top = 240
    object IBQUsuarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'USUARIOS.CODIGO'
      Required = True
    end
    object IBQUsuarioNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'USUARIOS.NOME'
      Size = 50
    end
    object IBQUsuarioSENHA: TIntegerField
      FieldName = 'SENHA'
      Origin = 'USUARIOS.SENHA'
    end
    object IBQUsuarioCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = 'USUARIOS.COMISSAO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object IBQUsuarioSUPER: TIBStringField
      FieldName = 'SUPER'
      Origin = 'USUARIOS.SUPER'
      Size = 1
    end
    object IBQUsuarioCOMISSAO1: TIBBCDField
      FieldName = 'COMISSAO1'
      Origin = 'USUARIOS.COMISSAO1'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
  end
  object IBQIcms: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from icms')
    Left = 384
    Top = 240
    object IBQIcmsCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object IBQIcmsALIQUOTA: TIBStringField
      FieldName = 'ALIQUOTA'
      Size = 6
    end
  end
  object IBQGrupos: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from grupos'
      'order by codigo ASC')
    Left = 20
    Top = 362
    object IBQGruposCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object IBQGruposDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object IBQGruposIPI: TIBBCDField
      FieldName = 'IPI'
      Precision = 18
      Size = 2
    end
    object IBQGruposICMS: TIBBCDField
      FieldName = 'ICMS'
      Precision = 18
      Size = 2
    end
  end
  object DTSGrupos: TDataSource
    DataSet = IBQGrupos
    Left = 16
    Top = 317
  end
  object DTSSubGrupos: TDataSource
    DataSet = IBQSubGrupos
    Left = 88
    Top = 309
  end
  object DTSTrCaixa: TDataSource
    DataSet = IBQTrCaixa
    Left = 160
    Top = 309
  end
  object DTSPosCaixa: TDataSource
    DataSet = IBQPosCaixa
    Left = 224
    Top = 309
  end
  object IBQSubGrupos: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from subgrupos'
      'order by GRUPO,CODIGO')
    Left = 86
    Top = 360
    object IBQSubGruposCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object IBQSubGruposGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Required = True
    end
    object IBQSubGruposDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object IBQTrCaixa: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from trcaixa'
      'order by codigo ASC')
    Left = 160
    Top = 357
    object IBQTrCaixaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object IBQTrCaixaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
    end
    object IBQTrCaixaOPERACAO: TIBStringField
      FieldName = 'OPERACAO'
      Size = 1
    end
  end
  object IBQPosCaixa: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from poscaixa')
    Left = 224
    Top = 357
    object IBQPosCaixaDATA: TDateTimeField
      FieldName = 'DATA'
      Required = True
    end
    object IBQPosCaixaSALDO: TIBBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 2
    end
    object IBQPosCaixaOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
  end
  object IBQCrecebidas: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from Crecebidas'
      'order by controle ASC')
    Left = 304
    Top = 357
    object IBQCrecebidasCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Required = True
    end
    object IBQCrecebidasVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
    end
    object IBQCrecebidasPAGAMENTO: TDateTimeField
      FieldName = 'PAGAMENTO'
    end
    object IBQCrecebidasDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Size = 10
    end
    object IBQCrecebidasHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Size = 80
    end
    object IBQCrecebidasVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object IBQCrecebidasPAGO: TIBBCDField
      FieldName = 'PAGO'
      Precision = 18
      Size = 2
    end
    object IBQCrecebidasPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Size = 5
    end
    object IBQCrecebidasCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object IBQCrecebidasOBS: TIBStringField
      FieldName = 'OBS'
      Size = 100
    end
    object IBQCrecebidasRECEBEDOR: TIntegerField
      FieldName = 'RECEBEDOR'
    end
    object IBQCrecebidasMPGTO: TIntegerField
      FieldName = 'MPGTO'
    end
    object IBQCrecebidasCONTDOC: TIntegerField
      FieldName = 'CONTDOC'
    end
  end
  object IBQCpagas: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from Cpagas'
      'order by controle ASC')
    Left = 376
    Top = 353
    object IBQCpagasCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Required = True
    end
    object IBQCpagasVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
    end
    object IBQCpagasPAGAMENTO: TDateTimeField
      FieldName = 'PAGAMENTO'
    end
    object IBQCpagasDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Size = 10
    end
    object IBQCpagasHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object IBQCpagasVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object IBQCpagasPAGO: TIBBCDField
      FieldName = 'PAGO'
      Precision = 18
      Size = 2
    end
    object IBQCpagasPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Size = 5
    end
    object IBQCpagasFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
  end
  object DTSCrecebidas: TDataSource
    DataSet = IBQCrecebidas
    Left = 304
    Top = 309
  end
  object DTSCpagas: TDataSource
    DataSet = IBQCpagas
    Left = 376
    Top = 309
  end
  object DTSCpagar: TDataSource
    DataSet = IBQCpagar
    Left = 23
    Top = 412
  end
  object DTSComissoes: TDataSource
    DataSet = IBQComissoes
    Left = 456
    Top = 194
  end
  object IBQCpagar: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from cpagar')
    Left = 23
    Top = 455
    object IBQCpagarCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Required = True
    end
    object IBQCpagarVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
    end
    object IBQCpagarDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Size = 10
    end
    object IBQCpagarHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object IBQCpagarVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object IBQCpagarPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Size = 5
    end
    object IBQCpagarFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
  end
  object IBQComissoes: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from comissoes'
      'order by nota desc')
    Left = 456
    Top = 249
    object IBQComissoesNOTA: TIntegerField
      FieldName = 'NOTA'
      Required = True
    end
    object IBQComissoesVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object IBQComissoesCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object IBQComissoesLIBERADO: TDateTimeField
      FieldName = 'LIBERADO'
    end
    object IBQComissoesPAGO: TDateTimeField
      FieldName = 'PAGO'
    end
    object IBQComissoesPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Size = 5
    end
  end
  object IBQClasTrib: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from clastrib')
    Left = 87
    Top = 450
    object IBQClasTribCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 2
    end
    object IBQClasTribDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object DTSClasTrib: TDataSource
    DataSet = IBQClasTrib
    Left = 87
    Top = 410
  end
  object Grava: TIBSQL
    Database = IBDB
    ParamCheck = True
    Transaction = IBTr
    Left = 136
    Top = 8
  end
  object Cheka: TIBSQL
    Database = IBDB
    ParamCheck = True
    Transaction = IBTr
    Left = 176
    Top = 8
  end
  object IBSQLGrava: TIBSQL
    Database = IBDB
    ParamCheck = True
    SQL.Strings = (
      'commit')
    Transaction = IBTr
    Left = 224
    Top = 8
  end
  object Deleta: TIBSQL
    Database = IBDB
    ParamCheck = True
    Transaction = IBTr
    Left = 95
    Top = 8
  end
  object IBQuery1: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from movimento')
    Left = 415
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 455
    Top = 8
  end
  object DTSEstrutura: TDataSource
    DataSet = IBQEstrutura
    Left = 456
    Top = 304
  end
  object IBQEstrutura: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from estrutura')
    Left = 456
    Top = 352
    object IBQEstruturaPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 15
    end
    object IBQEstruturaCOMPONENTE: TIBStringField
      FieldName = 'COMPONENTE'
      Required = True
      Size = 15
    end
    object IBQEstruturaSEQ: TIntegerField
      FieldName = 'SEQ'
      Required = True
    end
    object IBQEstruturaQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Precision = 18
      Size = 0
    end
    object IBQEstruturaPROCESSO: TIBStringField
      FieldName = 'PROCESSO'
      Size = 50
    end
  end
  object IBQEntradas: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    Left = 520
    Top = 248
  end
  object DTSEntradas: TDataSource
    DataSet = IBQEntradas
    Left = 520
    Top = 192
  end
  object DTSSaida: TDataSource
    DataSet = IBQSaida
    Left = 520
    Top = 304
  end
  object IBQSaida: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    Left = 520
    Top = 352
  end
  object IBRel: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select subgrupos.grupo, subgrupos.codigo, subgrupos.descricao fr' +
        'om subgrupos'
      '        order by subgrupos.grupo, subgrupos.codigo')
    Left = 382
    Top = 72
    object IBRelGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Required = True
    end
    object IBRelCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object IBRelDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object DtsREl: TDataSource
    DataSet = IBRel
    Left = 382
    Top = 120
  end
  object Consulta: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    Left = 336
    Top = 10
  end
  object IBQTipoServ: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from tiposerv')
    Left = 600
    Top = 240
    object IBQTipoServCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 5
    end
    object IBQTipoServDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object IBQTipoServVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
  end
  object DTSTipoServ: TDataSource
    DataSet = IBQTipoServ
    Left = 600
    Top = 198
  end
  object DTSOrdemServ: TDataSource
    DataSet = IBQOrdemServ
    Left = 592
    Top = 304
  end
  object IBQOrdemServ: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ordemserv')
    Left = 592
    Top = 352
    object IBQOrdemServNR: TIntegerField
      FieldName = 'NR'
      Required = True
    end
    object IBQOrdemServDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object IBQOrdemServCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object IBQOrdemServEQUIPAMENTO: TIBStringField
      FieldName = 'EQUIPAMENTO'
      Size = 30
    end
    object IBQOrdemServCARACTERISTICA: TIBStringField
      FieldName = 'CARACTERISTICA'
      Size = 30
    end
    object IBQOrdemServATENDIMENTO: TIBStringField
      FieldName = 'ATENDIMENTO'
      Size = 30
    end
    object IBQOrdemServVALORSERV: TIBBCDField
      FieldName = 'VALORSERV'
      Precision = 18
      Size = 0
    end
    object IBQOrdemServVALORPECA: TIBBCDField
      FieldName = 'VALORPECA'
      Precision = 18
      Size = 0
    end
  end
  object DTSItos: TDataSource
    DataSet = IBQItos
    Left = 416
    Top = 72
  end
  object IBQItos: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from itos')
    Left = 417
    Top = 120
    object IBQItosSEQUENCIAL: TIntegerField
      FieldName = 'SEQUENCIAL'
    end
    object IBQItosCODSERV: TIBStringField
      FieldName = 'CODSERV'
      Size = 5
    end
    object IBQItosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object IBQItosPECAS: TIntegerField
      FieldName = 'PECAS'
    end
    object IBQItosVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 0
    end
    object IBQItosDATACONCL: TDateTimeField
      FieldName = 'DATACONCL'
    end
    object IBQItosQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Precision = 18
      Size = 0
    end
  end
  object DTSTemp: TDataSource
    DataSet = IBTemp
    Left = 473
    Top = 97
  end
  object IBTemp: TIBTable
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TEMP'
    Left = 473
    Top = 145
    object IBTempCODIGO: TIBStringField
      FieldName = 'CODIGO'
    end
    object IBTempDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object IBTempSITTRIB: TIBStringField
      FieldName = 'SITTRIB'
      Size = 3
    end
    object IBTempUNID: TIBStringField
      FieldName = 'UNID'
      Size = 5
    end
    object IBTempQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Precision = 18
      Size = 0
    end
    object IBTempALIQ: TIBStringField
      FieldName = 'ALIQ'
      Size = 5
    end
    object IBTempCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
    end
    object IBTempVALORTOT: TIBBCDField
      FieldName = 'VALORTOT'
      Precision = 18
      Size = 0
    end
    object IBTempVALORUNIT: TIBBCDField
      FieldName = 'VALORUNIT'
      Precision = 18
      Size = 0
    end
    object IBTempIPI: TIBStringField
      FieldName = 'IPI'
      Size = 5
    end
  end
  object DTSEstados: TDataSource
    DataSet = IBQEstados
    Left = 537
    Top = 97
  end
  object IBQEstados: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ESTADOS'
      'order by uf ASC')
    Left = 537
    Top = 145
    object IBQEstadosUF: TIBStringField
      FieldName = 'UF'
      Size = 2
    end
    object IBQEstadosIPI: TIBBCDField
      FieldName = 'IPI'
      Precision = 18
      Size = 2
    end
    object IBQEstadosICMS: TIBBCDField
      FieldName = 'ICMS'
      Precision = 18
      Size = 2
    end
  end
  object DTSConvenio: TDataSource
    DataSet = IBQConvenio
    Left = 160
    Top = 408
  end
  object IBQConvenio: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from convenio')
    Left = 160
    Top = 454
    object IBQConvenioCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object IBQConvenioNOME: TIBStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object DTSCheque: TDataSource
    Left = 224
    Top = 408
  end
  object IBQCheque: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from cheque')
    Left = 224
    Top = 455
    object IBQChequeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object IBQChequeEMITENTE: TIBStringField
      FieldName = 'EMITENTE'
      Size = 50
    end
    object IBQChequeDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Size = 10
    end
    object IBQChequeENTRADA: TDateTimeField
      FieldName = 'ENTRADA'
    end
    object IBQChequeCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object IBQChequeVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 0
    end
    object IBQChequeNCHEQUE: TIBStringField
      FieldName = 'NCHEQUE'
      Size = 8
    end
    object IBQChequeBANCO: TIBStringField
      FieldName = 'BANCO'
      Size = 8
    end
    object IBQChequeAGENCIA: TIBStringField
      FieldName = 'AGENCIA'
      Size = 8
    end
    object IBQChequeDEPOSITAR: TDateTimeField
      FieldName = 'DEPOSITAR'
    end
    object IBQChequeLKCONTA: TIntegerField
      FieldName = 'LKCONTA'
    end
  end
  object DTSCartao: TDataSource
    DataSet = IBQCartao
    Left = 296
    Top = 408
  end
  object IBQCartao: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from cartao')
    Left = 296
    Top = 454
    object IBQCartaoCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Required = True
    end
    object IBQCartaoDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object IBQCartaoDATACREDITO: TDateTimeField
      FieldName = 'DATACREDITO'
    end
    object IBQCartaoVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object IBQCartaoNUMCARTAO: TIBStringField
      FieldName = 'NUMCARTAO'
      Size = 17
    end
    object IBQCartaoVALIDADE: TIBStringField
      FieldName = 'VALIDADE'
      Size = 7
    end
    object IBQCartaoNOME: TIBStringField
      FieldName = 'NOME'
      Size = 50
    end
    object IBQCartaoPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
    end
  end
  object DTSCheque1: TDataSource
    DataSet = IBQCheque1
    Left = 384
    Top = 408
  end
  object IBQCheque1: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from cheque1')
    Left = 384
    Top = 455
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object IBStringField1: TIBStringField
      FieldName = 'EMITENTE'
      Size = 50
    end
    object IBStringField2: TIBStringField
      FieldName = 'DOCUMENTO'
      Size = 10
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'ENTRADA'
    end
    object IntegerField2: TIntegerField
      FieldName = 'CLIENTE'
    end
    object IBBCDField1: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object IBStringField3: TIBStringField
      FieldName = 'NCHEQUE'
      Size = 8
    end
    object IBStringField4: TIBStringField
      FieldName = 'BANCO'
      Size = 8
    end
    object IBStringField5: TIBStringField
      FieldName = 'AGENCIA'
      Size = 8
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'DEPOSITAR'
    end
    object IntegerField3: TIntegerField
      FieldName = 'LKCONTA'
    end
  end
  object IBTPrecos: TIBTable
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'REF'
    TableName = 'PRECOS'
    Left = 448
    Top = 448
    object IBTPrecosREF: TIntegerField
      FieldName = 'REF'
    end
    object IBTPrecosPRECO: TIBBCDField
      FieldName = 'PRECO'
      Precision = 18
      Size = 2
    end
    object IBTPrecosPRECO2: TIBBCDField
      FieldName = 'PRECO2'
      Precision = 18
      Size = 2
    end
  end
  object Dtsprecos: TDataSource
    DataSet = IBTPrecos
    Left = 448
    Top = 408
  end
  object Q1: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    Left = 504
    Top = 8
  end
  object dtscd: TDataSource
    DataSet = TBCD
    Left = 475
    Top = 56
  end
  object TBCD: TIBTable
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'DOC'
    Left = 443
    Top = 56
    object TBCDCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object TBCDACE: TIBStringField
      FieldName = 'ACE'
      Size = 1
    end
    object TBCDDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object TBCDCLIFOR: TIntegerField
      FieldName = 'CLIFOR'
    end
    object TBCDNOMECLI: TIBStringField
      FieldName = 'NOMECLI'
      Size = 50
    end
    object TBCDOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object TBCDOPERADOR1: TIntegerField
      FieldName = 'OPERADOR1'
    end
    object TBCDVALORTOTAL: TIBBCDField
      FieldName = 'VALORTOTAL'
      Precision = 18
      Size = 0
    end
    object TBCDVALORLIQ: TIBBCDField
      FieldName = 'VALORLIQ'
      Precision = 18
      Size = 0
    end
    object TBCDVALORDEV: TIBBCDField
      FieldName = 'VALORDEV'
      Precision = 18
      Size = 0
    end
    object TBCDDATAPRO: TDateTimeField
      FieldName = 'DATAPRO'
    end
    object TBCDHORAPRO: TIBStringField
      FieldName = 'HORAPRO'
      Size = 5
    end
    object TBCDDATADEV: TDateTimeField
      FieldName = 'DATADEV'
    end
    object TBCDHORADEV: TIBStringField
      FieldName = 'HORADEV'
      Size = 5
    end
    object TBCDDOCVENDA: TIBStringField
      FieldName = 'DOCVENDA'
      Size = 10
    end
    object TBCDOBS: TIBStringField
      FieldName = 'OBS'
      Size = 100
    end
  end
  object TBICD: TIBTable
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'CONTROLE'
    MasterFields = 'CONTROLE'
    MasterSource = dtscd
    TableName = 'MOV'
    Left = 507
    Top = 56
    object TBICDCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object TBICDSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object TBICDPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Size = 15
    end
    object TBICDDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object TBICDSIT: TIBStringField
      FieldName = 'SIT'
      Size = 1
    end
    object TBICDDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object TBICDDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Size = 10
    end
    object TBICDREF: TIntegerField
      FieldName = 'REF'
    end
    object TBICDQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Precision = 18
      Size = 0
    end
    object TBICDVALORUNITARIO: TIBBCDField
      FieldName = 'VALORUNITARIO'
      Precision = 18
      Size = 0
    end
  end
  object dtsicd: TDataSource
    DataSet = TBICD
    Left = 545
    Top = 56
  end
  object IBSQLGrava1: TIBSQL
    ParamCheck = True
    SQL.Strings = (
      'commit')
    Left = 280
    Top = 8
  end
  object DTSobscli: TDataSource
    DataSet = IBTobscli
    Left = 503
    Top = 432
  end
  object IBTobscli: TIBTable
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'cliente'
    MasterFields = 'CODIGO'
    MasterSource = DTSClientes
    TableName = 'OBSCLI'
    Left = 544
    Top = 392
    object IBTobsclicliente: TIBStringField
      FieldName = 'cliente'
      Size = 10
    end
    object IBTobsclinarrativa: TBlobField
      FieldName = 'narrativa'
    end
  end
  object IBTmpgto: TIBTable
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'MODPGTO'
    Left = 495
    Top = 384
    object IBTmpgtoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object IBTmpgtoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
    end
  end
  object DtsMpgto: TDataSource
    DataSet = IBTmpgto
    Left = 551
    Top = 432
  end
  object ibq1: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    Left = 264
    Top = 120
  end
  object DtsCon: TDataSource
    DataSet = Consulta
    Left = 376
    Top = 10
  end
  object Dtsibq1: TDataSource
    DataSet = ibq1
    Left = 264
    Top = 72
  end
  object ibq2: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    Left = 304
    Top = 120
  end
  object Dtsibq2: TDataSource
    DataSet = ibq2
    Left = 304
    Top = 72
  end
  object q2: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    Left = 536
    Top = 8
  end
  object Dtscx: TDataSource
    DataSet = Qcaixa
    Left = 592
    Top = 58
  end
  object Qcaixa: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select caixa.*, cast(data as date) DTA from caixa'
      'order by DTA')
    Left = 592
    Top = 13
    object QcaixaDATA: TDateTimeField
      FieldName = 'DATA'
      Required = True
    end
    object QcaixaCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Required = True
    end
    object QcaixaDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Size = 10
    end
    object QcaixaHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object QcaixaVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 0
    end
    object QcaixaOPERACAO: TIBStringField
      FieldName = 'OPERACAO'
      Size = 1
    end
    object QcaixaTRANSACAO: TIntegerField
      FieldName = 'TRANSACAO'
    end
    object QcaixaOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object QcaixaMPGTO: TIntegerField
      FieldName = 'MPGTO'
    end
    object QcaixaPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Size = 5
    end
    object QcaixaDTA: TDateField
      FieldName = 'DTA'
    end
  end
  object Qitvenda: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select data,produto,descricao,  sum(quantidade) qtd ,  sum(quant' +
        'idade*valorunitario) valor from movimento'
      'Group by data,produto,descricao'
      'Order by data')
    Left = 592
    Top = 104
    object QitvendaDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object QitvendaPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 15
    end
    object QitvendaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object QitvendaQTD: TIBBCDField
      FieldName = 'QTD'
      Precision = 18
      Size = 2
    end
    object QitvendaVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 4
    end
  end
  object DtsQitvenda: TDataSource
    DataSet = Qitvenda
    Left = 592
    Top = 152
  end
  object ibtLimpa: TIBTable
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CONTROLE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DATA'
        DataType = ftDateTime
      end
      item
        Name = 'DOCUMENTO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CLIFOR'
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NADIC'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'VENDEDOR'
        DataType = ftInteger
      end
      item
        Name = 'OPERADOR'
        DataType = ftInteger
      end
      item
        Name = 'VALORTOTAL'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'CONDPAG'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'MARCA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'OBS'
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY4'
        Fields = 'CONTROLE'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'IDX_LIMPA_1'
        Fields = 'DOCUMENTO'
      end
      item
        Name = 'IDX_LIMPA_2'
        Fields = 'NOME'
      end>
    IndexFieldNames = 'DOCUMENTO'
    StoreDefs = True
    TableName = 'LIMPA'
    Left = 376
    Top = 486
    object ibtLimpaCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Required = True
    end
    object ibtLimpaDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object ibtLimpaDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Size = 10
    end
    object ibtLimpaCLIFOR: TIntegerField
      FieldName = 'CLIFOR'
    end
    object ibtLimpaNOME: TIBStringField
      FieldName = 'NOME'
      Size = 50
    end
    object ibtLimpaNADIC: TIBStringField
      FieldName = 'NADIC'
      Size = 50
    end
    object ibtLimpaVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object ibtLimpaOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object ibtLimpaVALORTOTAL: TIBBCDField
      FieldName = 'VALORTOTAL'
      Precision = 18
      Size = 2
    end
    object ibtLimpaCONDPAG: TIBStringField
      FieldName = 'CONDPAG'
      Size = 40
    end
    object ibtLimpaMARCA: TIBStringField
      FieldName = 'MARCA'
      FixedChar = True
      Size = 1
    end
    object ibtLimpaOBS: TIBStringField
      FieldName = 'OBS'
      Size = 200
    end
  end
  object DtsLimpa: TDataSource
    DataSet = ibtLimpa
    Left = 328
    Top = 486
  end
  object IBQavisos: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select avisos.*, creceber.* from avisos, creceber'
      'where creceber.controle = avisos.controle'
      'order by creceber.historico')
    Left = 592
    Top = 400
    object IBQavisosCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Required = True
    end
    object IBQavisosAVISO1: TDateTimeField
      FieldName = 'AVISO1'
    end
    object IBQavisosAVISO2: TDateTimeField
      FieldName = 'AVISO2'
    end
    object IBQavisosAVISO3: TDateTimeField
      FieldName = 'AVISO3'
    end
    object IBQavisosSPCENT: TDateTimeField
      FieldName = 'SPCENT'
    end
    object IBQavisosSPCSAI: TDateTimeField
      FieldName = 'SPCSAI'
    end
    object IBQavisosOBS: TIBStringField
      FieldName = 'OBS'
      Size = 100
    end
    object IBQavisosMARCA1: TIBStringField
      FieldName = 'MARCA1'
      Size = 1
    end
    object IBQavisosMARCA2: TIBStringField
      FieldName = 'MARCA2'
      Size = 1
    end
    object IBQavisosMARCA3: TIBStringField
      FieldName = 'MARCA3'
      Size = 1
    end
    object IBQavisosMARCASPCE: TIBStringField
      FieldName = 'MARCASPCE'
      Size = 1
    end
    object IBQavisosMARCASPCS: TIBStringField
      FieldName = 'MARCASPCS'
      Size = 1
    end
    object IBQavisosCONTROLE1: TIntegerField
      FieldName = 'CONTROLE1'
      Required = True
    end
    object IBQavisosVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
    end
    object IBQavisosDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Size = 10
    end
    object IBQavisosHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object IBQavisosVALORORIGINAL: TIBBCDField
      FieldName = 'VALORORIGINAL'
      Precision = 18
      Size = 2
    end
    object IBQavisosVALORDEVIDO: TIBBCDField
      FieldName = 'VALORDEVIDO'
      Precision = 18
      Size = 2
    end
    object IBQavisosTOTALPAGO: TIBBCDField
      FieldName = 'TOTALPAGO'
      Precision = 18
      Size = 2
    end
    object IBQavisosPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Size = 5
    end
    object IBQavisosCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object IBQavisosPARCIAL: TIntegerField
      FieldName = 'PARCIAL'
    end
    object IBQavisosOBS1: TIBStringField
      FieldName = 'OBS1'
      Size = 100
    end
    object IBQavisosMPGTO: TIntegerField
      FieldName = 'MPGTO'
    end
  end
  object Dtsavisos: TDataSource
    DataSet = IBQavisos
    Left = 592
    Top = 448
  end
  object DtsTempREc: TDataSource
    DataSet = IBTTemprec
    Left = 432
    Top = 488
  end
  object IBTTemprec: TIBTable
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CONTROLE'
        DataType = ftInteger
      end
      item
        Name = 'VENCIMENTO'
        DataType = ftDateTime
      end
      item
        Name = 'DOCUMENTO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'HISTORICO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'VALORORIGINAL'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'VALORDEVIDO'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'TOTALPAGO'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'PARCELA'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CLIENTE'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'PARCIAL'
        DataType = ftInteger
      end
      item
        Name = 'OBS'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'MPGTO'
        DataType = ftInteger
      end
      item
        Name = 'M'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PERC'
        DataType = ftBCD
        Precision = 18
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY21'
        Fields = 'CONTROLE'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'IDX_TEMPREC_1'
        Fields = 'VENCIMENTO'
      end>
    IndexFieldNames = 'VENCIMENTO'
    StoreDefs = True
    TableName = 'TEMPREC'
    Left = 480
    Top = 488
    object IBTTemprecCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object IBTTemprecVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
    end
    object IBTTemprecDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Size = 10
    end
    object IBTTemprecHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object IBTTemprecVALORORIGINAL: TIBBCDField
      FieldName = 'VALORORIGINAL'
      Precision = 18
      Size = 2
    end
    object IBTTemprecVALORDEVIDO: TIBBCDField
      FieldName = 'VALORDEVIDO'
      Precision = 18
      Size = 2
    end
    object IBTTemprecTOTALPAGO: TIBBCDField
      FieldName = 'TOTALPAGO'
      Precision = 18
      Size = 2
    end
    object IBTTemprecPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Size = 5
    end
    object IBTTemprecCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Size = 11
    end
    object IBTTemprecPARCIAL: TIntegerField
      FieldName = 'PARCIAL'
    end
    object IBTTemprecOBS: TIBStringField
      FieldName = 'OBS'
      Size = 100
    end
    object IBTTemprecMPGTO: TIntegerField
      FieldName = 'MPGTO'
    end
    object IBTTemprecM: TIBStringField
      FieldName = 'M'
      Size = 1
    end
    object IBTTemprecPERC: TIBBCDField
      FieldName = 'PERC'
      Precision = 18
      Size = 3
    end
  end
  object IBTspcpesq: TIBTable
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'CLIENTE;SEQ'
    TableName = 'SPCPESQ'
    Left = 584
    Top = 488
    object IBTspcpesqCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Size = 10
    end
    object IBTspcpesqSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object IBTspcpesqDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object IBTspcpesqDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 250
    end
  end
  object Dtsspcpesq: TDataSource
    DataSet = IBTspcpesq
    Left = 544
    Top = 488
  end
  object Qcaixa1: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    Left = 664
    Top = 472
  end
  object DtsCaixa1: TDataSource
    DataSet = Qcaixa1
    Left = 672
    Top = 520
  end
  object IBQmovimento1: TIBQuery
    Database = IBDB
    Transaction = IBTr
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from movimento1')
    Left = 672
    Top = 360
    object IBQmovimento1CONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Origin = 'MOVIMENTO1.CONTROLE'
      Required = True
    end
    object IBQmovimento1PRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = 'MOVIMENTO1.PRODUTO'
      Required = True
      Size = 15
    end
    object IBQmovimento1DATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'MOVIMENTO1.DATA'
    end
    object IBQmovimento1DOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = 'MOVIMENTO1.DOCTO'
      Size = 10
    end
    object IBQmovimento1T: TIBStringField
      FieldName = 'T'
      Origin = 'MOVIMENTO1.T'
      FixedChar = True
      Size = 1
    end
    object IBQmovimento1QUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'MOVIMENTO1.QUANTIDADE'
      Precision = 18
      Size = 2
    end
    object IBQmovimento1VALORUNITARIO: TIBBCDField
      FieldName = 'VALORUNITARIO'
      Origin = 'MOVIMENTO1.VALORUNITARIO'
      Precision = 18
      Size = 2
    end
    object IBQmovimento1VALORICMS: TIBBCDField
      FieldName = 'VALORICMS'
      Origin = 'MOVIMENTO1.VALORICMS'
      Precision = 18
      Size = 2
    end
    object IBQmovimento1VALORIPI: TIBBCDField
      FieldName = 'VALORIPI'
      Origin = 'MOVIMENTO1.VALORIPI'
      Precision = 18
      Size = 2
    end
    object IBQmovimento1CONTDOC: TIntegerField
      FieldName = 'CONTDOC'
      Origin = 'MOVIMENTO1.CONTDOC'
    end
    object IBQmovimento1CFOP: TIBStringField
      FieldName = 'CFOP'
      Origin = 'MOVIMENTO1.CFOP'
      Size = 10
    end
    object IBQmovimento1DESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'MOVIMENTO1.DESCRICAO'
      Size = 50
    end
    object IBQmovimento1REF: TIntegerField
      FieldName = 'REF'
      Origin = 'MOVIMENTO1.REF'
    end
  end
  object Dtsmovimento1: TDataSource
    DataSet = IBQmovimento1
    Left = 672
    Top = 416
  end
end
