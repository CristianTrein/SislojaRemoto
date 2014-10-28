object FrmEdProdutos: TFrmEdProdutos
  Left = 241
  Top = 142
  BorderStyle = bsNone
  Caption = 'Estoque de Produtos'
  ClientHeight = 389
  ClientWidth = 518
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
  object Label1: TLabel
    Left = 56
    Top = 48
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 35
    Top = 72
    Width = 51
    Height = 13
    Alignment = taRightJustify
    Caption = 'Descri'#231#227'o:'
  end
  object Label3: TLabel
    Left = 47
    Top = 96
    Width = 39
    Height = 13
    Alignment = taRightJustify
    Caption = 'Unimed:'
  end
  object Label17: TLabel
    Left = 296
    Top = 96
    Width = 45
    Height = 13
    Caption = 'Cadastro:'
  end
  object Label18: TLabel
    Left = 280
    Top = 120
    Width = 6
    Height = 13
    Caption = '0'
    Visible = False
  end
  object Label4: TLabel
    Left = 55
    Top = 120
    Width = 32
    Height = 13
    Alignment = taRightJustify
    Caption = 'Grupo:'
  end
  object Label5: TLabel
    Left = 33
    Top = 144
    Width = 54
    Height = 13
    Alignment = taRightJustify
    Caption = 'Sub-Grupo:'
  end
  object Label19: TLabel
    Left = 304
    Top = 144
    Width = 6
    Height = 13
    Caption = '0'
    Visible = False
  end
  object Label20: TLabel
    Left = 312
    Top = 168
    Width = 29
    Height = 13
    Alignment = taRightJustify
    Caption = 'Local:'
  end
  object Label6: TLabel
    Left = 62
    Top = 168
    Width = 25
    Height = 13
    Alignment = taRightJustify
    Caption = 'Obs.:'
  end
  object Label7: TLabel
    Left = 9
    Top = 192
    Width = 78
    Height = 13
    Alignment = taRightJustify
    Caption = 'Estoque Minimo:'
  end
  object Label8: TLabel
    Left = 47
    Top = 216
    Width = 42
    Height = 13
    Alignment = taRightJustify
    Caption = 'Estoque:'
  end
  object Label9: TLabel
    Left = 11
    Top = 240
    Width = 76
    Height = 13
    Alignment = taRightJustify
    Caption = 'Pre'#231'o de Custo:'
  end
  object Label10: TLabel
    Left = 5
    Top = 264
    Width = 80
    Height = 13
    Alignment = taRightJustify
    Caption = 'Pre'#231'o de Venda:'
  end
  object Label11: TLabel
    Left = 23
    Top = 288
    Width = 62
    Height = 13
    Alignment = taRightJustify
    Caption = 'Custo M'#233'dio:'
  end
  object Label12: TLabel
    Left = 8
    Top = 312
    Width = 77
    Height = 13
    Alignment = taRightJustify
    Caption = #218'ltimo Reajuste:'
  end
  object Label16: TLabel
    Left = 28
    Top = 336
    Width = 58
    Height = 13
    Alignment = taRightJustify
    Caption = 'Sit tribut'#225'ria:'
  end
  object Label13: TLabel
    Left = 326
    Top = 240
    Width = 16
    Height = 13
    Alignment = taRightJustify
    Caption = 'IPI:'
  end
  object Label21: TLabel
    Left = 427
    Top = 238
    Width = 8
    Height = 13
    Caption = '%'
  end
  object Label14: TLabel
    Left = 313
    Top = 264
    Width = 29
    Height = 13
    Alignment = taRightJustify
    Caption = 'ICMS:'
  end
  object Label22: TLabel
    Left = 427
    Top = 262
    Width = 8
    Height = 13
    Caption = '%'
  end
  object Label15: TLabel
    Left = 262
    Top = 288
    Width = 80
    Height = 13
    Alignment = taRightJustify
    Caption = 'Base de Calculo:'
  end
  object Label23: TLabel
    Left = 427
    Top = 286
    Width = 8
    Height = 13
    Caption = '%'
  end
  object EdCodigo: TEdit
    Left = 96
    Top = 40
    Width = 95
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object CheckBox1: TCheckBox
    Left = 240
    Top = 40
    Width = 167
    Height = 17
    Caption = 'C'#243'digo Autoincremento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = CheckBox1Click
  end
  object EdDescricao: TEdit
    Left = 96
    Top = 64
    Width = 343
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object EdUnimed: TEdit
    Left = 96
    Top = 88
    Width = 79
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object DateEdit1: TDateEdit
    Left = 344
    Top = 88
    Width = 96
    Height = 21
    TabStop = False
    Enabled = False
    NumGlyphs = 2
    TabOrder = 4
    Text = '__/__/____'
  end
  object ComboBox1: TComboBox
    Left = 96
    Top = 112
    Width = 176
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    OnClick = ComboBox1Click
  end
  object ComboBox2: TComboBox
    Left = 96
    Top = 136
    Width = 200
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    OnExit = ComboBox2Exit
  end
  object EdLocal: TEdit
    Left = 344
    Top = 160
    Width = 96
    Height = 21
    TabOrder = 8
  end
  object EdObs: TEdit
    Left = 96
    Top = 160
    Width = 208
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 7
  end
  object EdEstMinimo: TMegaEditNumerico
    Left = 96
    Top = 184
    Width = 80
    Height = 21
    Color = clWhite
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    CorEntra = clWindow
  end
  object EdEstoque: TMegaEditNumerico
    Left = 96
    Top = 208
    Width = 80
    Height = 21
    Color = clWhite
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    CorEntra = clWindow
  end
  object EdPrecoCusto: TMegaEditNumerico
    Left = 96
    Top = 232
    Width = 80
    Height = 21
    Color = clWhite
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    CorEntra = clWindow
  end
  object EdPrecoVenda: TMegaEditNumerico
    Left = 96
    Top = 256
    Width = 80
    Height = 21
    Color = clWhite
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
    CorEntra = clWindow
  end
  object EdCustoMedio: TMegaEditNumerico
    Left = 96
    Top = 280
    Width = 80
    Height = 21
    Color = clWhite
    ParentShowHint = False
    ShowHint = True
    TabOrder = 15
    CorEntra = clWindow
  end
  object EdUReajuste: TDateEdit
    Left = 96
    Top = 304
    Width = 97
    Height = 21
    NumGlyphs = 2
    TabOrder = 17
    Text = '__/__/____'
  end
  object EdStribu: TEdit
    Left = 96
    Top = 328
    Width = 41
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 19
  end
  object EdIpi: TMegaEditNumerico
    Left = 344
    Top = 232
    Width = 81
    Height = 21
    Color = clWhite
    ParentShowHint = False
    ShowHint = True
    TabOrder = 12
    CorEntra = clWindow
  end
  object EdIcms: TMegaEditNumerico
    Left = 344
    Top = 256
    Width = 81
    Height = 21
    Color = clWhite
    ParentShowHint = False
    ShowHint = True
    TabOrder = 14
    CorEntra = clWindow
  end
  object EdBaseCalculo: TCurrencyEdit
    Left = 344
    Top = 280
    Width = 81
    Height = 21
    AutoSize = False
    DisplayFormat = ' ,0.00;- ,0.00'
    TabOrder = 16
  end
  object BitBtn1: TBitBtn
    Left = 432
    Top = 304
    Width = 75
    Height = 25
    Caption = '&Gravar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
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
  object BitBtn2: TBitBtn
    Left = 432
    Top = 328
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 20
    OnClick = BitBtn2Click
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
end
