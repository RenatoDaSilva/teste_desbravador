inherited FFornecedores: TFFornecedores
  Caption = 'Fornecedores'
  ClientWidth = 690
  Position = poOwnerFormCenter
  ExplicitWidth = 706
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBtnBar: TPanel
    Width = 690
    inherited dbnvgrMaster: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited pnlForm: TPanel
    Width = 690
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = dbedtcodigo
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = dbedtnome
    end
    object Label3: TLabel
      Left = 16
      Top = 96
      Width = 25
      Height = 13
      Caption = 'CNPJ'
      FocusControl = dbedtcnpj
    end
    object Label4: TLabel
      Left = 16
      Top = 136
      Width = 28
      Height = 13
      Caption = 'E-mail'
      FocusControl = dbedtemail
    end
    object dbedtcodigo: TDBEdit
      Left = 16
      Top = 32
      Width = 134
      Height = 21
      TabStop = False
      DataField = 'codigo'
      DataSource = dsMaster
      ReadOnly = True
      TabOrder = 3
    end
    object dbedtnome: TDBEdit
      Left = 16
      Top = 72
      Width = 654
      Height = 21
      DataField = 'nome'
      DataSource = dsMaster
      TabOrder = 0
    end
    object dbedtcnpj: TDBEdit
      Left = 16
      Top = 112
      Width = 186
      Height = 21
      DataField = 'cnpj'
      DataSource = dsMaster
      TabOrder = 1
      OnExit = dbedtcnpjExit
      OnKeyPress = dbedtcnpjKeyPress
    end
    object dbedtemail: TDBEdit
      Left = 16
      Top = 152
      Width = 654
      Height = 21
      DataField = 'email'
      DataSource = dsMaster
      TabOrder = 2
      OnExit = dbedtemailExit
    end
  end
  inherited pnlGrid: TPanel
    Width = 690
    inherited dbgrdMaster: TDBGrid
      Width = 688
    end
  end
  inherited dsMaster: TDataSource
    DataSet = DMMain.qryFornecedores
  end
end
