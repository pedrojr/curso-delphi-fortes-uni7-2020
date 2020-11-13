program Exemplo12;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form1},
  Classes in 'Classes.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
