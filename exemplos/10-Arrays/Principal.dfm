object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Array'
  ClientHeight = 297
  ClientWidth = 481
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Resultado: TMemo
    Left = 8
    Top = 8
    Width = 385
    Height = 281
    TabOrder = 0
  end
  object Button1: TButton
    Left = 399
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Array1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 399
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Array2'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 399
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Array3'
    TabOrder = 3
    OnClick = Button3Click
  end
end
