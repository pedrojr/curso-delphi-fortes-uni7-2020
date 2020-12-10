unit RelFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLReport;

type
  TFrmRelFuncionarios = class(TForm)
    RLReport2: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    QryFunc: TFDQuery;
    DtsFunc: TDataSource;
    QryFuncCODIGO: TIntegerField;
    QryFuncNOME: TStringField;
    QryFuncCOD_CARGO: TIntegerField;
    QryFuncCONTATO: TStringField;
    QryFuncDESC_CARGO: TStringField;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLReport1: TRLReport;
    RLBand4: TRLBand;
    RLBand5: TRLBand;
    RLBand6: TRLBand;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel9: TRLLabel;
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbrirRelatorio(CodCargo: Integer);
  end;

var
  FrmRelFuncionarios: TFrmRelFuncionarios;

implementation

uses
  StrUtils;

{$R *.dfm}

{ TFrmRelFuncionarios }

procedure TFrmRelFuncionarios.AbrirRelatorio(CodCargo: Integer);
begin
  QryFunc.SQL.Text := 'select f.*, c.descricao as desc_cargo '+
                      'from funcionarios f '+
                      'inner join cargos c on(c.codigo=f.cod_cargo) '+
                      IfThen(CodCargo > 0, 'where f.cod_cargo = '+ IntToStr(CodCargo), '')+
                      ' order by f.nome';
  QryFunc.Open;
  if not QryFunc.IsEmpty then
    RLReport2.PreviewModal
  else
    ShowMessage('Sem informações.');
end;

procedure TFrmRelFuncionarios.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel9.Caption := 'Teste';
end;

end.
