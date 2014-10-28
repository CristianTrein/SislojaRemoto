object FrmNotaVenda: TFrmNotaVenda
  Left = 260
  Top = 175
  BorderStyle = bsSingle
  Caption = 'Inclus'#227'o de Nota de Venda'
  ClientHeight = 454
  ClientWidth = 562
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 40
    Width = 545
    Height = 369
    TabOrder = 0
    object Label1: TLabel
      Left = 184
      Top = 16
      Width = 176
      Height = 24
      Caption = 'Inclus'#227'o de Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 45
      Top = 80
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = 'Controle:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 68
      Top = 112
      Width = 28
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 42
      Top = 144
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Operador:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 52
      Top = 205
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 33
      Top = 237
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Caption = 'Documento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 296
      Top = 222
      Width = 9
      Height = 13
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -3
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 440
      Top = 205
      Width = 6
      Height = 13
      Caption = '0'
      Visible = False
    end
    object Label7: TLabel
      Left = 256
      Top = 144
      Width = 6
      Height = 13
      Caption = '0'
      Visible = False
    end
    object Label5: TLabel
      Left = 72
      Top = 260
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'cfop:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object alerta: TLabel
      Left = 480
      Top = 325
      Width = 9
      Height = 13
      Caption = '..'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 42
      Top = 174
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vendedor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 256
      Top = 168
      Width = 6
      Height = 13
      Caption = '0'
    end
    object lblimite: TRxLabel
      Left = 325
      Top = 290
      Width = 7
      Height = 16
      Caption = '.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 104
      Top = 72
      Width = 49
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 320
      Top = 309
      Width = 153
      Height = 33
      Caption = '&Itens da Nota'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = BitBtn1Click
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000CE0E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888844488888888888884448800000000088444888888888888888888888888
        8888888888888888888884448888888888888444880000000008844488888888
        8888888888888888888888888888888888888444888888888888844488000000
        000884448888888888888888888888888888}
    end
    object BitBtn2: TBitBtn
      Left = 80
      Top = 309
      Width = 153
      Height = 33
      Caption = '&Fechar'
      TabOrder = 3
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
    object Edit4: TEdit
      Left = 104
      Top = 104
      Width = 160
      Height = 21
      Enabled = False
      TabOrder = 6
    end
    object Edit5: TEdit
      Left = 104
      Top = 229
      Width = 81
      Height = 21
      TabStop = False
      TabOrder = 2
      Text = '0'
      OnExit = Edit5Exit
    end
    object ComboBox1x: TComboBox
      Left = 104
      Top = 199
      Width = 329
      Height = 21
      ItemHeight = 13
      TabOrder = 8
      OnChange = ComboBox1xChange
      OnClick = ComboBox1xClick
      OnExit = ComboBox1xExit
    end
    object ComboBox2: TComboBox
      Left = 104
      Top = 136
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 4
      OnClick = ComboBox2Click
      OnExit = ComboBox2Exit
    end
    object edcfop: TEdit
      Left = 104
      Top = 253
      Width = 65
      Height = 21
      TabStop = False
      TabOrder = 1
      Visible = False
    end
    object ComboBox3: TComboBox
      Left = 104
      Top = 166
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 5
      OnClick = ComboBox3Click
      OnExit = ComboBox3Exit
    end
    object ComboBox1: TDBComboBox
      Left = 104
      Top = 48
      Width = 329
      Height = 21
      Style = csDropDownList
      DataField = 'NOME'
      DataSource = IBDM.DTSClientes
      ItemHeight = 13
      ReadOnly = True
      Sorted = True
      TabOrder = 7
      Visible = False
      OnEnter = ComboBox1Enter
      OnExit = ComboBox1Exit
    end
  end
end
