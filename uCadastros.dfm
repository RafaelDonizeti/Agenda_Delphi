object fCadastro: TfCadastro
  Left = 0
  Top = 0
  Caption = 'Cadastro de Contatos'
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
    Top = 11
    Width = 51
    Height = 13
    Caption = 'id_contato'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 52
    Top = 51
    Width = 70
    Height = 13
    Caption = 'data_cadastro'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 15
    Top = 91
    Width = 26
    Height = 13
    Caption = 'nome'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 15
    Top = 131
    Width = 45
    Height = 13
    Caption = 'endereco'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 15
    Top = 171
    Width = 28
    Height = 13
    Caption = 'bairro'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 15
    Top = 211
    Width = 17
    Height = 13
    Caption = 'cep'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 511
    Top = 11
    Width = 31
    Height = 13
    Caption = 'cidade'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 511
    Top = 51
    Width = 33
    Height = 13
    Caption = 'estado'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 512
    Top = 91
    Width = 40
    Height = 13
    Caption = 'telefone'
    FocusControl = DBEdit9
  end
  object Label10: TLabel
    Left = 512
    Top = 131
    Width = 24
    Height = 13
    Caption = 'email'
    FocusControl = DBEdit10
  end
  object Label12: TLabel
    Left = 512
    Top = 171
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
    Top = 280
    Width = 71
    Height = 25
    Caption = 'Salvar'
    TabOrder = 1
    OnClick = btnSalvarClick
  end
  object btnNovo: TButton
    Left = 105
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 2
    OnClick = btnNovoClick
  end
  object btnCancelar: TButton
    Left = 186
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = btnCancelarClick
  end
  object btnSair: TButton
    Left = 278
    Top = 279
    Width = 79
    Height = 27
    Caption = 'Sair'
    TabOrder = 4
    OnClick = btnSairClick
  end
  object DBEdit1: TDBEdit
    Left = 134
    Top = 8
    Width = 129
    Height = 21
    TabStop = False
    DataField = 'id_contato'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 5
  end
  object DBEdit2: TDBEdit
    Left = 134
    Top = 48
    Width = 127
    Height = 21
    DataField = 'data_cadastro'
    DataSource = DataSource1
    MaxLength = 10
    TabOrder = 6
  end
  object DBEdit3: TDBEdit
    Left = 97
    Top = 88
    Width = 349
    Height = 21
    DataField = 'nome'
    DataSource = DataSource1
    TabOrder = 7
    OnChange = DBEdit3Change
    OnExit = DBEdit3Exit
  end
  object DBEdit4: TDBEdit
    Left = 97
    Top = 128
    Width = 353
    Height = 21
    DataField = 'endereco'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBEdit5: TDBEdit
    Left = 97
    Top = 168
    Width = 353
    Height = 21
    DataField = 'bairro'
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBEdit6: TDBEdit
    Left = 97
    Top = 208
    Width = 129
    Height = 21
    DataField = 'cep'
    DataSource = DataSource1
    TabOrder = 10
  end
  object DBEdit7: TDBEdit
    Left = 593
    Top = 8
    Width = 127
    Height = 21
    DataField = 'cidade'
    DataSource = DataSource1
    TabOrder = 11
  end
  object DBEdit8: TDBEdit
    Left = 593
    Top = 48
    Width = 25
    Height = 21
    DataField = 'estado'
    DataSource = DataSource1
    TabOrder = 12
  end
  object DBEdit9: TDBEdit
    Left = 593
    Top = 88
    Width = 127
    Height = 21
    DataField = 'telefone'
    DataSource = DataSource1
    TabOrder = 13
  end
  object DBEdit10: TDBEdit
    Left = 593
    Top = 128
    Width = 152
    Height = 21
    DataField = 'email'
    DataSource = DataSource1
    TabOrder = 14
  end
  object DBEdit12: TDBEdit
    Left = 593
    Top = 168
    Width = 152
    Height = 21
    DataField = 'data_nasc'
    DataSource = DataSource1
    MaxLength = 10
    TabOrder = 15
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 328
    Width = 745
    Height = 148
    TabStop = False
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 16
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_contato'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_cadastro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'endereco'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bairro'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cep'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cidade'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estado'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_nasc'
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = dmNovaAgenda.tb_contatos
    Left = 712
    Top = 208
  end
end
