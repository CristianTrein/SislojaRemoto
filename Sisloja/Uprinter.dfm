object Frmprinter: TFrmprinter
  Left = 332
  Top = 172
  Width = 552
  Height = 485
  Caption = 'Frmprinter'
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
  object StaticText1: TStaticText
    Left = 8
    Top = 432
    Width = 58
    Height = 17
    Caption = 'StaticText1'
    TabOrder = 0
  end
  object Button1: TButton
    Left = 216
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 216
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 216
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 216
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Button4'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 216
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Button5'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Memo1: TMemo
    Left = 136
    Top = 264
    Width = 345
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 6
  end
  object edcomp: TEdit
    Left = 392
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 7
    Text = 'edcomp'
  end
  object edalt: TEdit
    Left = 392
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 8
    Text = 'edalt'
  end
  object Button6: TButton
    Left = 56
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Button6'
    TabOrder = 9
    OnClick = Button6Click
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 160
    Width = 115
    Height = 25
    Caption = 'Tem fonte Draft ?'
    TabOrder = 10
    OnClick = BitBtn1Click
  end
end
