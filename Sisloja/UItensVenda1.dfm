object FrmItensVenda1: TFrmItensVenda1
  Left = 439
  Top = 144
  BorderStyle = bsSingle
  Caption = 'Itens da Venda'
  ClientHeight = 563
  ClientWidth = 786
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 52
    Width = 63
    Height = 13
    Caption = 'Documento:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 151
    Top = 53
    Width = 44
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cliente:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbnome: TLabel
    Left = 204
    Top = 51
    Width = 52
    Height = 16
    Caption = 'lbnome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 722
    Top = 38
    Width = 54
    Height = 13
    Alignment = taRightJustify
    Caption = 'Vendedor:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbvend: TLabel
    Left = 770
    Top = 52
    Width = 5
    Height = 16
    Alignment = taRightJustify
    Caption = '.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label18: TLabel
    Left = 105
    Top = 78
    Width = 93
    Height = 13
    Caption = 'Nome Adicional:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 15
    Top = 106
    Width = 45
    Height = 13
    Alignment = taRightJustify
    Caption = 'Produto:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 89
    Top = 107
    Width = 25
    Height = 13
    Alignment = taRightJustify
    Caption = 'Ref.:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 84
    Top = 107
    Width = 6
    Height = 13
    Alignment = taRightJustify
    Caption = 'T'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label16: TLabel
    Left = 144
    Top = 107
    Width = 54
    Height = 13
    Alignment = taRightJustify
    Caption = 'Descri'#231#227'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 397
    Top = 107
    Width = 30
    Height = 13
    Alignment = taRightJustify
    Caption = 'Qtde:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 446
    Top = 106
    Width = 43
    Height = 13
    Alignment = taRightJustify
    Caption = 'P. Unit.:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 498
    Top = 106
    Width = 39
    Height = 13
    Alignment = taRightJustify
    Caption = '% desc:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 544
    Top = 107
    Width = 62
    Height = 13
    Alignment = taRightJustify
    Caption = 'Pre'#231'o Total:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 15
    Top = 153
    Width = 113
    Height = 13
    Caption = 'Itens j'#225' registrados:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 346
    Top = 493
    Width = 89
    Height = 13
    Alignment = taRightJustify
    Caption = 'Total de '#237'tens: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 346
    Top = 509
    Width = 112
    Height = 13
    Alignment = taRightJustify
    Caption = 'Total da Venda: R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 476
    Top = 491
    Width = 9
    Height = 16
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 476
    Top = 507
    Width = 9
    Height = 16
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 422
    Top = 150
    Width = 103
    Height = 13
    Caption = 'Limite Dispon'#237'vel:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object vlim: TLabel
    Left = 584
    Top = 149
    Width = 23
    Height = 13
    Alignment = taRightJustify
    Caption = 'vlim'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape1: TShape
    Left = 0
    Top = 96
    Width = 785
    Height = 2
  end
  object Label19: TLabel
    Left = 402
    Top = 22
    Width = 54
    Height = 13
    Alignment = taRightJustify
    Caption = 'Vendedor:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label20: TLabel
    Left = 148
    Top = 21
    Width = 54
    Height = 13
    Alignment = taRightJustify
    Caption = 'Operador:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label21: TLabel
    Left = 616
    Top = 16
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Label22: TLabel
    Left = 355
    Top = 21
    Width = 6
    Height = 13
    Caption = '0'
    Visible = False
  end
  object Ednota: TEdit
    Left = 78
    Top = 46
    Width = 57
    Height = 21
    TabStop = False
    Enabled = False
    TabOrder = 0
  end
  object ednadic: TEdit
    Left = 206
    Top = 72
    Width = 401
    Height = 21
    TabStop = False
    TabOrder = 1
    OnExit = ednadicExit
  end
  object edt: TEdit
    Left = 65
    Top = 99
    Width = 15
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    Enabled = False
    TabOrder = 2
    Visible = False
    OnExit = edtExit
  end
  object BtnGravar: TBitBtn
    Left = 638
    Top = 109
    Width = 81
    Height = 37
    Caption = '&Gravar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BtnGravarClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777777777777777777777777077777777777777000777777777777000077777
      7777770000007777777770007700077777777007777000777777777777770077
      7777777777777007777777777777770077777777777777700777777777777777
      0077777777777777770777777777777777777777777777777777}
  end
  object EdPrTotal: TMegaEditNumerico
    Left = 543
    Top = 123
    Width = 65
    Height = 21
    Color = clWhite
    ParentShowHint = False
    ShowHint = True
    TabOrder = 12
    OnExit = EdPrTotalExit
    CorEntra = clWindow
  end
  object eddesconto: TCurrencyEdit
    Left = 494
    Top = 122
    Width = 43
    Height = 21
    AutoSize = False
    DisplayFormat = ' ,0.00;- ,0.00'
    TabOrder = 11
    OnExit = eddescontoExit
  end
  object edprunitario: TMegaEditNumerico
    Left = 431
    Top = 122
    Width = 57
    Height = 21
    Color = clWhite
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    CorEntra = clWindow
  end
  object EdQuantidade: TEdit
    Left = 404
    Top = 122
    Width = 19
    Height = 21
    TabOrder = 9
    Text = '1'
    OnExit = EdQuantidadeExit
  end
  object eddescricao: TEdit
    Left = 141
    Top = 122
    Width = 252
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 8
  end
  object Button2: TButton
    Left = 122
    Top = 121
    Width = 17
    Height = 25
    Caption = 'P'
    TabOrder = 5
    TabStop = False
    OnClick = Button2Click
  end
  object edref: TCurrencyEdit
    Left = 88
    Top = 122
    Width = 30
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = ',0.;-,0.'
    TabOrder = 7
    OnEnter = edrefEnter
    OnExit = edrefExit
  end
  object Button1: TButton
    Left = 69
    Top = 121
    Width = 16
    Height = 25
    Caption = 'P'
    TabOrder = 4
    TabStop = False
    OnClick = Button1Click
  end
  object Edcodigo: TEdit
    Left = 11
    Top = 122
    Width = 53
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
    OnExit = EdcodigoExit
  end
  object DBGrid2: TDBGrid
    Left = 7
    Top = 172
    Width = 761
    Height = 293
    TabStop = False
    DataSource = IBDM.DataSource1
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BitBtn7: TBitBtn
    Left = 21
    Top = 468
    Width = 52
    Height = 38
    Caption = 'Excluir item anterior'
    TabOrder = 14
    TabStop = False
    Visible = False
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
  object EdControle: TEdit
    Left = 7
    Top = 473
    Width = 54
    Height = 21
    TabStop = False
    TabOrder = 16
    Visible = False
  end
  object BitBtn5: TBitBtn
    Left = 24
    Top = 468
    Width = 57
    Height = 25
    Caption = 'Cancela Item &Anterior'
    Enabled = False
    TabOrder = 15
    TabStop = False
    Visible = False
    OnClick = BitBtn5Click
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777777177777777779777191777777777777799917777777977777991777777
      1777777799177771977777777991771977777777779911977777777777719977
      7777777777199917777777777199779177777771199777791777771999777777
      9177779997777777779777777777777777777777777777777777}
  end
  object BitBtn6: TBitBtn
    Left = 8
    Top = 500
    Width = 65
    Height = 25
    Caption = 'Cancela Item &Gen'#233'rico'
    Enabled = False
    TabOrder = 20
    TabStop = False
    Visible = False
    OnClick = BitBtn6Click
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000C0C0C0C0C0C0
      C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
      C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
      C000C0C0C00000008000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
      C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0000000FFC0C0C0C000C0C0C0C0C0C0
      C000000080000000FF00000080C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
      C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
      C0000000FF000000FF000000FF0000008000C0C0C0C0C0C0C000C0C0C0C0C0C0
      C000C0C0C0C0C0C0C000C0C0C0000000FF00C0C0C0C0C0C0C000C0C0C0C0C0C0
      C000C0C0C0000000FF000000FF0000008000C0C0C0C0C0C0C000C0C0C0C0C0C0
      C000C0C0C0C0C0C0C000000080C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
      C000C0C0C0C0C0C0C0000000FF000000FF00000080C0C0C0C000C0C0C0C0C0C0
      C000C0C0C000000080000000FFC0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
      C000C0C0C0C0C0C0C000C0C0C0000000FF000000FF0000008000C0C0C0C0C0C0
      C000000080000000FF00C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
      C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0000000FF000000FF00000080000000
      80000000FFC0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
      C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C000000080000000FF000000
      FF00C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
      C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000000080000000FF000000FF000000
      FF00000080C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
      C000C0C0C0C0C0C0C000C0C0C000000080000000FF000000FF00C0C0C0C0C0C0
      C0000000FF0000008000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
      C000C0C0C00000008000000080000000FF000000FFC0C0C0C000C0C0C0C0C0C0
      C000C0C0C0000000FF00000080C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
      C000000080000000FF000000FF000000FF00C0C0C0C0C0C0C000C0C0C0C0C0C0
      C000C0C0C0C0C0C0C0000000FF0000008000C0C0C0C0C0C0C000C0C0C0C0C0C0
      C0000000FF000000FF000000FFC0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
      C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0000000FFC0C0C0C000C0C0C0C0C0C0
      C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
      C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
      C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
      C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000}
  end
  object Button3: TButton
    Left = 84
    Top = 486
    Width = 61
    Height = 25
    Caption = 'Fechar'
    TabOrder = 19
    TabStop = False
    OnClick = Button3Click
  end
  object BitBtn2: TBitBtn
    Left = 213
    Top = 485
    Width = 123
    Height = 40
    Caption = 'Cancela Venda'
    TabOrder = 18
    TabStop = False
    OnClick = BitBtn2Click
    Glyph.Data = {
      1E070000424D1E070000000000003600000028000000160000001A0000000100
      180000000000E8060000C30E0000C30E00000000000000000000BFBFBFBFBFBF
      BFBFBFBFBFBF7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
      BFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBF7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      0000BFBFBFBFBFBF0000000000007F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBF00000000FF00007F00007F0000000000007F7F7F7F7F7F7F7F7FBFBF
      BFBFBFBFBFBFBFBFBFBF0000FF0000007F7F7F7F7F7F7F7F7F7F7F7FBFBFBFBF
      BFBFBFBFBFBFBFBF00000000FF00007F00007F00007F0000007F7F7F7F7F7F7F
      7F7F7F7F7FBFBFBFBFBFBF0000FF00007F0000000000007F7F7F7F7F7F7F7F7F
      7F7F7FBFBFBFBFBFBFBFBFBF00000000FF00007F00007F00007F000000000000
      7F7F7F7F7F7F7F7F7F7F7F7FBFBFBF0000FF00007F00007F0000000000007F7F
      7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBF00000000FF00007F00007F00007F0000
      7F0000000000007F7F7F7F7F7F7F7F7F0000FF00007F00007F00007F00007F00
      00000000007F7F7F7F7F7FBFBFBFBFBFBFBFBFBF00000000FF0000FF00007F00
      007F00007F00007F0000000000007F7F7F0000FF00007F00007F00007F00007F
      00007F00007F000000000000BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBF0000FF
      00007F00007F00007F00007F00007F00000000000000007F00007F00007F0000
      7F00007F00007F00007F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
      BF0000FF0000FF00007F00007F00007F00007F00007F00007F00007F00007F00
      007F00007F00007F00007F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      0000BFBFBFBFBFBF0000FF0000FF00007F00007F00007F00007F00007F00007F
      00007F00007F00007F00007F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBF0000BFBFBFBFBFBFBFBFBF0000FF0000FF00007F00007F00007F0000
      7F00007F00007F00007F00007F0000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBF0000FF0000FF00007F00
      007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7FBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF
      00007F00007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7F7F7F
      7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BF0000FF00007F00007F00007F00007F00007F00007F0000000000007F7F7F7F
      7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF0000FF00007F00007F00007F00007F00007F00007F00007F000000
      0000007F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
      BFBFBFBFBFBF0000FF00007F00007F00007F00007F00007F00007F00007F0000
      7F00007F0000007F7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBF0000BFBF
      BFBFBFBFBFBFBFBFBFBF0000FF00007F00007F00007F00007F0000FF0000FF00
      007F00007F00007F0000000000007F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBF
      0000BFBFBFBFBFBFBFBFBF0000FF00007F00007F00007F00007F0000007F7F7F
      0000FF0000FF00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7F7F7F
      7FBFBFBF0000BFBFBFBFBFBFBFBFBF0000FF00007F00007F00007F0000007F7F
      7FBFBFBFBFBFBF0000FF0000FF00007F00007F00007F0000000000007F7F7F7F
      7F7F7F7F7F7F7F7F0000BFBFBFBFBFBF0000FF00007F00007F00007F00007F00
      00007F7F7FBFBFBFBFBFBFBFBFBF0000FF0000FF00007F00007F00007F000000
      0000007F7F7F7F7F7F7F7F7F0000BFBFBFBFBFBF0000FF00007F00007F00007F
      0000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF0000FF00007F0000
      7F00007F0000000000007F7F7FBFBFBF0000BFBFBF0000FF0000FF0000FF0000
      7F00007F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF00
      00FF00007F00007F00007F000000BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF00
      00FF0000FF0000FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBF0000FF0000FF00007F00007FBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBF0000FF0000FFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      0000}
  end
  object BitBtn1: TBitBtn
    Left = 561
    Top = 472
    Width = 207
    Height = 49
    Caption = 'Simular/Fechamento da Venda'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
    TabStop = False
    OnClick = BitBtn1Click
    Glyph.Data = {
      EE000000424DEE0000000000000076000000280000000F0000000F0000000100
      0400000000007800000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
      DDD0DDD000000000DDD0DD08888888880DD0DD0FF8F8F8F80DD0DD0F00000008
      0DD0DD0FF8F8F8F80DD0DD0F000000080DD0DD0FF8F8F8F80DD0DD0F00000008
      0DD0DD0FF8F8F8F80DD0DD0F000000080DD0DD0F000000080DD0DD0FFFFFFFF8
      0DD0DDD000000000DDD0DDDDDDDDDDDDDDD0}
  end
  object ComboBox2: TComboBox
    Left = 207
    Top = 13
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 21
    OnClick = ComboBox2Click
    OnExit = ComboBox2Exit
  end
  object ComboBox3: TComboBox
    Left = 464
    Top = 14
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 22
    OnClick = ComboBox3Click
    OnExit = ComboBox3Exit
  end
  object DateEdit1: TDateEdit
    Left = 13
    Top = 13
    Width = 120
    Height = 21
    DefaultToday = True
    NumGlyphs = 2
    YearDigits = dyFour
    TabOrder = 23
    Text = '14/09/2012'
  end
end
