object FrmRelDataCRec: TFrmRelDataCRec
  Left = 305
  Top = 200
  BorderStyle = bsNone
  Caption = 'Relat'#243'rio de Contas a Receber por Data'
  ClientHeight = 337
  ClientWidth = 431
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
  object tfXPForm1: TtfXPForm
    Left = 0
    Top = 0
    Width = 431
    Height = 337
    BorderColor = clWindowFrame
    TitleCaption = 'Relat'#243'rio de Contas a Receber por data'
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleHeight = 32
    TitleXOffset = 8
    TitleYOffset = 7
    BottomTitleCaption = ' '
    BottomTitleFont.Charset = DEFAULT_CHARSET
    BottomTitleFont.Color = clWhite
    BottomTitleFont.Height = -13
    BottomTitleFont.Name = 'Tahoma'
    BottomTitleFont.Style = [fsBold]
    BottomTitleHeight = 32
    BottomTitleXOffset = 8
    Color = clInfoBk
    object GroupBox1: TGroupBox
      Left = 16
      Top = 48
      Width = 401
      Height = 209
      TabOrder = 3
      object Label1: TLabel
        Left = 8
        Top = 24
        Width = 136
        Height = 32
        Caption = 'Relat'#243'rio entre os '#13#10'vencimentos...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 128
        Width = 127
        Height = 16
        Caption = 'Pagamento para:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object DateEdit1: TDateEdit
        Left = 168
        Top = 24
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 0
        Text = '__/__/____'
      end
      object DateEdit2: TDateEdit
        Left = 168
        Top = 64
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 2
        Text = '__/__/____'
      end
      object RadioButton1: TRadioButton
        Left = 16
        Top = 88
        Width = 113
        Height = 17
        Caption = 'Todos'
        TabOrder = 3
      end
      object RadioButton2: TRadioButton
        Left = 16
        Top = 64
        Width = 121
        Height = 17
        Caption = 'Cliente Selecionado'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object DateEdit3: TDateEdit
        Left = 168
        Top = 128
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 4
        Text = '__/__/____'
      end
      object CheckBox1: TCheckBox
        Left = 5
        Top = 155
        Width = 116
        Height = 17
        Caption = 'Valor Corrigido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = CheckBox1Click
      end
      object CheckBox2: TCheckBox
        Left = 163
        Top = 155
        Width = 77
        Height = 17
        Caption = 'C/Avisos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = CheckBox2Click
      end
      object CheckBox3: TCheckBox
        Left = 244
        Top = 155
        Width = 101
        Height = 17
        Caption = 'Valor original'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnClick = CheckBox3Click
      end
      object CheckBox4: TCheckBox
        Left = 6
        Top = 184
        Width = 179
        Height = 17
        Caption = 'Valor corrigido e individual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object CheckBox5: TCheckBox
        Left = 244
        Top = 182
        Width = 61
        Height = 17
        Caption = 'Soma'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
    end
    object BitBtn1: TBitBtn
      Left = 248
      Top = 272
      Width = 97
      Height = 25
      Caption = '&Ok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
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
      Left = 89
      Top = 272
      Width = 97
      Height = 25
      Caption = '&Fechar'
      TabOrder = 4
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
