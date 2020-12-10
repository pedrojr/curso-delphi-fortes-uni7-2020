object FrmFolha: TFrmFolha
  Left = 0
  Top = 0
  Caption = 'Folha de Pagamento'
  ClientHeight = 236
  ClientWidth = 430
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 160
    Top = 48
    Width = 42
    Height = 13
    Caption = 'M'#234's/Ano'
  end
  object EdtMesAno: TMaskEdit
    Left = 160
    Top = 67
    Width = 81
    Height = 21
    EditMask = '!99/9999;1; '
    MaxLength = 7
    TabOrder = 0
    Text = '  /    '
  end
  object Button1: TButton
    Left = 118
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Procesar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 199
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
  end
  object QryFunc: TFDQuery
    Left = 304
    Top = 32
  end
end
