object FrmCHKSPC: TFrmCHKSPC
  Left = 317
  Top = 163
  BorderStyle = bsNone
  Caption = 'FrmCHKSPC'
  ClientHeight = 446
  ClientWidth = 500
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 339
    Width = 371
    Height = 20
    Caption = 'V'#225' at'#233' a tela de avisos para registrar a sa'#237'da do SPC'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 11
    Top = 68
    Width = 480
    Height = 265
    DataSource = IBDM.DtsCon
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'documento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 313
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'controle'
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn
    Left = 40
    Top = 374
    Width = 75
    Height = 25
    Caption = 'Libera L'#231'to'
    TabOrder = 1
    Visible = False
    OnClick = BitBtn2Click
  end
  object BitBtn1: TBitBtn
    Left = 388
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
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
