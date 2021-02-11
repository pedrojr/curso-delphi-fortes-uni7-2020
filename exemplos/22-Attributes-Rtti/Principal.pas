unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    Memo: TMemo;
    btnMethods: TBitBtn;
    btnEnum: TBitBtn;
    btnFields: TBitBtn;
    btnProperties: TBitBtn;
    btnInvokeMethod: TBitBtn;
    btnAttributes: TBitBtn;
    procedure btnEnumClick(Sender: TObject);
    procedure btnFieldsClick(Sender: TObject);
    procedure btnPropertiesClick(Sender: TObject);
    procedure btnMethodsClick(Sender: TObject);
    procedure btnInvokeMethodClick(Sender: TObject);
    procedure btnAttributesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  RttiTests, EnumTypes, EnumAttribute;

{$R *.dfm}

procedure TfrmPrincipal.btnFieldsClick(Sender: TObject);
begin
  TRttiTests.GetFields(Memo.Lines);
end;

procedure TfrmPrincipal.btnPropertiesClick(Sender: TObject);
begin
  TRttiTests.GetProperties(Memo.Lines);
end;

procedure TfrmPrincipal.btnMethodsClick(Sender: TObject);
begin
  TRttiTests.GetMethods(Memo.Lines);
end;

procedure TfrmPrincipal.btnInvokeMethodClick(Sender: TObject);
begin
  TRttiTests.InvokeMethod(Memo.Lines);
end;

procedure TfrmPrincipal.btnAttributesClick(Sender: TObject);
begin
  TRttiTests.GetAttributes(Memo.Lines);
end;

procedure TfrmPrincipal.btnEnumClick(Sender: TObject);
begin
  Memo.Clear;
  //EnumTeste1
  Memo.Lines.Add( TEnum<EnumTeste1>.GetLabel(opTeste0) );
  Memo.Lines.Add( TEnum<EnumTeste1>.GetLabel(opTeste2) );
  //EnumTeste2
  Memo.Lines.Add( TEnum<EnumTeste2>.GetLabel(opOpcao1) );
  Memo.Lines.Add( TEnum<EnumTeste2>.GetLabel(opOpcao3) );
end;

end.
