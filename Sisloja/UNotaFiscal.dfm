object FrmNotaFiscal: TFrmNotaFiscal
  Left = 162
  Top = 152
  BorderStyle = bsNone
  Caption = 'Nota Fiscal 1'#170' parte'
  ClientHeight = 548
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 192
    Top = 32
    Width = 111
    Height = 13
    Caption = 'Natureza da Opera'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 192
    Top = 72
    Width = 49
    Height = 13
    Caption = 'Vendedor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel
    Left = 495
    Top = 32
    Width = 56
    Height = 13
    Alignment = taRightJustify
    Caption = 'N'#186' da Nota:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label16: TLabel
    Left = 496
    Top = 72
    Width = 31
    Height = 13
    Caption = 'CFOP:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 34
    Width = 56
    Height = 17
    Caption = 'Sa'#237'da'
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    OnClick = CheckBox1Click
  end
  object CheckBox2: TCheckBox
    Left = 80
    Top = 34
    Width = 64
    Height = 17
    Caption = 'Entrada'
    Color = clInfoBk
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 49
    Width = 128
    Height = 60
    Caption = 'CFOP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object RadioButton1: TRadioButton
      Left = 8
      Top = 20
      Width = 73
      Height = 17
      Caption = 'ESTADO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 8
      Top = 37
      Width = 113
      Height = 17
      Caption = 'FORA do ESTADO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = RadioButton2Click
    end
  end
  object ComboBox1: TComboBox
    Left = 192
    Top = 48
    Width = 272
    Height = 21
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 3
    OnExit = ComboBox1Exit
    Items.Strings = (
      'Venda de Merc. Rec. de Terceiros'
      'Devolucao de compra de material de uso ou consumo'
      'Remessa de amostra gratis'
      'Remessa de Merc. p/ demostracao'
      'Remessa p/ conserto ou reparos'
      'Retorno de Merc. ou bem recebido p/ conserto'
      ''
      'Venda de Merc. Rec. de Terceiros'
      'Devolucao de compra de material de uso ou consumo'
      'Remessa de amostra gratis'
      'Remessa p/ conserto ou reparos'
      'Retorno de Merc. ou bem recebido p/ conserto')
  end
  object ComboBox3: TComboBox
    Left = 192
    Top = 88
    Width = 128
    Height = 21
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 6
    OnExit = ComboBox3Exit
  end
  object Edit10: TEdit
    Left = 495
    Top = 48
    Width = 120
    Height = 21
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnExit = Edit10Exit
  end
  object Edit12: TEdit
    Left = 495
    Top = 88
    Width = 88
    Height = 21
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object Panel1: TPanel
    Left = 655
    Top = 35
    Width = 121
    Height = 79
    TabOrder = 2
    object Label11: TLabel
      Left = 16
      Top = 7
      Width = 68
      Height = 13
      Caption = 'Data Emiss'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 16
      Top = 43
      Width = 73
      Height = 13
      Caption = 'Hora da Sa'#237'da:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DateEdit1: TDateEdit
      Left = 16
      Top = 20
      Width = 89
      Height = 21
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      GlyphKind = gkCustom
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
        B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
        1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
        BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
        BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
      NumGlyphs = 1
      ParentFont = False
      TabOrder = 0
      Text = '__/__/____'
    end
    object RxClock1: TRxClock
      Left = 16
      Top = 56
      Width = 89
      Height = 21
      BevelOuter = bvLowered
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 120
    Width = 777
    Height = 97
    Caption = 'Destinat'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    object Label4: TLabel
      Left = 24
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 581
      Top = 24
      Width = 61
      Height = 13
      Caption = 'CNPJ / CPF:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 48
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 421
      Top = 48
      Width = 30
      Height = 13
      Caption = 'Bairro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 19
      Top = 72
      Width = 36
      Height = 13
      Caption = 'Cidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 216
      Top = 72
      Width = 27
      Height = 13
      Caption = 'Fone:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 432
      Top = 72
      Width = 17
      Height = 13
      Caption = 'UF:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 616
      Top = 48
      Width = 24
      Height = 13
      Caption = 'CEP:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 613
      Top = 72
      Width = 28
      Height = 13
      Caption = 'INSC:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ComboBox2: TComboBox
      Left = 64
      Top = 16
      Width = 513
      Height = 21
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      OnClick = ComboBox2Click
    end
    object Edit3: TEdit
      Left = 648
      Top = 16
      Width = 121
      Height = 21
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edit4: TEdit
      Left = 64
      Top = 40
      Width = 305
      Height = 21
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Edit5: TEdit
      Left = 456
      Top = 40
      Width = 121
      Height = 21
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Edit6: TEdit
      Left = 64
      Top = 64
      Width = 121
      Height = 21
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit8: TEdit
      Left = 248
      Top = 64
      Width = 121
      Height = 21
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Edit9: TEdit
      Left = 456
      Top = 64
      Width = 33
      Height = 21
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object Edit7: TMaskEdit
      Left = 648
      Top = 40
      Width = 65
      Height = 21
      Color = clBackground
      EditMask = '00000\-999;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      TabOrder = 4
      Text = '     -   '
    end
    object Edit11: TEdit
      Left = 648
      Top = 64
      Width = 121
      Height = 21
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
  end
  object BitBtn3: TBitBtn
    Left = 8
    Top = 226
    Width = 97
    Height = 31
    Caption = 'Produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = BitBtn3Click
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF2EACD934AFDA31AEDAFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1FA6D57ECFE968D2
      EC49C3E529ADD929ADD929ADD9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      19A3D4A9DFF0CDFFFF8FFBFF94F6FF85EBF974DFF262D2EC50C6E729ADD929AD
      D929ADD9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFB78083B68082B68082B68082B68082B68083B68083B68083B68083B68083
      B781838EF1FD79E3F568D7F053C9E929ADD929ADD929ADD9FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFB78083F9E5CCF1D9BBF0D4B3EED1AAEECCA0ECC897EB
      C895EBC896F1CF98BF8C8692F7FF96F9FF97FAFF94F6FF8EF1FE83E8FA76E1F5
      29ADD929ADD9FF00FFFF00FFFF00FFFF00FFB48176FEF1DBF6E2C8F5DEBFF3DA
      B5F2D5ABC7D19505720A06750C087C0F088110067D0E06740A06730B8DF3FF8E
      F3FF92F4FF94F6FF85EAFF51C7EC20A8D6FF00FFFF00FFFF00FFBA8E85FFF4E5
      F7E5D1F5E1C9F4DEBEF3D8B4448A3E7DA9727DA972448A3E0A8C150C97180B8E
      1306770D056C098BF1FE8AF0FE8AF0FE7AE4FD75DFFA36B6DEFF00FFFF00FFFF
      00FFCB9A82FFFAEFF9EADAF6E6D1F5E2C8F5DDBEF2D9B5F1D4ABF0D0A1F4D49A
      C08D860A87130FA41C0B941706740B06760B8BEFFE8CF0FE75E0FB80E6FE56CB
      EAFF00FFFF00FFFF00FFCB9A82FFFFFAFAF0E5F8EBDBF6E7D1F5E2C7F4DDBFF2
      D8B5F0D4AAF6D7A3C08D87EECCA00C8D160FAA1E088A1204710A8BEFFE8CF0FE
      75DFFA7EE5FD7CE5F827ABD8FF00FFFF00FFDCA887FFFFFFFDF6F0FAF0E5F9EB
      DAF8E7D1F5E2C8F5DDBEF2D9B5F8DCAEC08E89F2D5AB04710A23B33918A62A00
      69028BEFFE8CF0FE75DFFA78E0FB97F7FF3CBAE0FF00FFFF00FFE3B18EFFFFFF
      FEFCFAFCF6F0F9F0E6F8EBDBF7E6D1F6E0C7F5DDBD04710909790F0D7D150E7E
      1935C35526B43E057409087C0F077A0E00660075DFFA9CFBFF63D5EE1BA4D4FF
      00FFEDBD92FFFFFFFFFFFFFFFCFAFCF6EFFAF0E4F9EADAFBEBD5FBEACF006702
      108E1A2EAB484ACE7249D47138C55826B53D23B13713922000660071DFFB94F6
      FF92F4FF2DB1DBFF00FFEDBD92FFFFFFFFFFFFFFFFFFFEFCFAFCF6EFFCF1E6F2
      E1D0D5C0B2B7A79E00650113801E4FD67B5AE48B46D16C1EAA31149220006600
      75E1FC71DFFB8EF3FF9DFEFF51CCEAFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFBFDF9F2B68083B68083B68083B68083005F0011811D64F19C59E4890F
      8B19006600B3F0FAA6E8FAAAEBFDBBFAFFC3FFFFA6EFFC27AAD7EDBD92FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBB68083E2AD70CA967BF9F0E6F8EBDB0066
      003CBC5E35B35300660084D2EB8AD5EC8AD3EB89CFE88BD0E890D4EB94D7ED2C
      ACD8DCA887FCF7F4FBF5F1FAF4F0F9F3F0F9F5F2F5EFEEB68083CA967BFFFCFA
      FCF6EFFAF0E4F9EADA0C7F150B7D14ECDDBD2AAAD82AAAD82AAAD814A2D314A0
      D21BA4D420A6D41DA6D5DCA887DCA887DCA887DCA887DCA887DCA887DCA887DC
      A887FFFFFFFFFFFFFEFCFAFCF6EFFCF1E6F2E1D0D5C0B2B7A79EB48487A8FFFF
      2AAAD8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2AAAD8C0FF
      FF93FEFFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFDF9F2B68083B68083B6
      8083B680832AAAD82AAAD8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF2AAAD893DDEF9CF0F7EDBD92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB
      FBB68083E2AD70CA967BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FF2AAAD82AAAD8DCA887FCF7F4FBF5F1FAF4F0
      F9F3F0F9F5F2F5EFEEB68083CA967BFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDCA887DC
      A887DCA887DCA887DCA887DCA887DCA887DCA887FF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
  end
  object BitBtn4: TBitBtn
    Left = 120
    Top = 227
    Width = 113
    Height = 30
    Caption = 'Excluir Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = BitBtn4Click
    Glyph.Data = {
      42040000424D4204000000000000420000002800000020000000100000000100
      1000030000000004000000000000000000000000000000000000007C0000E003
      00001F000000E03DE03DE03D000000000000000000000000000000000000E03D
      E03DE03DE03DE03DE03DE03DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DFF7F
      E03DE03DE03DE03DE03DE03D0000FF7FEF3DEF3DEF3DEF3DEF3DEF3D0000E03D
      E03DE03DE03DE03DE03DE03DEF3DFF7FE03DFF7FE03DFF7FE03DFF7FEF3DFF7F
      E03DE03DE03DE03DE03DE03D0000FF7F0000F75E0000F75E0000EF3D0000E03D
      E03DE03DE03DE03DE03DE03DEF3DFF7FEF3DFF7FEF3DFF7FEF3DFF7FEF3DFF7F
      E03DE03DE03DE03DE03DE03D0000FF7F0000F75E0000EF3D0000EF3D0000E03D
      E03DE03DE03DE03DE03DE03DEF3DFF7FEF3DFF7FEF3DFF7FEF3DFF7FEF3DFF7F
      E03DE03DE03DE03DE03DE03D0000FF7F0000F75E0000F75E0000EF3D0000E03D
      E03DE03DE03DE03DE03DE03DEF3DFF7FEF3DFF7FEF3DFF7FEF3DFF7FEF3DFF7F
      E03DE03DE03DE03DE03DE03D0000FF7F0000F75E0000EF3D0000EF3D0000E03D
      E03DE03DE03DE03DE03DE03DEF3DFF7FEF3DFF7FEF3DFF7FEF3DFF7FEF3DFF7F
      E03DE03DE03DE03DE03DE03D0000FF7F0000F75E0000F75E0000EF3D0000E03D
      E03DE03DE03DE03DE03DFF7FEF3DFF7FEF3DFF7FEF3DFF7FEF3DFF7FEF3DFF7F
      E03DFF7FE03DE03D0000E03D0000FF7F0000F75E0000EF3D0000EF3D0000E03D
      0000E03DE03DE03DEF3DE03DEF3DFF7FEF3DFF7FEF3DFF7FEF3DFF7FEF3DFF7F
      EF3DE03DE03DE03DE03D00000000FF7F0000F75E0000F75E0000EF3D00000000
      E03DE03DE03DE03DE03DEF3DEF3DFF7FEF3DFF7FEF3DFF7FEF3DFF7FEF3DEF3D
      E03DE03DE03DE03DE03DE03D0000FF7F0000F75E0000EF3D0000EF3D0000E03D
      E03DE03DE03DE03DE03DE03DEF3DFF7FEF3DFF7FEF3DFF7FEF3DFF7FEF3DFF7F
      E03DE03DE03DE03DE03DE03D0000EF3D0000EF3D0000EF3D0000EF3D0000E03D
      E03DE03DE03DE03DE03DE03DEF3DFF7FEF3DFF7FEF3DFF7FEF3DFF7FEF3DFF7F
      FF7FE03DE03DE03DE03D00000000000000000000000000000000000000000000
      E03DE03DE03DE03DE03DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3D
      FF7FE03DE03DE03DE03D0000FF7FF75EF75EF75EEF3DEF3DEF3DEF3DEF3D0000
      E03DE03DE03DE03DE03DEF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FEF3D
      FF7FE03DE03DE03DE03D00000000000000000000000000000000000000000000
      E03DE03DE03DE03DE03DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3D
      E03DE03DE03DE03DE03DE03DE03DE03D0000EF3DEF3DEF3D0000E03DE03DE03D
      E03DE03DE03DE03DE03DE03DE03DE03DEF3DFF7FFF7FFF7FEF3DFF7FE03DE03D
      E03DE03DE03DE03DE03DE03DE03DE03D00000000000000000000E03DE03DE03D
      E03DE03DE03DE03DE03DE03DE03DE03DEF3DEF3DEF3DEF3DEF3DE03DE03DE03D
      E03DE03DE03D}
    NumGlyphs = 2
  end
  object BitBtn5: TBitBtn
    Left = 248
    Top = 228
    Width = 105
    Height = 29
    Caption = 'Novo Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = BitBtn5Click
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00999999999999
      999999000000000000999987777777777099998FFFFFFFFF7099998FFFFFFFFF
      7099998FFFFFFFFF7099998FFFFFFFFF7099998FFFFFFFFF7099998FFFFFFFFF
      7099998FFFFFFFFF7099998FFFFFFFFF7099998FFFFFFF000099998FFFFFFF7F
      8999998FFFFFFF78999999888888888999999999999999999999}
  end
  object BitBtn2: TBitBtn
    Left = 525
    Top = 227
    Width = 91
    Height = 25
    Caption = 'Fechar'
    TabOrder = 11
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
  object BitBtn1: TBitBtn
    Left = 623
    Top = 227
    Width = 145
    Height = 25
    Caption = '2'#170' Parte da Nota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object GroupBox2: TGroupBox
    Left = 4
    Top = 256
    Width = 772
    Height = 257
    Caption = 'Dados do Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    object DBGrid1: TDBGrid
      Left = 6
      Top = 16
      Width = 755
      Height = 233
      TabStop = False
      Color = clBackground
      DataSource = IBDM.DTSTemp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Width = 310
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SITTRIB'
          Title.Alignment = taCenter
          Title.Caption = 'Sit. Trib.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNID'
          Title.Alignment = taCenter
          Title.Caption = 'Unid.'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORUNIT'
          Title.Alignment = taCenter
          Title.Caption = 'ValorUnit'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORTOT'
          Title.Alignment = taCenter
          Title.Caption = 'ValorTotal'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALIQ'
          Title.Alignment = taCenter
          Title.Caption = 'Aliq'
          Width = 39
          Visible = True
        end>
    end
  end
end
