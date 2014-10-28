object FrmRelFiltraCai: TFrmRelFiltraCai
  Left = 414
  Top = 286
  BorderStyle = bsNone
  Caption = 'Relat'#243'tio do Caixa por data...'
  ClientHeight = 260
  ClientWidth = 408
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
  object lbcli: TLabel
    Left = 17
    Top = 16
    Width = 9
    Height = 20
    Caption = '_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 40
    Width = 393
    Height = 149
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 137
      Height = 32
      Caption = 'Relat'#243'rio do Caixa'#13#10'entre as Datas...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 55
      Top = 128
      Width = 82
      Height = 13
      Caption = 'Filtrar Transa'#231#227'o:'
      Visible = False
    end
    object Label3: TLabel
      Left = 4
      Top = 130
      Width = 20
      Height = 13
      Caption = 'xxxx'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = Label3Click
    end
    object Label4: TLabel
      Left = 156
      Top = 101
      Width = 52
      Height = 13
      Caption = 'Modo Pgto'
      Visible = False
    end
    object ComboBox1: TComboBox
      Left = 145
      Top = 123
      Width = 158
      Height = 21
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 9
      Visible = False
      OnClick = ComboBox1Click
    end
    object CheckBox1: TCheckBox
      Left = 48
      Top = 80
      Width = 98
      Height = 17
      Caption = 'Lan'#231'amentos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object CheckBox2: TCheckBox
      Left = 155
      Top = 80
      Width = 110
      Height = 17
      Caption = 'Fluxo de Caixa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Visible = False
    end
    object MaskEdit1: TMaskEdit
      Left = 309
      Top = 16
      Width = 39
      Height = 21
      EditMask = '!90:00;1;_'
      MaxLength = 5
      TabOrder = 0
      Text = '07:00'
    end
    object MaskEdit2: TMaskEdit
      Left = 309
      Top = 47
      Width = 39
      Height = 21
      EditMask = '!90:00;1;_'
      MaxLength = 5
      TabOrder = 3
      Text = '20:00'
    end
    object CheckBox3: TCheckBox
      Left = 273
      Top = 80
      Width = 79
      Height = 17
      Caption = 'Resumo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object Date1: TDateTimePicker
      Left = 207
      Top = 17
      Width = 90
      Height = 21
      Date = 39568.783873877300000000
      Time = 39568.783873877300000000
      TabOrder = 1
    end
    object Date2: TDateTimePicker
      Left = 207
      Top = 47
      Width = 90
      Height = 21
      Date = 39568.783873877300000000
      Time = 39568.783873877300000000
      TabOrder = 2
    end
    object edmodopgto: TEdit
      Left = 29
      Top = 106
      Width = 47
      Height = 21
      Enabled = False
      TabOrder = 8
      Visible = False
    end
    object cbb1: TComboBox
      Left = 214
      Top = 99
      Width = 172
      Height = 21
      ItemHeight = 13
      TabOrder = 7
      Text = '0#Todos'
      Visible = False
    end
  end
  object BitBtn2: TBitBtn
    Left = 73
    Top = 195
    Width = 113
    Height = 25
    Caption = '&Fechar'
    TabOrder = 1
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
    Left = 209
    Top = 195
    Width = 113
    Height = 25
    Caption = '&Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
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
end
