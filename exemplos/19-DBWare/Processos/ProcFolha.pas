unit ProcFolha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmFolha = class(TForm)
    EdtMesAno: TMaskEdit;
    Label1: TLabel;
    Button1: TButton;
    QryFunc: TFDQuery;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFolha: TFrmFolha;

implementation

uses
  CalcInss;

{$R *.dfm}

procedure TFrmFolha.Button1Click(Sender: TObject);
var
  VlrInss: Double;
begin
  QryFunc.Close;
  QryFunc.SQL.Text := 'select * from funcionarios '+
                      'where ativo = ''S''' ;
  QryFunc.Open;
  while not QryFunc.Eof do
  begin
		//Calcular INSS
    VlrInss := TCalcInss.Calc(QryFunc.FieldByName('SALARIO').AsFloat);
		//Calcular IRRF
		//Verificar Eventos para o mês
    //insert folha_mes (id,mes_ano,cod_func,sal_base,vrl_inss,vlr_irrf,vlr_eventos)
    //inert folha_mes_eventos (id,cod_evento,valor)
    QryFunc.Next;
  end;
end;

end.
