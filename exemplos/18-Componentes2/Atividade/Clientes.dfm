object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Clientes'
  ClientHeight = 215
  ClientWidth = 309
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
    Left = 64
    Top = 40
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 64
    Top = 70
    Width = 39
    Height = 13
    Caption = 'Contato'
  end
  object Label3: TLabel
    Left = 67
    Top = 97
    Width = 31
    Height = 13
    Caption = 'Renda'
  end
  object Edit1: TEdit
    Left = 112
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 112
    Top = 67
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 112
    Top = 94
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 67
    Top = 150
    Width = 75
    Height = 25
    Caption = 'Salvar'
    ModalResult = 1
    TabOrder = 3
  end
  object Button2: TButton
    Left = 175
    Top = 150
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 4
  end
end
