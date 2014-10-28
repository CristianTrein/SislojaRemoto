object FrmChequeComp: TFrmChequeComp
  Left = 307
  Top = 106
  BorderStyle = bsNone
  Caption = 'Cheque Compensados'
  ClientHeight = 408
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 88
    Top = 56
    Width = 257
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 348
    Top = 56
    Width = 62
    Height = 21
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 413
    Top = 53
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 2
    Glyph.Data = {
      EE000000424DEE000000000000007600000028000000100000000F0000000100
      04000000000078000000CE0E0000C40E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888844488888888888884448800000000088444888888888888888888888888
      8888888888888888888884448888888888888444880000000008844488888888
      8888888888888888888888888888888888888444888888888888844488000000
      000884448888888888888888888888888888}
  end
  object DBNavigator1: TDBNavigator
    Left = 512
    Top = 53
    Width = 168
    Height = 25
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 80
    Width = 673
    Height = 289
    TabStop = False
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
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
        FieldName = 'EMITENTE'
        Title.Caption = 'Emitente'
        Width = 259
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
        FieldName = 'VALOR'
        Title.Caption = 'Valor'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENTRADA'
        Title.Caption = 'Entrada'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPOSITAR'
        Title.Caption = 'Depositar'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPOSITO'
        Title.Caption = 'Deposito'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NCHEQUE'
        Title.Caption = 'Num. Cheque'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BANCO'
        Title.Caption = 'Banco'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AGENCIA'
        Title.Caption = 'Ag'#234'ncia'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LKCONTA'
        Title.Caption = 'Conta'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Title.Caption = 'Cliente'
        Width = 42
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn
    Left = 603
    Top = 379
    Width = 75
    Height = 25
    Caption = 'Fechar'
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
end
