object FrmCartaCorrecao: TFrmCartaCorrecao
  Left = 619
  Top = 135
  Width = 511
  Height = 407
  Caption = 'Carta de Corre'#231#227'o Eletr'#244'nica'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 495
    Height = 369
    ActivePage = TabCorrecao
    Align = alClient
    HideTabs = True
    TabOrder = 0
    ClientRectBottom = 368
    ClientRectLeft = 1
    ClientRectRight = 494
    ClientRectTop = 1
    object TabRespostas: TcxTabSheet
      Caption = 'TabRespostas'
      ImageIndex = 0
      object MemoResp: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'MemoResp')
        TabOrder = 0
        Height = 367
        Width = 493
      end
    end
    object TabXML: TcxTabSheet
      Caption = 'TabXML'
      ImageIndex = 1
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        PanelStyle.Active = True
        TabOrder = 0
        Height = 332
        Width = 493
        object WBResposta: TWebBrowser
          Left = 2
          Top = 2
          Width = 489
          Height = 328
          Align = alClient
          TabOrder = 0
          ControlData = {
            4C000000BC3E0000842500000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 332
        Align = alBottom
        PanelStyle.Active = True
        TabOrder = 1
        Height = 35
        Width = 493
        object cxButton3: TcxButton
          Left = 8
          Top = 7
          Width = 75
          Height = 25
          Caption = 'Corre'#231#227'o'
          TabOrder = 0
          OnClick = cxButton3Click
        end
      end
    end
    object TabCorrecao: TcxTabSheet
      Caption = 'TabCorrecao'
      ImageIndex = 2
      object MemoCorrecao: TcxMemo
        Left = 16
        Top = 56
        Lines.Strings = (
          'MEMORESP')
        Properties.CharCase = ecUpperCase
        TabOrder = 0
        Height = 265
        Width = 465
      end
      object cxLabel1: TcxLabel
        Left = 16
        Top = 16
        AutoSize = False
        Caption = 
          'Corre'#231#227'o a ser considerada, texto livre. A corre'#231#227'o mais recente' +
          ' substitui as anteriores, logo a '#250'ltima retifica'#231#227'o deve conter ' +
          'todas as corre'#231#245'es.'
        Properties.WordWrap = True
        Transparent = True
        Height = 33
        Width = 369
      end
      object cxButton1: TcxButton
        Left = 24
        Top = 336
        Width = 75
        Height = 25
        Caption = 'Enviar'
        TabOrder = 2
        OnClick = cxButton1Click
      end
      object cxButton2: TcxButton
        Left = 104
        Top = 336
        Width = 75
        Height = 25
        Caption = 'XML'
        TabOrder = 3
        OnClick = cxButton2Click
      end
      object BtnVisualizar: TcxButton
        Left = 184
        Top = 336
        Width = 75
        Height = 25
        Caption = 'Visualizar'
        TabOrder = 4
        OnClick = BtnVisualizarClick
      end
    end
  end
  object ActionList1: TActionList
    Left = 324
    Top = 65531
    object ActImprimir: TAction
      Caption = 'Imprimir'
      Hint = 'Visualizar Impress'#227'o'
      ShortCut = 16464
      OnExecute = ActImprimirExecute
    end
    object ActGeraPDF: TAction
      Caption = 'Gerar PDF'
      OnExecute = ActGeraPDFExecute
    end
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.PathSalvar = 'C:\Program Files\Borland\Delphi7\Bin\'
    Configuracoes.Geral.ExibirErroSchema = True
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.RetirarAcentos = True
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.IntervaloTentativas = 0
    Configuracoes.WebServices.AjustaAguardaConsultaRet = False
    Configuracoes.Arquivos.Salvar = True
    Configuracoes.Arquivos.PastaMensal = True
    Configuracoes.Arquivos.AdicionarLiteral = True
    Configuracoes.Arquivos.PathNFe = 'C:\ACBrNFeMonitor\Arq'
    Configuracoes.Arquivos.PathCan = 'C:\ACBrNFeMonitor\Arq'
    Configuracoes.Arquivos.PathInu = 'C:\ACBrNFeMonitor\Arq'
    Configuracoes.Arquivos.PathDPEC = 'C:\ACBrNFeMonitor\Arq'
    Left = 190
  end
  object DtVenda: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterOpen = DtVendaAfterOpen
    DeleteSQL.Strings = (
      'delete from fat_vendas'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into fat_vendas'
      
        '  (CARTA_CORRECAO_ELETRONICA, CCE_SEQUENCIA, CNPJ, CODIGO, NFE_C' +
        'HAVE, NFE_XML, '
      '   NUM_NF)'
      'values'
      
        '  (:CARTA_CORRECAO_ELETRONICA, :CCE_SEQUENCIA, :CNPJ, :CODIGO, :' +
        'NFE_CHAVE, '
      '   :NFE_XML, :NUM_NF)')
    RefreshSQL.Strings = (
      'select'
      '    vnd.codigo,'
      '    vnd.cnpj,'
      '    vnd.nfe_chave,'
      '    vnd.nfe_xml,'
      '    vnd.carta_correcao_eletronica,'
      '    vnd.cce_sequencia,'
      '    vnd.num_nf'
      'from fat_vendas vnd'
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select'
      '    vnd.codigo,'
      '    vnd.cnpj,'
      '    vnd.nfe_chave,'
      '    vnd.nfe_xml,'
      '    vnd.carta_correcao_eletronica,'
      '    vnd.cce_sequencia,'
      '    vnd.num_nf'
      'from fat_vendas vnd'
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update fat_vendas'
      'set'
      '  CARTA_CORRECAO_ELETRONICA = :CARTA_CORRECAO_ELETRONICA,'
      '  CCE_SEQUENCIA = :CCE_SEQUENCIA,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NFE_CHAVE = :NFE_CHAVE,'
      '  NFE_XML = :NFE_XML,'
      '  NUM_NF = :NUM_NF'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 284
    Top = 65531
    object DtVendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DtVendaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDAS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object DtVendaNFE_CHAVE: TIBStringField
      FieldName = 'NFE_CHAVE'
      Origin = '"FAT_VENDAS"."NFE_CHAVE"'
      Size = 80
    end
    object DtVendaNFE_XML: TMemoField
      FieldName = 'NFE_XML'
      Origin = '"FAT_VENDAS"."NFE_XML"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object DtVendaCARTA_CORRECAO_ELETRONICA: TMemoField
      FieldName = 'CARTA_CORRECAO_ELETRONICA'
      Origin = '"FAT_VENDAS"."CARTA_CORRECAO_ELETRONICA"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object DtVendaCCE_SEQUENCIA: TIntegerField
      FieldName = 'CCE_SEQUENCIA'
      Origin = '"FAT_VENDAS"."CCE_SEQUENCIA"'
    end
    object DtVendaNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"FAT_VENDAS"."NUM_NF"'
    end
  end
  object DsVenda: TDataSource
    DataSet = DtVenda
    Left = 252
    Top = 65531
  end
  object ACBrNFeDANFERaveCB1: TACBrNFeDANFERaveCB
    ACBrNFe = ACBrNFe1
    PathPDF = 'C:\Program Files\Borland\Delphi7\Bin\'
    MostrarPreview = True
    MostrarStatus = True
    TipoDANFE = tiRetrato
    NumCopias = 1
    ImprimirDescPorc = False
    ImprimirTotalLiquido = True
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais._qCom = 2
    CasasDecimais._vUnCom = 2
    ExibirResumoCanhoto = False
    FormularioContinuo = False
    TamanhoFonte_DemaisCampos = 10
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = True
    NFeCancelada = False
    LocalImpCanhoto = 0
    ImprimeItens = True
    ViaConsumidor = True
    TributosSeparadamente = False
    TamanhoCampoCodigo = 0
    TamanhoCampoVlUnit = 0
    TamanhoFonte_ANTT = 10
    TamanhoFonte_infComplementares = 6
    Fonte = ftTimes
    EspessuraBorda = 2
    ExpandirDadosAdicionaisAuto = False
    MostrarSetup = False
    TributosPercentual = ptValorProdutos
    ImprimirDesconto = True
    ImprimirTributosItem = False
    Left = 216
  end
end
