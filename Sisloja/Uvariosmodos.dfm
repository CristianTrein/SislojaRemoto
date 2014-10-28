object Frm_Pgmodos: TFrm_Pgmodos
  Left = 375
  Top = 146
  BorderStyle = bsNone
  Caption = 'Frm_Pgmodos'
  ClientHeight = 534
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 123
    Top = 50
    Width = 81
    Height = 13
    Caption = 'Valor  Devido em'
  end
  object Label2: TLabel
    Left = 159
    Top = 74
    Width = 47
    Height = 13
    Caption = 'Operador:'
  end
  object Label4: TLabel
    Left = 193
    Top = 110
    Width = 88
    Height = 13
    Caption = 'Valor pago a vista:'
  end
  object Label5: TLabel
    Left = 211
    Top = 139
    Width = 69
    Height = 13
    Caption = 'Saldo a pagar:'
  end
  object Label6: TLabel
    Left = 218
    Top = 183
    Width = 57
    Height = 13
    Caption = 'Data m'#233'dia:'
  end
  object Label7: TLabel
    Left = 218
    Top = 214
    Width = 62
    Height = 13
    Caption = 'Prazo M'#233'dio:'
  end
  object Label8: TLabel
    Left = 188
    Top = 308
    Width = 91
    Height = 13
    Caption = 'Valor dos cheques:'
  end
  object Label3: TLabel
    Left = 157
    Top = 334
    Width = 124
    Height = 13
    Caption = 'Valor total da negocia'#231#227'o:'
  end
  object Label10: TLabel
    Left = 22
    Top = 390
    Width = 141
    Height = 13
    Alignment = taRightJustify
    Caption = 'Modo de Pagamento entrada:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 429
    Top = 16
    Width = 88
    Height = 13
    Caption = 'Nr de cheques:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn2: TBitBtn
    Left = 448
    Top = 469
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 31
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
  object eddata: TDateEdit
    Left = 213
    Top = 46
    Width = 88
    Height = 21
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 3
  end
  object edvalorpago: TCurrencyEdit
    Left = 315
    Top = 46
    Width = 82
    Height = 21
    AutoSize = False
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object Combobox1: TEdit
    Left = 213
    Top = 71
    Width = 109
    Height = 21
    Enabled = False
    TabOrder = 5
    Text = 'Combobox1'
  end
  object edvlavista: TCurrencyEdit
    Left = 289
    Top = 104
    Width = 76
    Height = 21
    AutoSize = False
    TabOrder = 6
    OnExit = edvlavistaExit
  end
  object edsaldoavista: TCurrencyEdit
    Left = 289
    Top = 133
    Width = 76
    Height = 21
    AutoSize = False
    Enabled = False
    TabOrder = 7
  end
  object datapgto: TDateEdit
    Left = 283
    Top = 177
    Width = 88
    Height = 21
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 9
  end
  object dmedia: TCurrencyEdit
    Left = 284
    Top = 209
    Width = 33
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = ' ,0.;- ,0.'
    Enabled = False
    TabOrder = 22
  end
  object BitBtn3: TBitBtn
    Left = 219
    Top = 247
    Width = 63
    Height = 33
    Caption = 'Atualizar'
    TabOrder = 23
    OnClick = BitBtn3Click
    Glyph.Data = {
      46050000424D460500000000000036040000280000000D000000110000000100
      08000000000010010000C30E0000C30E00000001000000000000000000008080
      8000000080000080800000800000808000008000000080008000408080004040
      0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
      FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
      80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
      60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
      B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
      1D007666280000450000013E450013286A006A39850085324A00040404000808
      08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
      5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
      840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
      0000000039009B00000000250000000049003B111100002F000000005D004517
      1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
      00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
      2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
      A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
      2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
      89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
      AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
      0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
      0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
      42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
      890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
      C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
      FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
      F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
      FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
      CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
      8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
      7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
      BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
      88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
      A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
      0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
      00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
      001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
      11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
      110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
      11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
      110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
      110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
      0F0F0F0F0F0F0F000000}
  end
  object Memo1: TMemo
    Left = 17
    Top = 166
    Width = 120
    Height = 118
    Color = clInactiveCaptionText
    Lines.Strings = (
      'Procedimento:'
      '==========='
      '1'#186' Informar vlr a vista'
      '2'#186' Informar data '
      'cheques'
      '3'#186' Calcular'
      '4'#186' Atualizar'
      '5'#186' Inf. modo Pagto a '
      'vista'
      '6'#186' Confirmar pagto')
    TabOrder = 8
  end
  object vlcheques: TCurrencyEdit
    Left = 290
    Top = 304
    Width = 76
    Height = 21
    AutoSize = False
    Enabled = False
    TabOrder = 24
  end
  object ValorPago: TCurrencyEdit
    Left = 290
    Top = 330
    Width = 76
    Height = 21
    AutoSize = False
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 25
    OnExit = ValorPagoExit
  end
  object BitBtn4: TBitBtn
    Left = 291
    Top = 352
    Width = 74
    Height = 21
    Caption = 'Editar vl total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 26
    OnClick = BitBtn4Click
  end
  object modopgto: TComboBox
    Left = 184
    Top = 385
    Width = 222
    Height = 21
    Color = clSilver
    DropDownCount = 18
    ItemHeight = 13
    TabOrder = 27
  end
  object BitBtn1: TBitBtn
    Left = 221
    Top = 435
    Width = 123
    Height = 41
    Caption = 'Confirma Pagamento'
    Enabled = False
    TabOrder = 30
    OnClick = BitBtn1Click
    Glyph.Data = {
      06020000424D0602000000000000760000002800000028000000140000000100
      0400000000009001000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      33333333388888888883333333333FFFFFFFFFF3333333330000000000833333
      33338888888888F3333333330FFFFFFFF083333333338F33333F38F333333333
      0FFFF00FF083333333338F33388FF8F3333333330FFF0000F083333333338F33
      8888F8F3333333330FF80000F083333333338F338888F8F3333333330F800000
      0083333333338F38888888F3333333330F000F000083333333338F88838888F3
      333333330F00FFF00083333333338F88333888F3333333330FFFFF0000833333
      33338F33338888FF333333330FFFFF0F0003333333338F33338F888F33333333
      0FFFFF003008333333338FFFFF88388F33333333000000033800333333338888
      88833388F333333333333333330083333333333333333388FF33333333333333
      3330033333333333333333388F33333333333333333303333333333333333333
      8333333333333333333333333333333333333333333333333333333333333333
      33333333333333333333}
    NumGlyphs = 2
  end
  object Panel1: TPanel
    Left = 431
    Top = 40
    Width = 146
    Height = 415
    FullRepaint = False
    TabOrder = 2
    object Label9: TLabel
      Left = 2
      Top = 6
      Width = 123
      Height = 13
      Caption = 'Datas ch.pr'#233'-datados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object d17: TMaskEdit
      Left = 24
      Top = 344
      Width = 62
      Height = 21
      EditMask = '!99/99/00;1;_'
      MaxLength = 8
      TabOrder = 20
      Text = '  /  /  '
      OnExit = d17Exit
    end
    object d16: TMaskEdit
      Left = 24
      Top = 322
      Width = 63
      Height = 21
      EditMask = '!99/99/00;1;_'
      MaxLength = 8
      TabOrder = 18
      Text = '  /  /  '
      OnExit = d16Exit
    end
    object d15: TMaskEdit
      Left = 24
      Top = 301
      Width = 63
      Height = 21
      EditMask = '!99/99/00;1;_'
      MaxLength = 8
      TabOrder = 16
      Text = '  /  /  '
      OnExit = d15Exit
    end
    object d14: TMaskEdit
      Left = 24
      Top = 281
      Width = 63
      Height = 21
      EditMask = '!99/99/00;1;_'
      MaxLength = 8
      TabOrder = 14
      Text = '  /  /  '
      OnExit = d14Exit
    end
    object d13: TMaskEdit
      Left = 24
      Top = 260
      Width = 63
      Height = 21
      EditMask = '!99/99/00;1;_'
      MaxLength = 8
      TabOrder = 12
      Text = '  /  /  '
      OnExit = d13Exit
    end
    object d18: TMaskEdit
      Left = 25
      Top = 365
      Width = 62
      Height = 21
      EditMask = '!99/99/00;1;_'
      MaxLength = 8
      TabOrder = 22
      Text = '  /  /  '
      OnExit = d18Exit
    end
    object Button3: TButton
      Left = 93
      Top = 26
      Width = 40
      Height = 19
      Caption = 'Limpa'
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 93
      Top = 45
      Width = 40
      Height = 19
      Caption = 'Limpa'
      TabOrder = 1
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 93
      Top = 64
      Width = 40
      Height = 19
      Caption = 'Limpa'
      TabOrder = 2
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 93
      Top = 83
      Width = 40
      Height = 19
      Caption = 'Limpa'
      TabOrder = 3
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 93
      Top = 103
      Width = 40
      Height = 19
      Caption = 'Limpa'
      TabOrder = 4
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 93
      Top = 122
      Width = 40
      Height = 19
      Caption = 'Limpa'
      TabOrder = 5
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 93
      Top = 141
      Width = 40
      Height = 19
      Caption = 'Limpa'
      TabOrder = 6
      OnClick = Button9Click
    end
    object Button10: TButton
      Left = 93
      Top = 160
      Width = 40
      Height = 19
      Caption = 'Limpa'
      TabOrder = 7
      OnClick = Button10Click
    end
    object Button11: TButton
      Left = 93
      Top = 323
      Width = 40
      Height = 19
      Caption = 'Limpa'
      TabOrder = 19
      OnClick = Button11Click
    end
    object Button12: TButton
      Left = 93
      Top = 302
      Width = 40
      Height = 19
      Caption = 'Limpa'
      TabOrder = 17
      OnClick = Button12Click
    end
    object Button13: TButton
      Left = 93
      Top = 281
      Width = 40
      Height = 19
      Caption = 'Limpa'
      TabOrder = 15
      OnClick = Button13Click
    end
    object Button14: TButton
      Left = 93
      Top = 260
      Width = 40
      Height = 19
      Caption = 'Limpa'
      TabOrder = 13
      OnClick = Button14Click
    end
    object Button15: TButton
      Left = 93
      Top = 240
      Width = 40
      Height = 19
      Caption = 'Limpa'
      TabOrder = 11
      OnClick = Button15Click
    end
    object Button16: TButton
      Left = 93
      Top = 220
      Width = 40
      Height = 19
      Caption = 'Limpa'
      TabOrder = 10
      OnClick = Button16Click
    end
    object Button17: TButton
      Left = 93
      Top = 200
      Width = 40
      Height = 19
      Caption = 'Limpa'
      TabOrder = 9
      OnClick = Button17Click
    end
    object Button18: TButton
      Left = 93
      Top = 181
      Width = 40
      Height = 19
      Caption = 'Limpa'
      TabOrder = 8
      OnClick = Button18Click
    end
    object Button19: TButton
      Left = 93
      Top = 366
      Width = 40
      Height = 19
      Caption = 'Limpa'
      TabOrder = 23
      OnClick = Button19Click
    end
    object Button20: TButton
      Left = 93
      Top = 345
      Width = 40
      Height = 19
      Caption = 'Limpa'
      TabOrder = 21
      OnClick = Button20Click
    end
  end
  object d1: TMaskEdit
    Left = 456
    Top = 66
    Width = 52
    Height = 21
    EditMask = '!99/99/00;1;_'
    MaxLength = 8
    TabOrder = 10
    Text = '  /  /  '
    OnExit = d1Exit
  end
  object d2: TMaskEdit
    Left = 456
    Top = 85
    Width = 53
    Height = 21
    EditMask = '!99/99/00;1;_'
    MaxLength = 8
    TabOrder = 11
    Text = '  /  /  '
    OnExit = d2Exit
  end
  object d3: TMaskEdit
    Left = 456
    Top = 104
    Width = 54
    Height = 21
    EditMask = '!99/99/00;1;_'
    MaxLength = 8
    TabOrder = 12
    Text = '  /  /  '
    OnExit = d3Exit
  end
  object d4: TMaskEdit
    Left = 456
    Top = 123
    Width = 55
    Height = 21
    EditMask = '!99/99/00;1;_'
    MaxLength = 8
    TabOrder = 13
    Text = '  /  /  '
    OnExit = d4Exit
  end
  object d5: TMaskEdit
    Left = 456
    Top = 143
    Width = 56
    Height = 21
    EditMask = '!99/99/00;1;_'
    MaxLength = 8
    TabOrder = 14
    Text = '  /  /  '
    OnExit = d5Exit
  end
  object d6: TMaskEdit
    Left = 456
    Top = 162
    Width = 57
    Height = 21
    EditMask = '!99/99/00;1;_'
    MaxLength = 8
    TabOrder = 15
    Text = '  /  /  '
    OnExit = d6Exit
  end
  object d7: TMaskEdit
    Left = 456
    Top = 181
    Width = 58
    Height = 21
    EditMask = '!99/99/00;1;_'
    MaxLength = 8
    TabOrder = 16
    Text = '  /  /  '
    OnExit = d7Exit
  end
  object d8: TMaskEdit
    Left = 456
    Top = 200
    Width = 59
    Height = 21
    EditMask = '!99/99/00;1;_'
    MaxLength = 8
    TabOrder = 17
    Text = '  /  /  '
    OnExit = d8Exit
  end
  object d9: TMaskEdit
    Left = 456
    Top = 220
    Width = 60
    Height = 21
    EditMask = '!99/99/00;1;_'
    MaxLength = 8
    TabOrder = 18
    Text = '  /  /  '
    OnExit = d9Exit
  end
  object d10: TMaskEdit
    Left = 456
    Top = 239
    Width = 61
    Height = 21
    EditMask = '!99/99/00;1;_'
    MaxLength = 8
    TabOrder = 19
    Text = '  /  /  '
    OnExit = d10Exit
  end
  object d11: TMaskEdit
    Left = 456
    Top = 258
    Width = 62
    Height = 21
    EditMask = '!99/99/00;1;_'
    MaxLength = 8
    TabOrder = 20
    Text = '  /  /  '
    OnExit = d11Exit
  end
  object d12: TMaskEdit
    Left = 456
    Top = 278
    Width = 63
    Height = 21
    EditMask = '!99/99/00;1;_'
    MaxLength = 8
    TabOrder = 21
    Text = '  /  /  '
    OnExit = d12Exit
  end
  object Button2: TButton
    Left = 440
    Top = 431
    Width = 55
    Height = 21
    Caption = 'Calcular'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 28
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 516
    Top = 431
    Width = 50
    Height = 21
    Caption = 'Limpar'
    TabOrder = 29
    OnClick = Button1Click
  end
  object edtnrvz: TEdit
    Left = 519
    Top = 12
    Width = 27
    Height = 21
    TabOrder = 0
    Text = '1'
  end
  object Button21: TButton
    Left = 550
    Top = 12
    Width = 25
    Height = 21
    Caption = 'ok'
    TabOrder = 1
    OnClick = Button21Click
  end
end
