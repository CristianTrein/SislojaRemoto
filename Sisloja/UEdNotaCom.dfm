object FrmEdNotaCom: TFrmEdNotaCom
  Left = 247
  Top = 103
  BorderStyle = bsNone
  Caption = 'Edi'#231#227'o da Nota de Compra'
  ClientHeight = 279
  ClientWidth = 452
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 56
    Top = 56
    Width = 42
    Height = 13
    Alignment = taRightJustify
    Caption = 'Controle:'
  end
  object Label3: TLabel
    Left = 39
    Top = 80
    Width = 57
    Height = 13
    Alignment = taRightJustify
    Caption = 'Fornecedor:'
  end
  object Label8: TLabel
    Left = 168
    Top = 79
    Width = 119
    Height = 13
    Caption = 'Nome do Fornecedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 70
    Top = 104
    Width = 26
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nota:'
  end
  object Label5: TLabel
    Left = 70
    Top = 128
    Width = 26
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data:'
  end
  object Label7: TLabel
    Left = 69
    Top = 152
    Width = 27
    Height = 13
    Alignment = taRightJustify
    Caption = 'Frete:'
  end
  object Label6: TLabel
    Left = 49
    Top = 176
    Width = 47
    Height = 13
    Alignment = taRightJustify
    Caption = 'Operador:'
  end
  object Label9: TLabel
    Left = 152
    Top = 176
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
    Left = 104
    Top = 48
    Width = 57
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 104
    Top = 72
    Width = 57
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 104
    Top = 96
    Width = 57
    Height = 21
    TabOrder = 2
  end
  object DateEdit1: TDateEdit
    Left = 104
    Top = 120
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
  object CurrencyEdit1: TMegaEditNumerico
    Left = 104
    Top = 144
    Width = 81
    Height = 21
    Color = clWhite
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    CorEntra = clWindow
  end
  object Edit4: TEdit
    Left = 104
    Top = 168
    Width = 41
    Height = 21
    Enabled = False
    TabOrder = 5
  end
  object BitBtn2: TBitBtn
    Left = 80
    Top = 208
    Width = 97
    Height = 25
    Caption = '&Fechar'
    TabOrder = 6
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
  object BitBtn1: TBitBtn
    Left = 224
    Top = 208
    Width = 97
    Height = 25
    Caption = '&Gravar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
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
end
