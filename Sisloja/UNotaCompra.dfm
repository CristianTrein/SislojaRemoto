object FrmNotaCompra: TFrmNotaCompra
  Left = 249
  Top = 126
  BorderStyle = bsNone
  Caption = 'Inclus'#227'o da Nota de Compra'
  ClientHeight = 302
  ClientWidth = 527
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
    Left = 184
    Top = 40
    Width = 164
    Height = 24
    Caption = 'Nota de Compra'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 64
    Top = 96
    Width = 42
    Height = 13
    Alignment = taRightJustify
    Caption = 'Controle:'
  end
  object Label3: TLabel
    Left = 47
    Top = 120
    Width = 57
    Height = 13
    Alignment = taRightJustify
    Caption = 'Fornecedor:'
  end
  object Label8: TLabel
    Left = 176
    Top = 119
    Width = 148
    Height = 16
    Caption = 'Nome do Fornecedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 78
    Top = 144
    Width = 26
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nota:'
  end
  object Label5: TLabel
    Left = 78
    Top = 168
    Width = 26
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data:'
  end
  object Label7: TLabel
    Left = 77
    Top = 192
    Width = 27
    Height = 13
    Alignment = taRightJustify
    Caption = 'Frete:'
  end
  object Label6: TLabel
    Left = 57
    Top = 216
    Width = 47
    Height = 13
    Alignment = taRightJustify
    Caption = 'Operador:'
  end
  object Label9: TLabel
    Left = 160
    Top = 216
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
  object Edit1: TEdit
    Left = 112
    Top = 88
    Width = 57
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 112
    Top = 112
    Width = 57
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 112
    Top = 136
    Width = 57
    Height = 21
    TabOrder = 2
  end
  object CurrencyEdit1: TMegaEditNumerico
    Left = 112
    Top = 184
    Width = 89
    Height = 21
    Color = clWhite
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    CorEntra = clWindow
  end
  object DateEdit1: TDateEdit
    Left = 112
    Top = 160
    Width = 105
    Height = 21
    GlyphKind = gkCustom
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
      B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
      1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
      BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
      BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
    NumGlyphs = 1
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 112
    Top = 208
    Width = 41
    Height = 21
    Enabled = False
    TabOrder = 6
  end
  object BitBtn1: TBitBtn
    Left = 360
    Top = 192
    Width = 137
    Height = 25
    Caption = '&Itens da Nota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn1Click
    Glyph.Data = {
      EE000000424DEE000000000000007600000028000000100000000F0000000100
      04000000000078000000CE0E0000C40E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888844488888888888884448800000000088444888888888888888888888888
      8888888888888888888884448888888888888444880000000008844488888888
      8888888888888888888888888888888888888444888888888888844488000000
      000884448888888888888888888888888888}
  end
  object BitBtn2: TBitBtn
    Left = 360
    Top = 224
    Width = 137
    Height = 25
    Caption = '&Fechar'
    TabOrder = 7
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
