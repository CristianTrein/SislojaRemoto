object Frmedcondi: TFrmedcondi
  Left = 235
  Top = 173
  Width = 720
  Height = 500
  Caption = 'Frmedcondi'
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
  object DBGrid1: TDBGrid
    Left = 16
    Top = 65
    Width = 675
    Height = 155
    DataSource = IBDM.dtscd
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CONTROLE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ACE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIFOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPERADOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPERADOR1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORTOTAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORLIQ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORDEV'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAPRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORAPRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATADEV'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORADEV'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOCVENDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBS'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 16
    Top = 232
    Width = 677
    Height = 177
    DataSource = IBDM.dtsicd
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CONTROLE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEQ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SIT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOCTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORUNITARIO'
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn
    Left = 600
    Top = 424
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
  object Edit1: TEdit
    Left = 296
    Top = 37
    Width = 305
    Height = 21
    TabOrder = 3
    OnKeyPress = Edit1KeyPress
  end
  object RadioButton1: TRadioButton
    Left = 29
    Top = 24
    Width = 113
    Height = 17
    Caption = 'Acertado'
    TabOrder = 4
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 29
    Top = 44
    Width = 113
    Height = 17
    Caption = 'Não acertado'
    TabOrder = 5
    OnClick = RadioButton2Click
  end
  object RadioButton3: TRadioButton
    Left = 29
    Top = 5
    Width = 113
    Height = 17
    Caption = 'Todos'
    Checked = True
    TabOrder = 6
    TabStop = True
    OnClick = RadioButton3Click
  end
  object BitBtn24: TBitBtn
    Left = 130
    Top = 424
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 7
    OnClick = BitBtn24Click
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00999999999999
      999999000000000000999987777777777099998FFFFFFFFF7099998FFFFFFFFF
      7099998FFFFFFFFF7099998FFFFFFFFF7099998FFFFFFFFF7099998FFFFFFFFF
      7099998FFFFFFFFF7099998FFFFFFFFF7099998FFFFFFF000099998FFFFFFF7F
      8999998FFFFFFF78999999888888888999999999999999999999}
  end
  object BitBtn25: TBitBtn
    Left = 226
    Top = 424
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 8
    OnClick = BitBtn25Click
    Glyph.Data = {
      EE000000424DEE000000000000007600000028000000100000000F0000000100
      04000000000078000000CE0E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777070707077
      7777777777777007777777777777730077777777777773B807770000000003B7
      08778FFFFFFFFF3B80778F8F88F88F3B70878FFFFFFFFFF3B8078F88F888F883
      B0088FFFFFFFFFFF11108F888F88FFFF11078FFFFFFFFFFF0777C44444444444
      4777C444444444444777CCCCCCCCCCCC4777}
  end
  object BitBtn26: TBitBtn
    Left = 322
    Top = 424
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 9
    OnClick = BitBtn26Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
      3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
      33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
      33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
      333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
      03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
      33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
      0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
      3333333337FFF7F3333333333000003333333333377777333333}
    NumGlyphs = 2
  end
  object BitBtn27: TBitBtn
    Left = 418
    Top = 424
    Width = 75
    Height = 25
    Caption = 'Relatório'
    TabOrder = 10
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
end
