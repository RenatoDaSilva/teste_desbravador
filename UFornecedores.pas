unit UFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UParentForm, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TFFornecedores = class(TFParentForm)
    Label1: TLabel;
    dbedtcodigo: TDBEdit;
    Label2: TLabel;
    dbedtnome: TDBEdit;
    Label3: TLabel;
    dbedtcnpj: TDBEdit;
    Label4: TLabel;
    dbedtemail: TDBEdit;
    procedure dbedtcnpjExit(Sender: TObject);
    procedure dbedtcnpjKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtemailExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFornecedores: TFFornecedores;

implementation

uses
  uHelper;

{$R *.dfm}

procedure TFFornecedores.dbedtcnpjExit(Sender: TObject);
begin
  if not THelper.ValidarCPF(dbedtcnpj.Text) then
  begin
    Showmessage('O CNPJ informado é inválido');
    dbedtcnpj.SetFocus;
    dbedtcnpj.Clear;
  end;
end;

procedure TFFornecedores.dbedtcnpjKeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key, ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', #8, #9, #10, #13, #127]) then
    Key := #0;
end;

procedure TFFornecedores.dbedtemailExit(Sender: TObject);
begin
  if (dbedtEmail.Text <> '') and not THelper.ValidarEmail(dbedtEmail.Text) then
    Showmessage('O e-mail informado é inválido');
end;

end.
