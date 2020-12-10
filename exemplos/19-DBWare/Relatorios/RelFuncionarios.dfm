object FrmRelFuncionarios: TFrmRelFuncionarios
  Left = 0
  Top = 0
  Caption = 'FrmRelFuncionarios'
  ClientHeight = 472
  ClientWidth = 832
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DtsFunc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand4: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 59
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      object RLLabel6: TRLLabel
        Left = 3
        Top = 3
        Width = 168
        Height = 16
        Caption = 'Relat'#243'rio de Funcion'#225'rios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 3
        Top = 41
        Width = 44
        Height = 16
        Caption = 'C'#243'digo'
      end
      object RLLabel8: TRLLabel
        Left = 87
        Top = 41
        Width = 38
        Height = 16
        Caption = 'Nome'
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 97
      Width = 718
      Height = 24
      object RLDBText6: TRLDBText
        Left = 3
        Top = 4
        Width = 55
        Height = 16
        DataField = 'CODIGO'
        DataSource = DtsFunc
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 87
        Top = 4
        Width = 43
        Height = 16
        DataField = 'NOME'
        DataSource = DtsFunc
        Text = ''
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 121
      Width = 718
      Height = 23
      BandType = btFooter
      BeforePrint = RLBand6BeforePrint
      object RLLabel9: TRLLabel
        Left = 632
        Top = 3
        Width = 17
        Height = 16
        Caption = '@'
      end
    end
  end
  object RLReport2: TRLReport
    Left = 30
    Top = 208
    Width = 794
    Height = 1123
    DataSource = DtsFunc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PreviewOptions.Caption = 'Relat'#243'rio de Funcion'#225'rios'
    PrintEmpty = False
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 50
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 3
        Top = 3
        Width = 168
        Height = 16
        Caption = 'Relat'#243'rio de Funcion'#225'rios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 3
        Top = 33
        Width = 44
        Height = 16
        Caption = 'C'#243'digo'
      end
      object RLLabel3: TRLLabel
        Left = 79
        Top = 33
        Width = 38
        Height = 16
        Caption = 'Nome'
      end
      object RLLabel4: TRLLabel
        Left = 336
        Top = 33
        Width = 38
        Height = 16
        Caption = 'Cargo'
      end
      object RLLabel5: TRLLabel
        Left = 608
        Top = 33
        Width = 49
        Height = 16
        Caption = 'Contato'
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 88
      Width = 718
      Height = 22
      object RLDBText1: TRLDBText
        Left = 3
        Top = 3
        Width = 55
        Height = 16
        DataField = 'CODIGO'
        DataSource = DtsFunc
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 79
        Top = 3
        Width = 43
        Height = 16
        DataField = 'NOME'
        DataSource = DtsFunc
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 336
        Top = 3
        Width = 86
        Height = 16
        DataField = 'COD_CARGO'
        DataSource = DtsFunc
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 410
        Top = 3
        Width = 94
        Height = 16
        DataField = 'DESC_CARGO'
        DataSource = DtsFunc
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 608
        Top = 3
        Width = 65
        Height = 16
        DataField = 'CONTATO'
        DataSource = DtsFunc
        Text = ''
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 110
      Width = 718
      Height = 16
      BandType = btFooter
    end
  end
  object QryFunc: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'select f.*, c.descricao as desc_cargo'
      'from funcionarios f'
      'inner join cargos c on(c.codigo=f.cod_cargo)'
      'where f.cod_cargo = 0'
      'order by f.nome')
    Left = 630
    Top = 158
    object QryFuncCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryFuncNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object QryFuncCOD_CARGO: TIntegerField
      FieldName = 'COD_CARGO'
      Origin = 'COD_CARGO'
      Required = True
    end
    object QryFuncDESC_CARGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_CARGO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QryFuncCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
    end
  end
  object DtsFunc: TDataSource
    DataSet = QryFunc
    Left = 678
    Top = 158
  end
end
