object FrmTermoAberEnc: TFrmTermoAberEnc
  Left = 283
  Top = 109
  BorderStyle = bsNone
  Caption = 'Termo de Abertura e Encerramento'
  ClientHeight = 352
  ClientWidth = 431
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label9: TLabel
    Left = 64
    Top = 48
    Width = 62
    Height = 13
    Caption = 'N'#186' de ordem:'
  end
  object Label11: TLabel
    Left = 256
    Top = 48
    Width = 59
    Height = 13
    Caption = 'Folha Inicial:'
  end
  object Label12: TLabel
    Left = 260
    Top = 72
    Width = 54
    Height = 13
    Caption = 'Folha Final:'
  end
  object Label10: TLabel
    Left = 64
    Top = 72
    Width = 61
    Height = 13
    Caption = 'N'#186' de folhas:'
  end
  object Label1: TLabel
    Left = 32
    Top = 104
    Width = 90
    Height = 13
    Caption = 'Nome da Empresa:'
  end
  object Label2: TLabel
    Left = 72
    Top = 128
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object Label3: TLabel
    Left = 86
    Top = 153
    Width = 36
    Height = 13
    Caption = 'Cidade:'
  end
  object Label4: TLabel
    Left = 280
    Top = 152
    Width = 36
    Height = 13
    Caption = 'Estado:'
  end
  object Label5: TLabel
    Left = 36
    Top = 176
    Width = 86
    Height = 13
    Caption = 'Registro na Junta:'
  end
  object Label6: TLabel
    Left = 32
    Top = 200
    Width = 90
    Height = 13
    Caption = 'Inscri'#231#227'o Estadual:'
  end
  object Label7: TLabel
    Left = 92
    Top = 224
    Width = 30
    Height = 13
    Caption = 'CNPJ:'
  end
  object Label8: TLabel
    Left = 26
    Top = 248
    Width = 94
    Height = 13
    Caption = 'Inscri'#231#227'o Municipal:'
  end
  object Edit4: TEdit
    Left = 128
    Top = 40
    Width = 57
    Height = 21
    TabOrder = 0
  end
  object Edit11: TEdit
    Left = 320
    Top = 40
    Width = 57
    Height = 21
    TabOrder = 1
  end
  object Edit12: TEdit
    Left = 320
    Top = 64
    Width = 57
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 128
    Top = 64
    Width = 57
    Height = 21
    TabOrder = 2
  end
  object Edit6: TEdit
    Left = 128
    Top = 96
    Width = 217
    Height = 21
    TabOrder = 4
  end
  object Edit7: TEdit
    Left = 128
    Top = 120
    Width = 193
    Height = 21
    TabOrder = 5
  end
  object Edit8: TEdit
    Left = 128
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit9: TEdit
    Left = 320
    Top = 144
    Width = 41
    Height = 21
    TabOrder = 7
  end
  object Edit1: TEdit
    Left = 128
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Edit2: TEdit
    Left = 128
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object Edit10: TEdit
    Left = 128
    Top = 216
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object Edit3: TEdit
    Left = 128
    Top = 240
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object BitBtn2: TBitBtn
    Left = 16
    Top = 288
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 12
    OnClick = BitBtn2Click
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
  object BitBtn1: TBitBtn
    Left = 96
    Top = 288
    Width = 153
    Height = 25
    Caption = 'Termo de &Abertura'
    TabOrder = 13
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
  object BitBtn3: TBitBtn
    Left = 256
    Top = 288
    Width = 153
    Height = 25
    Caption = 'Termo de &Encerramento'
    TabOrder = 14
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0777777777777770888888888888888F077777777777
      7770888888888888888F0000000000000000FFFFFFFFFFFFFFFF0F7F7F7F7F7F
      7F70888888888888888F07F7F7F7F7F7F9F0888888888888888F0F7F7F7F7F7F
      7F708888888888888F8F0000000000000000888888888888888F3330FFFFFFFF
      03333338F3FFFF3F8F333330F0000F0F03333338F88883838F333330FFFFFFFF
      03333338F3FF3FFF8F333330F00F000003333338F883888883333330FFFF0FF0
      33333338F3FF8F3833333330F07F0F0333333338F8838F8333333330FFFF0033
      33333338FFFF8833333333300000033333333338888883333333}
    NumGlyphs = 2
  end
end
