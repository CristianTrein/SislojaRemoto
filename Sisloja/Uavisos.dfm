object FrmAvisos: TFrmAvisos
  Left = 210
  Top = 198
  BorderStyle = bsNone
  Caption = 'FrmAvisos'
  ClientHeight = 446
  ClientWidth = 777
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
    Left = 282
    Top = 49
    Width = 26
    Height = 13
    Caption = 'Tipo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 448
    Top = 37
    Width = 26
    Height = 13
    Caption = 'Data:'
  end
  object Button2: TButton
    Left = 13
    Top = 40
    Width = 116
    Height = 25
    Caption = 'Marcar todos'
    TabOrder = 0
    Visible = False
    OnClick = Button2Click
  end
  object BitBtn2: TBitBtn
    Left = 12
    Top = 77
    Width = 117
    Height = 25
    Caption = 'Desmarcar todos'
    TabOrder = 1
    Visible = False
    OnClick = BitBtn2Click
  end
  object BitBtn4: TBitBtn
    Left = 144
    Top = 60
    Width = 96
    Height = 23
    Caption = 'Emitir avisos'
    TabOrder = 2
    OnClick = BitBtn4Click
  end
  object ComboBox1: TComboBox
    Left = 280
    Top = 64
    Width = 73
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = 'Aviso 1'
    Items.Strings = (
      'Aviso 1'
      'Aviso 2'
      'Aviso 3'
      'SPC - Entra'
      'SPC - Sai')
  end
  object BitBtn9: TBitBtn
    Left = 360
    Top = 51
    Width = 79
    Height = 22
    Caption = 'SPC-entra'
    TabOrder = 4
    OnClick = BitBtn9Click
  end
  object BitBtn10: TBitBtn
    Left = 360
    Top = 76
    Width = 79
    Height = 22
    Caption = 'SPC-sai'
    TabOrder = 5
    OnClick = BitBtn10Click
  end
  object eddata: TDateEdit
    Left = 448
    Top = 50
    Width = 87
    Height = 21
    DefaultToday = True
    NumGlyphs = 2
    TabOrder = 6
    Text = '10/09/2011'
  end
  object BitBtn6: TBitBtn
    Left = 448
    Top = 75
    Width = 79
    Height = 22
    Caption = 'Etiquetas'
    TabOrder = 7
    OnClick = BitBtn6Click
    Glyph.Data = {
      42010000424D4201000000000000760000002800000011000000110000000100
      040000000000CC00000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777700000007777777777777777700000007700000000000007700000007068
      68686868686070000000708680000000868070000000706860FFFFF068607000
      0000708680F444F0868070000000706860FFFFF0686070000000708680F44FF0
      868070000000706860FFFFF0686070000000708680F444F08680700000007068
      60FFFFF068607000000070868000000086807000000070686868686868607000
      0000770000000000000770000000777777777777777770000000777777777777
      777770000000}
  end
  object RadioGroup1: TRadioGroup
    Left = 575
    Top = 36
    Width = 198
    Height = 71
    Caption = ' Op'#231#245'es de Filtro '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object RadioButton1: TRadioButton
    Left = 586
    Top = 49
    Width = 83
    Height = 17
    Caption = 'Todos'
    Checked = True
    TabOrder = 9
    TabStop = True
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 586
    Top = 67
    Width = 83
    Height = 17
    Caption = '1'#186' aviso'
    TabOrder = 10
    OnClick = RadioButton2Click
  end
  object RadioButton3: TRadioButton
    Left = 586
    Top = 85
    Width = 83
    Height = 17
    Caption = '2'#186' aviso'
    TabOrder = 11
    OnClick = RadioButton3Click
  end
  object RadioButton4: TRadioButton
    Left = 673
    Top = 49
    Width = 96
    Height = 17
    Caption = '3'#186' aviso'
    TabOrder = 12
    OnClick = RadioButton4Click
  end
  object RadioButton5: TRadioButton
    Left = 673
    Top = 67
    Width = 96
    Height = 17
    Caption = 'SPC cadastra'
    TabOrder = 13
    OnClick = RadioButton5Click
  end
  object RadioButton6: TRadioButton
    Left = 673
    Top = 85
    Width = 96
    Height = 17
    Caption = 'SPC libera'
    TabOrder = 14
    OnClick = RadioButton6Click
  end
  object DBGrid1: TDBGrid
    Left = 1
    Top = 113
    Width = 771
    Height = 261
    DataSource = IBDM.Dtsavisos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -9
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnColEnter = DBGrid1ColEnter
    OnColExit = DBGrid1ColExit
    Columns = <
      item
        Expanded = False
        FieldName = 'HISTORICO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCIMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARCA1'
        Title.Caption = 'M1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AVISO1'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARCA2'
        Title.Caption = 'M2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AVISO2'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARCA3'
        Title.Caption = 'M3'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AVISO3'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARCASPCE'
        Title.Caption = 'M_SPCE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SPCENT'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARCASPCS'
        Title.Caption = 'M_SPCS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SPCSAI'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTROLE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTROLE1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOCUMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORORIGINAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORDEVIDO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALPAGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARCELA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARCIAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBS1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MPGTO'
        Visible = True
      end>
  end
  object BitBtn7: TBitBtn
    Left = 8
    Top = 379
    Width = 96
    Height = 25
    Caption = 'Edita Observa'#231#227'o'
    TabOrder = 16
    OnClick = BitBtn7Click
  end
  object edobs: TEdit
    Left = 111
    Top = 381
    Width = 419
    Height = 21
    Enabled = False
    TabOrder = 17
    OnExit = edobsExit
  end
  object Button1: TButton
    Left = 416
    Top = 390
    Width = 115
    Height = 25
    Caption = 'Marcar Selecionado'
    TabOrder = 18
    Visible = False
    OnClick = Button1Click
  end
  object BitBtn3: TBitBtn
    Left = 453
    Top = 381
    Width = 117
    Height = 25
    Caption = 'Desmarcar selecionado'
    TabOrder = 19
    Visible = False
    OnClick = BitBtn3Click
  end
  object BitBtn1: TBitBtn
    Left = 584
    Top = 379
    Width = 75
    Height = 25
    Caption = 'Carga'
    TabOrder = 20
    OnClick = BitBtn1Click
    Glyph.Data = {
      EE000000424DEE000000000000007600000028000000100000000F0000000100
      04000000000078000000130B0000130B00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      88888888888888888888888888800000000088088880FFFFFFF088008880F00F
      00F000000880FFFFFFF000000080F00F00F000000880FFFFFFF088008884C4C4
      C4C48808888CF4CF4CFC88888884C4C4C44C8888888888888888888888888888
      888888888888888888888888888888888888}
  end
  object BitBtn5: TBitBtn
    Left = 689
    Top = 379
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 21
    OnClick = BitBtn5Click
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
