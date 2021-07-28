object FParentForm: TFParentForm
  Left = 0
  Top = 0
  Caption = 'FParentForm'
  ClientHeight = 508
  ClientWidth = 879
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBtnBar: TPanel
    Left = 0
    Top = 201
    Width = 879
    Height = 36
    Align = alTop
    TabOrder = 0
    object dbnvgrMaster: TDBNavigator
      Left = 1
      Top = 1
      Width = 350
      Height = 34
      DataSource = dsMaster
      Align = alLeft
      TabOrder = 0
    end
  end
  object pnlForm: TPanel
    Left = 0
    Top = 0
    Width = 879
    Height = 201
    Align = alTop
    TabOrder = 1
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 237
    Width = 879
    Height = 271
    Align = alClient
    TabOrder = 2
    object dbgrdMaster: TDBGrid
      Left = 1
      Top = 1
      Width = 877
      Height = 269
      Align = alClient
      DataSource = dsMaster
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object dsMaster: TDataSource
    AutoEdit = False
    Left = 360
    Top = 173
  end
end
