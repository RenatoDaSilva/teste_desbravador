inherited FClientes: TFClientes
  Caption = 'Cadastro de Clientes'
  ClientWidth = 690
  ExplicitWidth = 706
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBtnBar: TPanel
    Width = 690
    ExplicitWidth = 690
    inherited dbnvgrMaster: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited pnlForm: TPanel
    Width = 690
    ExplicitWidth = 690
    object lbl1: TLabel
      Left = 24
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = dbedtcodigo
    end
    object lbl2: TLabel
      Left = 24
      Top = 56
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = dbedtNome
    end
    object lbl3: TLabel
      Left = 24
      Top = 96
      Width = 19
      Height = 13
      Caption = 'CPF'
      FocusControl = dbedtCPF
    end
    object lbl4: TLabel
      Left = 24
      Top = 136
      Width = 28
      Height = 13
      Caption = 'E-mail'
      FocusControl = dbedtEmail
    end
    object dbedtcodigo: TDBEdit
      Left = 24
      Top = 32
      Width = 134
      Height = 21
      TabStop = False
      DataField = 'codigo'
      DataSource = dsMaster
      ReadOnly = True
      TabOrder = 3
    end
    object dbedtNome: TDBEdit
      Left = 24
      Top = 72
      Width = 654
      Height = 21
      DataField = 'nome'
      DataSource = dsMaster
      TabOrder = 0
    end
    object dbedtCPF: TDBEdit
      Left = 24
      Top = 112
      Width = 147
      Height = 21
      DataField = 'cpf'
      DataSource = dsMaster
      TabOrder = 1
      OnExit = dbedtCPFExit
      OnKeyPress = dbedtCPFKeyPress
    end
    object dbedtEmail: TDBEdit
      Left = 24
      Top = 152
      Width = 654
      Height = 21
      CharCase = ecLowerCase
      DataField = 'email'
      DataSource = dsMaster
      TabOrder = 2
      OnExit = dbedtEmailExit
    end
  end
  inherited pnlGrid: TPanel
    Width = 690
    ExplicitWidth = 690
    inherited dbgrdMaster: TDBGrid
      Width = 688
    end
  end
  inherited dsMaster: TDataSource
    DataSet = DMMain.qryClientes
  end
end
