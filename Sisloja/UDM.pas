unit UDM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TDM = class(TDataModule)
    DB: TDatabase;
    TbCaixa: TTable;
    DSCaixa: TDataSource;
    DSClasTrib: TDataSource;
    TbClasTrib: TTable;
    TbComissoes: TTable;
    DSComissoes: TDataSource;
    DSCPagar: TDataSource;
    TbCPagar: TTable;
    DSCPagas: TDataSource;
    TbCPagas: TTable;
    DSCReceber: TDataSource;
    TbCReceber: TTable;
    DSCRecebidas: TDataSource;
    TbCRecebidas: TTable;
    DSDoctos: TDataSource;
    TbDoctos: TTable;
    DSEmpresas: TDataSource;
    TbEmpresas: TTable;
    DSEtiquetas: TDataSource;
    TbEtiquetas: TTable;
    DSGrupos: TDataSource;
    TbGrupos: TTable;
    DSIcms: TDataSource;
    TBIcms: TTable;
    DSInventario: TDataSource;
    TBInventario: TTable;
    DSMovimento: TDataSource;
    TBMovimento: TTable;
    DSParam: TDataSource;
    TbParam: TTable;
    DSPosCaixa: TDataSource;
    TbPosCaixa: TTable;
    DSProdutos: TDataSource;
    TbProdutos: TTable;
    DSSubGrupos: TDataSource;
    TbSubGrupos: TTable;
    DSTrCaixa: TDataSource;
    TbTrCaixa: TTable;
    DSUsuarios: TDataSource;
    TbUsuarios: TTable;
    TbCaixaData: TDateField;
    TbCaixaControle: TAutoIncField;
    TbCaixaDocumento: TStringField;
    TbCaixaHistorico: TStringField;
    TbCaixaValor: TCurrencyField;
    TbCaixaOperacao: TStringField;
    TbCaixaTransacao: TIntegerField;
    TbCaixaOperador: TIntegerField;
    TbClasTribCodigo: TStringField;
    TbClasTribDescricao: TStringField;
    TbComissoesNota: TIntegerField;
    TbComissoesVendedor: TIntegerField;
    TbComissoesComissao: TFloatField;
    TbComissoesLiberado: TDateField;
    TbComissoesPago: TDateField;
    TbCPagarControle: TAutoIncField;
    TbCPagarVencimento: TDateField;
    TbCPagarDocumento: TStringField;
    TbCPagarHistorico: TStringField;
    TbCPagarValor: TCurrencyField;
    TbCPagarParcela: TStringField;
    TbCPagarFornecedor: TIntegerField;
    TbCPagasControle: TAutoIncField;
    TbCPagasVencimento: TDateField;
    TbCPagasPagamento: TDateField;
    TbCPagasDocumento: TStringField;
    TbCPagasHistorico: TStringField;
    TbCPagasValor: TCurrencyField;
    TbCPagasPago: TCurrencyField;
    TbCPagasParcela: TStringField;
    TbCPagasFornecedor: TIntegerField;
    TbCReceberControle: TAutoIncField;
    TbCReceberVencimento: TDateField;
    TbCReceberDocumento: TStringField;
    TbCReceberHistorico: TStringField;
    TbCReceberValororiginal: TCurrencyField;
    TbCReceberValordevido: TCurrencyField;
    TbCReceberTotalpago: TCurrencyField;
    TbCReceberParcela: TStringField;
    TbCReceberCliente: TIntegerField;
    TbDoctosControle: TAutoIncField;
    TbDoctosData: TDateField;
    TbDoctosDocumento: TStringField;
    TbDoctosTransacao: TStringField;
    TbDoctosCliFor: TIntegerField;
    TbDoctosOperador: TIntegerField;
    TbDoctosNatOp: TStringField;
    TbDoctosTransportador: TIntegerField;
    TbDoctosValorTotal: TCurrencyField;
    TbDoctosValorFrete: TCurrencyField;
    TbDoctosValorIcms: TCurrencyField;
    TbEmpresasCodigo: TAutoIncField;
    TbEmpresasNome: TStringField;
    TbEmpresasContato: TStringField;
    TbEmpresasEndereco: TStringField;
    TbEmpresasBairro: TStringField;
    TbEmpresasCidade: TStringField;
    TbEmpresasCep: TStringField;
    TbEmpresasUf: TStringField;
    TbEmpresasFone: TStringField;
    TbEmpresasFax: TStringField;
    TbEmpresasCelular: TStringField;
    TbEmpresasEmail: TStringField;
    TbEmpresasRefComercial: TStringField;
    TbEmpresasRefBancaria: TStringField;
    TbEmpresasRg: TStringField;
    TbEmpresasCpf: TStringField;
    TbEmpresasCnpj: TStringField;
    TbEmpresasInsc: TStringField;
    TbEmpresasObs: TMemoField;
    TbEmpresasNascimento: TDateField;
    TbEmpresasCadastro: TDateField;
    TbEmpresasCliente: TBooleanField;
    TbEmpresasFornecedor: TBooleanField;
    TbEmpresasTransportador: TBooleanField;
    TbEtiquetasCodigo: TStringField;
    TbEtiquetasProduto: TStringField;
    TbEtiquetasPrecovenda: TCurrencyField;
    TbGruposCodigo: TAutoIncField;
    TbGruposDescricao: TStringField;
    TBIcmsCodigo: TIntegerField;
    TBIcmsAliquota: TStringField;
    TBInventarioData: TDateField;
    TBInventarioProduto: TStringField;
    TBInventarioQuantidade: TFloatField;
    TBInventarioValor: TCurrencyField;
    TbParamUsuario: TStringField;
    TbParamCnpj: TStringField;
    TbParamInsc: TStringField;
    TbParamEndereco: TStringField;
    TbParamBairro: TStringField;
    TbParamCep: TStringField;
    TbParamUf: TStringField;
    TbParamFone: TStringField;
    TbParamFax: TStringField;
    TbParamEmail: TStringField;
    TbParamCodigo: TIntegerField;
    TbParamDatalic: TDateField;
    TbParamUsaecf: TBooleanField;
    TbParamTxJuros: TFloatField;
    TbPosCaixaData: TDateField;
    TbPosCaixaSaldo: TCurrencyField;
    TbProdutosCodigo: TStringField;
    TbProdutosDescricao: TStringField;
    TbProdutosUnimed: TStringField;
    TbProdutosGrupo: TIntegerField;
    TbProdutosSubgrupo: TIntegerField;
    TbProdutosObs: TMemoField;
    TbProdutosEstminimo: TFloatField;
    TbProdutosEstoque: TFloatField;
    TbProdutosPrecocusto: TCurrencyField;
    TbProdutosPrecovenda: TCurrencyField;
    TbProdutosCustomedio: TCurrencyField;
    TbProdutosUreajuste: TDateField;
    TbProdutosIPI: TCurrencyField;
    TbProdutosICMS: TCurrencyField;
    TbProdutosBasecalculo: TFloatField;
    TbProdutosStribu: TStringField;
    TbProdutosCadastro: TDateField;
    TbSubGruposCodigo: TIntegerField;
    TbSubGruposGrupo: TIntegerField;
    TbSubGruposDescricao: TStringField;
    TbTrCaixaCodigo: TAutoIncField;
    TbTrCaixaDescricao: TStringField;
    TbTrCaixaOperacao: TStringField;
    TbUsuariosCodigo: TAutoIncField;
    TbUsuariosNome: TStringField;
    TbUsuariosSenha: TIntegerField;
    TbUsuariosComissao: TFloatField;
    TBMovimentoControle: TAutoIncField;
    TBMovimentoDocto: TStringField;
    TBMovimentoProduto: TStringField;
    TBMovimentoT: TStringField;
    TBMovimentoQuantidade: TFloatField;
    TBMovimentoValorUnitario: TCurrencyField;
    TBMovimentoValorIcms: TCurrencyField;
    TBMovimentoValorIPI: TCurrencyField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.DFM}

end.
