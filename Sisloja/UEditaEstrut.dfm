object FrmEditaEstrut: TFrmEditaEstrut
  Left = 277
  Top = 127
  Width = 508
  Height = 274
  Caption = 'Edi'#231'ao da Estrutura'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 312
    Top = 216
    Width = 75
    Height = 25
    Caption = '&Gravar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
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
  object BitBtn2: TBitBtn
    Left = 400
    Top = 216
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 2
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 16
    Width = 481
    Height = 193
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 192
      Top = 32
      Width = 5
      Height = 13
      Caption = '.'
    end
    object Label1: TLabel
      Left = 64
      Top = 32
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto:'
    end
    object Label2: TLabel
      Left = 41
      Top = 64
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Caption = 'Componente:'
    end
    object Label3: TLabel
      Left = 48
      Top = 96
      Width = 54
      Height = 13
      Caption = 'Sequ'#234'ncia:'
    end
    object RxLabel2: TRxLabel
      Left = 200
      Top = 64
      Width = 5
      Height = 13
      Caption = '.'
    end
    object Label4: TLabel
      Left = 46
      Top = 128
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantidade:'
    end
    object Label5: TLabel
      Left = 49
      Top = 160
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dimens'#245'es:'
    end
    object edproduto: TEdit
      Left = 112
      Top = 24
      Width = 73
      Height = 21
      TabOrder = 0
      OnExit = edprodutoExit
    end
    object edcomp: TEdit
      Left = 112
      Top = 56
      Width = 81
      Height = 21
      TabOrder = 1
    end
    object edsequencia: TEdit
      Left = 112
      Top = 88
      Width = 81
      Height = 21
      TabOrder = 2
    end
    object edquantidade: TCurrencyEdit
      Left = 112
      Top = 120
      Width = 81
      Height = 21
      AutoSize = False
      DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 3
    end
    object eddimensao: TEdit
      Left = 112
      Top = 152
      Width = 297
      Height = 21
      TabOrder = 4
    end
  end
end
