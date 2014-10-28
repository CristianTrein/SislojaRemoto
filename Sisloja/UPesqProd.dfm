object FrmPesqProd: TFrmPesqProd
  Left = 140
  Top = 97
  BorderStyle = bsNone
  Caption = 'Pesquisar Produtos'
  ClientHeight = 547
  ClientWidth = 787
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
  object Label4: TLabel
    Left = 356
    Top = 46
    Width = 32
    Height = 13
    Caption = 'Grupo:'
  end
  object Label5: TLabel
    Left = 529
    Top = 46
    Width = 54
    Height = 13
    Caption = 'Sub-Grupo:'
  end
  object Label1: TLabel
    Left = 721
    Top = 127
    Width = 58
    Height = 13
    Caption = 'Quantidade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 699
    Top = 175
    Width = 80
    Height = 13
    Caption = 'Pre'#231'o de Venda:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 736
    Top = 223
    Width = 43
    Height = 13
    Caption = 'Unidade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 695
    Top = 271
    Width = 92
    Height = 13
    Caption = 'Situa'#231#227'o Tribut'#225'ria:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 707
    Top = 320
    Width = 72
    Height = 13
    Caption = 'Al'#237'quota ICMS:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 743
    Top = 367
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 763
    Top = 415
    Width = 16
    Height = 13
    Caption = 'IPI:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label9: TLabel
    Left = 696
    Top = 424
    Width = 9
    Height = 13
    Caption = '...'
    Visible = False
  end
  object Button1: TButton
    Left = 16
    Top = 42
    Width = 57
    Height = 17
    Caption = 'C'#243'digo'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 16
    Top = 60
    Width = 73
    Height = 21
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Button2: TButton
    Left = 93
    Top = 42
    Width = 75
    Height = 17
    Caption = 'Descri'#231#227'o'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit2: TEdit
    Left = 91
    Top = 60
    Width = 166
    Height = 21
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 260
    Top = 56
    Width = 89
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 2
    OnClick = BitBtn1Click
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
  object ComboBox1: TComboBox
    Left = 355
    Top = 60
    Width = 166
    Height = 21
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 5
    Text = 'Todos'
    OnClick = ComboBox1Click
    Items.Strings = (
      '')
  end
  object ComboBox2: TComboBox
    Left = 530
    Top = 60
    Width = 257
    Height = 21
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 6
    Text = 'Todos'
    OnClick = ComboBox2Click
  end
  object Currencyedit1: TMegaEditNumerico
    Left = 722
    Top = 140
    Width = 57
    Height = 21
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    CorEntra = clBackground
  end
  object Currencyedit2: TMegaEditNumerico
    Left = 698
    Top = 188
    Width = 81
    Height = 21
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    CorEntra = clBackground
  end
  object Edit3: TEdit
    Left = 722
    Top = 236
    Width = 57
    Height = 21
    CharCase = ecUpperCase
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object Edit4: TEdit
    Left = 722
    Top = 284
    Width = 57
    Height = 21
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object Edit6: TEdit
    Left = 698
    Top = 332
    Width = 81
    Height = 21
    CharCase = ecUpperCase
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    Text = '17'
  end
  object Edit5: TEdit
    Left = 698
    Top = 380
    Width = 81
    Height = 21
    CharCase = ecUpperCase
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
  end
  object Edit7: TEdit
    Left = 706
    Top = 428
    Width = 73
    Height = 21
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    Visible = False
  end
  object BitBtn5: TBitBtn
    Left = 760
    Top = 488
    Width = 25
    Height = 25
    Caption = 'Ok'
    TabOrder = 18
  end
  object BitBtn2: TBitBtn
    Left = 616
    Top = 484
    Width = 75
    Height = 25
    Caption = 'Ok'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
    OnClick = BitBtn2Click
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
  object BitBtn3: TBitBtn
    Left = 520
    Top = 484
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 16
    OnClick = BitBtn3Click
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
  object DBNavigator1: TDBNavigator
    Left = 1
    Top = 472
    Width = 352
    Height = 33
    DataSource = IBDM.DTSProdutos
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    TabOrder = 15
  end
  object DBGrid1: TDBGrid
    Left = 3
    Top = 84
    Width = 691
    Height = 381
    TabStop = False
    Color = clBackground
    DataSource = IBDM.DTSProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
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
        Width = 313
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STRIBU'
        Title.Caption = 'STribu'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE'
        Title.Caption = 'Estoque'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECOVENDA'
        Title.Caption = 'PrecoVenda R$'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRUPO'
        Title.Caption = 'Grupo'
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUBGRUPO'
        Title.Caption = 'SubGrupo'
        Width = 52
        Visible = True
      end>
  end
end
