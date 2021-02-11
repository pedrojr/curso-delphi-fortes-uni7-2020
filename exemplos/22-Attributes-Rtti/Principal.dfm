object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'RTTI / Attribute'
  ClientHeight = 375
  ClientWidth = 594
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo: TMemo
    Left = 134
    Top = 8
    Width = 452
    Height = 358
    TabOrder = 6
  end
  object btnMethods: TBitBtn
    Left = 8
    Top = 70
    Width = 120
    Height = 25
    Caption = 'GetMethods'
    TabOrder = 2
    OnClick = btnMethodsClick
  end
  object btnEnum: TBitBtn
    Left = 8
    Top = 163
    Width = 120
    Height = 25
    Caption = 'Enum Label'
    TabOrder = 5
    OnClick = btnEnumClick
  end
  object btnFields: TBitBtn
    Left = 8
    Top = 8
    Width = 120
    Height = 25
    Caption = 'GetFields'
    TabOrder = 0
    OnClick = btnFieldsClick
  end
  object btnProperties: TBitBtn
    Left = 8
    Top = 39
    Width = 120
    Height = 25
    Caption = 'GetProperties'
    TabOrder = 1
    OnClick = btnPropertiesClick
  end
  object btnInvokeMethod: TBitBtn
    Left = 8
    Top = 101
    Width = 120
    Height = 25
    Caption = 'Invoke Method'
    TabOrder = 3
    OnClick = btnInvokeMethodClick
  end
  object btnAttributes: TBitBtn
    Left = 8
    Top = 132
    Width = 120
    Height = 25
    Caption = 'GetAttributes'
    TabOrder = 4
    OnClick = btnAttributesClick
  end
end
