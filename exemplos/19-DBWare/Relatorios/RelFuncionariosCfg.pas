unit RelFuncionariosCfg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.DBCtrls,
  Vcl.StdCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmRelFuncionariosCfg = class(TForm)
    BtnVizualizar: TButton;
    BtnFechar: TButton;
    QryCargos: TFDQuery;
    DtsCargos: TDataSource;
    LblCargo: TLabel;
    LkpCargo: TDBLookupComboBox;
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnVizualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelFuncionariosCfg: TFrmRelFuncionariosCfg;

implementation

uses
  RelFuncionarios;

{$R *.dfm}

procedure TFrmRelFuncionariosCfg.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmRelFuncionariosCfg.BtnVizualizarClick(Sender: TObject);
var
  CodCargo: Integer;
begin
  CodCargo := StrToInt(VarToStrDef(LkpCargo.KeyValue,'0'));
  FrmRelFuncionarios := TFrmRelFuncionarios.Create(Self);
  FrmRelFuncionarios.AbrirRelatorio(CodCargo);
  FrmRelFuncionarios.Free;
end;

procedure TFrmRelFuncionariosCfg.FormCreate(Sender: TObject);
begin
  QryCargos.Open;
end;

procedure TFrmRelFuncionariosCfg.FormDestroy(Sender: TObject);
begin
  QryCargos.Close;
end;

end.
