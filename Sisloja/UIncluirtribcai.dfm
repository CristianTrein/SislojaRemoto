object FrmIcluirTribCai: TFrmIcluirTribCai
  Left = 316
  Top = 237
  BorderStyle = bsNone
  Caption = 'Inclus'#227'o de Tributa'#231#245'es'
  ClientHeight = 210
  ClientWidth = 320
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 68
    Top = 48
    Width = 36
    Height = 13
    Alignment = taRightJustify
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 56
    Top = 80
    Width = 48
    Height = 13
    Alignment = taRightJustify
    Caption = 'Descri'#231#227'o'
  end
  object Label3: TLabel
    Left = 57
    Top = 112
    Width = 47
    Height = 13
    Alignment = taRightJustify
    Caption = 'Opera'#231#227'o'
  end
  object Edit1: TEdit
    Left = 112
    Top = 40
    Width = 49
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 112
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 112
    Top = 104
    Width = 33
    Height = 21
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 64
    Top = 144
    Width = 89
    Height = 25
    Caption = '&Fechar'
    TabOrder = 3
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
    Left = 176
    Top = 144
    Width = 89
    Height = 25
    Caption = '&Gravar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
end
