object FrmZoom: TFrmZoom
  Left = 207
  Top = 169
  Width = 696
  Height = 480
  Caption = 'FrmZoom'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 24
    Top = 32
    Width = 641
    Height = 379
    Caption = 'Resumo do Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object lbnome: TLabel
      Left = 31
      Top = 32
      Width = 59
      Height = 16
      Caption = 'lbnome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object lbnrcmp: TLabel
      Left = 31
      Top = 57
      Width = 56
      Height = 16
      Caption = 'lbnrcmp'
    end
    object lbvlcmp: TLabel
      Left = 326
      Top = 57
      Width = 55
      Height = 16
      Caption = 'lbvlcmp'
    end
    object lb1ac: TLabel
      Left = 30
      Top = 81
      Width = 30
      Height = 16
      Caption = 'lb1c'
    end
    object lbuc: TLabel
      Left = 325
      Top = 81
      Width = 30
      Height = 16
      Caption = 'lbuc'
    end
    object lblimite: TLabel
      Left = 30
      Top = 105
      Width = 51
      Height = 16
      Caption = 'lblimite'
    end
    object lbbloq: TLabel
      Left = 325
      Top = 105
      Width = 45
      Height = 16
      Caption = 'lbbloq'
    end
    object lbprespg: TLabel
      Left = 30
      Top = 130
      Width = 63
      Height = 16
      Caption = 'lbprespg'
    end
    object lbprespga: TLabel
      Left = 325
      Top = 130
      Width = 72
      Height = 16
      Caption = 'lbprespga'
    end
    object lbpresap: TLabel
      Left = 30
      Top = 177
      Width = 63
      Height = 16
      Caption = 'lbpresap'
    end
    object lbpresapa: TLabel
      Left = 325
      Top = 177
      Width = 72
      Height = 16
      Caption = 'lbpresapa'
    end
    object lbvprespg: TLabel
      Left = 31
      Top = 154
      Width = 71
      Height = 16
      Caption = 'lbvprespg'
    end
    object lbvprespga: TLabel
      Left = 326
      Top = 154
      Width = 80
      Height = 16
      Caption = 'lbvprespga'
    end
    object lbvpresap: TLabel
      Left = 30
      Top = 199
      Width = 71
      Height = 16
      Caption = 'lbvpresap'
    end
    object lbvpresapa: TLabel
      Left = 325
      Top = 199
      Width = 80
      Height = 16
      Caption = 'lbvpresapa'
    end
    object lbmaiorat: TLabel
      Left = 29
      Top = 219
      Width = 66
      Height = 16
      Caption = 'lbmaiorat'
    end
    object Lbmedat: TLabel
      Left = 325
      Top = 217
      Width = 57
      Height = 16
      Caption = 'lbmedat'
    end
    object Label1: TLabel
      Left = 32
      Top = 248
      Width = 198
      Height = 16
      Caption = 'Avisos de contas recebidas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 32
      Top = 290
      Width = 195
      Height = 16
      Caption = 'Avisos de contas a receber:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbav1: TLabel
      Left = 32
      Top = 264
      Width = 39
      Height = 16
      Caption = 'lbav1'
    end
    object lbav2: TLabel
      Left = 32
      Top = 306
      Width = 39
      Height = 16
      Caption = 'lbav2'
    end
  end
  object BitBtn1: TBitBtn
    Left = 590
    Top = 13
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = BitBtn1Click
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
