object FrmFechaVenda1: TFrmFechaVenda1
  Left = 421
  Top = 214
  BorderStyle = bsSingle
  Caption = 'Fechamento da Venda'
  ClientHeight = 348
  ClientWidth = 379
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
    Left = 136
    Top = 226
    Width = 92
    Height = 13
    Caption = 'Total da Venda:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 136
    Top = 272
    Width = 88
    Height = 13
    Caption = 'Total a Pagar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 40
    Width = 161
    Height = 177
    Caption = 'Acrescimo/Desconto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 16
      Top = 16
      Width = 129
      Height = 57
      TabOrder = 0
      object RadioButton1: TRadioButton
        Left = 24
        Top = 16
        Width = 89
        Height = 17
        Caption = 'Acrescimo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object RadioButton2: TRadioButton
        Left = 24
        Top = 32
        Width = 81
        Height = 17
        Caption = 'Desconto'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        TabStop = True
      end
    end
    object GroupBox3: TGroupBox
      Left = 16
      Top = 74
      Width = 129
      Height = 89
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 64
        Width = 34
        Height = 13
        Caption = 'Valor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RadioButton3: TRadioButton
        Left = 24
        Top = 16
        Width = 89
        Height = 17
        Caption = 'Percentual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object RadioButton4: TRadioButton
        Left = 24
        Top = 32
        Width = 81
        Height = 17
        Caption = 'Valor'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        TabStop = True
      end
      object edit1: TCurrencyEdit
        Left = 48
        Top = 56
        Width = 73
        Height = 21
        AutoSize = False
        TabOrder = 2
        OnExit = edit1Exit
      end
    end
  end
  object GroupBox4: TGroupBox
    Left = 182
    Top = 65
    Width = 177
    Height = 128
    Caption = 'Pagamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 17
      Top = 69
      Width = 115
      Height = 13
      Caption = 'Tipo de Pagamneto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 17
      Top = 26
      Width = 124
      Height = 13
      Caption = 'Forma de Pagamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 84
      Width = 145
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 1
      Items.Strings = (
        'Dinheiro'
        'Cartao'
        'Ch predatado')
    end
    object ComboBox2: TComboBox
      Left = 17
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
      Text = 'A VISTA'
      OnExit = ComboBox2Exit
      Items.Strings = (
        'A VISTA'
        'A PRAZO')
    end
  end
  object Edit3: TMegaEditNumerico
    Left = 136
    Top = 240
    Width = 89
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
    TabOrder = 2
    CorEntra = clWindow
  end
  object Edit2: TMegaEditNumerico
    Left = 136
    Top = 288
    Width = 89
    Height = 24
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    CorEntra = clBackground
  end
  object BitBtn1: TBitBtn
    Left = 280
    Top = 278
    Width = 89
    Height = 33
    Caption = '&Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
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
