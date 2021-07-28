unit UClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UParentForm, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TFClientes = class(TFParentForm)
    lbl1: TLabel;
    dbedtcodigo: TDBEdit;
    lbl2: TLabel;
    dbedtNome: TDBEdit;
    lbl3: TLabel;
    dbedtCPF: TDBEdit;
    lbl4: TLabel;
    dbedtEmail: TDBEdit;
    procedure dbedtCPFExit(Sender: TObject);
    procedure dbedtCPFKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtEmailExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FClientes: TFClientes;

implementation

uses
  uHelper;

{$R *.dfm}

procedure TFClientes.dbedtCPFExit(Sender: TObject);
begin
  if not THelper.ValidarCPF(dbedtCPF.Text) then
  begin
    Showmessage('O CPF informado é inválido');
    dbedtCPF.SetFocus;
    dbedtCPF.Clear;
  end;
end;

procedure TFClientes.dbedtCPFKeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key, ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', #8, #9, #10, #13, #127]) then
    Key := #0;
end;

procedure TFClientes.dbedtEmailExit(Sender: TObject);
begin
  if (dbedtEmail.Text <> '') and not THelper.ValidarEmail(dbedtEmail.Text) then
    Showmessage('O e-mail informado é inválido');
end;

end.
