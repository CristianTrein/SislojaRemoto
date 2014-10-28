object FrmPosCaixa: TFrmPosCaixa
  Left = 327
  Top = 96
  BorderStyle = bsNone
  Caption = 'Posi'#231#227'o do Caixa'
  ClientHeight = 527
  ClientWidth = 422
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
  object DBGrid1: TDBGrid
    Left = 136
    Top = 40
    Width = 273
    Height = 417
    TabStop = False
    Color = clBlack
    DataSource = IBDM.DTSPosCaixa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'Data'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SALDO'
        Title.Caption = 'Saldo'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPERADOR'
        Title.Caption = 'Operador'
        Width = 50
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 184
    Width = 105
    Height = 25
    Caption = '&Excluir'
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
      3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
      33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
      33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
      333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
      03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
      33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
      0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
      3333333337FFF7F3333333333000003333333333377777333333}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 16
    Top = 256
    Width = 105
    Height = 25
    Caption = '&Criar Posi'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn2Click
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00999999999999
      999999000000000000999987777777777099998FFFFFFFFF7099998FFFFFFFFF
      7099998FFFFFFFFF7099998FFFFFFFFF7099998FFFFFFFFF7099998FFFFFFFFF
      7099998FFFFFFFFF7099998FFFFFFFFF7099998FFFFFFF000099998FFFFFFF7F
      8999998FFFFFFF78999999888888888999999999999999999999}
  end
  object edposdata: TMegaEditDataHora
    Left = 16
    Top = 312
    Width = 105
    Height = 21
    Date = 39272.938729016200000000
    Time = 39272.938729016200000000
    DateFormat = dfLong
    TabOrder = 3
    CorEntra = clBlack
  end
  object BitBtn3: TBitBtn
    Left = 16
    Top = 464
    Width = 105
    Height = 25
    Caption = 'Fechar'
    TabOrder = 4
    OnClick = BitBtn3Click
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
    Left = 160
    Top = 464
    Width = 224
    Height = 25
    DataSource = IBDM.DTSPosCaixa
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    TabOrder = 5
  end
end
