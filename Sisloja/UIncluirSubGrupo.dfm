object FrmIncluirSubGrupo: TFrmIncluirSubGrupo
  Left = 304
  Top = 96
  BorderStyle = bsNone
  Caption = 'Inclus'#227'o de Sub-Grupo'
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
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 40
    Top = 48
    Width = 32
    Height = 13
    Alignment = taRightJustify
    Caption = 'Grupo:'
  end
  object Label1: TLabel
    Left = 36
    Top = 80
    Width = 36
    Height = 13
    Alignment = taRightJustify
    Caption = 'C'#243'digo:'
  end
  object Label3: TLabel
    Left = 21
    Top = 120
    Width = 51
    Height = 13
    Alignment = taRightJustify
    Caption = 'Sub-Grupo'
  end
  object ComboBox1: TComboBox
    Left = 80
    Top = 40
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    OnExit = ComboBox1Exit
  end
  object Edit1: TEdit
    Left = 80
    Top = 72
    Width = 49
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 80
    Top = 112
    Width = 209
    Height = 21
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 40
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
    Left = 168
    Top = 144
    Width = 91
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
