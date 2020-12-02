unit Conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.Client,
  Data.DB, FireDAC.Phys.MySQLDef, FireDAC.Phys.MySQL;

type
  TDM = class(TDataModule)
    Connection: TFDConnection;
    Transaction: TFDTransaction;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
    FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    FAppPath: string;
  public
    { Public declarations }
    property AppPath: string read FAppPath;
  end;

var
  DM: TDM;

implementation

uses
  Vcl.Forms, Dialogs;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  try
    FAppPath := ExtractFilePath(Application.ExeName);
    Connection.Params.Database := FAppPath + 'DADOS.FDB';
    Connection.Connected := True;
  except
    ShowMessage('Falha ao iniciar a aplicação.');
    Application.Terminate;
  end;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  Connection.Connected := False;
end;

end.
