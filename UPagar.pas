unit UPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UParentForm, Data.DB, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFPagar = class(TFParentForm)
    lbl1: TLabel;
    dbedtcodigo: TDBEdit;
    lbl2: TLabel;
    dbedtduplicata: TDBEdit;
    lbl3: TLabel;
    cbbnome_fornecedor: TDBLookupComboBox;
    lbl4: TLabel;
    lbl5: TLabel;
    dbedtvalor: TDBEdit;
    dsFornecedores: TDataSource;
    dtpVencimento: TDateTimePicker;
    procedure dsMasterStateChange(Sender: TObject);
    procedure dtpVencimentoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure qryPagarAfterScroll(DataSet: TDataSet);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPagar: TFPagar;

implementation

uses
  UDataModule;

{$R *.dfm}

procedure TFPagar.dsMasterStateChange(Sender: TObject);
begin
  dtpVencimento.Enabled := dsMaster.State in dsEditModes;
end;

procedure TFPagar.dtpVencimentoChange(Sender: TObject);
begin
  dsMaster.DataSet.FieldByName('vencimento').AsDateTime := dtpVencimento.DateTime;
end;

procedure TFPagar.FormCreate(Sender: TObject);
begin
  inherited;
  DMMain.qryReceber.AfterScroll := qryPagarAfterScroll;
  dsFornecedores.DataSet.Open;
end;

procedure TFPagar.qryPagarAfterScroll(DataSet: TDataSet);
begin
  dtpVencimento.DateTime := dsMaster.DataSet.FieldByName('vencimento').AsDateTime;
end;

end.


