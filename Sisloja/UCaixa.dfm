object FrmEdCaixa: TFrmEdCaixa
  Left = 348
  Top = 217
  BorderStyle = bsNone
  Caption = 'Caixa'
  ClientHeight = 313
  ClientWidth = 521
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
  object Label9: TLabel
    Left = 47
    Top = 48
    Width = 54
    Height = 13
    Alignment = taRightJustify
    Caption = 'Transa'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 63
    Top = 88
    Width = 42
    Height = 13
    Alignment = taRightJustify
    Caption = 'Controle:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 77
    Top = 112
    Width = 26
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 46
    Top = 136
    Width = 58
    Height = 13
    Alignment = taRightJustify
    Caption = 'Documento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 60
    Top = 160
    Width = 44
    Height = 13
    Alignment = taRightJustify
    Caption = 'Hist'#243'rico:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 80
    Top = 184
    Width = 27
    Height = 13
    Caption = 'Valor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 54
    Top = 208
    Width = 50
    Height = 13
    Alignment = taRightJustify
    Caption = 'Opera'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 50
    Top = 232
    Width = 54
    Height = 13
    Alignment = taRightJustify
    Caption = 'Transa'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 56
    Top = 256
    Width = 47
    Height = 13
    Alignment = taRightJustify
    Caption = 'Operador:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 160
    Top = 256
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
  object ComboBox1: TComboBox
    Left = 112
    Top = 40
    Width = 144
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 0
    OnClick = ComboBox1Click
  end
  object EdControle: TEdit
    Left = 112
    Top = 80
    Width = 80
    Height = 21
    CharCase = ecUpperCase
    Enabled = False
    TabOrder = 1
  end
  object eddata: TDateEdit
    Left = 112
    Top = 104
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
    Text = '__/__/____'
  end
  object EdDocumento: TEdit
    Left = 112
    Top = 128
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object EdHistorico: TEdit
    Left = 112
    Top = 152
    Width = 381
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
  end
  object EdValor: TMegaEditNumerico
    Left = 112
    Top = 176
    Width = 81
    Height = 21
    Color = clWhite
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    CorEntra = clWindow
  end
  object EdOperacao: TEdit
    Left = 112
    Top = 200
    Width = 41
    Height = 21
    Enabled = False
    TabOrder = 6
  end
  object EdTransacao: TEdit
    Left = 112
    Top = 224
    Width = 41
    Height = 21
    CharCase = ecUpperCase
    Enabled = False
    TabOrder = 7
  end
  object EdOperador: TEdit
    Left = 112
    Top = 248
    Width = 41
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 8
    OnExit = EdOperadorExit
  end
  object BtnGravar: TBitBtn
    Left = 344
    Top = 224
    Width = 75
    Height = 25
    Caption = '&Gravar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
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
  object BtnFechar: TBitBtn
    Left = 344
    Top = 248
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 10
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
end
