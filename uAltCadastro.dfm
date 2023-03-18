object fAltCadastro: TfAltCadastro
  Left = 0
  Top = 0
  Caption = 'Altera'#231#227'o de Cadastro'
  ClientHeight = 484
  ClientWidth = 773
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label11: TLabel
    Left = 328
    Top = 592
    Width = 50
    Height = 13
    Caption = 'data_nasc'
    FocusControl = DBEdit11
  end
  object Label1: TLabel
    Left = 52
    Top = 147
    Width = 51
    Height = 13
    Caption = 'id_contato'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 52
    Top = 187
    Width = 70
    Height = 13
    Caption = 'data_cadastro'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 15
    Top = 227
    Width = 26
    Height = 13
    Caption = 'nome'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 15
    Top = 267
    Width = 45
    Height = 13
    Caption = 'endereco'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 15
    Top = 307
    Width = 28
    Height = 13
    Caption = 'bairro'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 15
    Top = 347
    Width = 17
    Height = 13
    Caption = 'cep'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 511
    Top = 147
    Width = 31
    Height = 13
    Caption = 'cidade'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 511
    Top = 187
    Width = 33
    Height = 13
    Caption = 'estado'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 512
    Top = 227
    Width = 40
    Height = 13
    Caption = 'telefone'
    FocusControl = DBEdit9
  end
  object Label10: TLabel
    Left = 512
    Top = 267
    Width = 24
    Height = 13
    Caption = 'email'
    FocusControl = DBEdit10
  end
  object Label12: TLabel
    Left = 512
    Top = 307
    Width = 50
    Height = 13
    Caption = 'data_nasc'
    FocusControl = DBEdit12
  end
  object DBEdit11: TDBEdit
    Left = 328
    Top = 608
    Width = 132
    Height = 21
    DataField = 'data_nasc'
    TabOrder = 0
  end
  object btnSalvar: TButton
    Left = 24
    Top = 416
    Width = 139
    Height = 25
    Caption = 'Savar Altera'#231#245'es'
    TabOrder = 1
    OnClick = btnSalvarClick
    OnEnter = btnSalvarEnter
    OnExit = btnSalvarExit
  end
  object btnCancelar: TButton
    Left = 208
    Top = 416
    Width = 139
    Height = 25
    Caption = 'Cancelar Altera'#231#245'es'
    TabOrder = 2
    OnClick = btnCancelarClick
  end
  object btnSair: TButton
    Left = 381
    Top = 415
    Width = 79
    Height = 27
    Caption = 'Sair'
    TabOrder = 3
    OnClick = btnSairClick
  end
  object DBEdit1: TDBEdit
    Left = 134
    Top = 144
    Width = 129
    Height = 21
    TabStop = False
    DataField = 'id_contato'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 4
  end
  object DBEdit2: TDBEdit
    Left = 134
    Top = 184
    Width = 127
    Height = 21
    DataField = 'data_cadastro'
    DataSource = DataSource1
    MaxLength = 10
    TabOrder = 5
  end
  object DBEdit3: TDBEdit
    Left = 97
    Top = 224
    Width = 349
    Height = 21
    DataField = 'nome'
    DataSource = DataSource1
    TabOrder = 6
    OnChange = DBEdit3Change
    OnExit = DBEdit3Exit
  end
  object DBEdit4: TDBEdit
    Left = 97
    Top = 264
    Width = 337
    Height = 21
    DataField = 'endereco'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEdit5: TDBEdit
    Left = 97
    Top = 304
    Width = 353
    Height = 21
    DataField = 'bairro'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBEdit6: TDBEdit
    Left = 97
    Top = 344
    Width = 129
    Height = 21
    DataField = 'cep'
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBEdit7: TDBEdit
    Left = 593
    Top = 144
    Width = 127
    Height = 21
    DataField = 'cidade'
    DataSource = DataSource1
    TabOrder = 10
  end
  object DBEdit8: TDBEdit
    Left = 593
    Top = 184
    Width = 25
    Height = 21
    DataField = 'estado'
    DataSource = DataSource1
    TabOrder = 11
  end
  object DBEdit9: TDBEdit
    Left = 593
    Top = 224
    Width = 127
    Height = 21
    DataField = 'telefone'
    DataSource = DataSource1
    TabOrder = 12
  end
  object DBEdit10: TDBEdit
    Left = 593
    Top = 264
    Width = 152
    Height = 21
    DataField = 'email'
    DataSource = DataSource1
    TabOrder = 13
  end
  object DBEdit12: TDBEdit
    Left = 593
    Top = 304
    Width = 152
    Height = 21
    DataField = 'data_nasc'
    DataSource = DataSource1
    MaxLength = 10
    TabOrder = 14
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 761
    Height = 73
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 15
    object Label13: TLabel
      Left = 24
      Top = 16
      Width = 131
      Height = 16
      Caption = 'Nome a ser alterado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 448
      Top = 16
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object Edit1: TEdit
      Left = 161
      Top = 15
      Width = 264
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      Text = 'EDIT1'
    end
    object btnIniciarAlt: TBitBtn
      Left = 503
      Top = 13
      Width = 107
      Height = 25
      Caption = 'Inicar altera'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnIniciarAltClick
    end
  end
  object DataSource1: TDataSource
    DataSet = dmNovaAgenda.tb_contatos
    Left = 712
    Top = 416
  end
end
