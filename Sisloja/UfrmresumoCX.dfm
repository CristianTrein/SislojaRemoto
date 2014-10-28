object FrmresumoCX: TFrmresumoCX
  Left = 313
  Top = 262
  BorderStyle = bsNone
  Caption = 'FrmresumoCX'
  ClientHeight = 292
  ClientWidth = 462
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
  object ttfXP_Panel1: ttfXP_Panel
    Left = 18
    Top = 51
    Width = 425
    Height = 161
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 9
      Top = 16
      Width = 65
      Height = 19
      Caption = 'Periodo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clYellow
      ShadowSize = 2
    end
    object RxLabel2: TRxLabel
      Left = 100
      Top = 73
      Width = 65
      Height = 16
      Caption = 'Entradas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clSilver
    end
    object RxLabel3: TRxLabel
      Left = 100
      Top = 97
      Width = 52
      Height = 16
      Caption = 'Saidas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWhite
      ShadowSize = 2
    end
    object RxLabel4: TRxLabel
      Left = 101
      Top = 128
      Width = 44
      Height = 16
      Caption = 'Saldo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape1: TShape
      Left = 100
      Top = 118
      Width = 194
      Height = 2
    end
  end
  object BtnFechar: TBitBtn
    Left = 368
    Top = 224
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 1
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
