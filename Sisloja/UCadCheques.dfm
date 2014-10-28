object FrmCadCheque: TFrmCadCheque
  Left = 529
  Top = 103
  BorderStyle = bsNone
  Caption = 'Cadastro de Cheques'
  ClientHeight = 418
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 64
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 56
    Top = 96
    Width = 44
    Height = 13
    Caption = 'Emitente:'
  end
  object Label3: TLabel
    Left = 40
    Top = 120
    Width = 58
    Height = 13
    Caption = 'Documento:'
  end
  object Label4: TLabel
    Left = 56
    Top = 144
    Width = 40
    Height = 13
    Caption = 'Entrada:'
  end
  object Label5: TLabel
    Left = 64
    Top = 168
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label6: TLabel
    Left = 72
    Top = 192
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object Label7: TLabel
    Left = 16
    Top = 216
    Width = 80
    Height = 13
    Caption = 'N'#250'mero Cheque:'
  end
  object Label8: TLabel
    Left = 64
    Top = 240
    Width = 34
    Height = 13
    Caption = 'Banco:'
  end
  object Label9: TLabel
    Left = 56
    Top = 264
    Width = 42
    Height = 13
    Caption = 'Ag'#234'ncia:'
  end
  object Label10: TLabel
    Left = 52
    Top = 288
    Width = 48
    Height = 13
    Caption = 'Dep'#243'sitar:'
  end
  object Label11: TLabel
    Left = 64
    Top = 312
    Width = 31
    Height = 13
    Caption = 'Conta:'
  end
  object Edit1: TEdit
    Left = 104
    Top = 56
    Width = 89
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 104
    Top = 88
    Width = 281
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 104
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object DateEdit1: TDateEdit
    Left = 104
    Top = 136
    Width = 97
    Height = 21
    NumGlyphs = 2
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 104
    Top = 160
    Width = 73
    Height = 21
    TabOrder = 4
    Text = '0'
  end
  object MegaEditNumerico1: TMegaEditNumerico
    Left = 104
    Top = 184
    Width = 73
    Height = 21
    Color = clWhite
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    CorEntra = clWindow
  end
  object Edit5: TEdit
    Left = 104
    Top = 208
    Width = 153
    Height = 21
    TabOrder = 6
  end
  object Edit6: TEdit
    Left = 104
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Edit7: TEdit
    Left = 104
    Top = 256
    Width = 81
    Height = 21
    TabOrder = 8
  end
  object DateEdit2: TDateEdit
    Left = 104
    Top = 280
    Width = 97
    Height = 21
    NumGlyphs = 2
    TabOrder = 9
  end
  object Edit8: TEdit
    Left = 104
    Top = 304
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object BitBtn2: TBitBtn
    Left = 72
    Top = 352
    Width = 105
    Height = 25
    Caption = 'Fechar'
    TabOrder = 11
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
    Left = 224
    Top = 352
    Width = 105
    Height = 25
    Caption = 'Gravar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
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
