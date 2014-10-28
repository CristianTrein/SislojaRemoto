object FrmIncluirEtiq: TFrmIncluirEtiq
  Left = 290
  Top = 127
  Width = 309
  Height = 193
  Caption = 'Incluir Etiquetas'
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
    Left = 52
    Top = 24
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 48
    Top = 56
    Width = 40
    Height = 13
    Caption = 'Produto:'
  end
  object Label3: TLabel
    Left = 8
    Top = 88
    Width = 80
    Height = 13
    Alignment = taRightJustify
    Caption = 'Pre'#231'o de Venda:'
  end
  object Edit1: TEdit
    Left = 96
    Top = 16
    Width = 89
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 96
    Top = 48
    Width = 177
    Height = 21
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 168
    Top = 128
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
  object BitBtn2: TBitBtn
    Left = 48
    Top = 128
    Width = 91
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
  object CurrencyEdit1: TCurrencyEdit
    Left = 96
    Top = 80
    Width = 73
    Height = 21
    AutoSize = False
    TabOrder = 2
  end
end
