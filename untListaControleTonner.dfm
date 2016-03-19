inherited frmListaControleTonner: TfrmListaControleTonner
  Height = 477
  Caption = 'Lista - Controle Tonner'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    OnExit = Panel1Exit
    object bTfrmCadCidades: TcxDBLookupComboBox
      Left = 8
      Top = 24
      DataBinding.DataField = 'CIDADE'
      DataBinding.DataSource = dsFiltro
      Properties.CharCase = ecUpperCase
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'NOME'
        end
        item
          FieldName = 'UF'
        end>
      Properties.ListSource = dsCidades
      TabOrder = 0
      Width = 224
    end
    object cxLabel34: TcxLabel
      Left = 8
      Top = 8
      Caption = 'Cidade'
      Transparent = True
    end
    object bTfrmCadClientes: TcxDBLookupComboBox
      Left = 258
      Top = 24
      DataBinding.DataField = 'CLIENTE'
      DataBinding.DataSource = dsFiltro
      ParentFont = False
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'NOME_RAZAO'
        end
        item
          FieldName = 'CODIGO'
        end>
      Properties.ListSource = dsClienteFiltro
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 257
    end
    object cxLabel1: TcxLabel
      Left = 256
      Top = 8
      Caption = 'Cliente'
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'GlassOceans'
      Style.Shadow = False
      Style.TransparentBorder = True
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'GlassOceans'
      Transparent = True
    end
    object btnFiltroCliente: TcxButton
      Left = 514
      Top = 24
      Width = 23
      Height = 22
      TabOrder = 4
      TabStop = False
      Glyph.Data = {
        06030000424D06030000000000003600000028000000100000000F0000000100
        180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
        0000000000000000000000000000000000000000000000000000000000000000
        00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
        FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
        000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
        FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
        FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
        000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
        FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
        0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
        000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
        FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
        0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
        BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
        FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
        BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
        00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
        00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBF}
      LookAndFeel.SkinName = 'LiquidSky'
    end
    object btnCidade: TcxButton
      Left = 232
      Top = 24
      Width = 24
      Height = 22
      Cursor = crHandPoint
      TabOrder = 5
      Glyph.Data = {
        06030000424D06030000000000003600000028000000100000000F0000000100
        180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
        0000000000000000000000000000000000000000000000000000000000000000
        00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
        FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
        000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
        FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
        FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
        000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
        FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
        0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
        000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
        FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
        0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
        BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
        FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
        BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
        00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
        00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBF}
    end
    object GroupBox7: TGroupBox
      Left = 541
      Top = 7
      Width = 209
      Height = 44
      Caption = 'Saldo Unidades'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 6
      object Label17: TcxLabel
        Left = 8
        Top = 16
        Caption = 'Inicial'
      end
      object Label18: TcxLabel
        Left = 99
        Top = 16
        Caption = 'Final'
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 42
        Top = 14
        DataBinding.DataField = 'QTDE_INI'
        DataBinding.DataSource = dsFiltro
        TabOrder = 0
        Width = 49
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 130
        Top = 14
        DataBinding.DataField = 'QTDE_FIM'
        DataBinding.DataSource = dsFiltro
        TabOrder = 1
        Width = 49
      end
    end
  end
  inherited Grid: TcxGrid
    Height = 350
    inherited TVGrid: TcxGridDBBandedTableView
      object TVGridCNPJ: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CNPJ'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object TVGridCODIGO_CONTROLE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CODIGO_CONTROLE'
        Visible = False
        Width = 88
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object TVGridCOD_CLIENTE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COD_CLIENTE'
        Visible = False
        GroupIndex = 0
        Width = 108
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object TVGridDATA_CONTROLE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DATA_CONTROLE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object TVGridCONTROLE_OBS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CONTROLE_OBS'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object TVGridNOME_RAZAO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOME_RAZAO'
        Visible = False
        GroupIndex = 1
        Width = 268
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object TVGridNOME_PRODUTO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOME_PRODUTO'
        Width = 42
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object TVGridNOME_MODELO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOME_MODELO'
        Width = 56
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object TVGridNOME_MARCA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOME_MARCA'
        Width = 52
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object TVGridCODIGO_ITEM: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CODIGO_ITEM'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object TVGridPRODUTO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRODUTO'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object TVGridTIPO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TIPO'
        Width = 48
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object TVGridQTDE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QTDE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object TVGridITEM_DATA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ITEM_DATA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object TVGridDT_REGISTRO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DT_REGISTRO'
        Width = 82
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object TVGridCPF_CGC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CPF_CGC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object TVGridQTDE_CALC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QTDE_CALC'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object TVGridCIDADE_NOME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CIDADE_NOME'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object TVGridSALDO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SALDO'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'select c.cnpj, c.codigo codigo_controle, c.cliente cod_cliente,'
      
        'c.data data_controle, c.observacoes controle_obs, psa.nome_razao' +
        ','
      'p.nome nome_produto, m.nome nome_marca, mdl.nome nome_modelo, '
      'i.codigo codigo_item,'
      'i.produto, i.qtde, i.tipo, i.data item_data, i.dt_registro,'
      'psa.cpf_cgc ,'
      ''
      'case i.tipo'
      'when '#39'C'#39'  then i.qtde'
      'else (i.qtde * -1)'
      'end qtde_calc,'
      'cdd.nome cidade_nome,'
      'c.saldo'
      ''
      ' from ofc_controle_tonner c'
      
        'left join ofc_controle_toner_item i on (c.cnpj = i.cnpj and i.co' +
        'd_controle_tonner = c.codigo)'
      
        'left join est_produtos p on (p.cnpj = i.cnpj and p.codigo = i.pr' +
        'oduto)'
      
        'left join est_marcas m on (m.cnpj = p.cnpj and m.codigo = p.marc' +
        'a)'
      
        'left join ofc_motores mdl on (mdl.cnpj = p.cnpj and mdl.codigo =' +
        ' p.modelo)'
      
        'left join glo_pessoas_fj psa on (psa.cnpj = c.cnpj and c.cliente' +
        ' = psa.codigo)'
      
        'left join glo_cidades cdd on (psa.cnpj = cdd.cnpj and psa.cidade' +
        ' = cdd.codigo)'
      'where c.cnpj = :cnpj'
      'and (cdd.codigo = :cod_cidade or 0 = :cod_cidade)'
      'and (psa.codigo = :cod_cliente or :cod_cliente = 0)'
      'and (c.saldo between :qtde_ini and :qtde_fim)')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_cidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_cidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtde_ini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtde_fim'
        ParamType = ptUnknown
      end>
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_CONTROLE_TONNER"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListCODIGO_CONTROLE: TIntegerField
      DisplayLabel = 'C'#243'd. Controle'
      FieldName = 'CODIGO_CONTROLE'
      Origin = '"OFC_CONTROLE_TONNER"."CODIGO"'
      Required = True
    end
    object dtListCOD_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'COD_CLIENTE'
      Origin = '"OFC_CONTROLE_TONNER"."CLIENTE"'
    end
    object dtListDATA_CONTROLE: TDateTimeField
      DisplayLabel = 'Dt. Controle'
      FieldName = 'DATA_CONTROLE'
      Origin = '"OFC_CONTROLE_TONNER"."DATA"'
    end
    object dtListCONTROLE_OBS: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'CONTROLE_OBS'
      Origin = '"OFC_CONTROLE_TONNER"."OBSERVACOES"'
      Size = 200
    end
    object dtListNOME_RAZAO: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object dtListNOME_PRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'NOME_PRODUTO'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object dtListNOME_MARCA: TIBStringField
      DisplayLabel = 'Marca'
      FieldName = 'NOME_MARCA'
      Origin = '"EST_MARCAS"."NOME"'
      Size = 50
    end
    object dtListNOME_MODELO: TIBStringField
      DisplayLabel = 'Modelo'
      FieldName = 'NOME_MODELO'
      Origin = '"OFC_MOTORES"."NOME"'
      Size = 80
    end
    object dtListCODIGO_ITEM: TIntegerField
      DisplayLabel = 'C'#243'd. Item'
      FieldName = 'CODIGO_ITEM'
      Origin = '"OFC_CONTROLE_TONER_ITEM"."CODIGO"'
    end
    object dtListPRODUTO: TIBStringField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'PRODUTO'
      Origin = '"OFC_CONTROLE_TONER_ITEM"."PRODUTO"'
      Size = 15
    end
    object dtListQTDE: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'QTDE'
      Origin = '"OFC_CONTROLE_TONER_ITEM"."QTDE"'
      DisplayFormat = '###,##0.00'
    end
    object dtListTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"OFC_CONTROLE_TONER_ITEM"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object dtListITEM_DATA: TDateTimeField
      DisplayLabel = 'Dt. Item'
      FieldName = 'ITEM_DATA'
      Origin = '"OFC_CONTROLE_TONER_ITEM"."DATA"'
    end
    object dtListDT_REGISTRO: TDateTimeField
      DisplayLabel = 'Dt. Registro'
      FieldName = 'DT_REGISTRO'
      Origin = '"OFC_CONTROLE_TONER_ITEM"."DT_REGISTRO"'
    end
    object dtListCPF_CGC: TIBStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object dtListQTDE_CALC: TFloatField
      DisplayLabel = 'Qtde Calc'
      FieldName = 'QTDE_CALC'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object dtListCIDADE_NOME: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE_NOME'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object dtListSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = '"OFC_CONTROLE_TONNER"."SALDO"'
      DisplayFormat = '###,##0.00'
    end
  end
  inherited dxBarManager: TdxBarManager
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    Left = 328
    Top = 65532
    DockControlHeights = (
      0
      0
      0
      26)
  end
  inherited ActionList1: TActionList
    Left = 416
    Top = 65532
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = -523840
  end
  inherited dxBarDBNavigator1: TdxBarDBNavigator
    Left = 304
    Top = 65532
  end
  object qryFiltroCliente: TIBQuery [8]
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      
        'select psa.codigo, psa.nome_razao, reg.tecnico, psa.email, (coal' +
        'esce(cdd.nome,'#39#39')||'#39' ('#39'||coalesce(psa.uf,'#39#39')||'#39')'#39') cidade'
      'from glo_pessoas_fj psa'
      
        'left join glo_cidades cdd on (psa.cnpj = cdd.cnpj and psa.cidade' +
        ' = cdd.codigo)'
      
        'left join glo_clientes cli on (cli.cnpj = psa.cnpj and cli.pesso' +
        'a_fj = psa.codigo)'
      
        'left join glo_regioes reg on (reg.cnpj = psa.cnpj and reg.codigo' +
        ' = psa.regiao)'
      'where psa.cnpj = :cnpj'
      'order by  psa.nome_razao')
    Left = 104
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object qryFiltroClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryFiltroClienteNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object qryFiltroClienteTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Origin = '"GLO_REGIOES"."TECNICO"'
    end
    object qryFiltroClienteEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"GLO_PESSOAS_FJ"."EMAIL"'
      Size = 80
    end
    object qryFiltroClienteCIDADE: TIBStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 55
    end
  end
  object dsClienteFiltro: TDataSource [9]
    DataSet = qryFiltroCliente
    Left = 104
    Top = 248
  end
  object dsCidades: TDataSource [10]
    AutoEdit = False
    DataSet = QryCidades
    Left = 72
    Top = 248
  end
  object QryCidades: TIBQuery [11]
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'select c.*'
      'from glo_cidades c'
      'where c.cnpj = :cnpj'
      'order by c.nome')
    Left = 72
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object QryCidadesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_CIDADES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryCidadesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_CIDADES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCidadesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object QryCidadesUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_CIDADES"."UF"'
      FixedChar = True
      Size = 2
    end
    object QryCidadesCOD_IBGE: TIBStringField
      FieldName = 'COD_IBGE'
      Origin = '"GLO_CIDADES"."COD_IBGE"'
      Size = 7
    end
    object QryCidadesCOD_IAGRO: TIntegerField
      FieldName = 'COD_IAGRO'
      Origin = '"GLO_CIDADES"."COD_IAGRO"'
    end
  end
  inherited GridPopupMenu: TcxGridPopupMenu
    Grid = Grid
    Left = 480
    Top = 65528
  end
  inherited SaveDialog: TSaveDialog
    Left = 358
    Top = 65532
  end
  inherited cxPropertiesStore: TcxPropertiesStore
    Components = <
      item
        Component = TVGrid
        Properties.Strings = (
          'BackgroundBitmaps'
          'Bands'
          'DataController'
          'DateTimeHandling'
          'DragMode'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FilterBox'
          'Filtering'
          'FilterRow'
          'Name'
          'NavigatorButtons'
          'NewItemRow'
          'OptionsBehavior'
          'OptionsCustomize'
          'OptionsData'
          'OptionsSelection'
          'OptionsView'
          'PopupMenu'
          'Preview'
          'Styles'
          'Synchronization'
          'Tag')
      end
      item
        Component = TVGridCIDADE_NOME
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVGridCNPJ
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVGridCOD_CLIENTE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVGridCODIGO_CONTROLE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVGridCODIGO_ITEM
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVGridCONTROLE_OBS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVGridCPF_CGC
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVGridDATA_CONTROLE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVGridDT_REGISTRO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVGridITEM_DATA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVGridNOME_MARCA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVGridNOME_MODELO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVGridNOME_PRODUTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVGridNOME_RAZAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVGridPRODUTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVGridQTDE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVGridQTDE_CALC
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVGridSALDO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVGridTIPO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end>
    Left = 384
    Top = 65532
  end
  inherited cxIntl1: TcxIntl
    Left = 512
    Top = 65532
  end
  inherited mtbFiltro: TdxMemData
    Left = 621
    Top = 4
    object mtbFiltroCIDADE: TIntegerField
      FieldName = 'CIDADE'
    end
    object mtbFiltroCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object mtbFiltroQTDE_INI: TFloatField
      FieldName = 'QTDE_INI'
    end
    object mtbFiltroQTDE_FIM: TFloatField
      FieldName = 'QTDE_FIM'
    end
  end
  inherited dsFiltro: TDataSource
    Left = 567
    Top = 65532
  end
end
