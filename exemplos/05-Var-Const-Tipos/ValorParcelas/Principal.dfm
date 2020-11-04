object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Parcelas'
  ClientHeight = 281
  ClientWidth = 346
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LblValorVenda: TLabel
    Left = 8
    Top = 12
    Width = 72
    Height = 13
    Caption = 'Valor de venda'
  end
  object LblParcelas: TLabel
    Left = 135
    Top = 12
    Width = 40
    Height = 13
    Caption = 'Parcelas'
  end
  object MemParcelas: TMemo
    Left = 8
    Top = 56
    Width = 329
    Height = 217
    Lines.Strings = (
      '10 x 50,00')
    TabOrder = 0
  end
  object EdtValorVenda: TEdit
    Left = 8
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '500,00'
  end
  object EdtParcelas: TEdit
    Left = 135
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '10'
  end
  object BtnCalcular: TButton
    Left = 262
    Top = 27
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = BtnCalcularClick
  end
end
