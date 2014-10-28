object FrmOrdemServ2: TFrmOrdemServ2
  Left = 141
  Top = 132
  BorderStyle = bsNone
  Caption = 'Ordem de Servi'#231'o 2'#170' parte'
  ClientHeight = 558
  ClientWidth = 795
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 5
    Top = 35
    Width = 351
    Height = 134
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 8
    Top = 48
    Width = 56
    Height = 13
    Caption = 'Sequencial:'
  end
  object Label2: TLabel
    Left = 24
    Top = 72
    Width = 39
    Height = 13
    Caption = 'Servi'#231'o:'
  end
  object Label8: TLabel
    Left = 16
    Top = 96
    Width = 51
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object Label3: TLabel
    Left = 40
    Top = 120
    Width = 28
    Height = 13
    Caption = 'Pe'#231'a:'
  end
  object RxLabel1: TRxLabel
    Left = 128
    Top = 120
    Width = 5
    Height = 13
    Caption = '.'
  end
  object Label5: TLabel
    Left = 8
    Top = 144
    Width = 58
    Height = 13
    Caption = 'Quantidade:'
  end
  object Label4: TLabel
    Left = 152
    Top = 144
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object Label10: TLabel
    Left = 200
    Top = 200
    Width = 44
    Height = 13
    Caption = 'Total: R$'
  end
  object Label9: TLabel
    Left = 248
    Top = 200
    Width = 6
    Height = 13
    Caption = '0'
  end
  object RxLabel2: TRxLabel
    Left = 8
    Top = 200
    Width = 149
    Height = 13
    Caption = 'Pe'#231'as digitadas na ordem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 376
    Top = 152
    Width = 32
    Height = 13
    Caption = 'Grupo:'
  end
  object Label7: TLabel
    Left = 552
    Top = 152
    Width = 54
    Height = 13
    Caption = 'Sub-Grupo:'
  end
  object Edit1: TEdit
    Left = 72
    Top = 40
    Width = 81
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 72
    Top = 64
    Width = 265
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    OnClick = ComboBox1Click
  end
  object Edit4: TEdit
    Left = 72
    Top = 88
    Width = 265
    Height = 21
    TabOrder = 5
  end
  object Edit2: TEdit
    Left = 72
    Top = 112
    Width = 49
    Height = 21
    TabOrder = 7
  end
  object Currencyedit2: TMegaEditNumerico
    Left = 72
    Top = 136
    Width = 73
    Height = 21
    Color = clWhite
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnExit = Currencyedit2Exit
    CorEntra = clWindow
  end
  object Currencyedit1: TMegaEditNumerico
    Left = 184
    Top = 136
    Width = 73
    Height = 21
    Color = clWhite
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    CorEntra = clWindow
  end
  object BitBtn1: TBitBtn
    Left = 264
    Top = 136
    Width = 81
    Height = 25
    Caption = 'Gravar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = BitBtn1Click
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
  object BitBtn4: TBitBtn
    Left = 528
    Top = 40
    Width = 171
    Height = 25
    Caption = 'Imprimir Ordem de Servi'#231'o'
    TabOrder = 1
    OnClick = BitBtn4Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object BitBtn5: TBitBtn
    Left = 528
    Top = 72
    Width = 171
    Height = 25
    Caption = 'Financeiro'
    TabOrder = 4
    OnClick = BitBtn5Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
      73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
      0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
      0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
      0333337F777777737F333308888888880333337F333333337F33330888888888
      03333373FFFFFFFF733333700000000073333337777777773333}
    NumGlyphs = 2
  end
  object BitBtn7: TBitBtn
    Left = 528
    Top = 104
    Width = 171
    Height = 25
    Caption = 'Excluir Pe'#231'a'
    TabOrder = 6
    OnClick = BitBtn7Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
      3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
      33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
      33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
      333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
      03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
      33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
      0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
      3333333337FFF7F3333333333000003333333333377777333333}
    NumGlyphs = 2
  end
  object BitBtn6: TBitBtn
    Left = 704
    Top = 40
    Width = 81
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BitBtn6Click
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
  object ComboBox2: TComboBox
    Left = 376
    Top = 168
    Width = 169
    Height = 21
    ItemHeight = 13
    TabOrder = 11
    OnClick = ComboBox2Click
  end
  object ComboBox3: TComboBox
    Left = 552
    Top = 168
    Width = 177
    Height = 21
    ItemHeight = 13
    TabOrder = 12
    OnClick = ComboBox3Click
  end
  object BitBtn3: TBitBtn
    Left = 376
    Top = 190
    Width = 59
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 14
    OnClick = BitBtn3Click
  end
  object Edit3: TEdit
    Left = 440
    Top = 192
    Width = 289
    Height = 21
    TabOrder = 15
  end
  object BitBtn2: TBitBtn
    Left = 736
    Top = 189
    Width = 51
    Height = 25
    Caption = 'OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = BitBtn2Click
    Glyph.Data = {
      EE000000424DEE0000000000000076000000280000000F0000000F0000000100
      04000000000078000000CE0E0000C40E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8880888888888888888088888888888888808800888888888880880000888888
      8880880000008888888088000000008888808800000000008880880000000088
      8880880000008888888088000088888888808800888888888880888888888888
      888088888888888888808888888888888880}
  end
  object DBGrid2: TDBGrid
    Left = 371
    Top = 216
    Width = 417
    Height = 305
    TabStop = False
    DataSource = IBDM.DTSProdutos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 17
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
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 292
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE'
        Title.Caption = 'Estoque'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECOVENDA'
        Title.Caption = 'Pr.Venda'
        Width = 57
        Visible = True
      end>
  end
  object DBGrid1: TDBGrid
    Left = 5
    Top = 216
    Width = 361
    Height = 305
    TabStop = False
    DataSource = IBDM.DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 16
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
