program Atividade;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FrmPrincipal},
  Clientes in 'Clientes.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
