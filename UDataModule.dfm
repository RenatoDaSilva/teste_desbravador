object DMMain: TDMMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 355
  Width = 482
  object conDatabase: TFDConnection
    Params.Strings = (
      'DriverID=SQLite'
      
        'Database=C:\Users\renato.silva.HSBR\Documents\Embarcadero\Studio' +
        '\Projects\CRUD\Win32\Debug\crud.db')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object lnkSQLiteDrive: TFDPhysSQLiteDriverLink
    Left = 24
    Top = 80
  end
  object qryClientes: TFDQuery
    Connection = conDatabase
    SQL.Strings = (
      'select'
      '  codigo,'
      '  nome,'
      '  cpf,'
      '  email'
      'from'
      '  clientes;')
    Left = 184
    Top = 24
    object qryClientescodigo: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      ClientAutoIncrement = False
      AutoIncrementSeed = 1
      AutoIncrementStep = 1
    end
    object qryClientesnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object qryClientescpf: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      Size = 11
    end
    object qryClientesemail: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
  end
  object qryFornecedores: TFDQuery
    Connection = conDatabase
    SQL.Strings = (
      'select'
      '  codigo,'
      '  nome,'
      '  cnpj,'
      '  email'
      'from'
      '  fornecedores;')
    Left = 184
    Top = 80
    object qryFornecedoresCodigo: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      ClientAutoIncrement = False
      AutoIncrementSeed = 1
      AutoIncrementStep = 1
    end
    object qryFornecedoresnome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object qryFornecedorescnpj: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'cnpj'
      Origin = 'cnpj'
      Required = True
      Size = 14
    end
    object qryFornecedoresemail: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
  end
  object qryPagar: TFDQuery
    Connection = conDatabase
    SQL.Strings = (
      'select'
      '  codigo,'
      '  duplicata,'
      '  fornecedor,'
      '  vencimento,'
      '  valor,'
      '  plano_de_contas'
      'from'
      '  pagar;')
    Left = 184
    Top = 152
    object qryPagarcodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      ClientAutoIncrement = False
      AutoIncrementSeed = 1
      AutoIncrementStep = 1
    end
    object qryPagarduplicata: TStringField
      FieldName = 'duplicata'
      Origin = 'duplicata'
      Required = True
    end
    object qryPagarfornecedor: TIntegerField
      FieldName = 'fornecedor'
      Origin = 'fornecedor'
    end
    object qryPagarnome_fornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'nome_fornecedor'
      LookupDataSet = qryFornecedores
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'fornecedor'
      Size = 50
      Lookup = True
    end
    object qryPagarvencimento: TDateField
      FieldName = 'vencimento'
      Origin = 'vencimento'
    end
    object qryPagarvalor: TFloatField
      FieldName = 'valor'
      Origin = 'valor'
    end
    object qryPagarplano_de_contas: TIntegerField
      FieldName = 'plano_de_contas'
      Origin = 'plano_de_contas'
    end
  end
  object qryReceber: TFDQuery
    Connection = conDatabase
    SQL.Strings = (
      'select'
      '  codigo,'
      '  duplicata,'
      '  cod_cliente,'
      '  vencimento,'
      '  valor,'
      '  plano_de_contas'
      'from'
      '  receber;')
    Left = 184
    Top = 208
    object qryRecebercodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      ClientAutoIncrement = False
      AutoIncrementSeed = 1
      AutoIncrementStep = 1
    end
    object qryReceberduplicata: TStringField
      FieldName = 'duplicata'
      Origin = 'duplicata'
      Required = True
    end
    object qryRecebervalor: TFloatField
      FieldName = 'valor'
      Origin = 'valor'
    end
    object qryReceberplano_de_contas: TIntegerField
      FieldName = 'plano_de_contas'
      Origin = 'plano_de_contas'
    end
    object qryRecebercod_cliente: TIntegerField
      FieldName = 'cod_cliente'
      Origin = 'cod_cliente'
    end
    object qryReceberNomeCliente: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkLookup
      FieldName = 'nome_cliente'
      LookupDataSet = qryClientes
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'cod_cliente'
      Size = 50
      Lookup = True
    end
    object qryRecebervencimento: TDateField
      FieldName = 'vencimento'
      Origin = 'vencimento'
    end
  end
  object qryPlanoDeContas: TFDQuery
    Connection = conDatabase
    SQL.Strings = (
      'select'
      '  id,'
      '  codigo,'
      '  descricao,'
      '  id_pai,'
      '  analitico_sintetico'
      'from'
      '  planos_de_contas;')
    Left = 184
    Top = 272
    object qryPlanoDeContasid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryPlanoDeContascodigo: TIntegerField
      FieldName = 'codigo'
      Origin = 'codigo'
      Required = True
    end
    object qryPlanoDeContasdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 50
    end
    object qryPlanoDeContasid_pai: TIntegerField
      FieldName = 'id_pai'
      Origin = 'id_pai'
    end
    object qryPlanoDeContasanalitico_sintetico: TStringField
      FieldName = 'analitico_sintetico'
      Origin = 'analitico_sintetico'
      Size = 1
    end
  end
end
