unit uHelper_test;

interface
uses
  DUnitX.TestFramework;

type

  [TestFixture]
  TMyTestObject = class(TObject)
  public
    [Test]
    procedure when_CPF_is_valid;
    [Test]
    procedure when_CPF_is_not_valid;
    [Test]
    procedure when_email_is_valid;
    [Test]
    procedure when_email_is_not_valid;
  end;

implementation

uses
  uHelper;

procedure TMyTestObject.when_CPF_is_valid;
begin
  Assert.IsTrue(THelper.ValidarCPF('19176206831'), 'Teste 1');
  Assert.IsTrue(THelper.ValidarCPF('76846977066'), 'Teste 2');
  Assert.IsTrue(THelper.ValidarCPF('90681627050'), 'Teste 3');
  Assert.IsTrue(THelper.ValidarCPF('68429613005'), 'Teste 4');
end;

procedure TMyTestObject.when_CPF_is_not_valid;
begin
  Assert.IsFalse(THelper.ValidarCPF('1'), 'Teste 1');
  Assert.IsFalse(THelper.ValidarCPF('168429613005'), 'Teste 2');
  Assert.IsFalse(THelper.ValidarCPF('00000000000'), 'Teste 3');
  Assert.IsFalse(THelper.ValidarCPF('99999999999'), 'Teste 4');
  Assert.IsFalse(THelper.ValidarCPF('68429613004'), 'Teste 5');
end;

procedure TMyTestObject.when_email_is_valid;
begin
  Assert.IsTrue(THelper.ValidarEmail('nome@dominio.com'), 'Teste 1');
  Assert.IsTrue(THelper.ValidarEmail('nome@dominio.com.br'), 'Teste 2');
  Assert.IsTrue(THelper.ValidarEmail('nome.sobrenome@dominio.com'), 'Teste 3');
  Assert.IsTrue(THelper.ValidarEmail('nome_1234@dominio.com.br'), 'Teste 4');
end;

procedure TMyTestObject.when_email_is_not_valid;
begin
  Assert.IsFalse(THelper.ValidarEmail('1'), 'Teste 1');
  Assert.IsFalse(THelper.ValidarEmail('nome.com.br'), 'Teste 2');
  Assert.IsFalse(THelper.ValidarEmail('@instagram'), 'Teste 3');
  Assert.IsFalse(THelper.ValidarEmail('nome@'), 'Teste 4');
end;

initialization
  TDUnitX.RegisterTestFixture(TMyTestObject);
end.

