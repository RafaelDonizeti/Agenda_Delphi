object dmNovaAgenda: TdmNovaAgenda
  OldCreateOrder = False
  Height = 470
  Width = 617
  object fdNovaAgenda: TFDConnection
    Params.Strings = (
      'Database=novaagenda'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    Left = 40
    Top = 16
  end
  object vendorMySQL: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\Rafael\Desktop\libmysql.dll'
    Left = 520
    Top = 40
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 272
    Top = 16
  end
  object tb_contatos: TFDTable
    Active = True
    IndexFieldNames = 'nome'
    Connection = fdNovaAgenda
    TableName = 'novaagenda.contatos'
    Left = 112
    Top = 16
    object tb_contatosid_contato: TFDAutoIncField
      FieldName = 'id_contato'
      Origin = 'id_contato'
      ReadOnly = True
    end
    object tb_contatosdata_cadastro: TDateField
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
      Required = True
      EditMask = '99/99/9999'
    end
    object tb_contatosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 60
    end
    object tb_contatosendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Required = True
      Size = 60
    end
    object tb_contatosbairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Required = True
      Size = 60
    end
    object tb_contatoscep: TStringField
      FieldName = 'cep'
      Origin = 'cep'
      Required = True
      Size = 10
    end
    object tb_contatoscidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Required = True
      Size = 40
    end
    object tb_contatosestado: TStringField
      FieldName = 'estado'
      Origin = 'estado'
      Required = True
      Size = 2
    end
    object tb_contatostelefone: TStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Required = True
    end
    object tb_contatosemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Required = True
      Size = 50
    end
    object tb_contatosdata_nasc: TDateField
      FieldName = 'data_nasc'
      Origin = 'data_nasc'
      Required = True
      EditMask = '99/99/9999'
    end
  end
  object fdtContatos: TFDTransaction
    Connection = fdNovaAgenda
    Left = 176
    Top = 16
  end
  object qVer: TFDQuery
    Connection = fdNovaAgenda
    Left = 328
    Top = 96
  end
  object qBuscaNome: TFDQuery
    Active = True
    Connection = fdNovaAgenda
    SQL.Strings = (
      'select nome,telefone from contatos')
    Left = 384
    Top = 96
    object qBuscaNomenome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 60
    end
    object qBuscaNometelefone: TStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Required = True
    end
  end
  object testeQ: TFDQuery
    Connection = fdNovaAgenda
    Left = 328
    Top = 184
  end
  object qConsEsc: TFDQuery
    Active = True
    Connection = fdNovaAgenda
    SQL.Strings = (
      'SELECT * from contatos')
    Left = 441
    Top = 96
    object qConsEscid_contato: TFDAutoIncField
      FieldName = 'id_contato'
      Origin = 'id_contato'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qConsEscdata_cadastro: TDateField
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
      Required = True
    end
    object qConsEscnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 60
    end
    object qConsEscendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Required = True
      Size = 60
    end
    object qConsEscbairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Required = True
      Size = 60
    end
    object qConsEsccep: TStringField
      FieldName = 'cep'
      Origin = 'cep'
      Required = True
      Size = 10
    end
    object qConsEsccidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Required = True
      Size = 40
    end
    object qConsEscestado: TStringField
      FieldName = 'estado'
      Origin = 'estado'
      Required = True
      Size = 2
    end
    object qConsEsctelefone: TStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Required = True
    end
    object qConsEscemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Required = True
      Size = 50
    end
    object qConsEscdata_nasc: TDateField
      FieldName = 'data_nasc'
      Origin = 'data_nasc'
      Required = True
    end
  end
end
