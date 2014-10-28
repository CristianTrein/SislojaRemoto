object FrmOrdemServ1: TFrmOrdemServ1
  Left = 362
  Top = 177
  BorderStyle = bsNone
  Caption = 'Ordem de Servi'#231'o 1'#170' parte'
  ClientHeight = 442
  ClientWidth = 421
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 40
    Width = 40
    Height = 13
    Caption = 'N'#250'mero:'
  end
  object Label2: TLabel
    Left = 128
    Top = 40
    Width = 26
    Height = 13
    Caption = 'Data:'
  end
  object Label3: TLabel
    Left = 24
    Top = 96
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label4: TLabel
    Left = 24
    Top = 152
    Width = 65
    Height = 13
    Caption = 'Equipamento:'
  end
  object Label5: TLabel
    Left = 24
    Top = 208
    Width = 69
    Height = 13
    Caption = 'Caracter'#237'stica:'
  end
  object Label6: TLabel
    Left = 24
    Top = 264
    Width = 62
    Height = 13
    Caption = 'Atendimento:'
  end
  object Label7: TLabel
    Left = 24
    Top = 320
    Width = 66
    Height = 13
    Caption = 'Valor Servi'#231'o:'
  end
  object Label8: TLabel
    Left = 136
    Top = 320
    Width = 55
    Height = 13
    Caption = 'Valor Pe'#231'a:'
  end
  object Edit1: TEdit
    Left = 24
    Top = 56
    Width = 80
    Height = 21
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DateEdit1: TDateEdit
    Left = 128
    Top = 56
    Width = 97
    Height = 21
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 1
    Text = '__/__/____'
  end
  object ComboBox1: TComboBox
    Left = 24
    Top = 112
    Width = 369
    Height = 21
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 2
    OnClick = ComboBox1Click
  end
  object Edit2: TEdit
    Left = 24
    Top = 168
    Width = 265
    Height = 21
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 24
    Top = 224
    Width = 265
    Height = 21
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object ComboBox2: TComboBox
    Left = 24
    Top = 280
    Width = 265
    Height = 21
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 5
    Items.Strings = (
      'Balc'#227'o'
      'Externo'
      'Or'#231'amento'
      'Garantia'
      'Revis'#227'o'
      'Outros')
  end
  object CurrencyEdit2: TMegaEditNumerico
    Left = 136
    Top = 336
    Width = 81
    Height = 21
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    CorEntra = clBackground
  end
  object Currencyedit1: TMegaEditNumerico
    Left = 24
    Top = 336
    Width = 81
    Height = 21
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    CorEntra = clBackground
  end
  object BitBtn2: TBitBtn
    Left = 80
    Top = 376
    Width = 105
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
    Left = 232
    Top = 376
    Width = 105
    Height = 25
    Caption = 'Confirmar'
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
