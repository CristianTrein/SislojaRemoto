object FrmBaixaEstoque: TFrmBaixaEstoque
  Left = 280
  Top = 112
  BorderStyle = bsNone
  Caption = 'Baixa no Estoque'
  ClientHeight = 330
  ClientWidth = 308
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
  object Label10: TLabel
    Left = 5
    Top = 40
    Width = 40
    Height = 13
    Alignment = taRightJustify
    Caption = 'Produto:'
  end
  object Label1: TLabel
    Left = 48
    Top = 40
    Width = 5
    Height = 16
    Caption = '.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 49
    Top = 56
    Width = 5
    Height = 13
    Caption = '.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 8
    Top = 56
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label3: TLabel
    Left = 69
    Top = 88
    Width = 69
    Height = 13
    Caption = 'Estoque Atual:'
  end
  object Label2: TLabel
    Left = 13
    Top = 112
    Width = 124
    Height = 13
    Alignment = taRightJustify
    Caption = 'Quant. Estoque a diminuir:'
  end
  object Label6: TLabel
    Left = 95
    Top = 144
    Width = 40
    Height = 13
    Alignment = taRightJustify
    Caption = 'Produto:'
  end
  object Label8: TLabel
    Left = 80
    Top = 168
    Width = 58
    Height = 13
    Caption = 'Documento:'
  end
  object Label7: TLabel
    Left = 69
    Top = 192
    Width = 66
    Height = 13
    Alignment = taRightJustify
    Caption = 'Valor Unit'#225'rio:'
  end
  object Label5: TLabel
    Left = 112
    Top = 216
    Width = 26
    Height = 13
    Caption = 'Data:'
  end
  object edestatual: TEdit
    Left = 144
    Top = 80
    Width = 56
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object edestoque: TEdit
    Left = 144
    Top = 104
    Width = 56
    Height = 21
    TabOrder = 1
    Text = '0'
    OnExit = edestoqueExit
  end
  object edproduto: TEdit
    Left = 144
    Top = 136
    Width = 72
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object eddocumento: TEdit
    Left = 144
    Top = 160
    Width = 72
    Height = 21
    TabOrder = 3
  end
  object edvalor: TEdit
    Left = 144
    Top = 184
    Width = 72
    Height = 21
    TabOrder = 4
  end
  object eddata: TDateEdit
    Left = 144
    Top = 208
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 5
    Text = '__/__/____'
  end
  object BitBtn2: TBitBtn
    Left = 48
    Top = 264
    Width = 97
    Height = 25
    Caption = '&Fechar'
    TabOrder = 6
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
    Top = 264
    Width = 97
    Height = 25
    Caption = '&Baixa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
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
