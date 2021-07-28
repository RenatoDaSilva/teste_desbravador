unit UDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.VCLUI.Wait;

type
  TDMMain = class(TDataModule)
    conDatabase: TFDConnection;
    lnkSQLiteDrive: TFDPhysSQLiteDriverLink;
    qryClientes: TFDQuery;
    qryClientescodigo: TFDAutoIncField;
    qryClientesnome: TStringField;
    qryClientescpf: TStringField;
    qryClientesemail: TStringField;
    qryFornecedores: TFDQuery;
    qryFornecedoresCodigo: TFDAutoIncField;
    qryFornecedoresnome: TStringField;
    qryFornecedorescnpj: TStringField;
    qryFornecedoresemail: TStringField;
    qryPagar: TFDQuery;
    qryReceber: TFDQuery;
    qryPagarcodigo: TFDAutoIncField;
    qryPagarduplicata: TStringField;
    qryPagarfornecedor: TIntegerField;
    qryPagarvalor: TFloatField;
    qryPagarplano_de_contas: TIntegerField;
    qryRecebercodigo: TFDAutoIncField;
    qryReceberduplicata: TStringField;
    qryRecebervalor: TFloatField;
    qryReceberplano_de_contas: TIntegerField;
    qryRecebercod_cliente: TIntegerField;
    qryReceberNomeCliente: TStringField;
    qryPagarvencimento: TDateField;
    qryRecebervencimento: TDateField;
    qryPlanoDeContas: TFDQuery;
    qryPlanoDeContasid: TFDAutoIncField;
    qryPlanoDeContascodigo: TIntegerField;
    qryPlanoDeContasdescricao: TStringField;
    qryPlanoDeContasid_pai: TIntegerField;
    qryPlanoDeContasanalitico_sintetico: TStringField;
    qryPagarnome_fornecedor: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMMain: TDMMain;

implementation

uses
  vcl.Forms;

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

procedure TDMMain.DataModuleCreate(Sender: TObject);
begin
  conDatabase.Params.Database := ExtractFilePath(Application.ExeName) + 'crud.db';
  conDatabase.Connected := True;
end;

end.
