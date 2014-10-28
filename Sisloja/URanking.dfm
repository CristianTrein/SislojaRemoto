object FrmRanking: TFrmRanking
  Left = 211
  Top = 196
  BorderStyle = bsNone
  Caption = 'Ranking de Compras e Vendas'
  ClientHeight = 524
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Grafico: TChart
    Left = 8
    Top = 40
    Width = 758
    Height = 441
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Gradient.EndColor = clBlack
    Gradient.StartColor = clYellow
    Gradient.Visible = True
    LeftWall.Color = clLime
    Title.Font.Charset = ANSI_CHARSET
    Title.Font.Color = clAqua
    Title.Font.Height = -19
    Title.Font.Name = 'Times New Roman'
    Title.Font.Style = [fsBold]
    Title.Frame.Style = psDot
    Title.Frame.Visible = True
    Title.Text.Strings = (
      'TChart')
    Chart3DPercent = 45
    TabOrder = 0
    object Series1: TBarSeries
      Marks.ArrowLength = 20
      Marks.Style = smsValue
      Marks.Visible = True
      SeriesColor = clBlue
      Title = 'A Vista'
      BarWidthPercent = 75
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series2: TBarSeries
      Marks.ArrowLength = 20
      Marks.Style = smsValue
      Marks.Visible = True
      SeriesColor = clRed
      Title = 'A Prazo'
      BarWidthPercent = 75
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object DadosGrafico: TIBQuery
    Database = IBDM.IBDB
    Transaction = IBDM.IBTr
    BufferChunks = 1000
    CachedUpdates = False
    Left = 712
    Top = 400
  end
end
