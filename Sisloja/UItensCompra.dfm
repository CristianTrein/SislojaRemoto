object FrmItensNota: TFrmItensNota
  Left = 191
  Top = 213
  BorderStyle = bsNone
  Caption = 'Inclus'#227'o de Itens da Nota'
  ClientHeight = 439
  ClientWidth = 783
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 280
    Top = 40
    Width = 134
    Height = 24
    Caption = 'Itens da Nota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 38
    Top = 88
    Width = 58
    Height = 13
    Alignment = taRightJustify
    Caption = 'Documento:'
    OnClick = BtnFecharClick
  end
  object Label2: TLabel
    Left = 56
    Top = 112
    Width = 40
    Height = 13
    Alignment = taRightJustify
    Caption = 'Produto:'
  end
  object Label6: TLabel
    Left = 168
    Top = 110
    Width = 99
    Height = 13
    Caption = 'Nome do Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 38
    Top = 136
    Width = 58
    Height = 13
    Alignment = taRightJustify
    Caption = 'Quantidade:'
  end
  object Label4: TLabel
    Left = 20
    Top = 160
    Width = 76
    Height = 13
    Caption = 'Pre'#231'o de Custo:'
  end
  object Label9: TLabel
    Left = 224
    Top = 200
    Width = 5
    Height = 13
    Caption = '.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 168
    Top = 200
    Width = 51
    Height = 13
    Caption = 'ValorTotal:'
  end
  object Label5: TLabel
    Left = 24
    Top = 200
    Width = 102
    Height = 13
    Caption = 'Itens j'#225' digitados:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 104
    Top = 80
    Width = 57
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 104
    Top = 104
    Width = 57
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 104
    Top = 128
    Width = 57
    Height = 21
    TabOrder = 4
  end
  object CurrencyEdit1: TMegaEditNumerico
    Left = 104
    Top = 152
    Width = 81
    Height = 21
    Color = clWhite
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    CorEntra = clWindow
  end
  object BtnGravar: TBitBtn
    Left = 216
    Top = 152
    Width = 97
    Height = 33
    Caption = '&Gravar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = BtnGravarClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      77777777777777777777777774777777777777774C47777777777774CC477777
      7777774CCCC47777777774CC77CC477777777CC7777CC477777777777777C477
      7777777777777C4777777777777777C4777777777777777C4777777777777777
      C477777777777777774777777777777777777777777777777777}
  end
  object BtnPagamento: TBitBtn
    Left = 544
    Top = 72
    Width = 169
    Height = 25
    Caption = 'Forma de Pagamento'
    TabOrder = 0
    OnClick = BtnPagamentoClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
      55555575555555775F55509999999901055557F55555557F75F5001111111101
      105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
      01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
      8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
      0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
      0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
      05555555575FF777755555555500055555555555557775555555}
    NumGlyphs = 2
  end
  object BtnNovoProd: TBitBtn
    Left = 544
    Top = 104
    Width = 169
    Height = 25
    Caption = '&Novo Produto'
    TabOrder = 3
    OnClick = BtnNovoProdClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00900000000000
      0009987777777777770998FFFFFFFFFFF70998FFFFFC4FFFF70998FFFFFC4FFF
      F70998FFFFFC4FFFF70998FF44444444F70998FFCCCC4CCCF70998FFFFFC4FFF
      F70998FFFFFC4FFFF70998FFFFFC4FFFF70998FFFFFFFFFFF70998FFFFFFFFF0
      000998FFFFFFFFF7F89998FFFFFFFFF789999888888888889999}
  end
  object BtnFechar: TBitBtn
    Left = 544
    Top = 136
    Width = 169
    Height = 25
    Caption = '&Fechar'
    TabOrder = 5
    OnClick = BtnFecharClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0077FF77FF700F
      77FFFF77FF77F0B0FF7777FF77FF70B307FF00000007F0B330007777770000B3
      307777770708800330777770070880F030777702070880033077702A000000B3
      307702AAAAAAA0B3307770AA000000B33077770A070880B330777770070880BB
      307777770708880BB077777777088880B0777777770000000077}
  end
  object BtnOk: TBitBtn
    Left = 728
    Top = 188
    Width = 49
    Height = 25
    Caption = '&Ok'
    TabOrder = 9
    OnClick = BtnOkClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      77777777777777777777777774777777777777774C47777777777774CC477777
      7777774CCCC47777777774CC77CC477777777CC7777CC477777777777777C477
      7777777777777C4777777777777777C4777777777777777C4777777777777777
      C477777777777777774777777777777777777777777777777777}
  end
  object BtnPesquisar: TBitBtn
    Left = 640
    Top = 188
    Width = 81
    Height = 25
    Caption = '&Pesquisar'
    TabOrder = 8
    OnClick = BtnPesquisarClick
    Glyph.Data = {
      EE000000424DEE000000000000007600000028000000100000000F0000000100
      04000000000078000000CE0E0000C40E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00844888888888
      8888888488888888888888488800000000088444888888888888888888888888
      8888844488888888888888488888888888888884880000000008844888888888
      8888888888888888888884448888888888888848888888888888844888000000
      000888488888888888888888888888888888}
  end
  object Edit4: TEdit
    Left = 432
    Top = 192
    Width = 201
    Height = 21
    TabOrder = 10
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 216
    Width = 329
    Height = 185
    TabStop = False
    DataSource = IBDM.DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 344
    Top = 216
    Width = 433
    Height = 185
    TabStop = False
    DataSource = IBDM.DTSProdutos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 273
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECOCUSTO'
        Title.Caption = 'Pre'#231'oCusto'
        Width = 59
        Visible = True
      end>
  end
end
