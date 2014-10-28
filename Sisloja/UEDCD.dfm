object FrmEDCD: TFrmEDCD
  Left = 217
  Top = 247
  Width = 696
  Height = 355
  Caption = 'FrmEDCD'
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
  object Label1: TLabel
    Left = 26
    Top = 10
    Width = 59
    Height = 13
    Caption = 'CONTROLE'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 26
    Top = 34
    Width = 59
    Height = 13
    Caption = 'ACERTADO'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 26
    Top = 58
    Width = 29
    Height = 13
    Caption = 'DATA'
  end
  object Label4: TLabel
    Left = 26
    Top = 82
    Width = 45
    Height = 13
    Caption = 'CLIENTE'
    FocusControl = DBEdit4
  end
  object Label6: TLabel
    Left = 26
    Top = 106
    Width = 61
    Height = 13
    Caption = 'VENDEDOR'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 266
    Top = 106
    Width = 67
    Height = 13
    Caption = 'VENDEDOR1'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 26
    Top = 130
    Width = 74
    Height = 13
    Caption = 'VALOR TOTAL'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 266
    Top = 130
    Width = 59
    Height = 13
    Caption = 'VALOR LIQ.'
    FocusControl = DBEdit9
  end
  object Label10: TLabel
    Left = 26
    Top = 154
    Width = 64
    Height = 13
    Caption = 'VALOR DEV.'
    FocusControl = DBEdit10
  end
  object Label11: TLabel
    Left = 26
    Top = 178
    Width = 67
    Height = 13
    Caption = 'DATA PROM.'
  end
  object Label12: TLabel
    Left = 266
    Top = 178
    Width = 69
    Height = 13
    Caption = 'HORA PROM.'
    FocusControl = DBEdit12
  end
  object Label13: TLabel
    Left = 26
    Top = 202
    Width = 57
    Height = 13
    Caption = 'DATA DEV.'
  end
  object Label14: TLabel
    Left = 266
    Top = 202
    Width = 59
    Height = 13
    Caption = 'HORA DEV.'
    FocusControl = DBEdit14
  end
  object Label15: TLabel
    Left = 26
    Top = 226
    Width = 60
    Height = 13
    Caption = 'DOCVENDA'
    FocusControl = DBEdit15
  end
  object Label16: TLabel
    Left = 26
    Top = 250
    Width = 22
    Height = 13
    Caption = 'OBS'
    FocusControl = DBEdit16
  end
  object DBEdit1: TDBEdit
    Left = 112
    Top = 2
    Width = 64
    Height = 21
    DataField = 'CONTROLE'
    DataSource = IBDM.dtscd
    Enabled = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 112
    Top = 26
    Width = 15
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ACE'
    DataSource = IBDM.dtscd
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 112
    Top = 74
    Width = 64
    Height = 21
    DataField = 'CLIFOR'
    DataSource = IBDM.dtscd
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 200
    Top = 74
    Width = 304
    Height = 21
    DataField = 'NOMECLI'
    DataSource = IBDM.dtscd
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 112
    Top = 98
    Width = 64
    Height = 21
    DataField = 'OPERADOR'
    DataSource = IBDM.dtscd
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 338
    Top = 98
    Width = 64
    Height = 21
    DataField = 'OPERADOR1'
    DataSource = IBDM.dtscd
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 112
    Top = 122
    Width = 118
    Height = 21
    DataField = 'VALORTOTAL'
    DataSource = IBDM.dtscd
    TabOrder = 7
  end
  object DBEdit9: TDBEdit
    Left = 338
    Top = 122
    Width = 118
    Height = 21
    DataField = 'VALORLIQ'
    DataSource = IBDM.dtscd
    TabOrder = 8
  end
  object DBEdit10: TDBEdit
    Left = 112
    Top = 146
    Width = 118
    Height = 21
    DataField = 'VALORDEV'
    DataSource = IBDM.dtscd
    TabOrder = 9
  end
  object DBEdit12: TDBEdit
    Left = 338
    Top = 170
    Width = 34
    Height = 21
    DataField = 'HORAPRO'
    DataSource = IBDM.dtscd
    TabOrder = 11
  end
  object DBEdit14: TDBEdit
    Left = 338
    Top = 194
    Width = 34
    Height = 21
    DataField = 'HORADEV'
    DataSource = IBDM.dtscd
    TabOrder = 14
  end
  object DBEdit15: TDBEdit
    Left = 112
    Top = 218
    Width = 64
    Height = 21
    DataField = 'DOCVENDA'
    DataSource = IBDM.dtscd
    TabOrder = 16
  end
  object DBEdit16: TDBEdit
    Left = 26
    Top = 266
    Width = 604
    Height = 21
    DataField = 'OBS'
    DataSource = IBDM.dtscd
    TabOrder = 17
  end
  object BitBtn2: TBitBtn
    Left = 592
    Top = 208
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 15
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
  object DBDateEdit1: TDBDateEdit
    Left = 112
    Top = 50
    Width = 94
    Height = 21
    DataField = 'DATA'
    DataSource = IBDM.dtscd
    NumGlyphs = 2
    TabOrder = 2
  end
  object DBDateEdit2: TDBDateEdit
    Left = 112
    Top = 169
    Width = 97
    Height = 21
    DataField = 'DATAPRO'
    DataSource = IBDM.dtscd
    NumGlyphs = 2
    TabOrder = 10
  end
  object DBDateEdit3: TDBDateEdit
    Left = 112
    Top = 193
    Width = 97
    Height = 21
    DataField = 'DATADEV'
    DataSource = IBDM.dtscd
    NumGlyphs = 2
    TabOrder = 13
  end
  object BitBtn1: TBitBtn
    Left = 592
    Top = 176
    Width = 75
    Height = 25
    Caption = '&Gravar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
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
