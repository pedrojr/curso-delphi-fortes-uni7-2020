unit MinhasClasses;

interface

uses
  Dialogs, Classes;

type
  TClasseBase = class(TObject)
  strict private
    FLinhas: TStrings;
    FTeste1: string;
  private
    FTeste: string;
    FTeste2: string;
  strict protected
    FTeste3: string;
  protected
    FTeste4: string;
  public
    constructor Create;
    destructor Destroy; override;
    function EhValido: Boolean; virtual; abstract;
    class procedure Ok;
  published
    property Teste: string read FTeste write FTeste;
  end;

  TClasseF1 = class sealed(TClasseBase)
  public
    function EhValido: Boolean; override;
  end;

  TClasseTeste = class
  public
    procedure teste;
  end;

implementation

{ TClasseBase }

constructor TClasseBase.Create;
begin
  FLinhas := TStringList.Create;
end;

destructor TClasseBase.Destroy;
begin
  FLinhas.Free;
  inherited;
end;

class procedure TClasseBase.Ok;
begin
  ShowMessage('Teste');
end;

{ TClasseF1 }

function TClasseF1.EhValido: Boolean;
begin
  Result := True;
end;

{ TClasseTeste }

procedure TClasseTeste.teste;
var
  Obj: TClasseF1;
begin
  Obj := nil;
  try
    Obj := TClasseF1.Create;
    //Obj.F
  finally
    Obj.Free;
  end;
end;

end.
