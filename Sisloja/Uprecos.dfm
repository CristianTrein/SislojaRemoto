object Frmprecos: TFrmprecos
  Left = 418
  Top = 180
  BorderStyle = bsNone
  Caption = 'Frmprecos'
  ClientHeight = 477
  ClientWidth = 411
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
    Left = 8
    Top = 429
    Width = 136
    Height = 13
    Caption = 'Clique duplo para selecionar.'
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 329
    Top = 37
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 0
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
  object DBGrid1: TDBGrid
    Left = 18
    Top = 72
    Width = 378
    Height = 321
    DataSource = IBDM.Dtsprecos
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'REF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO2'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 95
    Top = 400
    Width = 240
    Height = 25
    DataSource = IBDM.Dtsprecos
    TabOrder = 2
  end
end
