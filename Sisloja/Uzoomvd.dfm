object Frmzoomvd: TFrmzoomvd
  Left = 430
  Top = 96
  BorderStyle = bsSingle
  Caption = 'Frmzoomvd'
  ClientHeight = 506
  ClientWidth = 772
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 23
    Top = 43
    Width = 110
    Height = 13
    Caption = 'Cabe'#231'alho da Nota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 23
    Top = 125
    Width = 78
    Height = 13
    Caption = 'Itens da Nota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 23
    Top = 240
    Width = 98
    Height = 13
    Caption = 'Contas a receber'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 26
    Top = 360
    Width = 32
    Height = 13
    Caption = 'Caixa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 58
    Width = 753
    Height = 60
    DataSource = IBDM.DTSDoctos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOCUMENTO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPERADOR'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENDEDOR'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORTOTAL'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIFOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NADIC'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBS'
        Width = 64
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 9
    Top = 140
    Width = 750
    Height = 94
    DataSource = IBDM.DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid3: TDBGrid
    Left = 10
    Top = 255
    Width = 747
    Height = 97
    DataSource = IBDM.Dtsibq1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid4: TDBGrid
    Left = 11
    Top = 376
    Width = 622
    Height = 81
    DataSource = IBDM.Dtsibq2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BtnFechar: TBitBtn
    Left = 664
    Top = 408
    Width = 75
    Height = 33
    Caption = '&Fechar'
    TabOrder = 4
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
