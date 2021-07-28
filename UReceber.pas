unit UReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UParentForm, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TFReceber = class(TFParentForm)
    Label1: TLabel;
    dbedtcodigo: TDBEdit;
    Label2: TLabel;
    dbedtduplicata: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    dbedtvalor: TDBEdit;
    lbl1: TLabel;
    cbbnome_cliente: TDBLookupComboBox;
    dtpVencimento: TDateTimePicker;
    dsClientes: TDataSource;
    procedure dsMasterStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dtpVencimentoChange(Sender: TObject);
  private
    procedure qryReceberAfterScroll(DataSet: TDataSet);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FReceber: TFReceber;

implementation

uses
  UDataModule;

{$R *.dfm}

procedure TFReceber.dsMasterStateChange(Sender: TObject);
begin
  dtpVencimento.Enabled := dsMaster.State in dsEditModes;
end;

procedure TFReceber.dtpVencimentoChange(Sender: TObject);
begin
  dsMaster.DataSet.FieldByName('vencimento').AsDateTime := dtpVencimento.DateTime;
end;

procedure TFReceber.FormCreate(Sender: TObject);
begin
  inherited;
  DMMain.qryReceber.AfterScroll := qryReceberAfterScroll;
  dsClientes.DataSet.Open;
end;

procedure TFReceber.qryReceberAfterScroll(DataSet: TDataSet);
begin
  dtpVencimento.DateTime := dsMaster.DataSet.FieldByName('vencimento').AsDateTime;
end;

end.
