object FrmRelFuncionariosCfg: TFrmRelFuncionariosCfg
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Funcion'#225'rios'
  ClientHeight = 311
  ClientWidth = 484
  Color = clBtnFace
  Constraints.MinHeight = 350
  Constraints.MinWidth = 500
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object LblCargo: TLabel
    Left = 40
    Top = 96
    Width = 29
    Height = 13
    Caption = 'Cargo'
  end
  object BtnVizualizar: TButton
    Left = 284
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Visualizar'
    TabOrder = 1
    OnClick = BtnVizualizarClick
  end
  object BtnFechar: TButton
    Left = 365
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BtnFecharClick
  end
  object LkpCargo: TDBLookupComboBox
    Left = 40
    Top = 112
    Width = 400
    Height = 21
    KeyField = 'CODIGO'
    ListField = 'DESCRICAO'
    ListSource = DtsCargos
    NullValueKey = 16462
    TabOrder = 0
  end
  object QryCargos: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'select * from cargos')
    Left = 377
    Top = 35
  end
  object DtsCargos: TDataSource
    DataSet = QryCargos
    Left = 377
    Top = 83
  end
end
