object fExclusao: TfExclusao
  Left = 0
  Top = 0
  Caption = 'Exclus'#227'o de Dados'
  ClientHeight = 505
  ClientWidth = 761
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 761
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 136
      Height = 13
      Caption = 'Digite o Nome Para exclus'#227'o'
    end
    object Edit1: TEdit
      Left = 160
      Top = 13
      Width = 297
      Height = 21
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 472
      Top = 11
      Width = 49
      Height = 25
      Align = alCustom
      Caption = '...'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object btnExcluir: TBitBtn
      Left = 160
      Top = 40
      Width = 105
      Height = 25
      Caption = 'Excluir Registro'
      TabOrder = 2
      OnClick = btnExcluirClick
    end
    object btnLimpar: TBitBtn
      Left = 296
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Limpar'
      TabOrder = 3
      OnClick = btnLimparClick
    end
    object btnSair: TBitBtn
      Left = 535
      Top = 11
      Width = 82
      Height = 46
      Caption = 'Sair'
      TabOrder = 4
      OnClick = btnSairClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 761
    Height = 432
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 52
      Top = 99
      Width = 61
      Height = 13
      Caption = 'id_contato'
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 52
      Top = 139
      Width = 83
      Height = 13
      Caption = 'data_cadastro'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 15
      Top = 179
      Width = 32
      Height = 13
      Caption = 'nome'
      FocusControl = DBEdit3
    end
    object Label5: TLabel
      Left = 15
      Top = 219
      Width = 53
      Height = 13
      Caption = 'endereco'
      FocusControl = DBEdit4
    end
    object Label6: TLabel
      Left = 15
      Top = 259
      Width = 34
      Height = 13
      Caption = 'bairro'
      FocusControl = DBEdit5
    end
    object Label7: TLabel
      Left = 15
      Top = 299
      Width = 20
      Height = 13
      Caption = 'cep'
      FocusControl = DBEdit6
    end
    object Label8: TLabel
      Left = 511
      Top = 99
      Width = 37
      Height = 13
      Caption = 'cidade'
      FocusControl = DBEdit7
    end
    object Label9: TLabel
      Left = 511
      Top = 139
      Width = 39
      Height = 13
      Caption = 'estado'
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 512
      Top = 179
      Width = 47
      Height = 13
      Caption = 'telefone'
      FocusControl = DBEdit10
    end
    object Label11: TLabel
      Left = 512
      Top = 219
      Width = 31
      Height = 13
      Caption = 'email'
      FocusControl = DBEdit11
    end
    object Label12: TLabel
      Left = 512
      Top = 259
      Width = 59
      Height = 13
      Caption = 'data_nasc'
      FocusControl = DBEdit12
    end
    object DBEdit8: TDBEdit
      Left = 593
      Top = 48
      Width = 0
      Height = 21
      DataField = 'estado'
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 134
      Top = 96
      Width = 125
      Height = 21
      TabStop = False
      DataField = 'id_contato'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 134
      Top = 136
      Width = 123
      Height = 21
      DataField = 'data_cadastro'
      DataSource = DataSource1
      MaxLength = 10
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 97
      Top = 176
      Width = 345
      Height = 21
      DataField = 'nome'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 97
      Top = 216
      Width = 333
      Height = 21
      DataField = 'endereco'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 97
      Top = 256
      Width = 349
      Height = 21
      DataField = 'bairro'
      DataSource = DataSource1
      TabOrder = 5
    end
    object DBEdit6: TDBEdit
      Left = 97
      Top = 296
      Width = 125
      Height = 21
      DataField = 'cep'
      DataSource = DataSource1
      TabOrder = 6
    end
    object DBEdit7: TDBEdit
      Left = 593
      Top = 96
      Width = 123
      Height = 21
      DataField = 'cidade'
      DataSource = DataSource1
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 593
      Top = 136
      Width = 21
      Height = 21
      DataField = 'estado'
      DataSource = DataSource1
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 593
      Top = 176
      Width = 123
      Height = 21
      DataField = 'telefone'
      DataSource = DataSource1
      TabOrder = 9
    end
    object DBEdit11: TDBEdit
      Left = 593
      Top = 216
      Width = 148
      Height = 21
      DataField = 'email'
      DataSource = DataSource1
      TabOrder = 10
    end
    object DBEdit12: TDBEdit
      Left = 593
      Top = 256
      Width = 148
      Height = 21
      DataField = 'data_nasc'
      DataSource = DataSource1
      MaxLength = 10
      TabOrder = 11
    end
  end
  object DataSource1: TDataSource
    DataSet = dmNovaAgenda.tb_contatos
    Left = 552
    Top = 97
  end
end
