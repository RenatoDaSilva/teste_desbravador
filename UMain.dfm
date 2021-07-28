object FMain: TFMain
  Left = 0
  Top = 0
  Caption = 'CRUD'
  ClientHeight = 449
  ClientWidth = 783
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu: TMainMenu
    Left = 152
    Top = 112
    object mniCadastros: TMenuItem
      Caption = 'Cadastros'
      object mniClientes: TMenuItem
        Caption = 'Clientes'
        OnClick = mniClientesClick
      end
      object mniFornecedores: TMenuItem
        Caption = 'Fornecedores'
        OnClick = mniFornecedoresClick
      end
      object mniPlanosdeconta: TMenuItem
        Caption = 'Planos de conta'
      end
    end
    object mniFinanceiro: TMenuItem
      Caption = 'Financeiro'
      object mniContasaReceber: TMenuItem
        Caption = 'Contas a Receber'
        OnClick = mniContasaReceberClick
      end
      object mniContasapagar: TMenuItem
        Caption = 'Contas a pagar'
        OnClick = mniContasapagarClick
      end
    end
  end
end
