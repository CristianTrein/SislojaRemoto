object FrmEdCPagas: TFrmEdCPagas
  Left = 265
  Top = 183
  BorderStyle = bsNone
  Caption = 'Contas Pagas'
  ClientHeight = 453
  ClientWidth = 670
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
  object Edit1: TEdit
    Left = 144
    Top = 40
    Width = 297
    Height = 21
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 447
    Top = 37
    Width = 82
    Height = 25
    Caption = '&Pesquisar'
    TabOrder = 0
    OnClick = BitBtn2Click
    Glyph.Data = {
      EE000000424DEE000000000000007600000028000000100000000F0000000100
      04000000000078000000CE0E0000C40E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00844888888888
      8888888488888888888888488800000000088444888888888888888888888888
      8888844488888888888888488888888888888884880000000008844888888888
      8888888888888888888884448888888888888848888888888888844888000000
      000888488888888888888888888888888888}
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 64
    Width = 657
    Height = 321
    TabStop = False
    DataSource = IBDM.DTSCpagas
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CONTROLE'
        Title.Caption = 'Controle'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOCUMENTO'
        Title.Caption = 'Documento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HISTORICO'
        Title.Caption = 'Hist'#243'rico'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCIMENTO'
        Title.Caption = 'Vencimento'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Valor'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAGO'
        Title.Caption = 'Pago'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARCELA'
        Title.Caption = 'Parcela'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAGAMENTO'
        Title.Caption = 'Pagamento'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FORNECEDOR'
        Title.Caption = 'Fornecedor'
        Width = 58
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 392
    Width = 224
    Height = 25
    DataSource = IBDM.DTSCpagas
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    Hints.Strings = (
      'Primeiro'
      'Anterior'
      'Pr'#243'ximo'
      #218'ltimo'
      '')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object BitBtn3: TBitBtn
    Left = 448
    Top = 392
    Width = 97
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
  object BitBtn1: TBitBtn
    Left = 568
    Top = 392
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 5
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
end
