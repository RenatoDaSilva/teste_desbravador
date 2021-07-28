unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Menus;

type
  TFMain = class(TForm)
    MainMenu: TMainMenu;
    mniCadastros: TMenuItem;
    mniClientes: TMenuItem;
    mniFornecedores: TMenuItem;
    mniFinanceiro: TMenuItem;
    mniContasaReceber: TMenuItem;
    mniContasapagar: TMenuItem;
    mniPlanosdeconta: TMenuItem;
    procedure mniClientesClick(Sender: TObject);
    procedure mniFornecedoresClick(Sender: TObject);
    procedure mniContasaReceberClick(Sender: TObject);
    procedure mniContasapagarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

uses
  UClientes, UFornecedores, UReceber, UPagar;

{$R *.dfm}

procedure TFMain.mniClientesClick(Sender: TObject);
begin
  TFClientes.Create(FMain);
end;

procedure TFMain.mniContasapagarClick(Sender: TObject);
begin
  TFPagar.Create(FMain);
end;

procedure TFMain.mniContasaReceberClick(Sender: TObject);
begin
  TFReceber.Create(FMain);
end;

procedure TFMain.mniFornecedoresClick(Sender: TObject);
begin
  TFFornecedores.Create(FMain);
end;

end.
