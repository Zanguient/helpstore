object frmHelpPadrao: TfrmHelpPadrao
  Left = 282
  Top = 163
  BorderStyle = bsSingle
  Caption = 'Help'
  ClientHeight = 449
  ClientWidth = 570
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBRichEdit1: TDBRichEdit
    Left = 0
    Top = 0
    Width = 570
    Height = 449
    Align = alClient
    Color = 13303807
    DataField = 'CONFIG'
    DataSource = dsHelp
    HideScrollBars = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object dsHelp: TDataSource
    DataSet = qryVerificaHelp
    Left = 80
    Top = 152
  end
  object qryVerificaHelp: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from sis_help h'
      'where h.cnpj = :cnpj and h.formulario = :formulario')
    Left = 129
    Top = 164
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'formulario'
        ParamType = ptUnknown
      end>
    object qryVerificaHelpCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_HELP"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object qryVerificaHelpCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"SIS_HELP"."CODIGO"'
    end
    object qryVerificaHelpFORMULARIO: TIBStringField
      FieldName = 'FORMULARIO'
      Origin = '"SIS_HELP"."FORMULARIO"'
      Size = 50
    end
    object qryVerificaHelpCONFIG: TMemoField
      FieldName = 'CONFIG'
      Origin = '"SIS_HELP"."CONFIG"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
end
