program AppFolha;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FrmPrincipal},
  Conexao in 'Conexao.pas' {DM: TDataModule},
  CadCargos in 'Cadastros\CadCargos.pas' {FrmCargos},
  CadEventos in 'Cadastros\CadEventos.pas' {FrmEventos},
  CadFuncionarios in 'Cadastros\CadFuncionarios.pas' {FrmFuncionarios},
  CadFuncionarios2 in 'Cadastros\CadFuncionarios2.pas' {FrmFuncionarios2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
