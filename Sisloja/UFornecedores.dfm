object FrmEdFornecedores: TFrmEdFornecedores
  Left = 423
  Top = 102
  BorderStyle = bsNone
  Caption = 'Fornecedores'
  ClientHeight = 466
  ClientWidth = 586
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 75
    Top = 48
    Width = 36
    Height = 13
    Alignment = taRightJustify
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 67
    Top = 72
    Width = 44
    Height = 13
    Alignment = taRightJustify
    Caption = 'Empresa:'
  end
  object Label3: TLabel
    Left = 71
    Top = 96
    Width = 40
    Height = 13
    Alignment = taRightJustify
    Caption = 'Contato:'
  end
  object Label16: TLabel
    Left = 92
    Top = 408
    Width = 22
    Height = 13
    Caption = 'Obs:'
  end
  object Label15: TLabel
    Left = 85
    Top = 384
    Width = 28
    Height = 13
    Alignment = taRightJustify
    Caption = 'INSC:'
  end
  object Label14: TLabel
    Left = 84
    Top = 360
    Width = 30
    Height = 13
    Alignment = taRightJustify
    Caption = 'CNPJ:'
  end
  object Label13: TLabel
    Left = 9
    Top = 336
    Width = 100
    Height = 13
    Alignment = taRightJustify
    Caption = 'Refer'#234'ncia Banc'#225'ria:'
    Visible = False
  end
  object Label12: TLabel
    Left = 5
    Top = 312
    Width = 104
    Height = 13
    Alignment = taRightJustify
    Caption = 'Refer'#234'ncia Comercial:'
    Visible = False
  end
  object Label11: TLabel
    Left = 79
    Top = 288
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'E-mail:'
  end
  object Label10: TLabel
    Left = 74
    Top = 264
    Width = 35
    Height = 13
    Alignment = taRightJustify
    Caption = 'Celular:'
  end
  object Label9: TLabel
    Left = 66
    Top = 240
    Width = 45
    Height = 13
    Alignment = taRightJustify
    Caption = 'Telefone:'
  end
  object Label8: TLabel
    Left = 94
    Top = 216
    Width = 17
    Height = 13
    Alignment = taRightJustify
    Caption = 'UF:'
  end
  object Label7: TLabel
    Left = 89
    Top = 192
    Width = 22
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cep:'
  end
  object Label6: TLabel
    Left = 78
    Top = 168
    Width = 36
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cidade:'
  end
  object Label5: TLabel
    Left = 84
    Top = 144
    Width = 30
    Height = 13
    Alignment = taRightJustify
    Caption = 'Bairro:'
  end
  object Label4: TLabel
    Left = 65
    Top = 120
    Width = 49
    Height = 13
    Alignment = taRightJustify
    Caption = 'Endere'#231'o:'
  end
  object Label17: TLabel
    Left = 341
    Top = 144
    Width = 45
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cadastro:'
  end
  object Label19: TLabel
    Left = 368
    Top = 240
    Width = 20
    Height = 13
    Alignment = taRightJustify
    Caption = 'Fax:'
  end
  object Edcodigo: TEdit
    Left = 120
    Top = 40
    Width = 96
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object CheckBox1: TCheckBox
    Left = 312
    Top = 40
    Width = 168
    Height = 17
    Caption = 'C'#243'digo Autoincremento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    OnClick = CheckBox1Click
  end
  object Ednome: TEdit
    Left = 120
    Top = 64
    Width = 296
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object EdContato: TEdit
    Left = 120
    Top = 88
    Width = 264
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object EdEndereco: TEdit
    Left = 120
    Top = 112
    Width = 248
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
  end
  object EdBairro: TEdit
    Left = 120
    Top = 136
    Width = 120
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
  end
  object EdCidade: TEdit
    Left = 120
    Top = 160
    Width = 120
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 7
  end
  object EdCep: TMaskEdit
    Left = 120
    Top = 184
    Width = 72
    Height = 21
    CharCase = ecUpperCase
    EditMask = '00000\-999;1;_'
    MaxLength = 9
    TabOrder = 8
    Text = '     -   '
  end
  object EdUf: TEdit
    Left = 120
    Top = 208
    Width = 32
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 9
  end
  object EdFone: TEdit
    Left = 120
    Top = 232
    Width = 120
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 10
  end
  object EdCelular: TEdit
    Left = 120
    Top = 256
    Width = 120
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 12
  end
  object EdEmail: TEdit
    Left = 120
    Top = 280
    Width = 248
    Height = 21
    CharCase = ecLowerCase
    TabOrder = 13
  end
  object EdRefComercial: TEdit
    Left = 120
    Top = 304
    Width = 176
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 14
    Visible = False
  end
  object EdRefBancaria: TEdit
    Left = 120
    Top = 328
    Width = 176
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 15
    Visible = False
  end
  object EdCnpj: TEdit
    Left = 120
    Top = 352
    Width = 120
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 16
  end
  object EdInsc: TEdit
    Left = 120
    Top = 376
    Width = 120
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 18
  end
  object EdObs: TEdit
    Left = 120
    Top = 400
    Width = 296
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 19
  end
  object DateEdit1: TDateEdit
    Left = 392
    Top = 136
    Width = 121
    Height = 21
    TabStop = False
    Enabled = False
    NumGlyphs = 2
    TabOrder = 6
    Text = '__/__/____'
  end
  object EdFax: TEdit
    Left = 392
    Top = 232
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 11
  end
  object Btngravar: TBitBtn
    Left = 503
    Top = 368
    Width = 75
    Height = 25
    Caption = '&Grava'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
    OnClick = BtngravarClick
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
  object BtnFechar: TBitBtn
    Left = 503
    Top = 400
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 20
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
