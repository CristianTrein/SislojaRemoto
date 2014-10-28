object FrmPrestacoes2: TFrmPrestacoes2
  Left = 697
  Top = 79
  BorderStyle = bsSingle
  Caption = 'Presta'#231#245'es'
  ClientHeight = 559
  ClientWidth = 520
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label17: TLabel
    Left = 59
    Top = 38
    Width = 135
    Height = 13
    Caption = 'Valor das Mercadorias: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label18: TLabel
    Left = 264
    Top = 42
    Width = 119
    Height = 13
    Caption = 'Tipo de Pagamento: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 59
    Top = 78
    Width = 121
    Height = 13
    Caption = 'Valor Liquido '#224' vista:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 268
    Top = 89
    Width = 49
    Height = 13
    Caption = 'Entrada:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label21: TLabel
    Left = 62
    Top = 119
    Width = 120
    Height = 13
    Caption = 'Modo de pagamento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label23: TLabel
    Left = 264
    Top = 128
    Width = 118
    Height = 13
    Caption = 'Prazo m'#225'x.p/ent. 10 dias'
  end
  object Label19: TLabel
    Left = 267
    Top = 165
    Width = 99
    Height = 13
    Caption = 'Modo de c'#225'lculo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 59
    Top = 162
    Width = 85
    Height = 13
    Caption = 'Saldo a Pagar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 59
    Top = 203
    Width = 104
    Height = 13
    Caption = 'N'#186' de Presta'#231#245'es:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label20: TLabel
    Left = 265
    Top = 207
    Width = 112
    Height = 13
    Caption = 'Vencimentos (dias):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label22: TLabel
    Left = 22
    Top = 517
    Width = 471
    Height = 20
    Caption = 'Verifique as informa'#231#245'es e a impressora antes de Finalizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edvlmerc: TCurrencyEdit
    Left = 59
    Top = 53
    Width = 92
    Height = 21
    AutoSize = False
    Enabled = False
    TabOrder = 0
    OnExit = edvlmercExit
  end
  object GroupBox2: TGroupBox
    Left = 256
    Top = 56
    Width = 193
    Height = 33
    TabOrder = 1
    TabStop = True
    object RadioButton3: TRadioButton
      Left = 12
      Top = 10
      Width = 73
      Height = 17
      Caption = 'A vista'
      TabOrder = 0
      OnClick = RadioButton3Click
      OnExit = RadioButton3Exit
    end
    object RadioButton4: TRadioButton
      Left = 118
      Top = 11
      Width = 65
      Height = 17
      Caption = 'A prazo'
      TabOrder = 1
      OnClick = RadioButton4Click
      OnExit = RadioButton4Exit
    end
  end
  object edvlliq: TCurrencyEdit
    Left = 59
    Top = 92
    Width = 105
    Height = 21
    AutoSize = False
    Enabled = False
    TabOrder = 2
    OnExit = edvlliqExit
  end
  object Edvle: TCurrencyEdit
    Left = 264
    Top = 104
    Width = 89
    Height = 21
    AutoSize = False
    Enabled = False
    TabOrder = 4
    OnExit = EdvleExit
  end
  object eddtent: TMegaEditDataHora
    Left = 362
    Top = 103
    Width = 89
    Height = 21
    Date = 39347.383612372700000000
    Time = 39347.383612372700000000
    TabOrder = 3
    OnExit = eddtentExit
    CorEntra = clSilver
  end
  object modopgto: TComboBox
    Left = 60
    Top = 134
    Width = 145
    Height = 21
    Enabled = False
    ItemHeight = 13
    TabOrder = 6
    OnExit = modopgtoExit
  end
  object ckprent: TCheckBox
    Left = 418
    Top = 126
    Width = 93
    Height = 17
    Caption = 'Recibo na tela'
    TabOrder = 5
  end
  object eddtent1: TDateEdit
    Left = 384
    Top = 159
    Width = 105
    Height = 21
    Enabled = False
    NumGlyphs = 2
    TabOrder = 7
    Visible = False
    OnExit = eddtent1Exit
  end
  object edvlsld: TCurrencyEdit
    Left = 59
    Top = 175
    Width = 105
    Height = 21
    AutoSize = False
    Enabled = False
    TabOrder = 8
    OnExit = edvlsldExit
  end
  object RadioButton1: TRadioButton
    Left = 264
    Top = 180
    Width = 98
    Height = 17
    Caption = 'Qtd Presta'#231#245'es'
    Enabled = False
    TabOrder = 9
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 366
    Top = 180
    Width = 113
    Height = 17
    Caption = 'Data vencimento'
    Enabled = False
    TabOrder = 10
    OnClick = RadioButton2Click
  end
  object ednrp: TComboBox
    Left = 59
    Top = 218
    Width = 49
    Height = 21
    Enabled = False
    ItemHeight = 13
    TabOrder = 11
    OnClick = ednrpClick
    OnExit = ednrpExit
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6')
  end
  object ed1: TEdit
    Left = 263
    Top = 224
    Width = 25
    Height = 21
    Enabled = False
    MaxLength = 3
    TabOrder = 12
    OnExit = ed1Exit
  end
  object ed2: TEdit
    Left = 295
    Top = 224
    Width = 25
    Height = 21
    Enabled = False
    MaxLength = 3
    TabOrder = 13
    OnExit = ed2Exit
  end
  object ed3: TEdit
    Left = 327
    Top = 224
    Width = 25
    Height = 21
    Enabled = False
    MaxLength = 3
    TabOrder = 14
    OnExit = ed3Exit
  end
  object ed4: TEdit
    Left = 359
    Top = 224
    Width = 25
    Height = 21
    Enabled = False
    MaxLength = 3
    TabOrder = 15
    OnExit = ed4Exit
  end
  object ed5: TEdit
    Left = 391
    Top = 224
    Width = 24
    Height = 21
    Enabled = False
    MaxLength = 3
    TabOrder = 16
    OnExit = ed5Exit
  end
  object ed6: TEdit
    Left = 423
    Top = 224
    Width = 26
    Height = 21
    Enabled = False
    TabOrder = 17
    OnExit = ed6Exit
  end
  object edliqui: TCurrencyEdit
    Left = 264
    Top = 251
    Width = 121
    Height = 21
    AutoSize = False
    Enabled = False
    TabOrder = 19
  end
  object BitBtn2: TBitBtn
    Left = 58
    Top = 245
    Width = 84
    Height = 27
    Caption = 'Calcular'
    TabOrder = 18
    OnClick = BitBtn2Click
    Glyph.Data = {
      EE000000424DEE000000000000007600000028000000100000000F0000000100
      04000000000078000000130B0000130B00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800000
      000088888880FFFFFFF088888880F00F00F088888880FFFFFFF088888880F00F
      00F088888880FFFFFFF088888884444444448800008444444444880BB0888888
      8888000BB000888888880BBBBBB0888888880BBBBBB088888888000BB0008888
      8888880BB088888888888800008888888888}
  end
  object GroupBox1: TGroupBox
    Left = 58
    Top = 277
    Width = 375
    Height = 164
    Caption = 'Valor das Presta'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 20
    object Label5: TLabel
      Left = 16
      Top = 28
      Width = 52
      Height = 13
      Caption = 'Valor 01:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 51
      Width = 52
      Height = 13
      Caption = 'Valor 02:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 16
      Top = 74
      Width = 52
      Height = 13
      Caption = 'Valor 03:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 16
      Top = 96
      Width = 52
      Height = 13
      Caption = 'Valor 04:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 16
      Top = 119
      Width = 52
      Height = 13
      Caption = 'Valor 05:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 186
      Top = 28
      Width = 71
      Height = 13
      Caption = 'Vencimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 186
      Top = 51
      Width = 71
      Height = 13
      Caption = 'Vencimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 186
      Top = 74
      Width = 71
      Height = 13
      Caption = 'Vencimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 186
      Top = 96
      Width = 71
      Height = 13
      Caption = 'Vencimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 186
      Top = 119
      Width = 71
      Height = 13
      Caption = 'Vencimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 16
      Top = 141
      Width = 52
      Height = 13
      Caption = 'Valor 06:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 186
      Top = 141
      Width = 71
      Height = 13
      Caption = 'Vencimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit4: TEdit
      Left = 81
      Top = 24
      Width = 65
      Height = 21
      Enabled = False
      TabOrder = 0
      OnExit = Edit4Exit
    end
    object Edit6: TEdit
      Left = 81
      Top = 47
      Width = 65
      Height = 21
      Enabled = False
      TabOrder = 2
      OnExit = Edit6Exit
    end
    object Edit8: TEdit
      Left = 81
      Top = 70
      Width = 65
      Height = 21
      Enabled = False
      TabOrder = 4
      OnExit = Edit8Exit
    end
    object Edit10: TEdit
      Left = 81
      Top = 92
      Width = 65
      Height = 21
      Enabled = False
      TabOrder = 6
      OnExit = Edit10Exit
    end
    object Edit12: TEdit
      Left = 81
      Top = 115
      Width = 65
      Height = 21
      Enabled = False
      TabOrder = 8
      OnExit = Edit12Exit
    end
    object Edit5: TEdit
      Left = 269
      Top = 24
      Width = 81
      Height = 21
      Enabled = False
      TabOrder = 1
      OnExit = Edit5Exit
    end
    object Edit7: TEdit
      Left = 269
      Top = 47
      Width = 81
      Height = 21
      Enabled = False
      TabOrder = 3
      OnExit = Edit7Exit
    end
    object Edit9: TEdit
      Left = 269
      Top = 70
      Width = 81
      Height = 21
      Enabled = False
      TabOrder = 5
      OnExit = Edit9Exit
    end
    object Edit11: TEdit
      Left = 269
      Top = 92
      Width = 81
      Height = 21
      Enabled = False
      TabOrder = 7
      OnExit = Edit11Exit
    end
    object Edit13: TEdit
      Left = 269
      Top = 115
      Width = 81
      Height = 21
      Enabled = False
      TabOrder = 9
      OnExit = Edit13Exit
    end
    object Edit14: TEdit
      Left = 81
      Top = 137
      Width = 65
      Height = 21
      Enabled = False
      TabOrder = 10
      OnExit = Edit14Exit
    end
    object Edit15: TEdit
      Left = 269
      Top = 137
      Width = 81
      Height = 21
      Enabled = False
      TabOrder = 11
      OnExit = Edit15Exit
    end
  end
  object BitBtn5: TBitBtn
    Left = 434
    Top = 287
    Width = 42
    Height = 16
    Caption = 'Editar'
    TabOrder = 21
    OnClick = BitBtn5Click
  end
  object eds: TEdit
    Left = 435
    Top = 303
    Width = 40
    Height = 21
    Enabled = False
    PasswordChar = '*'
    TabOrder = 22
    OnExit = edsExit
  end
  object BitBtn3: TBitBtn
    Left = 59
    Top = 449
    Width = 117
    Height = 32
    Caption = 'Nova Simula'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 23
    OnClick = BitBtn3Click
    Glyph.Data = {
      E6000000424DE60000000000000076000000280000000E0000000E0000000100
      0400000000007000000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
      DD00DDDDD4444DDDDD00DDD44444444DDD00DD444DDDD444DD00DD44DDDDDD44
      DD00D44DDDDDDDD44D00D44DDDDDDDD44D00D44DDDDDDDD44D00D44DDDDDDDD4
      4D00DD44DDDD4D44DD00DD44DDDD4444DD00DDDDDDDD444DDD00DDDDDDDD4444
      DD00DDDDDDDDDDDDDD00}
  end
  object BitBtn1: TBitBtn
    Left = 187
    Top = 449
    Width = 120
    Height = 33
    Caption = '&Volta para itens'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 24
    OnClick = BitBtn1Click
    Glyph.Data = {
      E6040000424DE604000000000000360000002800000013000000140000000100
      180000000000B0040000C30E0000C30E00000000000000000000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF8000804080
      803F37007F7F7F7F7F7FBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7F7F7F7F8000804080803F3700000080
      0000807F7F7F7F7F7FBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F8000804080803F37000000808000800000807F
      7F7F7F7F7F7F7F7FBFBFBF000000BFBFBF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
      7F7F7F7F7F7F8000804080803F3700000080000080800080000080BFBFBFBFBF
      BFBFBFBFBFBFBF0000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F80
      00804080803F37000000800000800000808000803F37003F37003F37003F3700
      000080000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF8000804080803F37
      000000800000800000800000808000800000808000800000800000FF0000FF00
      0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF8000804080803F3700000080000080
      000080000080000080000080800080000080800080FFC8CF0000FF000000BFBF
      BFBFBFBFBFBFBFBFBFBF8000804080803F370000008000008000008000008000
      0080000080800080000080800080000080BFBFBF8000FF000000BFBFBFBFBFBF
      BFBFBF8000803F37003F37008000808000808000808000808000808000808000
      80800080800080800080800080FFC8CF8000FF000000BFBFBFBFBFBFBFBFBF80
      00800000800000FF0000FF0000FF0000FF8000FF0000FF8000FF0000FF0000FF
      0000FF8000FF8000FFBFBFBF8000FF000000BFBFBFBFBFBFBFBFBF0000808000
      80FFC8CF8000FFFFC8CF8000FFFFC8CF8000FFFFC8CF8000FF0000FF8000FF80
      00FF8000FFFFC8CF8000FF000000BFBFBFBFBFBFBFBFBFBFBFBF000080800080
      FFC8CF8000FFFFC8CF8000FFFFC8CF8000FFFFC8CF8000FFFFC8CF8000FF8000
      FFBFBFBF8000FF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000080800080FF
      C8CF8000FFFFC8CF8000FFFFC8CF8000FFFFC8CFBFBFBFFFC8CFBFBFBFFFC8CF
      8000FF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000080000080FFC8
      CF8000FFFFC8CF8000FFFFC8CFBFBFBF0000FF0000FF0000FF0000FF0000FF00
      0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF800080000080FFC8CF
      8000FFFFC8CF8000FFFFC8CF8000FFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF800080000080FFC8CF80
      00FFFFC8CFBFBFBF8000FFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF800080000080FFC8CF8000
      FFFFC8CF8000FFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF800080000080FFC8CFBFBFBF
      8000FFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF8000800000800000FF0000FFBF
      BFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF8000808000800000FFBFBFBFBFBF
      BFBFBFBFBFBFBF000000}
  end
  object BitBtn4: TBitBtn
    Left = 318
    Top = 450
    Width = 143
    Height = 33
    Caption = 'Efetiva a Venda'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 25
    OnClick = BitBtn4Click
    Glyph.Data = {
      5A010000424D5A01000000000000760000002800000012000000130000000100
      040000000000E4000000CE0E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777778877777
      7777770000007777844877777777770000007778444487777777770000007784
      4444487777777700000078444C4444877777770000007444C4C4448777777700
      00007C4C444C444877777700000078C44444C4448777770000008444C4444C44
      487777000000444C7C4448C4448777000000C4C777C4448C4448770000007C77
      777C4448C4448700000077777777C4448C4487000000777777777C4448C44700
      00007777777777C4448C7700000077777777777C444877000000777777777777
      C448770000007777777777777C447700000077777777777777C777000000}
  end
  object BtnFechar: TBitBtn
    Left = 318
    Top = 486
    Width = 115
    Height = 29
    Caption = 'Fechar'
    Enabled = False
    TabOrder = 26
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
  object CheckBox1: TCheckBox
    Left = 5
    Top = 537
    Width = 45
    Height = 17
    Caption = 'Msg'
    Color = clBlue
    ParentColor = False
    TabOrder = 28
  end
  object btn1: TButton
    Left = 190
    Top = 489
    Width = 117
    Height = 25
    Caption = 'Teste de Impress'#227'o'
    TabOrder = 27
    OnClick = btn1Click
  end
  object eddesconto: TEdit
    Left = 491
    Top = 8
    Width = 23
    Height = 21
    TabOrder = 29
    Text = '0'
  end
end
