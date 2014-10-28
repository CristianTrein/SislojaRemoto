object FrmEdItensNota: TFrmEdItensNota
  Left = 243
  Top = 104
  BorderStyle = bsNone
  Caption = 'Edi'#231#227'o de Itens da Nota'
  ClientHeight = 410
  ClientWidth = 542
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
  object Label2: TLabel
    Left = 24
    Top = 280
    Width = 40
    Height = 13
    Caption = 'Produto:'
  end
  object Label1: TLabel
    Left = 160
    Top = 280
    Width = 13
    Height = 13
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 312
    Width = 58
    Height = 13
    Caption = 'Documento:'
  end
  object Label4: TLabel
    Left = 176
    Top = 312
    Width = 58
    Height = 13
    Caption = 'Quantidade:'
  end
  object Label5: TLabel
    Left = 296
    Top = 312
    Width = 66
    Height = 13
    Caption = 'Valor Unit'#225'rio:'
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 40
    Width = 481
    Height = 209
    DataSource = IBDM.DTSMovimento
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CONTROLE'
        Title.Caption = 'Controle'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Title.Caption = 'Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'Data'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOCTO'
        Title.Caption = 'Documento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Title.Caption = 'Quantidade'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORUNITARIO'
        Title.Caption = 'ValorUnit'#225'rio'
        Width = 65
        Visible = True
      end>
  end
  object Edit2: TEdit
    Left = 72
    Top = 272
    Width = 81
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 72
    Top = 304
    Width = 81
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 240
    Top = 304
    Width = 41
    Height = 21
    TabOrder = 3
  end
  object CurrencyEdit1: TMegaEditNumerico
    Left = 368
    Top = 304
    Width = 81
    Height = 21
    Color = clWhite
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    CorEntra = clWindow
  end
  object BitBtn1: TBitBtn
    Left = 304
    Top = 344
    Width = 137
    Height = 25
    Caption = '&Gravar'
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
  object BitBtn2: TBitBtn
    Left = 128
    Top = 344
    Width = 137
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
end
