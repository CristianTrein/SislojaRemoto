object FrmQuitarConta: TFrmQuitarConta
  Left = 253
  Top = 192
  BorderStyle = bsNone
  Caption = 'Quitar Conta (Receber)'
  ClientHeight = 419
  ClientWidth = 616
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
  object Label11: TLabel
    Left = 88
    Top = 37
    Width = 65
    Height = 20
    Caption = 'Label11'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 89
    Top = 59
    Width = 56
    Height = 16
    Caption = 'Label12'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 75
    Width = 601
    Height = 260
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 27
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vencimento:'
    end
    object Label2: TLabel
      Left = 207
      Top = 29
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pagamento:'
    end
    object Label3: TLabel
      Left = 5
      Top = 64
      Width = 64
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor Devido:'
    end
    object Label4: TLabel
      Left = 180
      Top = 64
      Width = 88
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor Juros/Desc.:'
    end
    object Label5: TLabel
      Left = 214
      Top = 101
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
    object Label6: TLabel
      Left = 494
      Top = 233
      Width = 72
      Height = 13
      Caption = 'Nr. de Parciais:'
    end
    object Label7: TLabel
      Left = 20
      Top = 188
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object Label8: TLabel
      Left = 4
      Top = 152
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
      Left = 57
      Top = 169
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
    object Label14: TLabel
      Left = 19
      Top = 98
      Width = 50
      Height = 13
      Alignment = taRightJustify
      Caption = 'Calculado:'
    end
    object Panel1: TPanel
      Left = 400
      Top = 16
      Width = 193
      Height = 169
      TabOrder = 0
      object Label9: TLabel
        Left = 37
        Top = 68
        Width = 26
        Height = 13
        Caption = 'Data:'
      end
      object Label10: TLabel
        Left = 35
        Top = 113
        Width = 24
        Height = 13
        Caption = 'Valor'
      end
      object dtsim: TDateEdit
        Left = 35
        Top = 83
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
      end
      object vlsim: TCurrencyEdit
        Left = 35
        Top = 126
        Width = 120
        Height = 21
        AutoSize = False
        TabOrder = 2
      end
      object BitBtn4: TBitBtn
        Left = 101
        Top = 30
        Width = 89
        Height = 29
        Caption = 'Simular todas'
        TabOrder = 0
        OnClick = BitBtn4Click
        Glyph.Data = {
          46020000424D460200000000000036000000280000000E0000000C0000000100
          1800000000001002000000000000000000000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F0000
          000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBF7F7F7F00000000FFFF0000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BF7F7F7F000000BFBFBFBFBFBF7F7F7F00000000FFFF000000BFBFBF0000BFBF
          BFBFBFBFBFBFBFBFBFBF7F7F7F00000000FFFF0000007F7F7F00000000FFFF00
          FFFF000000BFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBF7F7F7F00000000FFFF00
          FFFF00000000FFFF00FFFF000000BFBFBFBFBFBF6910BFBFBFBFBFBFBFBFBF7F
          7F7F00000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000BFBFBFBFBFBF
          2337BFBFBFBFBFBF7F7F7F00000000FFFF00FFFF00FFFF00000000FFFF00FFFF
          000000BFBFBFBFBFBFBFBFBF544EBFBFBFBFBFBF7F7F7F00000000FFFF00FFFF
          000000BFBFBF00000000FFFF000000BFBFBFBFBFBFBFBFBF0000BFBFBF7F7F7F
          00000000FFFF00FFFF000000BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBF
          BFBFBFBF0000BFBFBF7F7F7F00000000FFFF000000BFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBF00000000FFFF000000BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
          BF000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBF0000}
      end
    end
    object EdVencimento: TEdit
      Left = 79
      Top = 21
      Width = 97
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object CheckQuitar: TCheckBox
      Left = 27
      Top = 234
      Width = 86
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Quitar Conta:'
      Checked = True
      Color = clYellow
      ParentColor = False
      State = cbChecked
      TabOrder = 12
      OnClick = CheckQuitarClick
    end
    object CheckRecibo: TCheckBox
      Left = 414
      Top = 234
      Width = 59
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Recibo'
      Checked = True
      Color = clYellow
      Enabled = False
      ParentColor = False
      State = cbChecked
      TabOrder = 14
    end
    object EdValorDevido: TMegaEditNumerico
      Left = 77
      Top = 59
      Width = 97
      Height = 21
      Color = clWhite
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      CorEntra = clWindow
    end
    object EdValorJuros: TMegaEditNumerico
      Left = 276
      Top = 60
      Width = 97
      Height = 21
      Color = clWhite
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      CorEntra = clWindow
    end
    object EdData: TDateEdit
      Left = 276
      Top = 24
      Width = 97
      Height = 21
      Enabled = False
      NumGlyphs = 2
      TabOrder = 2
      Text = '__/__/____'
    end
    object edparcial: TEdit
      Left = 573
      Top = 230
      Width = 15
      Height = 21
      Enabled = False
      TabOrder = 11
      Text = '0'
    end
    object edobs: TEdit
      Left = 18
      Top = 206
      Width = 569
      Height = 21
      TabOrder = 10
    end
    object BitBtn3: TBitBtn
      Left = 414
      Top = 46
      Width = 89
      Height = 29
      Caption = 'Simular esta'
      TabOrder = 3
      OnClick = BitBtn3Click
      Glyph.Data = {
        46020000424D460200000000000036000000280000000E0000000C0000000100
        1800000000001002000000000000000000000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F0000
        000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF7F7F7F00000000FFFF0000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BF7F7F7F000000BFBFBFBFBFBF7F7F7F00000000FFFF000000BFBFBF0000BFBF
        BFBFBFBFBFBFBFBFBFBF7F7F7F00000000FFFF0000007F7F7F00000000FFFF00
        FFFF000000BFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBF7F7F7F00000000FFFF00
        FFFF00000000FFFF00FFFF000000BFBFBFBFBFBF6910BFBFBFBFBFBFBFBFBF7F
        7F7F00000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000BFBFBFBFBFBF
        2337BFBFBFBFBFBF7F7F7F00000000FFFF00FFFF00FFFF00000000FFFF00FFFF
        000000BFBFBFBFBFBFBFBFBF544EBFBFBFBFBFBF7F7F7F00000000FFFF00FFFF
        000000BFBFBF00000000FFFF000000BFBFBFBFBFBFBFBFBF0000BFBFBF7F7F7F
        00000000FFFF00FFFF000000BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBF
        BFBFBFBF0000BFBFBF7F7F7F00000000FFFF000000BFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBF00000000FFFF000000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
        BF000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBF0000}
    end
    object modopgto: TComboBox
      Left = 110
      Top = 146
      Width = 265
      Height = 21
      Color = clSilver
      ItemHeight = 13
      TabOrder = 8
    end
    object Checkparcial: TCheckBox
      Left = 115
      Top = 234
      Width = 97
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Pagto Parcial'
      Color = clYellow
      ParentColor = False
      TabOrder = 13
      OnClick = CheckparcialClick
    end
    object edvalorpago: TCurrencyEdit
      Left = 277
      Top = 93
      Width = 94
      Height = 21
      AutoSize = False
      TabOrder = 7
      OnExit = edvalorpagoExit
    end
    object ComboBox1: TComboBox
      Left = 110
      Top = 166
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 9
    end
    object edvlcalculado: TCurrencyEdit
      Left = 79
      Top = 93
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
  end
  object BitBtn2: TBitBtn
    Left = 213
    Top = 337
    Width = 89
    Height = 33
    Caption = '&Fechar'
    TabOrder = 1
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
    Left = 317
    Top = 337
    Width = 89
    Height = 33
    Caption = '&Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
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
