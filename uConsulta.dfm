object fConsulta: TfConsulta
  Left = 0
  Top = 0
  Caption = 'Formul'#225'rio de Consultas'
  ClientHeight = 394
  ClientWidth = 750
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
  object Panel1: TPanel
    Left = 32
    Top = 24
    Width = 698
    Height = 113
    TabOrder = 0
    object Label1: TLabel
      Left = 208
      Top = 20
      Width = 200
      Height = 16
      Caption = 'Escolha uma forma de consulta'
    end
    object rbNome: TRadioButton
      Left = 25
      Top = 52
      Width = 113
      Height = 17
      Caption = 'Nome'
      TabOrder = 0
    end
    object rbDataCad: TRadioButton
      Left = 104
      Top = 50
      Width = 161
      Height = 17
      Caption = 'Data de Cadastro'
      TabOrder = 1
    end
    object rbBairro: TRadioButton
      Left = 257
      Top = 50
      Width = 113
      Height = 17
      Caption = 'Bairro'
      TabOrder = 2
    end
    object rbCidade: TRadioButton
      Left = 368
      Top = 50
      Width = 113
      Height = 17
      Caption = 'Cidade'
      TabOrder = 3
    end
    object rbDataNasc: TRadioButton
      Left = 472
      Top = 50
      Width = 161
      Height = 17
      Caption = 'Data de Nascimento'
      TabOrder = 4
    end
    object Edit1: TEdit
      Left = 31
      Top = 75
      Width = 296
      Height = 24
      TabOrder = 5
    end
    object btnConsultar: TBitBtn
      Left = 333
      Top = 73
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 6
      OnClick = btnConsultarClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 143
    Width = 633
    Height = 243
    DataSource = dsqConEsc
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'data_cadastro'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 133
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bairro'
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cidade'
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_nasc'
        Visible = True
      end>
  end
  object btnLimpar: TBitBtn
    Left = 459
    Top = 97
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 2
  end
  object btnImprimir: TBitBtn
    Left = 551
    Top = 97
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 3
    OnClick = btnImprimirClick
  end
  object dsqConEsc: TDataSource
    DataSet = dmNovaAgenda.qConsEsc
    Left = 664
    Top = 40
  end
end
