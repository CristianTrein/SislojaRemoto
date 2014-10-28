object FrmEdCPagar: TFrmEdCPagar
  Left = 258
  Top = 124
  BorderStyle = bsSingle
  Caption = 'Contas a Pagar'
  ClientHeight = 253
  ClientWidth = 460
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
    Left = 55
    Top = 48
    Width = 42
    Height = 13
    Alignment = taRightJustify
    Caption = 'Controle:'
  end
  object Label2: TLabel
    Left = 36
    Top = 72
    Width = 59
    Height = 13
    Alignment = taRightJustify
    Caption = 'Vencimento:'
  end
  object Label3: TLabel
    Left = 38
    Top = 96
    Width = 58
    Height = 13
    Alignment = taRightJustify
    Caption = 'Documento:'
  end
  object Label4: TLabel
    Left = 56
    Top = 120
    Width = 44
    Height = 13
    Alignment = taRightJustify
    Caption = 'Hist'#243'rico:'
  end
  object Label6: TLabel
    Left = 69
    Top = 144
    Width = 27
    Height = 13
    Alignment = taRightJustify
    Caption = 'Valor:'
  end
  object Label5: TLabel
    Left = 56
    Top = 168
    Width = 39
    Height = 13
    Alignment = taRightJustify
    Caption = 'Parcela:'
  end
  object Label7: TLabel
    Left = 40
    Top = 192
    Width = 57
    Height = 13
    Alignment = taRightJustify
    Caption = 'Fornecedor:'
  end
  object EdControle: TEdit
    Left = 104
    Top = 40
    Width = 80
    Height = 21
    CharCase = ecLowerCase
    Enabled = False
    TabOrder = 0
  end
  object EdVencimento: TDateEdit
    Left = 104
    Top = 64
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
    Text = '__/__/____'
  end
  object EdDocumento: TEdit
    Left = 104
    Top = 88
    Width = 81
    Height = 21
    CharCase = ecLowerCase
    TabOrder = 2
  end
  object EdHistorico: TEdit
    Left = 104
    Top = 112
    Width = 297
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object EdValor: TMegaEditNumerico
    Left = 104
    Top = 136
    Width = 81
    Height = 21
    Color = clWhite
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    CorEntra = clWindow
  end
  object EdParcela: TEdit
    Left = 104
    Top = 160
    Width = 57
    Height = 21
    CharCase = ecLowerCase
    TabOrder = 6
  end
  object EdFornecedor: TEdit
    Left = 104
    Top = 184
    Width = 57
    Height = 21
    CharCase = ecLowerCase
    TabOrder = 7
  end
  object BtnGravar: TBitBtn
    Left = 368
    Top = 152
    Width = 75
    Height = 25
    Caption = '&Gravar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BtnGravarClick
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
  object BtnFechar: TBitBtn
    Left = 368
    Top = 184
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 8
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
