unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Grids;

type
  TFrmPrincipal = class(TForm)
    GrdClientes: TStringGrid;
    BtnCadastrar: TButton;
    BtnRemover: TButton;
    procedure BtnCadastrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnRemoverClick(Sender: TObject);
  private
    { Private declarations }
    procedure Cadastrar(const Nome, Contato, Renda: string);
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  Clientes;

{$R *.dfm}

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  GrdClientes.ColCount := 3;
  GrdClientes.RowCount := 4;
  GrdClientes.Cells[0,0] := 'Nome';
  GrdClientes.Cells[1,0] := 'Contato';
  GrdClientes.Cells[2,0] := 'Renda';

  GrdClientes.Cells[0,1] := 'Teste 1';
  GrdClientes.Cells[1,1] := '4353454353';
  GrdClientes.Cells[2,1] := '1000';

  GrdClientes.Cells[0,2] := 'Teste 2';
  GrdClientes.Cells[1,2] := '9879879872';
  GrdClientes.Cells[2,2] := '1500';

  GrdClientes.Cells[0,3] := 'Teste 3';
  GrdClientes.Cells[1,3] := '4546598221';
  GrdClientes.Cells[2,3] := '1250';
end;

procedure TFrmPrincipal.BtnCadastrarClick(Sender: TObject);
begin
  Form1 := nil;
  try
    Form1 := TForm1.Create(Self);
    Form1.ShowModal;
    if Form1.Edit1.Text <> '' then
      Cadastrar(Form1.Edit1.Text, Form1.Edit2.Text, Form1.Edit3.Text);
  finally
    Form1.Free;
  end;
end;

procedure TFrmPrincipal.Cadastrar(const Nome, Contato, Renda: string);
var
  NovaLinha: Integer;
begin
  NovaLinha := GrdClientes.RowCount +1;
  GrdClientes.RowCount := NovaLinha;
  GrdClientes.Cells[0,NovaLinha -1] := Nome;
  GrdClientes.Cells[1,NovaLinha -1] := Contato;
  GrdClientes.Cells[2,NovaLinha -1] := Renda;
end;

procedure TFrmPrincipal.BtnRemoverClick(Sender: TObject);
var
  I, Linha: Integer;
begin
  if GrdClientes.Row > 0 then
  begin
     Linha := GrdClientes.Row;
     for I := Linha to GrdClientes.RowCount -1 do
     begin
       GrdClientes.Cells[0,I] := GrdClientes.Cells[0,I+1];
       GrdClientes.Cells[1,I] := GrdClientes.Cells[1,I+1];
       GrdClientes.Cells[2,I] := GrdClientes.Cells[2,I+1];
     end;
     GrdClientes.RowCount := GrdClientes.RowCount -1;
  end;
end;

end.
