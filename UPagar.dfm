inherited FPagar: TFPagar
  Caption = 'Pagar'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBtnBar: TPanel
    inherited dbnvgrMaster: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited pnlForm: TPanel
    object lbl1: TLabel
      Left = 24
      Top = 16
      Width = 31
      Height = 13
      Caption = 'codigo'
      FocusControl = dbedtcodigo
    end
    object lbl2: TLabel
      Left = 184
      Top = 16
      Width = 43
      Height = 13
      Caption = 'duplicata'
      FocusControl = dbedtduplicata
    end
    object lbl3: TLabel
      Left = 24
      Top = 72
      Width = 85
      Height = 13
      Caption = 'nome_fornecedor'
      FocusControl = cbbnome_fornecedor
    end
    object lbl4: TLabel
      Left = 24
      Top = 120
      Width = 55
      Height = 13
      Caption = 'vencimento'
    end
    object lbl5: TLabel
      Left = 184
      Top = 120
      Width = 24
      Height = 13
      Caption = 'valor'
      FocusControl = dbedtvalor
    end
    object dbedtcodigo: TDBEdit
      Left = 24
      Top = 32
      Width = 134
      Height = 21
      DataField = 'codigo'
      DataSource = dsMaster
      TabOrder = 0
    end
    object dbedtduplicata: TDBEdit
      Left = 184
      Top = 32
      Width = 264
      Height = 21
      DataField = 'duplicata'
      DataSource = dsMaster
      TabOrder = 1
    end
    object cbbnome_fornecedor: TDBLookupComboBox
      Left = 24
      Top = 89
      Width = 424
      Height = 21
      DataField = 'nome_fornecedor'
      DataSource = dsMaster
      TabOrder = 2
    end
    object dbedtvalor: TDBEdit
      Left = 184
      Top = 136
      Width = 134
      Height = 21
      DataField = 'valor'
      DataSource = dsMaster
      TabOrder = 3
    end
    object dtpVencimento: TDateTimePicker
      Left = 24
      Top = 139
      Width = 110
      Height = 21
      Date = 44404.964885439820000000
      Time = 44404.964885439820000000
      TabOrder = 4
      OnChange = dtpVencimentoChange
    end
  end
  inherited dsMaster: TDataSource
    DataSet = DMMain.qryPagar
    OnStateChange = dsMasterStateChange
  end
  object dsFornecedores: TDataSource
    AutoEdit = False
    DataSet = DMMain.qryFornecedores
    Left = 416
    Top = 173
  end
end
