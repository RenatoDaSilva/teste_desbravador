unit uHelper;

interface

uses
  System.SysUtils;

type
  THelper = class
  private
    class function EhSequenciaDeDigitosIguais(const pSequencia: string; const pTamanho: Integer): boolean;
  public
    class function ValidarCNPJ(const pCNPJ: string) : Boolean;
    class function ValidarCPF(const pCPF: string): Boolean;
    class function ValidarEmail(const email:string): Boolean;
  end;

implementation

uses
  System.RegularExpressions, System.StrUtils;

class function THelper.ValidarCNPJ(const pCNPJ: string) : Boolean;
var
  v: array[1..2] of Word;
  cnpj: array[1..14] of Byte;
  i: integer;
begin
  Result := False;

  if Length(pCNPJ) <> 14 then
    Exit;

  if EhSequenciaDeDigitosIguais(pCNPJ, 14) then
    Exit;

  for I := 1 to 14 do
    cnpj[i] := StrToInt(pCNPJ[i]);

  v[1] := (5 * cnpj[1]) +
          (4 * cnpj[2]) +
          (3 * cnpj[3]) +
          (2 * cnpj[4]) +
          (9 * cnpj[5]) +
          (8 * cnpj[6]) +
          (7 * cnpj[7]) +
          (6 * cnpj[8]) +
          (5 * cnpj[9]) +
          (4 * cnpj[10]) +
          (3 * cnpj[11]) +
          (2 * cnpj[12]);
  v[1] := 11 - v[1] mod 11;

  if v[1] >= 10 then
    v[1] := 0;

  v[2] := (6 * cnpj[1]) +
          (5 * cnpj[2]) +
          (4 * cnpj[3]) +
          (3 * cnpj[4]) +
          (2 * cnpj[5]) +
          (9 * cnpj[6]) +
          (8 * cnpj[7]) +
          (7 * cnpj[8]) +
          (6 * cnpj[9]) +
          (5 * cnpj[10]) +
          (4 * cnpj[11]) +
          (3 * cnpj[12]) +
          (2 * v[1]);

  v[2] := 11 - v[2] mod 11;

  if v[2] >= 10 then
    v[2] := 0;

  Result := ((v[1] = cnpj[13]) and (v[2] = cnpj[14]));
end;


class function THelper.ValidarCPF(const pCPF: string): Boolean;
var
  v: array [0..1] of Word;
  cpf: array [0..10] of Byte;
  i: integer;
begin
  Result := False;

  if Length(pCPF) <> 11 then
    Exit;

  if EhSequenciaDeDigitosIguais(pCPF, 11) then
    Exit;

    for i := 1 to 11 do
      cpf[i - 1] := StrToInt(pCPF[i]);

    v[0] := (10 * cpf[0]) +
             (9 * cpf[1]) +
             (8 * cpf[2]) +
             (7 * cpf[3]) +
             (6 * cpf[4]) +
             (5 * cpf[5]) +
             (4 * cpf[6]) +
             (3 * cpf[7]) +
             (2 * cpf[8]);

    v[0] := 11 - v[0] mod 11;

    if v[0] >= 10 then
      v[0] := 0;

    v[1] := (11 * cpf[0]) +
            (10 * cpf[1]) +
             (9 * cpf[2]) +
             (8 * cpf[3]) +
             (7 * cpf[4]) +
             (6 * cpf[5]) +
             (5 * cpf[6]) +
             (4 * cpf[7]) +
             (3 * cpf[8]) +
             (2 * v[0]);

    v[1] := 11 - v[1] mod 11;

    if v[1] >= 10 then
      v[1] := 0;

    Result := ((v[0] = cpf[9]) and (v[1] = cpf[10]));
 end;

class function THelper.EhSequenciaDeDigitosIguais(const pSequencia: string; const pTamanho: Integer): boolean;
var
  i: Integer;
begin
  for i := 0 to 9 do
  begin
    Result := pSequencia = DupeString(IntToStr(i), pTamanho);
    if Result then
      Exit;
  end;
end;

class function THelper.ValidarEmail(const email: string): Boolean;
begin
  Result := TRegEx.IsMatch(email, '[_a-zA-Z\d\-\.]+@([_a-zA-Z\d\-]+(\.[_a-zA-Z\d\-]+)+)');
end;

end.
