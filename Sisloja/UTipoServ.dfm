object FrmTipoServ: TFrmTipoServ
  Left = 257
  Top = 97
  BorderStyle = bsNone
  Caption = 'Cadastros de Tipos de Servi'#231'os'
  ClientHeight = 549
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 424
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 8
    Top = 472
    Width = 51
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object Label3: TLabel
    Left = 288
    Top = 472
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object DBNavigator1: TDBNavigator
    Left = 32
    Top = 40
    Width = 224
    Height = 26
    DataSource = IBDM.DTSTipoServ
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 72
    Width = 473
    Height = 313
    TabStop = False
    Color = clBackground
    DataSource = IBDM.DTSTipoServ
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
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
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Valor R$'
        Width = 73
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 2
    OnClick = BitBtn1Click
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
  object BitBtn2: TBitBtn
    Left = 128
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 3
    OnClick = BitBtn2Click
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
  object BitBtn3: TBitBtn
    Left = 224
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 4
    OnClick = BitBtn3Click
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
  object BitBtn4: TBitBtn
    Left = 424
    Top = 392
    Width = 81
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn4Click
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
  object Edit1: TEdit
    Left = 8
    Top = 440
    Width = 89
    Height = 21
    Enabled = False
    TabOrder = 6
  end
  object Edit2: TEdit
    Left = 8
    Top = 488
    Width = 257
    Height = 21
    TabOrder = 7
  end
  object CurrencyEdit1: TMegaEditNumerico
    Left = 288
    Top = 488
    Width = 81
    Height = 21
    Color = clWhite
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    CorEntra = clWindow
  end
  object BitBtn5: TBitBtn
    Left = 384
    Top = 488
    Width = 75
    Height = 25
    Caption = 'Grava'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = BitBtn5Click
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
