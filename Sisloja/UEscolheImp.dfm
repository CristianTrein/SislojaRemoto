object FrmEscolheImp: TFrmEscolheImp
  Left = 320
  Top = 182
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FrmEscolheImp'
  ClientHeight = 414
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 50
    Top = 304
    Width = 338
    Height = 47
  end
  object Label7: TLabel
    Left = 191
    Top = 325
    Width = 23
    Height = 13
    Caption = 'M'#234's:'
  end
  object Label1: TLabel
    Left = 131
    Top = 161
    Width = 169
    Height = 13
    Caption = 'Per'#237'odo para avalia'#231#227'o do Ranking'
  end
  object Label2: TLabel
    Left = 207
    Top = 184
    Width = 15
    Height = 13
    Caption = 'at'#233
  end
  object Edit19: TEdit
    Left = 219
    Top = 322
    Width = 26
    Height = 21
    Color = clMoneyGreen
    TabOrder = 6
  end
  object btn1: TBitBtn
    Left = 192
    Top = 374
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 7
    OnClick = btn1Click
  end
  object btn2: TBitBtn
    Left = 64
    Top = 318
    Width = 75
    Height = 25
    Caption = 'List.Aniv'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TBitBtn
    Left = 296
    Top = 318
    Width = 75
    Height = 25
    Caption = 'Etiq. Aniv'
    TabOrder = 5
    OnClick = btn3Click
  end
  object btn4: TBitBtn
    Left = 72
    Top = 60
    Width = 75
    Height = 25
    Caption = 'Cadastro'
    TabOrder = 1
    OnClick = btn4Click
  end
  object btn5: TBitBtn
    Left = 72
    Top = 105
    Width = 75
    Height = 25
    Caption = 'Listagem'
    TabOrder = 3
    OnClick = btn5Click
  end
  object btn6: TBitBtn
    Left = 288
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Cadastro Sel.'
    TabOrder = 0
    OnClick = btn6Click
  end
  object btn7: TBitBtn
    Left = 288
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Etiq.Selec.'
    TabOrder = 2
    OnClick = btn7Click
  end
  object Button1: TButton
    Left = 154
    Top = 215
    Width = 125
    Height = 25
    Caption = 'Ranking de Compras'
    TabOrder = 8
  end
  object dti: TDateEdit
    Left = 72
    Top = 180
    Width = 121
    Height = 21
    DialogTitle = 'Selecione a data:'
    NumGlyphs = 2
    TabOrder = 9
  end
  object dtf: TDateEdit
    Left = 241
    Top = 180
    Width = 121
    Height = 21
    DefaultToday = True
    DialogTitle = 'Selecione a Data'
    NumGlyphs = 2
    TabOrder = 10
  end
end
