unit UPlanoDeContas;

interface

uses
  Vcl.ComCtrls, System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.VCLUI.Wait, System.Generics.Collections;

type
  TTipo = (tpAnalitico, tpSintetico);

  TConta = record
    Codigo: Integer;
    Descricao: string;
    IdPai: Integer;
    AnaliticoSintetico: TTipo;
    Node: TTreeNode;
  end;

  TPlanoDeContas = class
  private
    FArvore: TTreeNodes;
    FDados: TDictionary<Integer, TConta>;
    procedure ProcessarDados;
    procedure MontarArvore;
  public
    constructor Create;
    destructor Destroy;
    property Arvore: TTreeNodes read FArvore;
  end;

implementation

{ TPlanoDeContas }

constructor TPlanoDeContas.Create;
begin
  FArvore := TTreeNodes.Create(nil);
  FDados := TDictionary<Integer, TConta>.Create;
end;

destructor TPlanoDeContas.Destroy;
begin
  FArvore.Free;
  FDados.Free;
end;

procedure TPlanoDeContas.ProcessarDados;
var
  Tabela: TFDQuery;
  Conta: TConta;
begin
  Tabela := TFDQuery.Create(nil);
  try
    Tabela.SQL.Text := 'select * from planos_de_contas;';
    Tabela.Open;
    repeat
      Conta.Codigo := Tabela.FieldByName('codigo').AsInteger;
      Conta.Descricao := Tabela.FieldByName('descricao').AsString;
      Conta.IdPai := Tabela.FieldByName('id_pai').AsInteger;
      Conta.AnaliticoSintetico := tpSintetico;
      if Tabela.FieldByName('AnaliticoSintetico').AsString = 'A' then
        Conta.AnaliticoSintetico := tpAnalitico;

      Conta.Node.Create(nil);
      Conta.Node.Text := Tabela.FieldByName('descricao').AsString;

      FDados.Add(Tabela.FieldByName('id').AsInteger, Conta);
    until Tabela.Eof;
  finally
    Tabela.Free;
  end;
end;

procedure TPlanoDeContas.MontarArvore;
var
  PConta: TPair<Integer, TConta>;
begin
  for PConta in FDados do
  FArvore := TTreeNodes.Create(nil);

end;

end.
