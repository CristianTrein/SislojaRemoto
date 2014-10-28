object FrmEdCartao: TFrmEdCartao
  Left = 558
  Top = 102
  BorderStyle = bsNone
  Caption = 'Cart'#227'o'
  ClientHeight = 370
  ClientWidth = 391
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
  object Label1: TLabel
    Left = 40
    Top = 56
    Width = 42
    Height = 13
    Caption = 'Controle:'
  end
  object Label2: TLabel
    Left = 56
    Top = 88
    Width = 26
    Height = 13
    Caption = 'Data:'
  end
  object Label3: TLabel
    Left = 16
    Top = 120
    Width = 62
    Height = 13
    Caption = 'Data Cr'#233'dito:'
  end
  object Label4: TLabel
    Left = 48
    Top = 152
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label5: TLabel
    Left = 56
    Top = 184
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object Label6: TLabel
    Left = 32
    Top = 216
    Width = 49
    Height = 13
    Caption = 'N'#186' Cart'#227'o:'
  end
  object Label7: TLabel
    Left = 40
    Top = 248
    Width = 44
    Height = 13
    Caption = 'Validade:'
  end
  object Label8: TLabel
    Left = 40
    Top = 280
    Width = 44
    Height = 13
    Caption = 'Parcelas:'
  end
  object Edit1: TEdit
    Left = 88
    Top = 48
    Width = 73
    Height = 21
    TabOrder = 0
  end
  object DateEdit1: TDateEdit
    Left = 88
    Top = 80
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object DateEdit2: TDateEdit
    Left = 88
    Top = 112
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 88
    Top = 144
    Width = 265
    Height = 21
    TabOrder = 3
  end
  object MegaEditNumerico1: TMegaEditNumerico
    Left = 88
    Top = 176
    Width = 73
    Height = 21
    Color = clWhite
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    CorEntra = clWindow
  end
  object Edit3: TEdit
    Left = 88
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit4: TEdit
    Left = 88
    Top = 240
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit5: TEdit
    Left = 88
    Top = 272
    Width = 65
    Height = 21
    TabOrder = 7
  end
  object BitBtn2: TBitBtn
    Left = 96
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 8
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
    Left = 200
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Gravar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
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
