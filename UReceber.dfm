inherited FReceber: TFReceber
  Caption = 'FReceber'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBtnBar: TPanel
    inherited dbnvgrMaster: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited pnlForm: TPanel
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = dbedtcodigo
    end
    object Label2: TLabel
      Left = 184
      Top = 16
      Width = 44
      Height = 13
      Caption = 'Duplicata'
      FocusControl = dbedtduplicata
    end
    object Label4: TLabel
      Left = 16
      Top = 112
      Width = 55
      Height = 13
      Caption = 'Vencimento'
    end
    object Label5: TLabel
      Left = 154
      Top = 115
      Width = 24
      Height = 13
      Caption = 'Valor'
      FocusControl = dbedtvalor
    end
    object lbl1: TLabel
      Left = 16
      Top = 67
      Width = 33
      Height = 13
      Caption = 'Cliente'
      FocusControl = cbbnome_cliente
    end
    object dbedtcodigo: TDBEdit
      Left = 16
      Top = 32
      Width = 134
      Height = 21
      DataField = 'codigo'
      DataSource = dsMaster
      ReadOnly = True
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
    object dbedtvalor: TDBEdit
      Left = 154
      Top = 131
      Width = 134
      Height = 21
      DataField = 'valor'
      DataSource = dsMaster
      TabOrder = 2
    end
    object cbbnome_cliente: TDBLookupComboBox
      Left = 16
      Top = 85
      Width = 432
      Height = 21
      DataField = 'nome_cliente'
      DataSource = dsMaster
      KeyField = 'codigo'
      ListField = 'nome'
      ListSource = dsClientes
      TabOrder = 3
    end
    object dtpVencimento: TDateTimePicker
      Left = 16
      Top = 131
      Width = 110
      Height = 21
      Date = 44404.964885439820000000
      Time = 44404.964885439820000000
      TabOrder = 4
      OnChange = dtpVencimentoChange
    end
  end
  inherited dsMaster: TDataSource
    DataSet = DMMain.qryReceber
    OnStateChange = dsMasterStateChange
  end
  object dsClientes: TDataSource
    AutoEdit = False
    DataSet = DMMain.qryClientes
    OnStateChange = dsMasterStateChange
    Left = 432
    Top = 173
  end
end
