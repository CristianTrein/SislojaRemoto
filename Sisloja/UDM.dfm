object DM: TDM
  OldCreateOrder = False
  Left = 198
  Top = 106
  Height = 458
  Width = 593
  object DB: TDatabase
    AliasName = 'Comercial'
    Connected = True
    DatabaseName = 'DB'
    SessionName = 'Default'
    Left = 24
    Top = 8
  end
  object TbCaixa: TTable
    DatabaseName = 'DB'
    TableName = 'Caixa.DB'
    Left = 24
    Top = 120
    object TbCaixaData: TDateField
      FieldName = 'Data'
    end
    object TbCaixaControle: TAutoIncField
      FieldName = 'Controle'
      ReadOnly = True
    end
    object TbCaixaDocumento: TStringField
      FieldName = 'Documento'
      Size = 10
    end
    object TbCaixaHistorico: TStringField
      FieldName = 'Historico'
      Size = 50
    end
    object TbCaixaValor: TCurrencyField
      FieldName = 'Valor'
    end
    object TbCaixaOperacao: TStringField
      FieldName = 'Operacao'
      Size = 1
    end
    object TbCaixaTransacao: TIntegerField
      FieldName = 'Transacao'
    end
    object TbCaixaOperador: TIntegerField
      FieldName = 'Operador'
    end
  end
  object DSCaixa: TDataSource
    DataSet = TbCaixa
    Left = 24
    Top = 72
  end
  object DSClasTrib: TDataSource
    DataSet = TbClasTrib
    Left = 88
    Top = 72
  end
  object TbClasTrib: TTable
    DatabaseName = 'DB'
    TableName = 'ClasTrib.DB'
    Left = 88
    Top = 120
    object TbClasTribCodigo: TStringField
      FieldName = 'Codigo'
      Size = 2
    end
    object TbClasTribDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
  end
  object TbComissoes: TTable
    DatabaseName = 'DB'
    TableName = 'Comissoes.db'
    Left = 160
    Top = 120
    object TbComissoesNota: TIntegerField
      FieldName = 'Nota'
    end
    object TbComissoesVendedor: TIntegerField
      FieldName = 'Vendedor'
    end
    object TbComissoesComissao: TFloatField
      FieldName = 'Comissao'
    end
    object TbComissoesLiberado: TDateField
      FieldName = 'Liberado'
    end
    object TbComissoesPago: TDateField
      FieldName = 'Pago'
    end
  end
  object DSComissoes: TDataSource
    DataSet = TbComissoes
    Left = 160
    Top = 72
  end
  object DSCPagar: TDataSource
    DataSet = TbCPagar
    Left = 232
    Top = 72
  end
  object TbCPagar: TTable
    DatabaseName = 'DB'
    TableName = 'Cpagar.DB'
    Left = 232
    Top = 120
    object TbCPagarControle: TAutoIncField
      FieldName = 'Controle'
      ReadOnly = True
    end
    object TbCPagarVencimento: TDateField
      FieldName = 'Vencimento'
    end
    object TbCPagarDocumento: TStringField
      FieldName = 'Documento'
      Size = 10
    end
    object TbCPagarHistorico: TStringField
      FieldName = 'Historico'
      Size = 50
    end
    object TbCPagarValor: TCurrencyField
      FieldName = 'Valor'
    end
    object TbCPagarParcela: TStringField
      FieldName = 'Parcela'
      Size = 5
    end
    object TbCPagarFornecedor: TIntegerField
      FieldName = 'Fornecedor'
    end
  end
  object DSCPagas: TDataSource
    DataSet = TbCPagas
    Left = 296
    Top = 72
  end
  object TbCPagas: TTable
    DatabaseName = 'DB'
    TableName = 'Cpagas.DB'
    Left = 296
    Top = 120
    object TbCPagasControle: TAutoIncField
      FieldName = 'Controle'
      ReadOnly = True
    end
    object TbCPagasVencimento: TDateField
      FieldName = 'Vencimento'
    end
    object TbCPagasPagamento: TDateField
      FieldName = 'Pagamento'
    end
    object TbCPagasDocumento: TStringField
      FieldName = 'Documento'
      Size = 10
    end
    object TbCPagasHistorico: TStringField
      FieldName = 'Historico'
      Size = 50
    end
    object TbCPagasValor: TCurrencyField
      FieldName = 'Valor'
    end
    object TbCPagasPago: TCurrencyField
      FieldName = 'Pago'
    end
    object TbCPagasParcela: TStringField
      FieldName = 'Parcela'
      Size = 5
    end
    object TbCPagasFornecedor: TIntegerField
      FieldName = 'Fornecedor'
    end
  end
  object DSCReceber: TDataSource
    DataSet = TbCReceber
    Left = 360
    Top = 72
  end
  object TbCReceber: TTable
    DatabaseName = 'DB'
    TableName = 'Creceber.DB'
    Left = 360
    Top = 120
    object TbCReceberControle: TAutoIncField
      FieldName = 'Controle'
      ReadOnly = True
    end
    object TbCReceberVencimento: TDateField
      FieldName = 'Vencimento'
    end
    object TbCReceberDocumento: TStringField
      FieldName = 'Documento'
      Size = 10
    end
    object TbCReceberHistorico: TStringField
      FieldName = 'Historico'
      Size = 50
    end
    object TbCReceberValororiginal: TCurrencyField
      FieldName = 'Valororiginal'
    end
    object TbCReceberValordevido: TCurrencyField
      FieldName = 'Valordevido'
    end
    object TbCReceberTotalpago: TCurrencyField
      FieldName = 'Totalpago'
    end
    object TbCReceberParcela: TStringField
      FieldName = 'Parcela'
      Size = 5
    end
    object TbCReceberCliente: TIntegerField
      FieldName = 'Cliente'
    end
  end
  object DSCRecebidas: TDataSource
    DataSet = TbCRecebidas
    Left = 432
    Top = 72
  end
  object TbCRecebidas: TTable
    DatabaseName = 'DB'
    TableName = 'Crecebidas.DB'
    Left = 432
    Top = 120
  end
  object DSDoctos: TDataSource
    DataSet = TbDoctos
    Left = 24
    Top = 184
  end
  object TbDoctos: TTable
    DatabaseName = 'DB'
    TableName = 'Doctos.db'
    Left = 24
    Top = 232
    object TbDoctosControle: TAutoIncField
      FieldName = 'Controle'
      ReadOnly = True
    end
    object TbDoctosData: TDateField
      FieldName = 'Data'
    end
    object TbDoctosDocumento: TStringField
      FieldName = 'Documento'
      Size = 10
    end
    object TbDoctosTransacao: TStringField
      FieldName = 'Transacao'
      Size = 10
    end
    object TbDoctosCliFor: TIntegerField
      FieldName = 'CliFor'
    end
    object TbDoctosOperador: TIntegerField
      FieldName = 'Operador'
    end
    object TbDoctosNatOp: TStringField
      FieldName = 'NatOp'
      Size = 6
    end
    object TbDoctosTransportador: TIntegerField
      FieldName = 'Transportador'
    end
    object TbDoctosValorTotal: TCurrencyField
      FieldName = 'ValorTotal'
    end
    object TbDoctosValorFrete: TCurrencyField
      FieldName = 'ValorFrete'
    end
    object TbDoctosValorIcms: TCurrencyField
      FieldName = 'ValorIcms'
    end
  end
  object DSEmpresas: TDataSource
    DataSet = TbEmpresas
    Left = 88
    Top = 184
  end
  object TbEmpresas: TTable
    DatabaseName = 'DB'
    TableName = 'Empresas.DB'
    Left = 88
    Top = 232
    object TbEmpresasCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object TbEmpresasNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object TbEmpresasContato: TStringField
      FieldName = 'Contato'
      Size = 50
    end
    object TbEmpresasEndereco: TStringField
      FieldName = 'Endereco'
      Size = 40
    end
    object TbEmpresasBairro: TStringField
      FieldName = 'Bairro'
    end
    object TbEmpresasCidade: TStringField
      FieldName = 'Cidade'
      Size = 30
    end
    object TbEmpresasCep: TStringField
      FieldName = 'Cep'
      Size = 10
    end
    object TbEmpresasUf: TStringField
      FieldName = 'Uf'
      Size = 2
    end
    object TbEmpresasFone: TStringField
      FieldName = 'Fone'
      Size = 15
    end
    object TbEmpresasFax: TStringField
      FieldName = 'Fax'
      Size = 15
    end
    object TbEmpresasCelular: TStringField
      FieldName = 'Celular'
      Size = 15
    end
    object TbEmpresasEmail: TStringField
      FieldName = 'Email'
      Size = 40
    end
    object TbEmpresasRefComercial: TStringField
      FieldName = 'RefComercial'
      Size = 40
    end
    object TbEmpresasRefBancaria: TStringField
      FieldName = 'RefBancaria'
      Size = 40
    end
    object TbEmpresasRg: TStringField
      FieldName = 'Rg'
      Size = 15
    end
    object TbEmpresasCpf: TStringField
      FieldName = 'Cpf'
      Size = 15
    end
    object TbEmpresasCnpj: TStringField
      FieldName = 'Cnpj'
      Size = 15
    end
    object TbEmpresasInsc: TStringField
      FieldName = 'Insc'
      Size = 15
    end
    object TbEmpresasObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 50
    end
    object TbEmpresasNascimento: TDateField
      FieldName = 'Nascimento'
    end
    object TbEmpresasCadastro: TDateField
      FieldName = 'Cadastro'
    end
    object TbEmpresasCliente: TBooleanField
      FieldName = 'Cliente'
    end
    object TbEmpresasFornecedor: TBooleanField
      FieldName = 'Fornecedor'
    end
    object TbEmpresasTransportador: TBooleanField
      FieldName = 'Transportador'
    end
  end
  object DSEtiquetas: TDataSource
    DataSet = TbEtiquetas
    Left = 160
    Top = 184
  end
  object TbEtiquetas: TTable
    DatabaseName = 'DB'
    TableName = 'Etiquetas.DB'
    Left = 160
    Top = 232
    object TbEtiquetasCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object TbEtiquetasProduto: TStringField
      FieldName = 'Produto'
      Size = 50
    end
    object TbEtiquetasPrecovenda: TCurrencyField
      FieldName = 'Precovenda'
    end
  end
  object DSGrupos: TDataSource
    DataSet = TbGrupos
    Left = 232
    Top = 184
  end
  object TbGrupos: TTable
    DatabaseName = 'DB'
    TableName = 'Grupos.db'
    Left = 232
    Top = 232
    object TbGruposCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object TbGruposDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
  end
  object DSIcms: TDataSource
    DataSet = TBIcms
    Left = 296
    Top = 184
  end
  object TBIcms: TTable
    DatabaseName = 'DB'
    TableName = 'ICMS.db'
    Left = 296
    Top = 232
    object TBIcmsCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object TBIcmsAliquota: TStringField
      FieldName = 'Aliquota'
      Size = 6
    end
  end
  object DSInventario: TDataSource
    DataSet = TBInventario
    Left = 360
    Top = 184
  end
  object TBInventario: TTable
    DatabaseName = 'DB'
    TableName = 'Inventario.DB'
    Left = 360
    Top = 232
    object TBInventarioData: TDateField
      FieldName = 'Data'
    end
    object TBInventarioProduto: TStringField
      FieldName = 'Produto'
      Size = 15
    end
    object TBInventarioQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object TBInventarioValor: TCurrencyField
      FieldName = 'Valor'
    end
  end
  object DSMovimento: TDataSource
    DataSet = TBMovimento
    Left = 432
    Top = 184
  end
  object TBMovimento: TTable
    DatabaseName = 'DB'
    TableName = 'Movimento.DB'
    Left = 432
    Top = 232
    object TBMovimentoControle: TAutoIncField
      FieldName = 'Controle'
      ReadOnly = True
    end
    object TBMovimentoDocto: TStringField
      FieldName = 'Docto'
      Size = 10
    end
    object TBMovimentoProduto: TStringField
      FieldName = 'Produto'
      Size = 15
    end
    object TBMovimentoT: TStringField
      FieldName = 'T'
      Size = 1
    end
    object TBMovimentoQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object TBMovimentoValorUnitario: TCurrencyField
      FieldName = 'ValorUnitario'
    end
    object TBMovimentoValorIcms: TCurrencyField
      FieldName = 'ValorIcms'
    end
    object TBMovimentoValorIPI: TCurrencyField
      FieldName = 'ValorIPI'
    end
  end
  object DSParam: TDataSource
    DataSet = TbParam
    Left = 32
    Top = 304
  end
  object TbParam: TTable
    DatabaseName = 'DB'
    TableName = 'Param.DB'
    Left = 32
    Top = 352
    object TbParamUsuario: TStringField
      FieldName = 'Usuario'
      Size = 50
    end
    object TbParamCnpj: TStringField
      FieldName = 'Cnpj'
      Size = 15
    end
    object TbParamInsc: TStringField
      FieldName = 'Insc'
      Size = 15
    end
    object TbParamEndereco: TStringField
      FieldName = 'Endereco'
      Size = 40
    end
    object TbParamBairro: TStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object TbParamCep: TStringField
      FieldName = 'Cep'
      Size = 10
    end
    object TbParamUf: TStringField
      FieldName = 'Uf'
      Size = 10
    end
    object TbParamFone: TStringField
      FieldName = 'Fone'
      Size = 15
    end
    object TbParamFax: TStringField
      FieldName = 'Fax'
      Size = 15
    end
    object TbParamEmail: TStringField
      FieldName = 'Email'
      Size = 40
    end
    object TbParamCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object TbParamDatalic: TDateField
      FieldName = 'Datalic'
    end
    object TbParamUsaecf: TBooleanField
      FieldName = 'Usaecf'
    end
    object TbParamTxJuros: TFloatField
      FieldName = 'TxJuros'
    end
  end
  object DSPosCaixa: TDataSource
    DataSet = TbPosCaixa
    Left = 96
    Top = 304
  end
  object TbPosCaixa: TTable
    DatabaseName = 'DB'
    TableName = 'PosCaixa.DB'
    Left = 96
    Top = 352
    object TbPosCaixaData: TDateField
      FieldName = 'Data'
    end
    object TbPosCaixaSaldo: TCurrencyField
      FieldName = 'Saldo'
    end
  end
  object DSProdutos: TDataSource
    DataSet = TbProdutos
    Left = 168
    Top = 304
  end
  object TbProdutos: TTable
    DatabaseName = 'DB'
    TableName = 'Produtos.DB'
    Left = 168
    Top = 352
    object TbProdutosCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object TbProdutosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object TbProdutosUnimed: TStringField
      FieldName = 'Unimed'
      Size = 5
    end
    object TbProdutosGrupo: TIntegerField
      FieldName = 'Grupo'
    end
    object TbProdutosSubgrupo: TIntegerField
      FieldName = 'Subgrupo'
    end
    object TbProdutosObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 50
    end
    object TbProdutosEstminimo: TFloatField
      FieldName = 'Estminimo'
    end
    object TbProdutosEstoque: TFloatField
      FieldName = 'Estoque'
    end
    object TbProdutosPrecocusto: TCurrencyField
      FieldName = 'Precocusto'
    end
    object TbProdutosPrecovenda: TCurrencyField
      FieldName = 'Precovenda'
    end
    object TbProdutosCustomedio: TCurrencyField
      FieldName = 'Customedio'
    end
    object TbProdutosUreajuste: TDateField
      FieldName = 'Ureajuste'
    end
    object TbProdutosIPI: TCurrencyField
      FieldName = 'IPI'
    end
    object TbProdutosICMS: TCurrencyField
      FieldName = 'ICMS'
    end
    object TbProdutosBasecalculo: TFloatField
      FieldName = 'Basecalculo'
    end
    object TbProdutosStribu: TStringField
      FieldName = 'Stribu'
      Size = 2
    end
    object TbProdutosCadastro: TDateField
      FieldName = 'Cadastro'
    end
  end
  object DSSubGrupos: TDataSource
    DataSet = TbSubGrupos
    Left = 232
    Top = 304
  end
  object TbSubGrupos: TTable
    DatabaseName = 'DB'
    TableName = 'Subgrupos.db'
    Left = 232
    Top = 352
    object TbSubGruposCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object TbSubGruposGrupo: TIntegerField
      FieldName = 'Grupo'
    end
    object TbSubGruposDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
  end
  object DSTrCaixa: TDataSource
    DataSet = TbTrCaixa
    Left = 304
    Top = 304
  end
  object TbTrCaixa: TTable
    DatabaseName = 'DB'
    TableName = 'TrCaixa.db'
    Left = 304
    Top = 352
    object TbTrCaixaCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object TbTrCaixaDescricao: TStringField
      FieldName = 'Descricao'
    end
    object TbTrCaixaOperacao: TStringField
      FieldName = 'Operacao'
      Size = 1
    end
  end
  object DSUsuarios: TDataSource
    DataSet = TbUsuarios
    Left = 368
    Top = 304
  end
  object TbUsuarios: TTable
    DatabaseName = 'DB'
    TableName = 'Usuarios.db'
    Left = 368
    Top = 352
    object TbUsuariosCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object TbUsuariosNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object TbUsuariosSenha: TIntegerField
      FieldName = 'Senha'
    end
    object TbUsuariosComissao: TFloatField
      FieldName = 'Comissao'
    end
  end
end
