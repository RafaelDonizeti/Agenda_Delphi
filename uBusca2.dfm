object fBuscaNome2: TfBuscaNome2
  Left = 0
  Top = 0
  Caption = 'Busca de nome da agenda'
  ClientHeight = 271
  ClientWidth = 677
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 88
    Height = 16
    Caption = 'Digite o nome'
  end
  object Edit1: TEdit
    Left = 176
    Top = 21
    Width = 121
    Height = 24
    TabOrder = 0
    OnChange = Edit1Change
  end
  object BitBtn1: TBitBtn
    Left = 336
    Top = 21
    Width = 75
    Height = 25
    Caption = 'Limpar '
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 456
    Top = 21
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object DBGrid1: TDBGrid
    Left = 23
    Top = 83
    Width = 617
    Height = 153
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Width = 201
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        Width = 182
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = dmNovaAgenda.qBuscaNome
    Left = 528
    Top = 112
  end
end
