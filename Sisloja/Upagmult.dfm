object FrmPagMult: TFrmPagMult
  Left = 384
  Top = 115
  BorderStyle = bsNone
  Caption = 'FrmPagMult'
  ClientHeight = 556
  ClientWidth = 787
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
  object Label5: TLabel
    Left = 606
    Top = 46
    Width = 57
    Height = 13
    Alignment = taRightJustify
    Caption = 'Pagamento:'
  end
  object Label2: TLabel
    Left = 0
    Top = 32
    Width = 13
    Height = 16
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 48
    Width = 305
    Height = 20
    Caption = 'Clique para marcar/desmarcar contas.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 47
    Top = 435
    Width = 64
    Height = 13
    Alignment = taRightJustify
    Caption = 'Valor Devido:'
  end
  object Label14: TLabel
    Left = 59
    Top = 457
    Width = 50
    Height = 13
    Alignment = taRightJustify
    Caption = 'Calculado:'
  end
  object Label8: TLabel
    Left = 7
    Top = 478
    Width = 102
    Height = 13
    Alignment = taRightJustify
    Caption = 'Modo de Pagamento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 62
    Top = 502
    Width = 47
    Height = 13
    Alignment = taRightJustify
    Caption = 'Operador:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 266
    Top = 434
    Width = 88
    Height = 13
    Alignment = taRightJustify
    Caption = 'Valor Juros/Desc.:'
  end
  object Label6: TLabel
    Left = 299
    Top = 457
    Width = 55
    Height = 13
    Alignment = taRightJustify
    Caption = 'Valor Pago:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 573
    Top = 485
    Width = 68
    Height = 13
    Caption = 'Digite a senha'
    Enabled = False
  end
  object EdData: TDateEdit
    Left = 668
    Top = 41
    Width = 97
    Height = 21
    Enabled = False
    NumGlyphs = 2
    TabOrder = 0
    Text = '__/__/____'
  end
  object DBGrid1: TDBGrid
    Left = 5
    Top = 66
    Width = 774
    Height = 364
    DataSource = IBDM.DtsTempREc
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'M'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCIMENTO'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOCUMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HISTORICO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORORIGINAL'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORDEVIDO'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALPAGO'
        Width = 74
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
        FieldName = 'CONTROLE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARCIAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MPGTO'
        Visible = True
      end>
  end
  object EdValorDevido: TMegaEditNumerico
    Left = 114
    Top = 430
    Width = 97
    Height = 21
    Color = clWhite
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    CorEntra = clWindow
  end
  object edvlcalculado: TCurrencyEdit
    Left = 114
    Top = 452
    Width = 90
    Height = 21
    AutoSize = False
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object modopgto: TComboBox
    Left = 115
    Top = 476
    Width = 252
    Height = 21
    Color = clSilver
    ItemHeight = 13
    TabOrder = 8
  end
  object ComboBox1: TComboBox
    Left = 114
    Top = 499
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 11
  end
  object CheckRecibo: TCheckBox
    Left = 271
    Top = 500
    Width = 59
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Recibo'
    Checked = True
    Color = clYellow
    Enabled = False
    ParentColor = False
    State = cbChecked
    TabOrder = 13
  end
  object BitBtn1: TBitBtn
    Left = 340
    Top = 499
    Width = 113
    Height = 23
    Caption = 'Pagar'
    Enabled = False
    TabOrder = 12
    OnClick = BitBtn1Click
    Glyph.Data = {
      26040000424D2604000000000000360000002800000012000000120000000100
      180000000000F0030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBF00000000000000000000000000000000000000000000000000000000
      0000000000BFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF
      0000BFBFBF000000000000BFBFBF000000000000000000000000000000000000
      FFFFFFFFFFFF000000000000000000FFFFFF000000BFBFBF0000BFBFBFFFFF00
      000000000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF000000BFBFBF0000BFBFBFFFFF00000000FFFFFF00FF
      FFFFFFFF00FFFF000000000000000000000000000000FFFFFFFFFFFF000000FF
      FFFF000000BFBFBF0000BFBFBFFFFF0000000000FFFFFFFFFF00FFFFFFFFFF00
      FFFFFFFFFF00FFFFFFFFFF00FFFF000000FFFFFFFFFFFFFFFFFF000000BFBFBF
      0000BFBFBFFFFF00000000FFFFFF00FFFFFFFFFF00FFFF000000000000000000
      000000000000FFFFFFFFFFFF000000FFFFFF000000BFBFBF0000BFBFBFFFFF00
      00000000FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF0000
      00FFFFFFFFFFFFFFFFFF000000BFBFBF0000BFBFBFFFFF00000000FFFFFF00FF
      FF000000000000000000000000000000000000000000FFFFFFFFFFFF000000FF
      FFFF000000BFBFBF0000BFBFBF000000000000000000FFFFFF00FFFF000000FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF
      0000BFBFBFBFBFBFBFBFBFBFBFBF000000000000000000FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF0000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF000000000000000000FFFFFFFFFF
      FF000000000000000000000000BFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFF
      FFFF000000BFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FF
      0000FF0000FF0000FF0000FF0000FF0000000000FFFFFF000000BFBFBFBFBFBF
      0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBF0000000000000000000000000000000000000000
      00000000BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBF0000}
  end
  object BitBtn3: TBitBtn
    Left = 378
    Top = 471
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 7
    OnClick = BitBtn3Click
    Glyph.Data = {
      EE000000424DEE0000000000000076000000280000000F0000000F0000000100
      0400000000007800000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
      DDD0DDD000000000DDD0DD08888888880DD0DD0FF8F8F8F80DD0DD0F00000008
      0DD0DD0FF8F8F8F80DD0DD0F000000080DD0DD0FF8F8F8F80DD0DD0F00000008
      0DD0DD0FF8F8F8F80DD0DD0F000000080DD0DD0F000000080DD0DD0FFFFFFFF8
      0DD0DDD000000000DDD0DDDDDDDDDDDDDDD0}
  end
  object edvalorpago: TCurrencyEdit
    Left = 361
    Top = 451
    Width = 94
    Height = 21
    AutoSize = False
    Enabled = False
    TabOrder = 5
  end
  object EdValorJuros: TMegaEditNumerico
    Left = 361
    Top = 430
    Width = 93
    Height = 21
    Color = clWhite
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    CorEntra = clWindow
  end
  object BitBtn4: TBitBtn
    Left = 565
    Top = 429
    Width = 212
    Height = 46
    Caption = 'Para pagamento com ch. pr'#233'-datado'
    TabOrder = 2
    OnClick = BitBtn4Click
    Glyph.Data = {
      42010000424D4201000000000000760000002800000011000000110000000100
      040000000000CC00000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      777770000000777777770000000770000000777777770FFFFF07700000007777
      77770FCCCF0770000000777777770FFFFF0770000000777000000FCCCF077000
      0000777077770FFFFF077000000070007CCC0FCCCF0770000000706077770FFF
      FF077000000070607CCC00000007700000007060777770777777700000007060
      7CCC707777747000000070607777707777444000000070600000007777747000
      0000706666607774777470000000700000007777444770000000777777777777
      777770000000}
  end
  object edpass: TEdit
    Left = 648
    Top = 482
    Width = 31
    Height = 21
    Enabled = False
    PasswordChar = '*'
    TabOrder = 10
    OnExit = edpassExit
  end
  object BitBtn2: TBitBtn
    Left = 704
    Top = 479
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 9
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
