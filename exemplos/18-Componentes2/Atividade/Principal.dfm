object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 431
  ClientWidth = 674
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GrdClientes: TStringGrid
    Left = 8
    Top = 8
    Width = 545
    Height = 385
    FixedCols = 0
    TabOrder = 0
  end
  object BtnCadastrar: TButton
    Left = 559
    Top = 8
    Width = 106
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 1
    OnClick = BtnCadastrarClick
  end
  object BtnRemover: TButton
    Left = 559
    Top = 39
    Width = 107
    Height = 25
    Caption = 'Remover'
    TabOrder = 2
    OnClick = BtnRemoverClick
  end
end
