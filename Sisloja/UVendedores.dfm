object FrmEdVendedores: TFrmEdVendedores
  Left = 251
  Top = 234
  BorderStyle = bsNone
  Caption = 'Vendedores'
  ClientHeight = 363
  ClientWidth = 686
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
  object BitBtn2: TBitBtn
    Left = 16
    Top = 128
    Width = 91
    Height = 25
    Caption = '&Incluir'
    TabOrder = 1
    OnClick = BitBtn2Click
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00900000000000
      0009987777777777770998FFFFFFFFFFF70998FFFFFC4FFFF70998FFFFFC4FFF
      F70998FFFFFC4FFFF70998FF44444444F70998FFCCCC4CCCF70998FFFFFC4FFF
      F70998FFFFFC4FFFF70998FFFFFC4FFFF70998FFFFFFFFFFF70998FFFFFFFFF0
      000998FFFFFFFFF7F89998FFFFFFFFF789999888888888889999}
  end
  object DBGrid1: TDBGrid
    Left = 120
    Top = 40
    Width = 547
    Height = 249
    TabStop = False
    DataSource = IBDM.DTSUsuario
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMISSAO'
        Title.Caption = 'Comiss'#227'o-V'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMISSAO1'
        Title.Caption = 'Comiss'#227'o-P'
        Width = 78
        Visible = True
      end>
  end
  object BitBtn3: TBitBtn
    Left = 16
    Top = 184
    Width = 91
    Height = 25
    Caption = 'Edi'#231#227'o'
    TabOrder = 2
    OnClick = BitBtn3Click
    Glyph.Data = {
      EE000000424DEE000000000000007600000028000000100000000F0000000100
      04000000000078000000CE0E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777070707077
      7777777777777007777777777777730077777777777773B807770000000003B7
      08778FFFFFFFFF3B80778F8F88F88F3B70878FFFFFFFFFF3B8078F88F888F883
      B0088FFFFFFFFFFF11108F888F88FFFF11078FFFFFFFFFFF0777C44444444444
      4777C444444444444777CCCCCCCCCCCC4777}
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 240
    Width = 91
    Height = 25
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
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
  object DBNavigator1: TDBNavigator
    Left = 224
    Top = 296
    Width = 280
    Height = 25
    DataSource = IBDM.DTSUsuario
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    Hints.Strings = (
      'Primeiro'
      'Anterior'
      'Pr'#243'ximo'
      #218'ltimo')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    TabStop = True
  end
end
