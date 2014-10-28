object FrmRepEtiqueta: TFrmRepEtiqueta
  Left = 267
  Top = 156
  Width = 387
  Height = 221
  Caption = 'Repetir Etiqueta'
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 361
    Height = 177
    TabOrder = 0
    object Label1: TLabel
      Left = 64
      Top = 16
      Width = 44
      Height = 13
      Caption = 'Código:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 58
      Top = 32
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 11
      Top = 48
      Width = 96
      Height = 13
      Alignment = taRightJustify
      Caption = 'Preço de Venda:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 112
      Top = 16
      Width = 3
      Height = 13
      Caption = '.'
    end
    object Label5: TLabel
      Left = 112
      Top = 32
      Width = 3
      Height = 13
      Caption = '.'
    end
    object Label6: TLabel
      Left = 112
      Top = 48
      Width = 3
      Height = 13
      Caption = '.'
    end
    object Label7: TLabel
      Left = 17
      Top = 96
      Width = 87
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nº de Repetições:'
    end
    object Edit1: TEdit
      Left = 112
      Top = 88
      Width = 33
      Height = 21
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 200
      Top = 136
      Width = 105
      Height = 25
      Caption = '&Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777777777777777777777777744444444477777774FFFFFFF477777774F000
        00F470000004FFFFFFF470FFFFF4F00000F470F00004FFFFFFF470FFFFF4F00F
        444470F00004FFFF4F4770FFFFF4FFFF447770F00F044444477770FFFF0F0777
        777770FFFF00777777777000000777777777}
    end
    object BitBtn2: TBitBtn
      Left = 56
      Top = 136
      Width = 107
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
  end
end
