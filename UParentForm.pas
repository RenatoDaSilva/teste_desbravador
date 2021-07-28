unit UParentForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TFParentForm = class(TForm)
    dsMaster: TDataSource;
    pnlBtnBar: TPanel;
    dbnvgrMaster: TDBNavigator;
    pnlForm: TPanel;
    pnlGrid: TPanel;
    dbgrdMaster: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FParentForm: TFParentForm;

implementation

uses
  UDataModule;

{$R *.dfm}

procedure TFParentForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFParentForm.FormShow(Sender: TObject);
begin
  dsMaster.DataSet.Open;
end;

end.
