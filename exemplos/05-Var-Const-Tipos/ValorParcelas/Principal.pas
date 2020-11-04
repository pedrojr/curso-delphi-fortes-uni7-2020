unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    LblValorVenda: TLabel;
    EdtValorVenda: TEdit;
    LblParcelas: TLabel;
    EdtParcelas: TEdit;
    MemParcelas: TMemo;
    BtnCalcular: TButton;
    procedure BtnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.BtnCalcularClick(Sender: TObject);
begin
  //todo
end;

end.
