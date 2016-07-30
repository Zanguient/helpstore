object FrmLocProdutoCadastro_Auto: TFrmLocProdutoCadastro_Auto
  Left = 216
  Top = 143
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Localizar Produto'
  ClientHeight = 406
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    TabOrder = 0
    OnExit = pnlTopExit
    Height = 49
    Width = 785
    object Label6: TcxLabel
      Left = 2
      Top = 15
      Caption = 'C'#243'digo'
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 145
      Top = 15
      Caption = 'Nome'
      ParentFont = False
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 410
      Top = 15
      Caption = 'C'#243'd. Fab.'
      ParentFont = False
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 585
      Top = 15
      Caption = 'C'#243'd. Sec.'
      ParentFont = False
      Transparent = True
    end
    object EdCodigo: TcxTextEdit
      Left = 40
      Top = 13
      Properties.CharCase = ecUpperCase
      TabOrder = 0
      OnEnter = EdCodigoEnter
      OnExit = EdCodigoExit
      OnKeyDown = EdCodigoKeyDown
      Width = 97
    end
    object EdNome: TcxTextEdit
      Left = 178
      Top = 13
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      OnEnter = EdNomeEnter
      OnExit = EdCodigoExit
      OnKeyDown = EdCodigoKeyDown
      Width = 226
    end
    object EdCodigoFab: TcxTextEdit
      Left = 461
      Top = 13
      Properties.CharCase = ecUpperCase
      TabOrder = 2
      OnEnter = EdCodigoEnter
      OnExit = EdCodigoExit
      OnKeyDown = EdCodigoKeyDown
      Width = 116
    end
    object EdCodigoSec: TcxTextEdit
      Left = 637
      Top = 13
      Properties.CharCase = ecUpperCase
      TabOrder = 3
      OnEnter = EdCodigoEnter
      OnExit = EdCodigoExit
      OnKeyDown = EdCodigoKeyDown
      Width = 139
    end
  end
  object GRID: TcxGrid
    Left = 0
    Top = 49
    Width = 785
    Height = 324
    Align = alClient
    TabOrder = 1
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    object GRIDDBTableView1: TcxGridDBTableView
      OnKeyPress = GridKeyPress
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DSource
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object GRIDDBTableView1CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'CODIGO'
      end
      object GRIDDBTableView1NOME: TcxGridDBColumn
        DataBinding.FieldName = 'NOME'
      end
      object GRIDDBTableView1QTDADE_2: TcxGridDBColumn
        DataBinding.FieldName = 'QTDADE_2'
      end
      object GRIDDBTableView1QTDADE_1: TcxGridDBColumn
        DataBinding.FieldName = 'QTDADE_1'
      end
      object GRIDDBTableView1PRC_VENDA: TcxGridDBColumn
        DataBinding.FieldName = 'PRC_VENDA'
      end
      object GRIDDBTableView1CODIGO_2: TcxGridDBColumn
        DataBinding.FieldName = 'CODIGO_2'
      end
      object GRIDDBTableView1PRC_REPOS: TcxGridDBColumn
        DataBinding.FieldName = 'PRC_REPOS'
      end
      object GRIDDBTableView1MARCA: TcxGridDBColumn
        DataBinding.FieldName = 'MARCA'
      end
      object GRIDDBTableView1SERIE: TcxGridDBColumn
        DataBinding.FieldName = 'SERIE'
      end
      object GRIDDBTableView1MDL_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'MDL_CODIGO'
      end
      object GRIDDBTableView1MODELO: TcxGridDBColumn
        DataBinding.FieldName = 'MODELO'
      end
      object GRIDDBTableView1SECAO: TcxGridDBColumn
        DataBinding.FieldName = 'SECAO'
      end
      object GRIDDBTableView1LOCALIZACAO_1: TcxGridDBColumn
        DataBinding.FieldName = 'LOCALIZACAO_1'
      end
      object GRIDDBTableView1LOCALIZACAO_2: TcxGridDBColumn
        DataBinding.FieldName = 'LOCALIZACAO_2'
      end
      object GRIDDBTableView1LOCALIZACAO_3: TcxGridDBColumn
        DataBinding.FieldName = 'LOCALIZACAO_3'
      end
      object GRIDDBTableView1CODIGO_FABRICANTE: TcxGridDBColumn
        DataBinding.FieldName = 'CODIGO_FABRICANTE'
      end
      object GRIDDBTableView1COMPLEMENTO: TcxGridDBColumn
        DataBinding.FieldName = 'COMPLEMENTO'
      end
    end
    object GRIDLevel1: TcxGridLevel
      GridView = GRIDDBTableView1
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 373
    Align = alBottom
    PanelStyle.Active = True
    TabOrder = 2
    Height = 33
    Width = 785
    object RdCodigo: TcxRadioButton
      Left = 8
      Top = 8
      Width = 108
      Height = 17
      Caption = 'Ordem de C'#243'digo'
      Checked = True
      Enabled = False
      TabOrder = 0
      TabStop = True
      Transparent = True
    end
    object RDNOME: TcxRadioButton
      Left = 136
      Top = 8
      Width = 108
      Height = 17
      Caption = 'Ordem de Nome'
      Enabled = False
      TabOrder = 1
      Transparent = True
    end
    object RzBitBtn1: TcxButton
      Left = 601
      Top = 2
      Width = 91
      Height = 29
      Cursor = crHandPoint
      Action = ActOk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      TabStop = False
      Align = alRight
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555555555555555555905555555555555999055555555555599905555
        5555555999990555555555999999055555555799059990555555790555599055
        5555555555599905555555555555990555555555555559905555555555555579
        0555555555555557905555555555555559905555555555555555}
    end
    object BtnCancelar: TcxButton
      Left = 692
      Top = 2
      Width = 91
      Height = 29
      Cursor = crHandPoint
      Action = ActCancelar
      Cancel = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      TabStop = False
      Align = alRight
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADADA00DADA1FDDAD1FA0000DADADAAD111FA00DAD1FADDA111FDADAD1
        FADAADA111F00D11FDADDADA111F011FDADAADADA11111FDADADDADADA111FDA
        DADAADADA11111FDADADDADA111F011ADADAAD1111F00011FDADD1111F0000D1
        1FDAA11FAD0000AD11FDDADADAD00ADADADAADADADADADADADAD}
    end
  end
  object Actions: TActionList
    Left = 348
    Top = 167
    object ActOk: TAction
      Tag = 1
      Caption = '&Ok'
      OnExecute = ActOkExecute
    end
    object ActCancelar: TAction
      Tag = 1
      Caption = 'Cancelar'
      ShortCut = 27
      OnExecute = ActCancelarExecute
    end
  end
  object DSource: TDataSource
    AutoEdit = False
    DataSet = qryLocalizarProduto
    Left = 152
    Top = 168
  end
  object stgLocalizarProduto: TcxPropertiesStore
    Components = <
      item
        Component = ActCancelar
        Properties.Strings = (
          'Caption'
          'Category'
          'Checked'
          'Enabled'
          'HelpContext'
          'Hint'
          'ImageIndex'
          'Name'
          'ShortCut'
          'Tag'
          'Visible')
      end>
    StorageName = 'stgLocalizarProduto'
    StorageType = stRegistry
    Left = 224
    Top = 168
  end
  object qryLocalizarProduto: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select prd.codigo, prd.codigo_fabricante, prd.complemento, prd.n' +
        'ome , prd.qtdade_2 , prd.qtdade_1,'
      
        'prd.prc_venda, prd.codigo_2, prd.PRC_REPOS, mr.nome marca, prd.s' +
        'erie,'
      'mdl.codigo mdl_codigo, mdl.nome modelo,'
      
        's.nome secao, prd.localizacao_1, prd.localizacao_2, prd.localiza' +
        'cao_3'
      'from est_produtos prd'
      
        'left join est_marcas mr on (mr.cnpj = prd.cnpj and mr.codigo = p' +
        'rd.marca)'
      
        'left join est_secao s on (s.cnpj = prd.cnpj and s.cod_secao = pr' +
        'd.secao)'
      
        'left join glo_modelo_propriedade mdl on (mdl.cnpj = prd.cnpj and' +
        ' mdl.codigo = prd.modelo)')
    Left = 184
    Top = 168
    object qryLocalizarProdutoCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Required = True
      Size = 15
    end
    object qryLocalizarProdutoNOME: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
    object qryLocalizarProdutoQTDADE_2: TFloatField
      DisplayLabel = 'Estoque F'#237'sico'
      FieldName = 'QTDADE_2'
      Origin = '"EST_PRODUTOS"."QTDADE_2"'
      DisplayFormat = '###,##0.00'
    end
    object qryLocalizarProdutoQTDADE_1: TFloatField
      DisplayLabel = 'Estoque Fiscal'
      FieldName = 'QTDADE_1'
      Origin = '"EST_PRODUTOS"."QTDADE_1"'
      DisplayFormat = '###,##0.00'
    end
    object qryLocalizarProdutoPRC_VENDA: TFloatField
      DisplayLabel = 'Prc. Venda'
      FieldName = 'PRC_VENDA'
      Origin = '"EST_PRODUTOS"."PRC_VENDA"'
      DisplayFormat = '###,##0.00'
    end
    object qryLocalizarProdutoCODIGO_2: TIBStringField
      DisplayLabel = 'C'#243'digo Secund'#225'rio'
      FieldName = 'CODIGO_2'
      Origin = '"EST_PRODUTOS"."CODIGO_2"'
      Size = 15
    end
    object qryLocalizarProdutoPRC_REPOS: TFloatField
      DisplayLabel = 'Prc. Reposi'#231#227'o'
      FieldName = 'PRC_REPOS'
      Origin = '"EST_PRODUTOS"."PRC_REPOS"'
      DisplayFormat = '###,##0.00'
    end
    object qryLocalizarProdutoMARCA: TIBStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      Origin = '"EST_MARCAS"."NOME"'
      Size = 50
    end
    object qryLocalizarProdutoSERIE: TIBStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Origin = '"EST_PRODUTOS"."SERIE"'
      Size = 30
    end
    object qryLocalizarProdutoMDL_CODIGO: TIntegerField
      FieldName = 'MDL_CODIGO'
      Origin = '"GLO_MODELO_PROPRIEDADE"."CODIGO"'
    end
    object qryLocalizarProdutoMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"GLO_MODELO_PROPRIEDADE"."NOME"'
      Size = 50
    end
    object qryLocalizarProdutoSECAO: TIBStringField
      DisplayLabel = 'Se'#231#227'o'
      FieldName = 'SECAO'
      Origin = '"EST_SECAO"."NOME"'
      Size = 50
    end
    object qryLocalizarProdutoLOCALIZACAO_1: TIBStringField
      DisplayLabel = 'Localiza'#231#227'o 1'
      FieldName = 'LOCALIZACAO_1'
      Origin = '"EST_PRODUTOS"."LOCALIZACAO_1"'
      Size = 30
    end
    object qryLocalizarProdutoLOCALIZACAO_2: TIBStringField
      DisplayLabel = 'Localiza'#231#227'o 2'
      FieldName = 'LOCALIZACAO_2'
      Origin = '"EST_PRODUTOS"."LOCALIZACAO_2"'
      Size = 30
    end
    object qryLocalizarProdutoLOCALIZACAO_3: TIBStringField
      DisplayLabel = 'Localiza'#231#227'o 3'
      FieldName = 'LOCALIZACAO_3'
      Origin = '"EST_PRODUTOS"."LOCALIZACAO_3"'
      Size = 30
    end
    object qryLocalizarProdutoCODIGO_FABRICANTE: TIBStringField
      DisplayLabel = 'C'#243'd. Frabricante'
      FieldName = 'CODIGO_FABRICANTE'
      Origin = '"EST_PRODUTOS"."CODIGO_FABRICANTE"'
      Size = 50
    end
    object qryLocalizarProdutoCOMPLEMENTO: TIBStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Origin = '"EST_PRODUTOS"."COMPLEMENTO"'
      Size = 100
    end
  end
end
