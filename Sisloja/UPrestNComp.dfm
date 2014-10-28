object FrmPrestNCompra: TFrmPrestNCompra
  Left = 610
  Top = 219
  BorderStyle = bsNone
  Caption = 'Presta'#231#245'es da Nota de Compra'
  ClientHeight = 383
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 40
    Width = 67
    Height = 13
    Caption = 'Valor Total:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 112
    Top = 40
    Width = 49
    Height = 13
    Caption = 'Entrada:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 200
    Top = 40
    Width = 104
    Height = 13
    Caption = 'N'#186' de Presta'#231#245'es:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 312
    Top = 40
    Width = 96
    Height = 13
    Caption = 'Data da Compra:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit3: TEdit
    Left = 312
    Top = 56
    Width = 81
    Height = 21
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 200
    Top = 56
    Width = 49
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    OnExit = ComboBox1Exit
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6')
  end
  object Edit2: TEdit
    Left = 112
    Top = 56
    Width = 73
    Height = 21
    TabOrder = 1
    Text = '0'
    OnExit = Edit2Exit
  end
  object Edit1: TEdit
    Left = 16
    Top = 56
    Width = 73
    Height = 21
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 37
    Top = 88
    Width = 337
    Height = 217
    Caption = 'Valor das Presta'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Label5: TLabel
      Left = 24
      Top = 32
      Width = 41
      Height = 13
      Caption = 'Valor1:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 24
      Top = 64
      Width = 41
      Height = 13
      Caption = 'Valor2:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 24
      Top = 96
      Width = 41
      Height = 13
      Caption = 'Valor3:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 24
      Top = 128
      Width = 41
      Height = 13
      Caption = 'Valor4:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 24
      Top = 160
      Width = 41
      Height = 13
      Caption = 'Valor5:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 160
      Top = 32
      Width = 71
      Height = 13
      Caption = 'Vencimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 160
      Top = 64
      Width = 71
      Height = 13
      Caption = 'Vencimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 160
      Top = 96
      Width = 71
      Height = 13
      Caption = 'Vencimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 160
      Top = 128
      Width = 71
      Height = 13
      Caption = 'Vencimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 160
      Top = 160
      Width = 71
      Height = 13
      Caption = 'Vencimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 160
      Top = 192
      Width = 71
      Height = 13
      Caption = 'Vencimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 24
      Top = 192
      Width = 41
      Height = 13
      Caption = 'Valor6:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit4: TEdit
      Left = 72
      Top = 24
      Width = 65
      Height = 21
      TabOrder = 0
    end
    object Edit6: TEdit
      Left = 72
      Top = 56
      Width = 65
      Height = 21
      TabOrder = 2
    end
    object Edit8: TEdit
      Left = 72
      Top = 88
      Width = 65
      Height = 21
      TabOrder = 4
    end
    object Edit10: TEdit
      Left = 72
      Top = 120
      Width = 65
      Height = 21
      TabOrder = 6
    end
    object Edit12: TEdit
      Left = 72
      Top = 152
      Width = 65
      Height = 21
      TabOrder = 8
    end
    object Edit5: TEdit
      Left = 232
      Top = 24
      Width = 81
      Height = 21
      TabOrder = 1
    end
    object Edit7: TEdit
      Left = 232
      Top = 56
      Width = 81
      Height = 21
      TabOrder = 3
    end
    object Edit9: TEdit
      Left = 232
      Top = 88
      Width = 81
      Height = 21
      TabOrder = 5
    end
    object Edit11: TEdit
      Left = 232
      Top = 120
      Width = 81
      Height = 21
      TabOrder = 7
    end
    object Edit13: TEdit
      Left = 232
      Top = 152
      Width = 81
      Height = 21
      TabOrder = 9
    end
    object Edit14: TEdit
      Left = 72
      Top = 184
      Width = 65
      Height = 21
      TabOrder = 10
    end
    object Edit15: TEdit
      Left = 232
      Top = 184
      Width = 81
      Height = 21
      TabOrder = 11
    end
  end
  object BitBtn1: TBitBtn
    Left = 296
    Top = 312
    Width = 113
    Height = 33
    Caption = '&Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
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
