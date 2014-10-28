object FrmPagarConta: TFrmPagarConta
  Left = 394
  Top = 155
  BorderStyle = bsNone
  Caption = 'Pagar Conta'
  ClientHeight = 270
  ClientWidth = 256
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
    Left = 16
    Top = 56
    Width = 59
    Height = 13
    Alignment = taRightJustify
    Caption = 'Vencimento:'
  end
  object Label2: TLabel
    Left = 46
    Top = 88
    Width = 26
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data:'
  end
  object Label3: TLabel
    Left = 5
    Top = 120
    Width = 67
    Height = 13
    Alignment = taRightJustify
    Caption = 'Valor a Pagar:'
  end
  object Label4: TLabel
    Left = 16
    Top = 152
    Width = 55
    Height = 13
    Caption = 'Valor Pago:'
  end
  object Edit1: TEdit
    Left = 80
    Top = 48
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 80
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
    OnExit = Edit2Exit
  end
  object Currencyedit1: TMegaEditNumerico
    Left = 80
    Top = 112
    Width = 89
    Height = 21
    Color = clWhite
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    CorEntra = clWindow
  end
  object Currencyedit2: TMegaEditNumerico
    Left = 80
    Top = 144
    Width = 89
    Height = 21
    Color = clWhite
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    CorEntra = clWindow
  end
  object CheckBox1: TCheckBox
    Left = 64
    Top = 176
    Width = 97
    Height = 17
    Caption = 'Quitar Conta'
    TabOrder = 4
  end
  object BitBtn2: TBitBtn
    Left = 40
    Top = 200
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 5
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
    Left = 136
    Top = 200
    Width = 75
    Height = 25
    Caption = '&Ok'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
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
