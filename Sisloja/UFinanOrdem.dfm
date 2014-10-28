object FrmFinanOrdem: TFrmFinanOrdem
  Left = 416
  Top = 259
  BorderStyle = bsNone
  Caption = 'Financeiro ==>> Ordem de Servi'#231'o'
  ClientHeight = 312
  ClientWidth = 354
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
  object Label3: TLabel
    Left = 104
    Top = 183
    Width = 34
    Height = 13
    Caption = 'Total:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 104
    Top = 223
    Width = 82
    Height = 13
    Caption = 'Total a Pagar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 168
    Top = 48
    Width = 161
    Height = 113
    Shape = bsFrame
  end
  object lbl1: TLabel
    Left = 168
    Top = 32
    Width = 100
    Height = 13
    Caption = 'Forma de pagamento'
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 40
    Width = 121
    Height = 121
    TabOrder = 0
    object RadioButton1: TRadioButton
      Left = 8
      Top = 16
      Width = 81
      Height = 17
      Caption = 'Acrescimo'
      TabOrder = 0
    end
    object RadioButton2: TRadioButton
      Left = 8
      Top = 32
      Width = 89
      Height = 17
      Caption = 'Desconto'
      TabOrder = 1
    end
    object CheckBox1: TCheckBox
      Left = 16
      Top = 56
      Width = 97
      Height = 17
      Caption = 'Percentual'
      TabOrder = 2
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 16
      Top = 72
      Width = 73
      Height = 17
      Caption = 'Valor'
      TabOrder = 3
      OnClick = CheckBox2Click
    end
    object MegaEditNumerico1: TMegaEditNumerico
      Left = 24
      Top = 93
      Width = 73
      Height = 21
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnExit = MegaEditNumerico1Exit
      CorEntra = clWindow
    end
  end
  object MegaEditNumerico2: TMegaEditNumerico
    Left = 104
    Top = 196
    Width = 105
    Height = 21
    Color = clWhite
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    CorEntra = clWindow
  end
  object MegaEditNumerico3: TMegaEditNumerico
    Left = 104
    Top = 236
    Width = 105
    Height = 21
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    CorEntra = clBackground
  end
  object BitBtn1: TBitBtn
    Left = 240
    Top = 232
    Width = 105
    Height = 41
    Caption = 'Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
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
  object ComboBox1: TComboBox
    Left = 176
    Top = 72
    Width = 145
    Height = 21
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 1
    OnClick = ComboBox1Click
    Items.Strings = (
      'A VISTA'
      'A PRAZO')
  end
  object ComboBox2: TComboBox
    Left = 176
    Top = 128
    Width = 145
    Height = 21
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 2
  end
end
