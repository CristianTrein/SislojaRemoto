object FrmEdCReceber: TFrmEdCReceber
  Left = 273
  Top = 146
  BorderStyle = bsNone
  Caption = 'Contas a Receber'
  ClientHeight = 268
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 29
    Top = 48
    Width = 42
    Height = 13
    Alignment = taRightJustify
    Caption = 'Controle:'
  end
  object Label2: TLabel
    Left = 12
    Top = 72
    Width = 59
    Height = 13
    Alignment = taRightJustify
    Caption = 'Vencimento:'
  end
  object Label3: TLabel
    Left = 14
    Top = 96
    Width = 58
    Height = 13
    Alignment = taRightJustify
    Caption = 'Documento:'
  end
  object Label4: TLabel
    Left = 28
    Top = 120
    Width = 44
    Height = 13
    Alignment = taRightJustify
    Caption = 'Hist'#243'rico:'
  end
  object Label5: TLabel
    Left = 7
    Top = 144
    Width = 65
    Height = 13
    Alignment = taRightJustify
    Caption = 'Valor Original:'
  end
  object Label6: TLabel
    Left = 8
    Top = 168
    Width = 64
    Height = 13
    Alignment = taRightJustify
    Caption = 'Valor Devido:'
  end
  object Label8: TLabel
    Left = 33
    Top = 192
    Width = 39
    Height = 13
    Alignment = taRightJustify
    Caption = 'Parcela:'
  end
  object Label9: TLabel
    Left = 37
    Top = 216
    Width = 35
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cliente:'
  end
  object EdControle: TEdit
    Left = 80
    Top = 40
    Width = 80
    Height = 21
    CharCase = ecUpperCase
    Enabled = False
    TabOrder = 0
  end
  object EdVencimento: TDateEdit
    Left = 80
    Top = 64
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
    Text = '__/__/____'
  end
  object EdDocumento: TEdit
    Left = 80
    Top = 88
    Width = 81
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 82
    Top = 113
    Width = 63
    Height = 21
    Caption = '&Clientes'
    TabOrder = 3
    OnClick = BitBtn1Click
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00998444444444
      4449998F73F370B03F49998EF78B77780E49998FEFE87BF70F49998EFEF787B7
      8E49998FEFE80880EF49998EFE08880EFE49998FE7B8000FEF49998EF88B800E
      FE49998FE8780800EF49998EF7B80080FE49998FE8780808EF49998EFE88080E
      FE49998FEF80088FEF49998EFEFEFEFEFE899988888888888889}
  end
  object EdHistorico: TEdit
    Left = 146
    Top = 113
    Width = 272
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
  end
  object EdValor: TMegaEditNumerico
    Left = 80
    Top = 136
    Width = 73
    Height = 21
    Color = clWhite
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    CorEntra = clWindow
  end
  object Edvalordevido: TMegaEditNumerico
    Left = 80
    Top = 160
    Width = 73
    Height = 21
    Color = clWhite
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    CorEntra = clWindow
  end
  object EdParcela: TEdit
    Left = 80
    Top = 184
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 7
  end
  object EdCliente: TEdit
    Left = 80
    Top = 208
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 9
  end
  object BtnGravar: TBitBtn
    Left = 344
    Top = 184
    Width = 75
    Height = 25
    Caption = '&Gravar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
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
    Left = 344
    Top = 208
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 10
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
