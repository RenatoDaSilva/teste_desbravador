program CRUD;

uses
  Vcl.Forms,
  System.SysUtils,
  UMain in 'UMain.pas' {FMain},
  UDataModule in 'UDataModule.pas' {DMMain: TDataModule},
  uHelper in 'uHelper.pas',
  UParentForm in 'UParentForm.pas' {FParentForm},
  UClientes in 'UClientes.pas' {FClientes},
  UFornecedores in 'UFornecedores.pas' {FFornecedores},
  UReceber in 'UReceber.pas' {FReceber},
  UPlanoDeContas in 'UPlanoDeContas.pas',
  UPagar in 'UPagar.pas' {FPagar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TDMMain, DMMain);
  Application.Run;
end.
