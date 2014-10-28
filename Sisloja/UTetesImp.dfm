object FrmTesteImp: TFrmTesteImp
  Left = 333
  Top = 174
  Width = 443
  Height = 494
  Caption = 'FrmTesteImp'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TBitBtn
    Left = 80
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Status Imp'
    TabOrder = 0
    OnClick = btn1Click
  end
  object edt1: TEdit
    Left = 184
    Top = 90
    Width = 204
    Height = 21
    TabOrder = 1
  end
  object btn2: TButton
    Left = 80
    Top = 144
    Width = 75
    Height = 25
    Caption = 'c/API'
    TabOrder = 2
    OnClick = btn2Click
  end
end
