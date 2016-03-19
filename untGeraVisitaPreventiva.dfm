inherited frmGeraVisitaPreventiva: TfrmGeraVisitaPreventiva
  Left = 0
  Top = 0
  Width = 1280
  Height = 744
  Caption = 'Visitas Preventivas'
  OldCreateOrder = True
  PopupMenu = PopupMenu1
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Filtrar Registros'
    TabOrder = 0
    Height = 121
    Width = 1264
    object btnCidade: TcxButton
      Left = 480
      Top = 40
      Width = 24
      Height = 22
      Cursor = crHandPoint
      TabOrder = 6
      OnClick = btnCidadeClick
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
    object bTfrmCadCidades: TcxDBLookupComboBox
      Left = 256
      Top = 40
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
      TabOrder = 1
      Width = 224
    end
    object cxLabel34: TcxLabel
      Left = 256
      Top = 24
      Caption = 'Cidade'
      Transparent = True
    end
    object aTfrmCadRegiao: TcxDBLookupComboBox
      Left = 8
      Top = 40
      DataBinding.DataField = 'REGIAO'
      DataBinding.DataSource = dsFiltro
      Properties.CharCase = ecUpperCase
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'NOME'
        end>
      Properties.ListSource = dsRegiao
      TabOrder = 0
      Width = 225
    end
    object cxLabel35: TcxLabel
      Left = 8
      Top = 24
      Caption = 'Regi'#227'o'
      Transparent = True
    end
    object btnRegiao: TcxButton
      Left = 232
      Top = 40
      Width = 24
      Height = 22
      Cursor = crHandPoint
      TabOrder = 9
      OnClick = btnRegiaoClick
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
    object btnFiltroCliente: TcxButton
      Left = 760
      Top = 38
      Width = 23
      Height = 22
      TabOrder = 10
      TabStop = False
      OnClick = btnFiltroClienteClick
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
    object bTfrmCadClientes: TcxDBLookupComboBox
      Left = 504
      Top = 40
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
      TabOrder = 2
      Width = 257
    end
    object cxLabel1: TcxLabel
      Left = 504
      Top = 24
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
    object btnTipoContrato: TcxButton
      Left = 233
      Top = 79
      Width = 23
      Height = 22
      TabOrder = 12
      TabStop = False
      OnClick = btnTipoContratoClick
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
    object aTfrmCadTipoContrato: TcxDBLookupComboBox
      Left = 9
      Top = 80
      DataBinding.DataField = 'TIPO_CONTRATO'
      DataBinding.DataSource = dsFiltro
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'NOME'
        end>
      Properties.ListSource = dsTipoContrato
      TabOrder = 3
      Width = 224
    end
    object cxLabel12: TcxLabel
      Left = 9
      Top = 64
      Caption = 'Tipo Contrato'
      Transparent = True
    end
    object GroupBox7: TGroupBox
      Left = 506
      Top = 65
      Width = 209
      Height = 40
      Caption = 'Dias de Atraso'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 5
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
        DataBinding.DataField = 'DIAS_ATRASO_INI'
        DataBinding.DataSource = dsFiltro
        TabOrder = 0
        Width = 49
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 130
        Top = 14
        DataBinding.DataField = 'DIAS_ATRASO_FIM'
        DataBinding.DataSource = dsFiltro
        TabOrder = 1
        Width = 49
      end
    end
    object btnTecnico: TcxButton
      Left = 480
      Top = 79
      Width = 23
      Height = 22
      TabOrder = 14
      TabStop = False
      OnClick = btnTecnicoClick
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
    object aTfrmCadTecnicos: TcxDBLookupComboBox
      Left = 256
      Top = 80
      DataBinding.DataField = 'TECNICO'
      DataBinding.DataSource = dsFiltro
      ParentFont = False
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'NOME'
        end>
      Properties.ListSource = dsTecnico
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 225
    end
    object cxLabel15: TcxLabel
      Left = 256
      Top = 64
      Caption = 'Tecnico'
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
    object cxButton1: TcxButton
      Left = 720
      Top = 80
      Width = 65
      Height = 25
      Caption = 'Filtrar'
      TabOrder = 16
      OnClick = cxButton1Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 121
    Width = 1264
    Height = 559
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 5
    object Grid: TcxGrid
      Left = 1
      Top = 1
      Width = 1262
      Height = 487
      Align = alClient
      TabOrder = 0
      object GridDBBandedTableView1: TcxGridDBBandedTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Bands = <
          item
          end>
      end
      object TVGrid: TcxGridDBBandedTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsPreventiva
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsBehavior.IncSearch = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupFooters = gfAlwaysVisible
        OptionsView.BandHeaders = False
        Bands = <
          item
          end>
        object TVGridRecId: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RecId'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object TVGridCONTRATO_ATIVO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CONTRATO_ATIVO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Visible = False
          Width = 53
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object TVGridCONTRATO_CLIENTE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CONTRATO_CLIENTE'
          Width = 86
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object TVGridCONTRATO_CODIGO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CONTRATO_CODIGO'
          Visible = False
          Width = 95
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object TVGridCONTRATO_DIAS_RECHAMADO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CONTRATO_DIAS_RECHAMADO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object TVGridCONTRATO_DT_FIM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CONTRATO_DT_FIM'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object TVGridCONTRATO_DT_INICIO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CONTRATO_DT_INICIO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object TVGridNUMERO_CONTRATO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NUMERO_CONTRATO'
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object TVGridTEMPO_RESPOSTA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TEMPO_RESPOSTA'
          Visible = False
          Width = 94
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object TVGridATIVIDADE_CLIENTE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ATIVIDADE_CLIENTE'
          Visible = False
          Width = 96
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object TVGridBAIRRO_CLIENTE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BAIRRO_CLIENTE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object TVGridCIDADE_CLIENTE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CIDADE_CLIENTE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object TVGridCODIGO_CLIENTE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CODIGO_CLIENTE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object TVGridCPF_CNPJ: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CPF_CNPJ'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
        object TVGridNOME_FANTASIA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOME_FANTASIA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object TVGridRAZAO_SOCIAL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RAZAO_SOCIAL'
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object TVGridREGIAO_CLIENTE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'REGIAO_CLIENTE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
        object TVGridRG_INSC_ESTADUAL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RG_INSC_ESTADUAL'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 25
          Position.RowIndex = 0
        end
        object TVGridUF: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UF'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 26
          Position.RowIndex = 0
        end
        object TVGridPRODUTO_ATIVO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PRODUTO_ATIVO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 27
          Position.RowIndex = 0
        end
        object TVGridCODIGO_PRODUTO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CODIGO_PRODUTO'
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object TVGridCODIGO_PRODUTO_SEC: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CODIGO_PRODUTO_SEC'
          Width = 104
          Position.BandIndex = 0
          Position.ColIndex = 28
          Position.RowIndex = 0
        end
        object TVGridCODIGO_MARCA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CODIGO_MARCA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 29
          Position.RowIndex = 0
        end
        object TVGridNOME_PRODUTO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOME_PRODUTO'
          Width = 203
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object TVGridMARCA_PRODUTO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MARCA_PRODUTO'
          Width = 194
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object TVGridMODELO_PRODUTO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MODELO_PRODUTO'
          Width = 190
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object TVGridTIPO_CONTRATO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TIPO_CONTRATO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 30
          Position.RowIndex = 0
        end
        object TVGridNOME_CONTRATO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOME_CONTRATO'
          Width = 231
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object TVGridMEDIA_COPIA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MEDIA_COPIA'
          Position.BandIndex = 0
          Position.ColIndex = 31
          Position.RowIndex = 0
        end
        object TVGridCONTRATO_COPIAS_PREVENTIVA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CONTRATO_COPIAS_PREVENTIVA'
          Width = 101
          Position.BandIndex = 0
          Position.ColIndex = 33
          Position.RowIndex = 0
        end
        object TVGridQTDE_COPIA_ATUAL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTDE_COPIA_ATUAL'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 34
          Position.RowIndex = 0
        end
        object TVGridQTDE_COPIA_PREVISTA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTDE_COPIA_PREVISTA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 35
          Position.RowIndex = 0
        end
        object TVGridDT_FECHAMENTO_ULTIMO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DT_FECHAMENTO_ULTIMO'
          Width = 119
          Position.BandIndex = 0
          Position.ColIndex = 32
          Position.RowIndex = 0
        end
        object TVGridCONTADOR_ULTIMO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CONTADOR_ULTIMO'
          Visible = False
          Width = 101
          Position.BandIndex = 0
          Position.ColIndex = 36
          Position.RowIndex = 0
        end
        object TVGridPONTO_VISITA_PREVENTIVA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PONTO_VISITA_PREVENTIVA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 37
          Position.RowIndex = 0
        end
        object TVGridNOME_CIDADE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOME_CIDADE'
          Visible = False
          GroupIndex = 0
          Width = 218
          Position.BandIndex = 0
          Position.ColIndex = 38
          Position.RowIndex = 0
        end
        object TVGridNOME_REGIAO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOME_REGIAO'
          Width = 192
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object TVGridNOME_TIPO_CONTRATO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOME_TIPO_CONTRATO'
          Width = 188
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object TVGridDIAS_EM_ATRASO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DIAS_EM_ATRASO'
          Position.BandIndex = 0
          Position.ColIndex = 39
          Position.RowIndex = 0
        end
        object TVGridCONT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CONT'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 40
          Position.RowIndex = 0
        end
        object TVGridSEL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SEL'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object LVGrid: TcxGridLevel
        GridView = TVGrid
      end
    end
    object pnlFiltro: TPanel
      Left = 1
      Top = 488
      Width = 1262
      Height = 70
      Align = alBottom
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 1
      object pbTimer: TcxProgressBar
        Left = 0
        Top = 51
        Align = alBottom
        TabOrder = 3
        Visible = False
        Width = 1262
      end
      object btnMotivo: TcxButton
        Left = 760
        Top = 20
        Width = 23
        Height = 22
        TabOrder = 4
        TabStop = False
        OnClick = btnMotivoClick
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
      object aTfrmCadMotivoChamado: TcxDBLookupComboBox
        Left = 526
        Top = 21
        DataBinding.DataField = 'MOTIVO_PADRAO'
        DataBinding.DataSource = dsFiltro
        ParentFont = False
        Properties.KeyFieldNames = 'CODIGO'
        Properties.ListColumns = <
          item
            FieldName = 'NOME'
          end>
        Properties.ListSource = dsMotivoChamado
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 235
      end
      object cxLabel19: TcxLabel
        Left = 525
        Top = 4
        Caption = 'Motivo do Chamado'
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
      object aTfrmCadDefeitos: TcxDBLookupComboBox
        Left = 266
        Top = 21
        DataBinding.DataField = 'DEFEITO_PADRAO'
        DataBinding.DataSource = dsFiltro
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'CODIGO'
        Properties.ListColumns = <
          item
            FieldName = 'NOME'
          end>
        Properties.ListSource = dsDefeitoReclamado
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 235
      end
      object btnDefeitoReclamado: TcxButton
        Left = 500
        Top = 20
        Width = 23
        Height = 22
        TabOrder = 6
        TabStop = False
        OnClick = btnDefeitoReclamadoClick
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
      object cxLabel17: TcxLabel
        Left = 266
        Top = 5
        Caption = 'Defeito Reclamado'
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
      object cxButton2: TcxButton
        Left = 241
        Top = 20
        Width = 23
        Height = 22
        TabOrder = 8
        TabStop = False
        OnClick = btnTecnicoClick
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
      object bTfrmCadTecnicos: TcxDBLookupComboBox
        Left = 8
        Top = 21
        DataBinding.DataField = 'TECNICO_PADRAO'
        DataBinding.DataSource = dsFiltro
        ParentFont = False
        Properties.KeyFieldNames = 'CODIGO'
        Properties.ListColumns = <
          item
            FieldName = 'NOME'
          end>
        Properties.ListSource = dsTecnico
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 235
      end
      object cxLabel2: TcxLabel
        Left = 8
        Top = 5
        Caption = 'Tecnico'
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
    end
  end
  object dsRegiao: TDataSource
    AutoEdit = False
    DataSet = qryRegiao
    Left = 48
    Top = 216
  end
  object qryRegiao: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = QryCidadesBeforeOpen
    SQL.Strings = (
      'select * from glo_regioes'
      'where cnpj = :cnpj and coalesce(nome,'#39#39') <> '#39#39)
    Left = 48
    Top = 248
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CNPJ'
        ParamType = ptUnknown
        Size = 15
      end>
    object qryRegiaoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_REGIOES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object qryRegiaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_REGIOES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryRegiaoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_REGIOES"."NOME"'
      Size = 50
    end
    object qryRegiaoVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"GLO_REGIOES"."VENDEDOR"'
    end
    object qryRegiaoTERCEIRO: TIntegerField
      FieldName = 'TERCEIRO'
      Origin = '"GLO_REGIOES"."TERCEIRO"'
    end
    object qryRegiaoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"GLO_REGIOES"."DESCRICAO"'
      Size = 100
    end
    object qryRegiaoTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Origin = '"GLO_REGIOES"."TECNICO"'
    end
  end
  object dsCidades: TDataSource
    AutoEdit = False
    DataSet = QryCidades
    Left = 15
    Top = 216
  end
  object QryCidades: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = QryCidadesBeforeOpen
    SQL.Strings = (
      'select c.*'
      'from glo_cidades c'
      'where c.cnpj = :cnpj'
      'order by c.nome')
    Left = 14
    Top = 248
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
  object qryFiltroCliente: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = QryCidadesBeforeOpen
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
    Left = 84
    Top = 250
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
  object dsClienteFiltro: TDataSource
    DataSet = qryFiltroCliente
    Left = 87
    Top = 218
  end
  object dsTipoContrato: TDataSource
    DataSet = QryTipoContrato
    Left = 119
    Top = 220
  end
  object QryTipoContrato: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = QryCidadesBeforeOpen
    SQL.Strings = (
      'select * from glo_tipo_contrato ct'
      'where ct.cnpj = :cnpj'
      'order by nome')
    Left = 121
    Top = 252
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object QryTipoContratoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_TIPO_CONTRATO"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryTipoContratoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_TIPO_CONTRATO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryTipoContratoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_TIPO_CONTRATO"."NOME"'
      Size = 50
    end
  end
  object mtbFiltro: TdxMemData
    Indexes = <>
    Persistent.Option = poNone
    SortOptions = []
    Left = 848
    Top = 27
    object mtbFiltroCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object mtbFiltroREGIAO: TIntegerField
      FieldName = 'REGIAO'
    end
    object mtbFiltroCIDADE: TIntegerField
      FieldName = 'CIDADE'
    end
    object mtbFiltroDIAS_ATRASO_INI: TIntegerField
      FieldName = 'DIAS_ATRASO_INI'
    end
    object mtbFiltroDIAS_ATRASO_FIM: TIntegerField
      FieldName = 'DIAS_ATRASO_FIM'
    end
    object mtbFiltroTIPO_CONTRATO: TIntegerField
      FieldName = 'TIPO_CONTRATO'
    end
    object mtbFiltroTECNICO: TIntegerField
      FieldName = 'TECNICO'
    end
    object mtbFiltroTECNICO_PADRAO: TIntegerField
      FieldName = 'TECNICO_PADRAO'
    end
    object mtbFiltroDEFEITO_PADRAO: TIntegerField
      FieldName = 'DEFEITO_PADRAO'
    end
    object mtbFiltroMOTIVO_PADRAO: TIntegerField
      FieldName = 'MOTIVO_PADRAO'
    end
  end
  object dsFiltro: TDataSource
    DataSet = mtbFiltro
    Left = 815
    Top = 28
  end
  object dsTecnico: TDataSource
    DataSet = QryTecnico
    Left = 157
    Top = 220
  end
  object QryTecnico: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = QryCidadesBeforeOpen
    SQL.Strings = (
      
        'select t.codigo, t.nome, t.email, t.assinatura from ofc_mecanico' +
        's t'
      
        'inner join glo_pessoas_fj psa on (psa.cnpj = t.cnpj and t.pessoa' +
        '_fj = psa.codigo)'
      'where t.cnpj = :cnpj')
    Left = 153
    Top = 255
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object QryTecnicoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_MECANICOS"."CODIGO"'
      Required = True
    end
    object QryTecnicoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
    object QryTecnicoEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"OFC_MECANICOS"."EMAIL"'
      Size = 80
    end
    object QryTecnicoASSINATURA: TMemoField
      FieldName = 'ASSINATURA'
      Origin = '"OFC_MECANICOS"."ASSINATURA"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object mtbPreventiva: TdxMemData
    Active = True
    Indexes = <>
    Persistent.Option = poNone
    Persistent.Data = {
      5665728FC2F5285C8FFE3F270000000100000001000F00434F4E545241544F5F
      415449564F000400000003001100434F4E545241544F5F434C49454E54450004
      00000003001000434F4E545241544F5F434F4449474F00040000000300180043
      4F4E545241544F5F444941535F52454348414D41444F00080000000B00100043
      4F4E545241544F5F44545F46494D00080000000B001300434F4E545241544F5F
      44545F494E4943494F001E000000010010004E554D45524F5F434F4E54524154
      4F000400000003000F0054454D504F5F524553504F5354410004000000030012
      004154495649444144455F434C49454E5445000400000003000F004241495252
      4F5F434C49454E5445000400000003000F004349444144455F434C49454E5445
      000400000003000F00434F4449474F5F434C49454E5445000F00000001000900
      4350465F434E504A003200000001000E004E4F4D455F46414E54415349410032
      00000001000D0052415A414F5F534F4349414C000400000003000F0052454749
      414F5F434C49454E544500140000000100110052475F494E53435F4553544144
      55414C0002000000010003005546000100000001000E0050524F4455544F5F41
      5449564F000F00000001000F00434F4449474F5F50524F4455544F000F000000
      01001300434F4449474F5F50524F4455544F5F534543000400000003000D0043
      4F4449474F5F4D41524341003200000001000D004E4F4D455F50524F4455544F
      003200000001000E004D415243415F50524F4455544F005000000001000F004D
      4F44454C4F5F50524F4455544F000400000003000E005449504F5F434F4E5452
      41544F003200000001000E004E4F4D455F434F4E545241544F00040000000300
      0C004D454449415F434F504941000400000003001B00434F4E545241544F5F43
      4F504941535F50524556454E54495641000400000003001100515444455F434F
      5049415F415455414C000400000003001400515444455F434F5049415F505245
      564953544100040000000900150044545F46454348414D454E544F5F554C5449
      4D4F000400000003001000434F4E5441444F525F554C54494D4F000400000009
      001800504F4E544F5F5649534954415F50524556454E54495641003200000001
      000C004E4F4D455F434944414445003200000001000C004E4F4D455F52454749
      414F0032000000010013004E4F4D455F5449504F5F434F4E545241544F000400
      000003000F00444941535F454D5F41545241534F000400000003000500434F4E
      5400}
    SortOptions = []
    Left = 848
    Top = 83
    object mtbPreventivaCONTRATO_ATIVO: TStringField
      DisplayLabel = 'Ct. Ativo'
      DisplayWidth = 1
      FieldName = 'CONTRATO_ATIVO'
      Size = 1
    end
    object mtbPreventivaCONTRATO_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      DisplayWidth = 10
      FieldName = 'CONTRATO_CLIENTE'
    end
    object mtbPreventivaCONTRATO_CODIGO: TIntegerField
      DisplayLabel = 'Ct. C'#243'digo'
      DisplayWidth = 10
      FieldName = 'CONTRATO_CODIGO'
    end
    object mtbPreventivaCONTRATO_DIAS_RECHAMADO: TIntegerField
      DisplayLabel = 'Ct. Dias Rechamado'
      DisplayWidth = 10
      FieldName = 'CONTRATO_DIAS_RECHAMADO'
    end
    object mtbPreventivaCONTRATO_DT_FIM: TDateTimeField
      DisplayLabel = 'Ct. Data Fim'
      DisplayWidth = 18
      FieldName = 'CONTRATO_DT_FIM'
    end
    object mtbPreventivaCONTRATO_DT_INICIO: TDateTimeField
      DisplayLabel = 'Ct. Data Inicio'
      DisplayWidth = 18
      FieldName = 'CONTRATO_DT_INICIO'
    end
    object mtbPreventivaNUMERO_CONTRATO: TStringField
      DisplayLabel = 'Contrato'
      DisplayWidth = 30
      FieldName = 'NUMERO_CONTRATO'
      Size = 30
    end
    object mtbPreventivaTEMPO_RESPOSTA: TIntegerField
      DisplayLabel = 'Ct. Tmp. Respota'
      DisplayWidth = 10
      FieldName = 'TEMPO_RESPOSTA'
    end
    object mtbPreventivaATIVIDADE_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Atividade'
      DisplayWidth = 10
      FieldName = 'ATIVIDADE_CLIENTE'
    end
    object mtbPreventivaBAIRRO_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Bairro'
      DisplayWidth = 10
      FieldName = 'BAIRRO_CLIENTE'
    end
    object mtbPreventivaCIDADE_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      DisplayWidth = 10
      FieldName = 'CIDADE_CLIENTE'
    end
    object mtbPreventivaCODIGO_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      DisplayWidth = 10
      FieldName = 'CODIGO_CLIENTE'
    end
    object mtbPreventivaCPF_CNPJ: TStringField
      DisplayLabel = 'CPF/CNPJ'
      DisplayWidth = 15
      FieldName = 'CPF_CNPJ'
      Size = 15
    end
    object mtbPreventivaNOME_FANTASIA: TStringField
      DisplayLabel = 'Nome Fantasia'
      DisplayWidth = 50
      FieldName = 'NOME_FANTASIA'
      Size = 50
    end
    object mtbPreventivaRAZAO_SOCIAL: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      DisplayWidth = 50
      FieldName = 'RAZAO_SOCIAL'
      Size = 50
    end
    object mtbPreventivaREGIAO_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Regi'#227'o'
      DisplayWidth = 10
      FieldName = 'REGIAO_CLIENTE'
    end
    object mtbPreventivaRG_INSC_ESTADUAL: TStringField
      DisplayLabel = 'RG_IE'
      DisplayWidth = 20
      FieldName = 'RG_INSC_ESTADUAL'
    end
    object mtbPreventivaUF: TStringField
      DisplayWidth = 2
      FieldName = 'UF'
      Size = 2
    end
    object mtbPreventivaPRODUTO_ATIVO: TStringField
      DisplayLabel = 'Prd. Ativo'
      DisplayWidth = 1
      FieldName = 'PRODUTO_ATIVO'
      Size = 1
    end
    object mtbPreventivaCODIGO_PRODUTO: TStringField
      DisplayLabel = 'C'#243'd. Equipamento'
      DisplayWidth = 15
      FieldName = 'CODIGO_PRODUTO'
      Size = 15
    end
    object mtbPreventivaCODIGO_PRODUTO_SEC: TStringField
      DisplayLabel = 'C'#243'd. Prod. Sec.'
      DisplayWidth = 15
      FieldName = 'CODIGO_PRODUTO_SEC'
      Size = 15
    end
    object mtbPreventivaCODIGO_MARCA: TIntegerField
      DisplayLabel = 'C'#243'd. Marca'
      DisplayWidth = 10
      FieldName = 'CODIGO_MARCA'
    end
    object mtbPreventivaNOME_PRODUTO: TStringField
      DisplayLabel = 'Equipamento'
      DisplayWidth = 50
      FieldName = 'NOME_PRODUTO'
      Size = 50
    end
    object mtbPreventivaMARCA_PRODUTO: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 50
      FieldName = 'MARCA_PRODUTO'
      Size = 50
    end
    object mtbPreventivaMODELO_PRODUTO: TStringField
      DisplayLabel = 'Modelo'
      DisplayWidth = 80
      FieldName = 'MODELO_PRODUTO'
      Size = 80
    end
    object mtbPreventivaTIPO_CONTRATO: TIntegerField
      DisplayLabel = 'C'#243'd. Tp. Contrato'
      DisplayWidth = 10
      FieldName = 'TIPO_CONTRATO'
    end
    object mtbPreventivaNOME_CONTRATO: TStringField
      DisplayLabel = 'Tipo Contrato'
      DisplayWidth = 50
      FieldName = 'NOME_CONTRATO'
      Size = 50
    end
    object mtbPreventivaMEDIA_COPIA: TIntegerField
      DisplayLabel = 'VMC'
      DisplayWidth = 10
      FieldName = 'MEDIA_COPIA'
    end
    object mtbPreventivaCONTRATO_COPIAS_PREVENTIVA: TIntegerField
      DisplayLabel = 'Qtde Dias Preventiva'
      DisplayWidth = 10
      FieldName = 'CONTRATO_COPIAS_PREVENTIVA'
    end
    object mtbPreventivaQTDE_COPIA_ATUAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTDE_COPIA_ATUAL'
    end
    object mtbPreventivaQTDE_COPIA_PREVISTA: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTDE_COPIA_PREVISTA'
    end
    object mtbPreventivaDT_FECHAMENTO_ULTIMO: TDateField
      DisplayLabel = 'Dt. Fech. Ult. OS'
      DisplayWidth = 10
      FieldName = 'DT_FECHAMENTO_ULTIMO'
    end
    object mtbPreventivaCONTADOR_ULTIMO: TIntegerField
      DisplayLabel = 'Qtde Ult. Contador'
      DisplayWidth = 10
      FieldName = 'CONTADOR_ULTIMO'
    end
    object mtbPreventivaPONTO_VISITA_PREVENTIVA: TDateField
      DisplayLabel = 'Ponto de Visita'
      DisplayWidth = 10
      FieldName = 'PONTO_VISITA_PREVENTIVA'
    end
    object mtbPreventivaNOME_CIDADE: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 50
      FieldName = 'NOME_CIDADE'
      Size = 50
    end
    object mtbPreventivaNOME_REGIAO: TStringField
      DisplayLabel = 'Regi'#227'o'
      DisplayWidth = 50
      FieldName = 'NOME_REGIAO'
      Size = 50
    end
    object mtbPreventivaNOME_TIPO_CONTRATO: TStringField
      DisplayLabel = 'Tipo Contrato'
      DisplayWidth = 50
      FieldName = 'NOME_TIPO_CONTRATO'
      Size = 50
    end
    object mtbPreventivaDIAS_EM_ATRASO: TIntegerField
      DisplayLabel = 'Dias de Atraso'
      DisplayWidth = 10
      FieldName = 'DIAS_EM_ATRASO'
    end
    object mtbPreventivaCONT: TIntegerField
      DisplayWidth = 10
      FieldName = 'CONT'
    end
    object mtbPreventivaSEL: TBooleanField
      DisplayLabel = 'X'
      FieldName = 'SEL'
    end
  end
  object dsPreventiva: TDataSource
    DataSet = mtbPreventiva
    Left = 815
    Top = 84
  end
  object QryPreventiva: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select * from pcd_lst_os_preventiva(:cnpj,:cod_regiao,:cod_cidad' +
        'e,:cod_tecnico,:cod_cliente,:cod_tp_contrato,:dias_ini,:dias_fim' +
        ',:data_base)')
    Left = 849
    Top = 207
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_regiao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_cidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_tecnico'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_tp_contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dias_ini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dias_fim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data_base'
        ParamType = ptUnknown
      end>
    object QryPreventivaCONTRATO_ATIVO: TIBStringField
      FieldName = 'CONTRATO_ATIVO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CONTRATO_ATIVO"'
      FixedChar = True
      Size = 1
    end
    object QryPreventivaCONTRATO_CLIENTE: TIntegerField
      FieldName = 'CONTRATO_CLIENTE'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CONTRATO_CLIENTE"'
    end
    object QryPreventivaCONTRATO_CODIGO: TIntegerField
      FieldName = 'CONTRATO_CODIGO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CONTRATO_CODIGO"'
    end
    object QryPreventivaCONTRATO_DIAS_RECHAMADO: TIntegerField
      FieldName = 'CONTRATO_DIAS_RECHAMADO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CONTRATO_DIAS_RECHAMADO"'
    end
    object QryPreventivaCONTRATO_DT_FIM: TDateTimeField
      FieldName = 'CONTRATO_DT_FIM'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CONTRATO_DT_FIM"'
    end
    object QryPreventivaCONTRATO_DT_INICIO: TDateTimeField
      FieldName = 'CONTRATO_DT_INICIO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CONTRATO_DT_INICIO"'
    end
    object QryPreventivaNUMERO_CONTRATO: TIBStringField
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."NUMERO_CONTRATO"'
      Size = 30
    end
    object QryPreventivaTEMPO_RESPOSTA: TIntegerField
      FieldName = 'TEMPO_RESPOSTA'
      Origin = '"PCD_LST_OS_PREVENTIVA"."TEMPO_RESPOSTA"'
    end
    object QryPreventivaATIVIDADE_CLIENTE: TIntegerField
      FieldName = 'ATIVIDADE_CLIENTE'
      Origin = '"PCD_LST_OS_PREVENTIVA"."ATIVIDADE_CLIENTE"'
    end
    object QryPreventivaBAIRRO_CLIENTE: TIntegerField
      FieldName = 'BAIRRO_CLIENTE'
      Origin = '"PCD_LST_OS_PREVENTIVA"."BAIRRO_CLIENTE"'
    end
    object QryPreventivaCIDADE_CLIENTE: TIntegerField
      FieldName = 'CIDADE_CLIENTE'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CIDADE_CLIENTE"'
    end
    object QryPreventivaCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CODIGO_CLIENTE"'
    end
    object QryPreventivaCPF_CNPJ: TIBStringField
      FieldName = 'CPF_CNPJ'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CPF_CNPJ"'
      Size = 15
    end
    object QryPreventivaNOME_FANTASIA: TIBStringField
      FieldName = 'NOME_FANTASIA'
      Origin = '"PCD_LST_OS_PREVENTIVA"."NOME_FANTASIA"'
      Size = 50
    end
    object QryPreventivaRAZAO_SOCIAL: TIBStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = '"PCD_LST_OS_PREVENTIVA"."RAZAO_SOCIAL"'
      Size = 50
    end
    object QryPreventivaREGIAO_CLIENTE: TIntegerField
      FieldName = 'REGIAO_CLIENTE'
      Origin = '"PCD_LST_OS_PREVENTIVA"."REGIAO_CLIENTE"'
    end
    object QryPreventivaRG_INSC_ESTADUAL: TIBStringField
      FieldName = 'RG_INSC_ESTADUAL'
      Origin = '"PCD_LST_OS_PREVENTIVA"."RG_INSC_ESTADUAL"'
    end
    object QryPreventivaUF: TIBStringField
      FieldName = 'UF'
      Origin = '"PCD_LST_OS_PREVENTIVA"."UF"'
      FixedChar = True
      Size = 2
    end
    object QryPreventivaPRODUTO_ATIVO: TIBStringField
      FieldName = 'PRODUTO_ATIVO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."PRODUTO_ATIVO"'
      FixedChar = True
      Size = 1
    end
    object QryPreventivaCODIGO_PRODUTO: TIBStringField
      FieldName = 'CODIGO_PRODUTO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CODIGO_PRODUTO"'
      Size = 15
    end
    object QryPreventivaCODIGO_PRODUTO_SEC: TIBStringField
      FieldName = 'CODIGO_PRODUTO_SEC'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CODIGO_PRODUTO_SEC"'
      Size = 15
    end
    object QryPreventivaCODIGO_MARCA: TIntegerField
      FieldName = 'CODIGO_MARCA'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CODIGO_MARCA"'
    end
    object QryPreventivaNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."NOME_PRODUTO"'
      Size = 50
    end
    object QryPreventivaMARCA_PRODUTO: TIBStringField
      FieldName = 'MARCA_PRODUTO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."MARCA_PRODUTO"'
      Size = 50
    end
    object QryPreventivaMODELO_PRODUTO: TIBStringField
      FieldName = 'MODELO_PRODUTO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."MODELO_PRODUTO"'
      Size = 80
    end
    object QryPreventivaTIPO_CONTRATO: TIntegerField
      FieldName = 'TIPO_CONTRATO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."TIPO_CONTRATO"'
    end
    object QryPreventivaNOME_CONTRATO: TIBStringField
      FieldName = 'NOME_CONTRATO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."NOME_CONTRATO"'
      Size = 50
    end
    object QryPreventivaMEDIA_COPIA: TIntegerField
      FieldName = 'MEDIA_COPIA'
      Origin = '"PCD_LST_OS_PREVENTIVA"."MEDIA_COPIA"'
    end
    object QryPreventivaCONTRATO_COPIAS_PREVENTIVA: TIntegerField
      FieldName = 'CONTRATO_COPIAS_PREVENTIVA'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CONTRATO_COPIAS_PREVENTIVA"'
    end
    object QryPreventivaQTDE_COPIA_ATUAL: TIntegerField
      FieldName = 'QTDE_COPIA_ATUAL'
      Origin = '"PCD_LST_OS_PREVENTIVA"."QTDE_COPIA_ATUAL"'
    end
    object QryPreventivaQTDE_COPIA_PREVISTA: TIntegerField
      FieldName = 'QTDE_COPIA_PREVISTA'
      Origin = '"PCD_LST_OS_PREVENTIVA"."QTDE_COPIA_PREVISTA"'
    end
    object QryPreventivaDT_FECHAMENTO_ULTIMO: TDateField
      FieldName = 'DT_FECHAMENTO_ULTIMO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."DT_FECHAMENTO_ULTIMO"'
    end
    object QryPreventivaCONTADOR_ULTIMO: TIntegerField
      FieldName = 'CONTADOR_ULTIMO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CONTADOR_ULTIMO"'
    end
    object QryPreventivaPONTO_VISITA_PREVENTIVA: TDateField
      FieldName = 'PONTO_VISITA_PREVENTIVA'
      Origin = '"PCD_LST_OS_PREVENTIVA"."PONTO_VISITA_PREVENTIVA"'
    end
    object QryPreventivaNOME_CIDADE: TIBStringField
      FieldName = 'NOME_CIDADE'
      Origin = '"PCD_LST_OS_PREVENTIVA"."NOME_CIDADE"'
      Size = 50
    end
    object QryPreventivaNOME_REGIAO: TIBStringField
      FieldName = 'NOME_REGIAO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."NOME_REGIAO"'
      Size = 50
    end
    object QryPreventivaNOME_TIPO_CONTRATO: TIBStringField
      FieldName = 'NOME_TIPO_CONTRATO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."NOME_TIPO_CONTRATO"'
      Size = 50
    end
    object QryPreventivaDIAS_EM_ATRASO: TIntegerField
      FieldName = 'DIAS_EM_ATRASO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."DIAS_EM_ATRASO"'
    end
    object QryPreventivaCONT: TIntegerField
      FieldName = 'CONT'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CONT"'
    end
  end
  object dsTecnicoPadrao: TDataSource
    DataSet = qryTecnicoPadrao
    Left = 196
    Top = 220
  end
  object qryTecnicoPadrao: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = QryCidadesBeforeOpen
    SQL.Strings = (
      
        'select t.codigo, t.nome, t.email, t.assinatura from ofc_mecanico' +
        's t'
      
        'inner join glo_pessoas_fj psa on (psa.cnpj = t.cnpj and t.pessoa' +
        '_fj = psa.codigo)'
      'where t.cnpj = :cnpj')
    Left = 200
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object qryTecnicoPadraoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_MECANICOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTecnicoPadraoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
    object qryTecnicoPadraoEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"OFC_MECANICOS"."EMAIL"'
      Size = 80
    end
    object qryTecnicoPadraoASSINATURA: TMemoField
      FieldName = 'ASSINATURA'
      Origin = '"OFC_MECANICOS"."ASSINATURA"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object GridPopupMenu: TcxGridPopupMenu
    Grid = Grid
    PopupMenus = <
      item
        HitTypes = [gvhtCell, gvhtRecord, gvhtRowIndicator]
        Index = 0
      end>
    Left = 536
    Top = 352
  end
  object cxPropertiesStore: TcxPropertiesStore
    Active = False
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
        Component = TVGridATIVIDADE_CLIENTE
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
        Component = TVGridBAIRRO_CLIENTE
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
        Component = TVGridCIDADE_CLIENTE
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
        Component = TVGridCODIGO_CLIENTE
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
        Component = TVGridCODIGO_MARCA
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
        Component = TVGridCODIGO_PRODUTO
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
        Component = TVGridCODIGO_PRODUTO_SEC
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
        Component = TVGridCONT
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
        Component = TVGridCONTADOR_ULTIMO
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
        Component = TVGridCONTRATO_ATIVO
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
        Component = TVGridCONTRATO_CLIENTE
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
        Component = TVGridCONTRATO_CODIGO
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
        Component = TVGridCONTRATO_COPIAS_PREVENTIVA
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
        Component = TVGridCONTRATO_DIAS_RECHAMADO
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
        Component = TVGridCONTRATO_DT_FIM
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
        Component = TVGridCONTRATO_DT_INICIO
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
        Component = TVGridCPF_CNPJ
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
        Component = TVGridDIAS_EM_ATRASO
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
        Component = TVGridDT_FECHAMENTO_ULTIMO
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
        Component = TVGridMARCA_PRODUTO
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
        Component = TVGridMEDIA_COPIA
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
        Component = TVGridMODELO_PRODUTO
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
        Component = TVGridNOME_CIDADE
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
        Component = TVGridNOME_CONTRATO
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
        Component = TVGridNOME_FANTASIA
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
        Component = TVGridNOME_REGIAO
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
        Component = TVGridNOME_TIPO_CONTRATO
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
        Component = TVGridNUMERO_CONTRATO
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
        Component = TVGridPONTO_VISITA_PREVENTIVA
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
        Component = TVGridPRODUTO_ATIVO
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
        Component = TVGridQTDE_COPIA_ATUAL
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
        Component = TVGridQTDE_COPIA_PREVISTA
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
        Component = TVGridRAZAO_SOCIAL
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
        Component = TVGridRecId
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
        Component = TVGridREGIAO_CLIENTE
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
        Component = TVGridRG_INSC_ESTADUAL
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
        Component = TVGridSEL
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
        Component = TVGridTEMPO_RESPOSTA
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
        Component = TVGridTIPO_CONTRATO
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
        Component = TVGridUF
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
    StorageName = 'cxPropertiesStore'
    StorageType = stStream
    Left = 424
    Top = 252
  end
  object dxBarManager: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Defaut'
      'DB Navigator')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = imgMain
    MenusShowRecentItemsFirst = False
    PopupMenuLinks = <>
    ShowFullMenusAfterDelay = False
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 312
    Top = 4
    DockControlHeights = (
      0
      0
      0
      26)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Funcoes'
      CaptionButtons = <>
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 13
      FloatTop = 647
      FloatClientWidth = 51
      FloatClientHeight = 154
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarDBNavFirst1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavPrior1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavNext1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavLast1'
        end
        item
          Visible = True
          ItemName = 'btnImprimir'
        end
        item
          Visible = True
          ItemName = 'btnCustomizar'
        end
        item
          Visible = True
          ItemName = 'btnexportar'
        end
        item
          Visible = True
          ItemName = 'btnContrair'
        end
        item
          Visible = True
          ItemName = 'btnExpandir'
        end
        item
          Visible = True
          ItemName = 'btnHelp'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btnInsert: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object btnDelete: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object btnSalvar: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object btnEditar: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object btnCancelar: TdxBarButton
      Category = 0
      Visible = ivAlways
      ImageIndex = 15
    end
    object btnCustomizar: TdxBarButton
      Action = ActConfigurar
      Category = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000008484
        8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
        0000000000000000000000000000000000000000000000000000000000008484
        8400848484008484840084848400848484008484840000000000000000000000
        0000000000000000000000000000000000000000000000000000000000008484
        8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
        0000000000000000000000000000000000000000000000000000000000008484
        8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000FFFFFF00FFFF
        FF00FFFFFF00C6C6C600FFFFFF00FFFFFF000000000000000000000000008484
        8400848484008484840084848400848484008484840000000000C6C6C600C6C6
        C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000008484
        8400C6C6C600C6C6C60084000000840000008400000084000000FFFFFF00FFFF
        FF00FFFFFF00C6C6C600FFFFFF00FFFFFF000000000000000000000000008484
        8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000000084000000C6C6
        C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000008484
        8400848484008484840084848400848484008484840000000000FFFFFF008400
        0000FFFFFF00C6C6C600FFFFFF00FFFFFF000000000000000000000000000000
        0000000000000000000084848400C6C6C600C6C6C600C6C6C600C6C6C6008400
        0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
        0000000000000000000084848400848484008484840084000000840000008400
        0000840000008400000084848400848484000000000000000000000000000000
        0000000000000000000084848400C6C6C600C6C6C60084848400C6C6C6008400
        0000C6C6C60084848400C6C6C600C6C6C6000000000000000000000000000000
        0000000000000000000084848400C6C6C600C6C6C60084848400C6C6C600C6C6
        C600C6C6C60084848400C6C6C600C6C6C6000000000000000000000000000000
        0000000000000000000084848400848484008484840084848400848484008484
        8400848484008484840084848400848484000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object btnexportar: TdxBarButton
      Action = ActExportar
      Category = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000008484840000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
        C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
        00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000000000000000
        00000000000084848400FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600FFFF
        FF00C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C60000000000000000000000
        00000000000084848400FFFFFF00FFFFFF00FFFFFF0000840000848484000084
        000084848400FFFFFF00C6C6C600FFFFFF00C6C6C60000000000008400008484
        84000084000084848400008400008484840000840000FFFFFF00008400008484
        840000840000FFFFFF00C6C6C600FFFFFF00C6C6C60000000000848484000084
        000084848400008400008484840000840000FFFFFF0000840000848484000084
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000008400008484
        8400008400008484840000840000FFFFFF000084000084848400008400008484
        8400C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C60000000000000000000084
        00008484840000840000FFFFFF00008400008484840000840000848484000084
        0000FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C60000000000000000000000
        000000840000FFFFFF0000840000848484000084000084848400C6C6C600C6C6
        C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C60000000000000000000084
        0000FFFFFF00008400008484840000840000848484000084000084848400C6C6
        C600FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C6000000000000840000FFFF
        FF00008400008484840000840000848484000084000084848400008400008484
        8400C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C60000000000848484000084
        0000848484000084000084848400FFFFFF008484840000840000848484000084
        0000FFFFFF00FFFFFF0000000000000000000000000000000000008400008484
        84000084000084848400FFFFFF00FFFFFF00FFFFFF0084848400008400008484
        8400FFFFFF00FFFFFF0084848400FFFFFF000000000000000000000000000000
        00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
        0000000000008484840084848400848484008484840084848400848484008484
        8400848484008484840084848400000000000000000000000000}
    end
    object btnContrair: TdxBarButton
      Action = ActContrair
      Category = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object btnExpandir: TdxBarButton
      Action = ActExpandir
      Category = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF000000
        0000FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF0000000000000000000000000000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00000000000000
        0000000000000000000000000000000000000000000000000000FF00FF000000
        0000FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF0000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
        0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF0000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object btnImprimir: TdxBarButton
      Action = ActGerar
      Category = 0
    end
    object btnHelp: TdxBarButton
      Action = ActHelp
      Category = 0
    end
    object dxBarDBNavFirst1: TdxBarDBNavButton
      Action = ActFirst
      Category = 1
      Enabled = False
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777708777780007777770877800000777777088000000
        0777777087780000077777708777780007777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnFirst
    end
    object dxBarDBNavPrior1: TdxBarDBNavButton
      Action = ActPrior
      Category = 1
      Enabled = False
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777780777777777777800077777777778000007777777780000000
        7777777777800000777777777777800077777777777777807777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnPrior
    end
    object dxBarDBNavNext1: TdxBarDBNavButton
      Action = ActNext
      Category = 1
      Enabled = False
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777708777777777777770008777777777777000008777777777700000008
        7777777700000877777777770008777777777777087777777777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnNext
    end
    object dxBarDBNavLast1: TdxBarDBNavButton
      Action = ActLast
      Category = 1
      Enabled = False
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777700087777807777770000087780777777000000088
        0777777000008778077777700087777807777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnLast
    end
  end
  object dxBarDBNavigator1: TdxBarDBNavigator
    BarManager = dxBarManager
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DataSource = dsPreventiva
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast]
    Left = 288
    Top = 4
  end
  object ActionList1: TActionList
    Images = imgMain
    Left = 608
    Top = 220
    object ActFirst: TAction
      Caption = 'ActFirst'
      Hint = 'Primeiro '
      ImageIndex = 7
      ShortCut = 16420
      OnExecute = ActFirstExecute
    end
    object ActPrior: TAction
      Caption = 'ActPrior'
      Hint = 'Anterior '
      ImageIndex = 5
      OnExecute = ActPriorExecute
    end
    object ActNext: TAction
      Caption = 'ActNext'
      Hint = 'Pr'#243'ximo '
      ImageIndex = 6
      OnExecute = ActNextExecute
    end
    object ActLast: TAction
      Caption = 'ActLast'
      Hint = #218'ltimo '
      ImageIndex = 4
      ShortCut = 16419
      OnExecute = ActLastExecute
    end
    object ActFilter: TAction
      Caption = 'ActFilter'
      Hint = 'Filtrar '
      ImageIndex = 38
      ShortCut = 119
    end
    object ActFechar: TAction
      Caption = 'ActFechar'
      Hint = 'Fechar '
    end
    object ActESC: TAction
      Caption = 'ActESC'
      ShortCut = 27
    end
    object ActContrair: TAction
      Caption = 'ActContrair'
      Hint = 'Contrair Dados'
      ImageIndex = 31
      OnExecute = ActContrairExecute
    end
    object ActExpandir: TAction
      Caption = 'ActExpandir'
      Hint = 'Expandir Dados'
      ImageIndex = 33
      OnExecute = ActExpandirExecute
    end
    object ActExportar: TAction
      Caption = 'ActExportar'
      Hint = 'Exportar para Excel'
      ImageIndex = 32
      OnExecute = ActExportarExecute
    end
    object ActConfigurar: TAction
      Caption = 'ActConfigurar'
      Hint = 'Configurar Campos'
      ImageIndex = 30
      OnExecute = ActConfigurarExecute
    end
    object ActCadLookup: TAction
      Caption = 'ActCadLookup'
      ShortCut = 115
    end
    object ActGerar: TAction
      Caption = 'ActGerar'
      Hint = 'Gerar Visitas'
      ImageIndex = 32
      ShortCut = 122
      OnExecute = ActGerarExecute
    end
    object ActSel: TAction
      Caption = 'ActSel'
      ShortCut = 32
      OnExecute = ActSelExecute
    end
    object ActHelp: TAction
      Caption = 'Ajuda'
      ImageIndex = 44
      OnExecute = ActHelpExecute
    end
  end
  object SaveDialog: TSaveDialog
    FileName = 'ExpGrid'
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 342
    Top = 4
  end
  object imgMain: TcxImageList
    Height = 18
    FormatVersion = 1
    DesignInfo = 1639281
    ImageInfo = <
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000CC520B00CC52
          0B00CC520B00CC520B00C6510A00C6510A00C6510A00C24E0700C24E0700C24E
          0700C24E0700BC4B0500BC4B0500BC4B0500BC4B0500BC4B0500D2560E00FFEF
          C800FFEFC800FBD59A00FFEFC800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFF2D500FBD59A00FFEFC800FFEFC800BC4B0500D85B1300FFF1
          CE00FFF1CE00FAD6A300FFF1CE00FFFFFF000000000000000000000000000000
          0000BCBBBA00FFF3DC00FAD6A300FFF1CE00FFF1CE00C24E0700D85B1300FAD6
          A300FAD6A300FAD6A300FAD6A300FFFFFF00FFFFFF007E7D7D0000000000FFFF
          FF00FFFFFF00FADEBA00FAD6A300FAD6A300FAD6A300C6510A00DA661900FFF8
          DD00FFF8DD00FBD9AB00FFF8DD00FFF8DD00FBEBD6007E7D7D0000000000FFF5
          EB00FFF8DD00FFF8DD00FBD9AB00FFF8DD00FFF8DD00C6510A00E3691C00FFFA
          E400FFFAE400FADBAF00FFFAE400FFFAE400FBEBD6007E7D7D0000000000FFF5
          EB00FFFAE400FFFAE400FADBAF00FFFAE400FFFAE400CB580F00E3691C00FADD
          B400FADDB400FADDB400FADDB400FADDB400FDEEDC007E7D7D0000000000FFF5
          EB00FADDB400FADDB400FADDB400FADDB400FADDB400D15F1400E6752300FFFE
          F100FFFEF100FADEBA00FFFEF100FFFFF500FEF2E4007E7D7D0000000000FEF7
          EF00FFFEF100FFFEF100FADEBA00FFFEF100FFFEF100D15F1400E6752300FFFF
          F500FFFFF500FADEBA00FFFFF500FFFFFB00BCBBBA005F5E5E0000000000FEF7
          EF00FFFFF500FFFFF500FADEBA00FFFFF500FFFFF500DA661900ED7E2A00FADE
          C000FADEC000FADEC000FADEC000FDEEDC007E7D7D002020200000000000FEF7
          EF00FADEC000FADEC000FADEC000FADEC000FADEC000DA661900ED7E2A00FFFF
          FF00FFFFFF00FADEC000FFFFFF00FFFFFF00FFFCF700BCBBBA0000000000FEF7
          EF00FFFFFF00FFFFFF00FADEC000FFFFFF00FFFFFF00DA782200EE862E00FFFF
          FF00FFFFFF00FADEC000FFFFFF00FFFFFF00FCE8CD00FFFFFF00FFFFFF00FEF2
          E400FFFFFF00FFFFFF00FADEC000FFFFFF00FFFFFF00E6752300EF8C2A00EF8C
          2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C
          2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00F1963C00FFC6
          7C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC6
          7C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00F1963C00F3A35100F3A3
          5100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100F3A3
          5100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000CC520B00CC52
          0B00CC520B00CC520B00C6510A00C6510A00C6510A00C24E0700C24E0700C24E
          0700C24E0700BC4B0500BC4B0500BC4B0500BC4B0500BC4B0500D2560E00FFEF
          C800FFEFC800FBD59A00FFEFC800FFFAEA00FDEEDC00FFFEF800FFFEF800FFF9
          F200FFF8E800FFEFC800FBD59A00FFEFC800FFEFC800BC4B0500D85B1300FFF1
          CE00FFF1CE00FAD6A300FFFAF500E3E3E1005F5E5E005F5E5E00202020007272
          7200FFFFFF00FFF8E800FAD6A300FFF1CE00FFF1CE00C24E0700D85B1300FAD6
          A300FAD6A300FAD6A300FFF4E7003F3E3E003F3E3E00FFFAF500CFCFCF000000
          000072727200FFFDFA00FAD6A300FAD6A300FAD6A300C6510A00DA661900FFF8
          DD00FFF8DD00FBD9AB00FFFCF7003F3E3E0097989700FFFCF700FFFFFF000000
          00000D0D0D00FFFFFF00FBD9AB00FFF8DD00FFF8DD00C6510A00E3691C00FFFA
          E400FFFAE400FADBAF00FFFEF800FFFEF800FFF5EB00FFFEF100FFFFFF000000
          000000000000FFFFFF00FADBAF00FFFAE400FFFAE400CB580F00E3691C00FADD
          B400FADDB400FADDB400FEE3BD00CFCFCF0097989700BCBBBA00727272000000
          000072727200FFFFFF00FADDB400FADDB400FADDB400D15F1400E6752300FFFE
          F100FFFEF100FADEBA00FFFEF100FFFFFB003F3E3E00515151003F3E3E007E7D
          7D00FFFFFF00FFFEF800FADEBA00FFFEF100FFFEF100D15F1400E6752300FFFF
          F500FFFFF500FADEBA00FFFFF500FFFFFB005F5E5E00FFFFFB00FFFFFB00FEF7
          EF00FFFFFB00FFFEF800FADEBA00FFFFF500FFFFF500DA661900ED7E2A00FADE
          C000FADEC000FADEC000FADEC000FFF4E7007E7D7D003F3E3E003F3E3E003F3E
          3E00BCBBBA00FBEBD600FADEC000FADEC000FADEC000DA661900ED7E2A00FFFF
          FF00FFFFFF00FADEC000FFFFFF00FFFFFF00BCBBBA003F3E3E003F3E3E003F3E
          3E0097989700FFFFFF00FADEC000FFFFFF00FFFFFF00DA782200EE862E00FFFF
          FF00FFFFFF00FADEC000FFFFFF00FFFFFF00FEF7EF00FFFFFF00FFFFFF00FEF7
          EF00FFFFFF00FFFFFF00FADEC000FFFFFF00FFFFFF00E6752300EF8C2A00EF8C
          2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C
          2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00F1963C00FFC6
          7C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC6
          7C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00F1963C00F3A35100F3A3
          5100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100F3A3
          5100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000CC520B00CC52
          0B00CC520B00CC520B00C6510A00C6510A00C6510A00C24E0700C24E0700C24E
          0700C24E0700BC4B0500BC4B0500BC4B0500BC4B0500BC4B0500D2560E00FFEF
          C800FFEFC800FBD59A00FFF1CE00FFFFFF00FFFFFF00FFFFFF00FFFEF800FBD5
          9A00FFEFC800FFEFC800FBD59A00FFEFC800FFEFC800BC4B0500D85B1300FFF1
          CE00FFF1CE00FAD6A300FFF2D500E3E3E1000000000020202000FFFFFF00FBDD
          B200FFF1CE00FFF1CE00FAD6A300FFF1CE00FFF1CE00C24E0700D85B1300FAD6
          A300FAD6A300FAD6A300FADBAF00FFFFFF005F5E5E0000000000CFCFCF00FBEB
          D600FAD6A300FAD6A300FAD6A300FAD6A300FAD6A300C6510A00DA661900FFF8
          DD00FFF8DD00FBD9AB00FFF8DD00FFFEF100CFCFCF000000000072727200FFFA
          F500FFF8DD00FFF8DD00FBD9AB00FFF8DD00FFF8DD00C6510A00E3691C00FFFA
          E400FFFAE400FADBAF00FFFAE400FFFEF100FFFFFF003F3E3E0020202000FFFF
          FF00FFFDFA00FFFAE400FADBAF00FFFAE400FFFAE400CB580F00E3691C00FADD
          B400FADDB400FADDB400FADDB400FBEBD6008A8A8A0033333300000000003333
          3300FFF9F200FADDB400FADDB400FADDB400FADDB400D15F1400E6752300FFFE
          F100FFFEF100FADEBA00FFFFFB00FFFFFB00FFF9F200FFFFFF00202020007272
          7200FFFFFE00FFFEF100FADEBA00FFFEF100FFFEF100D15F1400E6752300FFFF
          F500FFFFF500FADEBA00FFFFFE003F3E3E00FFFDFB00FFFFFE00979897002020
          2000FFFFFF00FFFEF800FADEBA00FFFFF500FFFFF500DA661900ED7E2A00FADE
          C000FADEC000FADEC000FFFDFB000D0D0D003F3E3E003F3E3E003F3E3E000000
          0000CFCFCF00FDEEDC00FADEC000FADEC000FADEC000DA661900ED7E2A00FFFF
          FF00FFFFFF00FADEC000FFFFFF003F3E3E003F3E3E003F3E3E003F3E3E003F3E
          3E008A8A8A00FFFFFF00FADEC000FFFFFF00FFFFFF00DA782200EE862E00FFFF
          FF00FFFFFF00FADEC000FFFFFF00FFFFFF00FEF7EF00FFFFFF00FFFFFF00FEF7
          EF00FFFFFF00FFFFFF00FADEC000FFFFFF00FFFFFF00E6752300EF8C2A00EF8C
          2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C
          2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00F1963C00FFC6
          7C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC6
          7C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00F1963C00F3A35100F3A3
          5100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100F3A3
          5100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000CC520B00CC52
          0B00CC520B00CC520B00C6510A00C6510A00C6510A00C24E0700C24E0700C24E
          0700C24E0700BC4B0500BC4B0500BC4B0500BC4B0500BC4B0500D2560E00FFEF
          C800FFF2D500FCE8CD00FFFAE400FFFAE400FCE8CD00FFF2D500FFEFC800FBD5
          9A00FFEFC800FFEFC800FBD59A00FFEFC800FFEFC800BC4B0500D85B1300FFF1
          CE00FFFFFF00CFCFCF007E7D7D007E7D7D00BCBBBA00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF3DC00C24E0700D85B1300FAD6
          A300FFFFFF00000000002020200033333300000000007E7D7D00FFFFFF000000
          0000000000000000000000000000BCBBBA00FADEBA00C6510A00DA661900FFF8
          DD00FFFFFF0097989700FFFFFF00FFFFFF007E7D7D000D0D0D00FFFFFF00FFFF
          FF007E7D7D003F3E3E00FFFFFF00FFFFFF00FFFAE400C6510A00E3691C00FFFA
          E400FFFEF100FCE8CD00FFFEF100FFFDFB00A7A9A90000000000FFFFFF00FBEB
          D6007E7D7D003F3E3E00FFF5EB00FFFAE400FFFAE400CB580F00E3691C00FADD
          B400FADDB400FCE8CD00BCBBBA007E7D7D00202020003F3E3E00FFFFFF00FDEE
          DC007E7D7D003F3E3E00FFF5EB00FADDB400FADDB400D15F1400E6752300FFFE
          F100FFFEF100FBEBD60097989700333333000D0D0D00CFCFCF00FFFFFB00FDEE
          DC007E7D7D003F3E3E00FEF7EF00FFFEF100FFFEF100D15F1400E6752300FFFF
          F500FFFFFB00FDEEDC00FFFFFE00FFFFFE004E4E4E0051515100FFFFFE00FEF2
          E4007E7D7D003F3E3E00FEF7EF00FFFFF500FFFFF500DA661900ED7E2A00FADE
          C000FFF5EB007E7D7D00CFCFCF00FFFFFF00515151003F3E3E00FFFCF700BCBB
          BA005F5E5E003F3E3E00FEF7EF00FADEC000FADEC000DA661900ED7E2A00FFFF
          FF00FFFFFF0051515100000000000000000000000000A7A9A900FFFFFF007E7D
          7D00202020003F3E3E00FEF7EF00FFFFFF00FFFFFF00DA782200EE862E00FFFF
          FF00FFFFFF00FFFFFF00CFCFCF00BCBBBA00E3E3E100FFFFFF00FFFFFF00FFFC
          F700BCBBBA0072727200FEF7EF00FFFFFF00FFFFFF00E6752300EF8C2A00EF8C
          2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C
          2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00F1963C00FFC6
          7C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC6
          7C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00F1963C00F3A35100F3A3
          5100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100F3A3
          5100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000CC520B00CC52
          0B00CC520B00CC520B00C6510A00C6510A00C6510A00C24E0700C24E0700C24E
          0700C24E0700BC4B0500BC4B0500BC4B0500BC4B0500BC4B0500D2560E00FFEC
          BF00FFECBF00FBD59A00FFECBF00FFECBF00FBD59A00FFECBF00FFECBF00FBD5
          9A00FFECBF00FFECBF00FBD59A00FFECBF00FFECBF00BC4B0500D85B1300FFEF
          C800FFEFC800FBD59A00FFEFC800FFF2D500FCE4C100FFF8DD00FFF8DD00FCE4
          C100FFF2D500FFEFC800FBD59A00FFEFC800FFEFC800C24E0700D85B1300FAD6
          A300FAD6A300FBD9AB00FCE4C10067A4B100285967000C3140000C3140002859
          67006B938A00FCE4C100FBD9AB00FAD6A300FAD6A300C6510A00DA661900FFF2
          D500FFF2D500FCE4C10067A4B1003D93B60042C3E3005CDEFE005CDEFE0042C3
          E3001777920041738000FCE4C100FFF2D500FFF2D500C6510A00E3691C00FFF8
          DD00FFFAE4007BB0BC003D93B6006BDCFF0049D9FF002CCEFB002CCEFB0038D4
          FE005CDEFE00177792006B938A00FFFAE400FFF8DD00CB580F00E3691C00FADB
          AF00FCE8CD0067A4B10073CFF0005CDEFE0038D4FE0038D4FE002CCEFB002CCE
          FB0049D9FF0042C3E30028596700FCE8CD00FADBAF00D15F1400E6752300FFFA
          EA00FFFFF5003D93B60099E7FD005CDEFE0000000000000000000000000038D4
          FE0038D4FE006BDCFF000C314000FFFFF500FFFAEA00D15F1400E6752300FFFE
          F100FFFEF80067A4B10099E7FD0076E5FF006BDCFF005CDEFE000000000049D9
          FF0049D9FF0076E5FF000C314000FFFEF800FFFEF100DA661900ED7E2A00FADE
          BA00FBEBD60095CDDF0099E7FD0099E7FD0076E5FF0076E5FF00000000005CDE
          FE006BDCFF0064CBEA0041738000FBEBD600FADEBA00DA661900ED7E2A00FFFF
          FB00FFFFFB00ACDBE60095CDDF00B2ECFF0099E7FD008EDCFF00000000008EDC
          FF0099E7FD003D93B6007BB0BC00FFFFFB00FFFFFB00DA782200EE862E00FFFF
          FF00FFFFFF00FBEBD600ACDBE600ACDBE600B2ECFF00B2ECFF00B2ECFF0099E7
          FD007BB0BC007BB0BC00FBEBD600FFFFFF00FFFFFF00E6752300EE862E00FADE
          C000FADEC000FCE8CD00FBEBD600ACDBE60095CDDF007BB0BC007BB0BC007BB0
          BC0095CDDF00FBEBD600FCE8CD00FADEC000FADEC000E1802800EF8B3200FFFF
          FF00FFFFFF00FADEC000FFFFFF00FFFFFF00FBEBD600FFFFFF00FFFFFF00FBEB
          D600FFFFFF00FFFFFF00FADEC000FFFFFF00FFFFFF00E1802800EF8B3200FFFF
          FF00FFFFFF00FADEC000FFFFFF00FFFFFF00FADEC000FFFFFF00FFFFFF00FADE
          C000FFFFFF00FFFFFF00FADEC000FFFFFF00FFFFFF00E1802800EF8B3200EF8B
          3200EF8B3200EF8B3200EF8B3200EF8B3200EF8B3200EF8B3200EF8B3200EF8B
          3200EE862E00EE862E00EE862E00E8842900E8842900E8842900000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF00000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000CC520B00CC52
          0B00CC520B00CC520B00C6510A00C6510A00C6510A00C24E0700C24E0700C24E
          0700BC4B0500BC4B050000000000000000000000000000000000DA661900FFF8
          DD00FFF8DD00FBD9AB00FFF8DD00FFF8DD00FBD9AB00FFF8DD00FFF8DD00FBD9
          AB00FFF8DD00C6510A0000000000000000000000000000000000E3691C00FFFA
          E400FFFAE400FADBAF00FFFAE400FFFAE400FADBAF00FFFAE400FFFAE400FADB
          AF00FFFAE400CB580F00C24E0700BC4B05000000000000000000E3691C00FADD
          B400FADDB400FADDB400FADDB400FADDB400FADDB400FADDB400FADDB400FADD
          B400FADDB400D15F1400FFF8DD00C6510A000000000000000000E6752300FFFE
          F100FFFEF100FADEBA00FFFEF100FFFEF100FADEBA00FFFEF100FFFEF100FADE
          BA00FFFEF100D15F1400FFFAE400CB580F00C24E0700BC4B0500E6752300FFFF
          F500FFFFF500FADEBA00FFFFF500FFFFF500FADEBA00FFFFF500FFFFF500FADE
          BA00FFFFF500DA661900FADDB400D15F1400FFF8DD00C6510A00ED7E2A00FADE
          C000FADEC000FADEC000FADEC000FADEC000FADEC000FADEC000FADEC000FADE
          C000FADEC000DA661900FFFEF100D15F1400FFFAE400CB580F00ED7E2A00FFFF
          FF00FFFFFF00FADEC000FFFFFF00FFFFFF00FADEC000FFFFFF00FFFFFF00FADE
          C000FFFFFF00DA782200FFFFF500DA661900FADDB400D15F1400EE862E00FFFF
          FF00FFFFFF00FADEC000FFFFFF00FFFFFF00FADEC000FFFFFF00FFFFFF00FADE
          C000FFFFFF00E6752300FADEC000DA661900FFFEF100D15F1400EF8C2A00EF8C
          2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C
          2A00EF8C2A00EF8C2A00FFFFFF00DA782200FFFFF500DA661900F1963C00FFC6
          7C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC6
          7C00FFC67C00F1963C00FFFFFF00E6752300FADEC000DA661900F3A35100F3A3
          5100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100F3A3
          5100F3A35100F3A35100EF8C2A00EF8C2A00FFFFFF00DA782200000000000000
          0000F1963C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC6
          7C00FFC67C00FFC67C00FFC67C00F1963C00FFFFFF00E6752300000000000000
          0000F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100F3A3
          5100F3A35100F3A35100F3A35100F3A35100EF8C2A00EF8C2A00000000000000
          00000000000000000000F1963C00FFC67C00FFC67C00FFC67C00FFC67C00FFC6
          7C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00F1963C00000000000000
          00000000000000000000F3A35100F3A35100F3A35100F3A35100F3A35100F3A3
          5100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000000F0000000F0000000300000003000000000000000000000000
          00000000000000000000000000000000000000000000C0000000C0000000F000
          0000F0000000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000144B700000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000265D1000265D1000265D1000350CB000350CB000144B7000144
          B7000144B7000144B70000000000000000000000000000000000000000000000
          0000000000000887DD0012A5F20016C6F30016C6F3000CA4E6000887DD000350
          CB000350CB000144B70000000000000000000000000000000000000000000000
          000000000000000000000887DD0018DAFD0018DAFD0018DAFD0013B7F6000494
          F1000144B7000000000000000000000000000000000000000000000000001563
          C50000000000000000000887DD0018DAFD0018DAFD0018DAFD0013B7F6000494
          F1000144B70000000000000000000144B7000000000000000000000000000000
          00002372D100000000000CA4E60018DAFD0018DAFD0018DAFD0013B7F6000494
          F1000350CB00000000000144B700000000000000000000000000000000000000
          000000000000000000000CA4E60018DAFD0018DAFD0018DAFD0013B7F6000494
          F1000350CB0000000000000000000000000000000000000000004D90E5004D90
          E5003E81E2000000000011AFEA0018DAFD0018DAFD0018DAFD0013B7F6000494
          F1000265D100000000000350CB000350CB000350CB0000000000000000000000
          000000000000000000000000000011AFEA0018DAFD0018DAFD0013B7F6000887
          DD00000000000000000000000000000000000000000000000000000000000000
          000000000000529FD500000000000000000011AFEA000CA4E6000887DD000000
          0000000000002372D10000000000000000000000000000000000000000000000
          00005DB4E6000000000000000000000000000000000011AFEA00000000000000
          000000000000000000002372D1000000000000000000000000000000000073CF
          F00000000000000000000000000000000000000000000EB4F100000000000000
          00000000000000000000000000003E81E2000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000FEFF0000E00F0000E00F0000F01F0000B01B
          0000D0170000F01F000010110000F83F0000EC6F0000DEF70000BEFB0000FFFF
          0000FFFF0000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000E9AB5800DD97
          3F00C2752000BA681E00BE762C00AA560500AA5605009F4E0500268AF300006C
          E9000350CB000350CB000350CB000027A2000027A2000027A200E9AB5800DD97
          3F00BA681E00D5AE9300E9D6C000AA560500AA5605009F4E0500268AF300006C
          E9000144B70078A8F400C8F3FF000027A2000027A2000027A200E9AB5800CC84
          3400BE762C00FFFDFA00FFFFFF00BE762C00AA5605009F4E0500268AF3000055
          ED000350CB00FFFFFF00FFFFFF000350CB000027A2000027A200E9AB5800C275
          2000E8C09500FFFFFF00FFFFFF00E7CBAD009F4E05009F4E0500268AF3000350
          CB008EDCFF00FFFFFF00FFFFFF00B2ECFF000027A2000027A20000000000CC84
          3400FFFFFF000000000000000000FFFFFF00BA681E000000000000000000006C
          E900FFFFFF000000000000000000FFFFFF000144B70000000000000000000000
          00001563C5000550B900043EA700043EA7000000000000000000000000000000
          00001563C5000550B900043EA700043EA7000000000000000000000000002372
          D10044CEFB0013B7F6000EB4F1000CA4E600043EA70000000000000000002372
          D10044CEFB0013B7F6000EB4F1000CA4E600043EA70000000000000000002372
          D10044CEFB0014BCFE000EB4F1000CA4E600043EA70000000000000000002372
          D10044CEFB0014BCFE000EB4F1000CA4E600043EA70000000000000000005F5E
          5E0044CEFB0014BCFE000EB4F1000CA4E6000000000000000000000000005F5E
          5E0044CEFB0014BCFE000EB4F1000CA4E6000000000000000000000000007E7D
          7D0044CEFB003F3E3E00202020000D0D0D000000000000000000000000007E7D
          7D0044CEFB003F3E3E00202020000D0D0D000000000000000000000000009798
          9700FFFFFF005555550033333300202020000D0D0D0000000000000000009798
          9700FFFFFF005555550033333300202020000D0D0D0000000000000000000000
          00008A8A8A00686969004E4E4E00333333000000000000000000000000000000
          00008A8A8A00686969004E4E4E00333333000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000000000000000000000000000000000008181
          0000C3C300008181000081810000818100008181000081810000C3C30000FFFF
          0000FFFF0000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000BA681E00BA681E00BA681E00BA681E00BA68
          1E00BA681E000000000000000000000000000000000000000000CD7323000000
          00000000000000000000A65D1B0090480700904807000000000000000000BA68
          1E00BA681E00BA681E0000000000000000000000000000000000DA782200DA78
          220000000000BA681E00A65D1B00A65D1B000000000000000000000000000000
          0000BA681E00BA681E00BA681E00000000000000000000000000E1802800E180
          2800CD732300C56E2000BA681E00000000000000000000000000000000000000
          000000000000BA681E00BA681E00BA681E000000000000000000EE862E00E884
          2900E1802800E180280000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000EF8B3200EE86
          2E00EE862E00E8842900E1802800000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000F1963C00EF8B
          3200EF8B3200EE862E00E8842900E8842900000000000000000000000000CD73
          2300C56E2000C56E2000C56E2000C56E2000C56E200000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000CD732300CD732300C56E2000C56E2000C56E200000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000CD732300CD732300C56E2000C56E20000000000000000000DA78
          2200CD732300C56E200000000000000000000000000000000000000000000000
          0000DA782200CD732300CD732300CD732300CD73230000000000000000000000
          0000CD732300C56E2000BA681E0000000000000000000000000000000000DA78
          2200DA782200DA78220000000000CD732300CD73230000000000000000000000
          000000000000BA681E00BA681E00A65D1B000000000000000000E1802800E180
          2800DA782200000000000000000000000000CD73230000000000000000000000
          00000000000000000000E8842900E8842900E8842900E8842900E1802800E180
          2800000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000F81F0000718F000023C7000007E300000FFF
          000007FF000003810000FFC10000FFE100008FC10000C7890000E31D0000F03F
          0000FFFF0000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000272727002727
          270020202000202020001515150015151500151515000D0D0D000D0D0D000D0D
          0D0007070700050505000101010001010100000000000000000033333300FFFF
          FF00272727008EDCFF008EDCFF008EDCFF008EDCFF008EDCFF008EDCFF008EDC
          FF008EDCFF008EDCFF008EDCFF008EDCFF008EDCFF00010101003F3E3E00FFFF
          FF00333333008EDCFF0021C5FE0014BCFE0014BCFE0014BCFE0014BCFE0014BC
          FE0014BCFE0014BCFE0014BCFE0014BCFE008EDCFF000707070047474700FFFF
          FF003F3E3E0099E7FD0021C5FE0021C5FE0021C5FE0021C5FE0014BCFE0014BC
          FE0014BCFE0014BCFE0014BCFE0014BCFE008EDCFF000D0D0D004E4E4E00FFFF
          FF004747470099E7FD002CCEFB002CCEFB0021C5FE0021C5FE0021C5FE0021C5
          FE0014BCFE0014BCFE0014BCFE0014BCFE008EDCFF001515150055555500FFFF
          FF005151510099E7FD0038D4FE0038D4FE002CCEFB002CCEFB002CCEFB0021C5
          FE0021C5FE0021C5FE0021C5FE0014BCFE008EDCFF00202020005F5E5E00FFFF
          FF005F5E5E00B2ECFF007BDBFF0099E7FD0076E5FF0049D9FF002CCEFB002CCE
          FB002CCEFB0021C5FE0021C5FE0021C5FE008EDCFF002020200068696900FFFF
          FF0068696900C8F3FF00BD929100BC483B00B381620076E5FF0038D4FE0038D4
          FE0038D4FE002CCEFB002CCEFB002CCEFB0099E7FD002727270072727200FFFF
          FF0068696900E1FAFF00D0514300C83F2F00C0493D0099E7FD0049D9FF0049D9
          FF0044CEFB0038D4FE0038D4FE0038D4FE0099E7FD00333333007E7D7D00FFFF
          FF0072727200C8F3FF00D5AE9300D0514300BD92910099E7FD005CDEFE0049D9
          FF0049D9FF0049D9FF0049D9FF0038D4FE0099E7FD003F3E3E008A8A8A00FFFF
          FF007E7D7D00C8F3FF00C8F3FF00E1FAFF00C8F3FF0099E7FD0099E7FD00B2EC
          FF0099E7FD006BDCFF0049D9FF0049D9FF0099E7FD00474747008A8A8A00FFFF
          FF008A8A8A00E1FAFF0057B66E000387220057B66E00C8F3FF00788FCB004654
          B200788FCB0099E7FD005CDEFE005CDEFE00B2ECFF005555550097989700FFFF
          FF008A8A8A00E1FAFF0015A754000387220003872200E1FAFF004A6FC2004654
          B2004654B200B2ECFF0076E5FF006BDCFF00B2ECFF005F5E5E0097989700FFFF
          FF0097989700E1FAFF0061D59E0015A7540061D59E00C8F3FF008C96F0004A6F
          C2008C96F000B2ECFF0076E5FF0076E5FF00B2ECFF006869690097989700FFFF
          FF0097989700E1FAFF00E1FAFF00E1FAFF00E1FAFF00E1FAFF00E1FAFF00E1FA
          FF00E1FAFF00C8F3FF00C8F3FF00C8F3FF00C8F3FF0072727200979897009798
          97009798970097989700979897009798970097989700979897008A8A8A008A8A
          8A008A8A8A008A8A8A007E7D7D007E7D7D007E7D7D007E7D7D00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF00000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000CC843400C164
          0600B55D0500AA560500AA560500FBD59A00FBD59A00FBD59A00FBD59A00FBD5
          9A00FBD59A00CC843400C1640600B55D0500AA560500AA560500EFB05500E589
          0C00E5890C00E5890C00AA560500FFEBC500FFEBC500FFEBC500FFEBC500FFEB
          C500FFEBC500EFB05500E5890C00E5890C00E5890C00AA560500FBBB5800F3A1
          1200FFFFFF00E5890C00B55D0500FEE3BD00FEE3BD00FEE3BD00FEE3BD00FEE3
          BD00FEE3BD00FBBB5800F3A11200FFFFFF00E5890C00B55D0500FAC35A00F3A1
          1200F3A11200F3A11200C1640600FEE3B100FEE3B100FEE3B100FEE3B100FEE3
          B100FEE3B100FAC35A00F3A11200F3A11200F3A11200C1640600FEE3AB00FCD4
          8C00FCD48C00FCD48C00FBCB8500FEDDA500FEDDA500FEDDA500FEDDA500FEDD
          A500FEDDA500FEE3AB00FCD48C00FCD48C00FCD48C00FBCB8500E9AB5800DD97
          3F00BA681E00D5AE9300E9D6C000AA560500AA5605009F4E0500268AF300006C
          E9000144B70078A8F400C8F3FF000027A2000027A2000027A200E9AB5800CC84
          3400BE762C00FFFDFA00FFFFFF00BE762C00AA5605009F4E0500268AF3000055
          ED000350CB00FFFFFF00FFFFFF000350CB000027A2000027A200E9AB5800C275
          2000E8C09500FFFFFF00FFFFFF00E7CBAD009F4E05009F4E0500268AF3000350
          CB008EDCFF00FFFFFF00FFFFFF00B2ECFF000027A2000027A20000000000CC84
          3400FFFFFF000000000000000000FFFFFF00BA681E000000000000000000006C
          E900FFFFFF000000000000000000FFFFFF000144B70000000000000000000000
          00001563C5000550B900043EA700043EA7000000000000000000000000000000
          00001563C5000550B900043EA700043EA7000000000000000000000000002372
          D10044CEFB0013B7F6000EB4F1000CA4E600043EA70000000000000000002372
          D10044CEFB0013B7F6000EB4F1000CA4E600043EA70000000000000000002372
          D10044CEFB0014BCFE000EB4F1000CA4E600043EA70000000000000000002372
          D10044CEFB0014BCFE000EB4F1000CA4E600043EA70000000000000000005F5E
          5E0044CEFB0014BCFE000EB4F1000CA4E6000000000000000000000000005F5E
          5E0044CEFB0014BCFE000EB4F1000CA4E6000000000000000000000000007E7D
          7D0044CEFB003F3E3E00202020000D0D0D000000000000000000000000007E7D
          7D0044CEFB003F3E3E00202020000D0D0D000000000000000000000000009798
          9700FFFFFF005555550033333300202020000D0D0D0000000000000000009798
          9700FFFFFF005555550033333300202020000D0D0D0000000000000000000000
          00008A8A8A00686969004E4E4E00333333000000000000000000000000000000
          00008A8A8A00686969004E4E4E00333333000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF00000000000000000000000000000000000000000000000000000000
          00000000000081810000C3C30000818100008181000081810000818100008181
          0000C3C30000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004E4E4E003F3E3E00333333002727
          270020202000151515000D0D0D00070707000000000000000000000000000000
          0000000000000000000000000000000000005555550057B66E0057B66E0057B6
          6E0057B66E0057B66E0057B66E0057B66E0057B66E0000000000000000000000
          000000000000202020000D0D0D000000000068696900FFFCF700FFF9F200FFF9
          F2000387220003872200038722000387220057B66E0007070700000000000000
          00003F3E3E0000000000000000000000000072727200FFF8E800FFF3DC00FFF3
          DC00FFF3DC00FFF3DC00FFF3DC000387220057B66E000D0D0D00000000000000
          0000474747000000000000000000000000008A8A8A00FFF3DC00FFEBC500FFEB
          C500FFEBC500FFEBC500FFEBC500FFEBC500FFF3DC00151515007E7D7D006869
          6900555555003F3E3E00333333000000000097989700FFEFC80014BCFE00FEE3
          AB00FEE3AB00FEE3AB00FEE3AB00FEE3AB00FFEFC80020202000000000007E7D
          7D005F5E5E004E4E4E000000000000000000A7A9A900FEE7B700FEE7B700FEE7
          B700FEE7B700FEE7B700FEE7B700FEE7B700FEE7B70033333300000000000000
          000072727200000000000000000000000000A7A9A900A7A9A900979897008A8A
          8A007E7D7D00686969005F5E5E0055555500474747003F3E3E00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000E0660300E066
          0300E0660300E0660300E0660300E0660300E0660300E0660300E0660300E066
          0300E0660300E0660300E0660300E0660300E0660300E0660300E0660300F5AB
          5F00F5AB5F00F5AB5F00F5AB5F00F5AB5F00F5AB5F00F5AB5F00F5AB5F00F5AB
          5F00F5AB5F00F5AB5F00F5AB5F00F5AB5F00F5AB5F00E0660300EE730900FCBC
          68005F5E5E005555550047474700FAC08000F5952E00F5952E00F5952E00F595
          2E00F5952E00F5952E00F5952E00F5952E00FCBC6800EE730900EE730900FAC0
          80007E7D7D00FEE3BD005F5E5E00F6C79700F8A64700F8A64700F8A64700F8A6
          4700F8A64700F8A64700F8A64700F8A64700FAC08000EE730900EE730900FBD5
          9A00979897008A8A8A007E7D7D00FBD9AB00FCC07300FCC07300FCC07300FCC0
          7300FCC07300FCC07300FCC07300FCC07300FBD59A00EE730900FA7D0E00FEE3
          BD00FEE3BD00FEE3BD00FEE3BD00FEE3BD00FEE3BD00FEE3BD00FEE3BD00FEE3
          BD00FEE3BD00FEE3BD00FEE3BD00FEE3BD00FEE3BD00FA7D0E00FA7D0E00FA7D
          0E00FA7D0E00FA7D0E00FA7D0E00FA7D0E00FA7D0E00FA7D0E00FA7D0E00FA7D
          0E00FA7D0E00FA7D0E00FA7D0E00FA7D0E00FA7D0E00FA7D0E00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FC000000FC000000E4000000DC000000DC000000040000008C00
          0000DC000000FFFF000000000000000000000000000000000000000000000000
          000000000000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000FDD482000027A200043EA7001048B8001048B8001563C5002372D1002372
          D100000000000000000000000000000000000000000000000000000000000000
          0000FEDDA5001048B8001563C5002372D1002372D1003E81E2003E81E2003E81
          E2004D90E5004D90E50000000000000000000000000000000000000000000000
          0000FFEFC8002372D1003E81E2003E81E2004D90E5006B89ED006B89ED006B89
          ED0078A8F40078A8F40078A8F400272727002727270027272700000000000000
          0000FFF8E8002372D1004D90E5006B89ED0078A8F40078A8F4006B89ED00FFE0
          B40078A8F4008C96F00095CDDF00FEDDA500FAD6A30033333300000000000000
          000000000000000000004A6FC2004A6FC2004D7ECA00788FCB00FEE3BD00FEC6
          7800FCBC6800FCBC6800FBBB5800FBBB5800FEDDA5003F3E3E00000000000000
          000000000000000000000000000072727200FFFFFF005F5E5E00FFEBC500FBCB
          8500FEC67800FCC07300FCBC6800FBBB5800FBD9AB0047474700000000000000
          000000000000000000000000000072727200FFFFFF0068696900FCE8CD00FCD4
          8C00FBCB8500FEC67800FCC07300FCBC6800FADBAF0051515100000000000000
          00000000000000000000000000007E7D7D00FFFFFF0072727200FFF1CE00FBD5
          9A00FCD48C00FBCB8500FEC67800FCC07300FFE0B4005F5E5E00000000000000
          00000000000000000000000000007E7D7D00FFFFFF0072727200FFF2D500FEDD
          A500FBD59A00FCD48C00FBCB8500FFC67C00FEE3BD0068696900000000000000
          00000000000000000000000000008A8A8A00FFFFFF007E7D7D00FFF3DC00FFF2
          D500FBEBD600FCE8CD00FFEBC500FCE4C100FEE3BD0072727200000000000000
          00000000000000000000000000008A8A8A008A8A8A007E7D7D007E7D7D007E7D
          7D007E7D7D007E7D7D0072727200727272007272720072727200000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000FFFF0000003F0000000F0000000000000000
          0000F0000000F8000000F8000000F8000000F8000000F8000000F8000000FFFF
          0000FFFF0000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000072727200686969005F5E5E00555555004E4E4E004747
          47003F3E3E003333330033333300272727002727270020202000000000000000
          000000000000000000007E7D7D00A6EED000A6EED000A6EED000A6EED00088EE
          C20088EEC20088EEC20088EEC20088EEC20088EEC20027272700000000000000
          000000000000000000007E7D7D00C5F4E10061D59E0061D59E0037DA920037DA
          920037DA920037DA920025C4770025C4770088EEC20027272700000000000000
          000000000000000000008A8A8A00C5F4E10077E7B50077E7B50061D59E0061D5
          9E0037DA920037DA920037DA920037DA920088EEC20033333300727272006869
          69005F5E5E005555550072727200979897006B938A0048866C0048866C004886
          6C0048866C0048866C0037DA920037DA920088EEC200333333007E7D7D00FEE7
          B700FEE7B700FEE3B100979897005353F0005353F0005353F0005353F0005353
          F0005353F00048866C0061D59E0037DA9200A6EED0003F3E3E007E7D7D00FCE4
          C100FCCF7A00FBCC7100A7A9A9005353F0001C1CE6001C1CE6001C1CE6001C1C
          E6005353F00048866C0061D59E0061D59E00A6EED000474747008A8A8A00FFEB
          C500FDD48200FCCF7A00A7A9A9006B89ED001C1CE6001C1CE6001C1CE6001C1C
          E6005353F00048866C0077E7B50061D59E00A6EED0005151510097989700FFEF
          C800FCD48C00FDD48200BCBBBA006B89ED005353F0001C1CE6001C1CE6001C1C
          E6005353F0006B938A0088EEC20077E7B500A6EED0005F5E5E0097989700FFF1
          CE00FBD59A00FCD48C00BCBBBA008C96F0005353F0005353F0005353F0005353
          F0006B89ED006B938A0088EEC20088EEC200C5F4E10068696900A7A9A900FFF2
          D500FEDDA500FBD59A00BCBBBA008C96F0008C96F0008C96F0008C96F0008C96
          F0008C96F00097989700C5F4E100C5F4E100C5F4E10072727200A7A9A900FFF3
          DC00FEE3AB00FEDDA500BCBBBA00BCBBBA00BCBBBA00BCBBBA00A7A9A900A7A9
          A900A7A9A90072727200979897008A8A8A007E7D7D007E7D7D00BCBBBA00FFF3
          DC00FEE7B700FEE3B100FEDDA500FEDDA500FBD59A00FCD48C00FCD48C00FDD4
          8200FEE3BD005F5E5E0000000000000000000000000000000000BCBBBA00FFF4
          E700FFECBF00FEE7B700FEE3B100FEE3AB00FEDDA500FBD59A00FBD59A00FCD4
          8C00FFECBF006869690000000000000000000000000000000000BCBBBA00FFF8
          E800FFF4E700FEF2E400FFF3DC00FFF3DC00FFF2D500FFF2D500FFF1CE00FFEF
          C800FFEBC5007272720000000000000000000000000000000000BCBBBA00BCBB
          BA00BCBBBA00BCBBBA00A7A9A900A7A9A900A7A9A90097989700979897008A8A
          8A007E7D7D007E7D7D0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000F0000000F0000000F0000000F000000000000000000000000000
          00000000000000000000000000000000000000000000000F0000000F0000000F
          0000000F0000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000550B9000550
          B9000550B9000144B7000144B7000144B700043EA700043EA700043EA700043E
          A700043EA700043EA700000000000000000000000000000000000350CB00B2EC
          FF00B2ECFF0099E7FD0099E7FD008EDCFF007BDBFF007BDBFF0069CFFF0069CF
          FF0069CFFF00043EA700000000000000000000000000000000000265D100B2EC
          FF007BDBFF006BDCFF005AD2FF0044CEFB0036C2FE0036C2FE002AB4FD000144
          B7000144B700043EA700000000000000000000000000000000000265D100B2EC
          FF007BDBFF006BDCFF005AD2FF0044CEFB0036C2FE0036C2FE002AB4FD0014BC
          FE0069CFFF00043EA7004A6FC2004A6FC2004A6FC2004A6FC2000265D100B2EC
          FF007BDBFF006BDCFF005AD2FF0044CEFB000144B7000144B7000144B7000144
          B7000144B700043EA70099E7FD008EDCFF008EDCFF004A6FC2000265D100B2EC
          FF007BDBFF006BDCFF005AD2FF0044CEFB0036C2FE0036C2FE002AB4FD0014BC
          FE0069CFFF000144B70069CFFF004D7ECA004D7ECA004D7ECA000265D100B2EC
          FF007BDBFF006BDCFF005AD2FF0044CEFB0036C2FE0036C2FE002AB4FD000144
          B7000144B7000144B70069CFFF005FCCFF008EDCFF004D7ECA000265D100B2EC
          FF007BDBFF006BDCFF005AD2FF0044CEFB0036C2FE0036C2FE002AB4FD0014BC
          FE0069CFFF000144B7004D7ECA004D7ECA004D7ECA004D7ECA00006CE900B2EC
          FF007BDBFF006BDCFF005AD2FF0044CEFB000144B7000144B7000144B7000144
          B7000144B7000550B90069CFFF005FCCFF008EDCFF004D7ECA00006CE900B2EC
          FF007BDBFF006BDCFF005AD2FF0044CEFB0036C2FE0036C2FE002AB4FD0014BC
          FE0069CFFF000550B90069CFFF004D7ECA004D7ECA004D7ECA00006CE900B2EC
          FF007BDBFF006BDCFF005AD2FF0044CEFB0036C2FE0036C2FE002AB4FD000144
          B7000144B7000550B90069CFFF005FCCFF008EDCFF004D7ECA00006CE900B2EC
          FF00B2ECFF0099E7FD0099E7FD008EDCFF007BDBFF007BDBFF0069CFFF0069CF
          FF0069CFFF000550B9004D7ECA004D7ECA004D7ECA004D7ECA00006CE900006C
          E900006CE900006CE9000265D1000265D1000265D1000265D1000265D1000350
          CB000350CB000350CB0069CFFF005FCCFF008EDCFF004D7ECA00000000000000
          000000000000000000004D90E500C8F3FF0099E7FD0099E7FD008EDCFF007BDB
          FF007BDBFF0069CFFF0069CFFF004D7ECA004D7ECA004D7ECA00000000000000
          000000000000000000004D90E500C8F3FF00C8F3FF00B2ECFF00B2ECFF00B2EC
          FF00B2ECFF0099E7FD0099E7FD008EDCFF008EDCFF004D7ECA00000000000000
          000000000000000000004D90E5004D90E5004D90E5004D90E5004D90E5004D90
          E5004D90E5004D90E5004D90E5004D90E5004D90E5004D7ECA00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000000F0000000F0000000F00000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000F0000000F000
          0000F0000000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000AD531100AD531100AD53
          11009F4E05009F4E0500904807008F3402008F3402008F340200000000000000
          00000000000000000000000000000000000000000000BA681E00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008F340200000000000000
          00000000000000000000000000000000000000000000C56E2000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0090480700000000000000
          00000000000000000000000000000000000000000000CD732300FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009F4E0500CC520B00CC52
          0B00CC520B00CC520B00C6510A00C6510A00C6510A00DA782200FFFFFF008F34
          02008F3402008F340200FFFFFF00FFFFFF00FFFFFF00AD531100DA661900FFF8
          DD00FFF8DD00FFFAE400FFF8DD00FFF8DD00FFFAE400E1802800FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AD531100E3691C00FFFA
          E400FFFAE400FFFAE400FFFAE400FFFAE400FFFAE400E68C3400FFFFFF008F34
          02008F3402008F3402008F3402008F340200FFFFFF00BA681E00E3691C00FADD
          B400FADDB400FADDB400FADDB400FADDB400FADDB400EF963400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C56E2000E6752300FFFE
          F100FFFEF100FFFFF500FFFEF100FFFEF100FFFFF500FAA13900FFFFFF008F34
          02008F3402008F3402008F3402008F340200FFFFFF00CD732300E6752300FFFF
          F500FFFFF500FFFFF500FFFFF500FFFFF500FFFFF500FAA13900FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DA782200ED7E2A00FADE
          C000FADEC000FADEC000FADEC000FADEC000FADEC000FAA13900FAA13900FAA1
          3900FAA13900EF963400EF963400E68C3400E48A2E00E1802800ED7E2A00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00DA78220000000000000000000000000000000000EE862E00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00E675230000000000000000000000000000000000EF8C2A00EF8C
          2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C
          2A00EF8C2A00EF8C2A0000000000000000000000000000000000F1963C00FFC6
          7C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC6
          7C00FFC67C00F1963C0000000000000000000000000000000000F3A35100F3A3
          5100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100F3A3
          5100F3A35100F3A3510000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FE000000FE000000FE000000FE00000000000000000000000000
          000000000000000000000000000000000000000F0000000F0000000F0000000F
          0000000F0000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000074190000741
          9000062C7700062C7700062C7700062C7700062C770000000000000000000000
          00000000000000000000000000000000000000000000105AA30076E5FF00C8F3
          FF0076E5FF0036C2FE0001ACF4000494F1000494F100062C7700000000000000
          000000000000000000000000000000000000000000001863AD0076E5FF00C8F3
          FF0076E5FF0038D4FE0001ACF4000494F1000494F100062C7700000000000000
          000000000000000000000000000000000000000000001E79BD0076E5FF00C8F3
          FF0076E5FF0038D4FE0014BCFE0001ACF4000494F100062C7700CC520B00CC52
          0B00CC520B00CC520B00C6510A00C6510A00C6510A002593D00076E5FF00E1FA
          FF0076E5FF0038D4FE0014BCFE0001ACF4000494F100062C7700DA661900FFF8
          DD00FFF8DD00FFFAE400FFF8DD00FFF8DD00FFFAE4002593D00076E5FF00E1FA
          FF0076E5FF0038D4FE0014BCFE0001ACF40001ACF400062C7700E3691C00FFFA
          E400FFFAE400FFFAE400FFFAE400FFFAE400FFFAE40032BBE9005DB4E600529F
          D5003D93B6001863AD000741900007419000062C770007419000E3691C00FADD
          B400FADDB400FADDB400FADDB400FADDB400FADDB40032BBE90076E5FF00E1FA
          FF0076E5FF0038D4FE0014BCFE0001ACF40001ACF40007419000E6752300FFFE
          F100FFFEF100FFFFF500FFFEF100FFFEF100FFFFF5002CCEFB0064CBEA0079BB
          E500529FD5001E79BD000755AB00074190000741900007419000E6752300FFFF
          F500FFFFF500FFFFF500FFFFF500FFFFF500FFFFF50038D4FE00F7FEFF00FFFF
          FF00F7FEFF00E1FAFF00C8F3FF00B2ECFF008EDCFF00043EA700ED7E2A00FADE
          C000FADEC000FADEC000FADEC000FADEC000FADEC000FADEC00064CBEA0095CD
          DF0064CBEA0032BBE9000CA4E6000887DD000887DD0000000000ED7E2A00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00DA78220000000000000000000000000000000000EE862E00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00E675230000000000000000000000000000000000EF8C2A00EF8C
          2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C
          2A00EF8C2A00EF8C2A0000000000000000000000000000000000F1963C00FFC6
          7C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC6
          7C00FFC67C00F1963C0000000000000000000000000000000000F3A35100F3A3
          5100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100F3A3
          5100F3A35100F3A3510000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FF010000FE000000FE000000FE00000000000000000000000000
          000000000000000000000000000000010000000F0000000F0000000F0000000F
          0000000F0000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000AA5605009F4E
          05009F4E05009F4E05009F4E05009F4E05009F4E050090480700904807009048
          0700904807009048070090480700904807009048070090480700AA560500FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0090480700AA560500FFFF
          FF00FFF5EB00FFF5EB00FFF5EB00FFF4E700FFF4E700FEF2E400FEF2E400FEF2
          E400FDEEDC00FDEEDC00FDEEDC00FDEEDC00FFFFFF0090480700AA560500FFFF
          FF00FFF9F200FEF7EF00FEF7EF00FFF5EB00FFF5EB00FFF5EB00FFF4E700FFF4
          E700FEF2E400FEF2E400FEF2E400FEF2E400FFFFFF0090480700AA560500FFFF
          FF00FFFAF500FFFAF500FFF9F200FFF9F200FEF7EF00FEF7EF00FFF5EB00FFF5
          EB00FFF5EB00FFF4E700FFF4E700FEF2E400FFFFFF0090480700B55D0500FFFF
          FF00FFFDFA00FFFCF700FFFCF700FFFAF500FFFAF500FFF9F200FFF9F200FEF7
          EF00FEF7EF00FEF7EF00FFF5EB00FFF5EB00FFFFFF0090480700B55D0500FFFF
          FF00FFFDFB00FFFDFB00FFFDFA00FFFDFA00FFFCF700FFFCF700FFFAF500FFFA
          F500FFF9F200FFF9F200FEF7EF00FEF7EF00FFFFFF009F4E0500B55D0500FFFF
          FF00FFFFFF00FFFFFE00FFFFFE00FFFDFB00FFFDFB00FFFDFA00FFFDFA00FFFC
          F700FFFCF700FFFAF500FFFAF500FFFAF500FFFFFF009F4E0500C1640600FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009F4E0500C1640600EDB7
          8300EDB78300EDB78300EDB78300EDB78300EDB78300EDB78300EDB78300EDB7
          8300EDB78300EDB78300EDB78300EDB78300EDB78300AA560500C1640600EA9E
          5400EA9E5400EA9E5400EA9E5400EA9E5400EA9E5400EA9E5400EA9E5400EA9E
          5400EA9E5400F5CFAA00F5CFAA00F5CFAA00F5CFAA00AA560500C1640600E68C
          3400E68C3400E68C3400E68C3400E68C3400E68C3400E68C3400E68C3400E68C
          3400E68C3400F6C797001C1CE6001C1CE600F6C79700AA560500C1640600DA78
          2200DA782200DA782200DA782200DA782200DA782200DA782200DA782200DA78
          2200DA782200E8C095001C1CE6001C1CE600E8C09500B55D0500C1640600CB6D
          1100CB6D1100CB6D1100CB6D1100CB6D1100CB6D1100CB6D1100CB6D1100CB6D
          1100CB6D1100EDB78300EDB78300EDB78300EDB78300B55D050000000000E9A9
          6B00E9A96B00E9A96B00E9A96B00E9A96B00E9A96B00E9A96B00E9A96B00E9A9
          6B00E9A96B00E9A96B00E9A96B00E9A96B00E9A96B0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000080010000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000050505004747470000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003F3E3E004E4E4E0055555500979897000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFFFFF00F7F7F700BCBBBA0097989700CFCFCF00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFFFFF00FFFFFF00F7F7F700C4D8E7002372D1000755AB000000
          0000000000000000000000000000000000000000000000000000CC520B00CC52
          0B00CC520B00D0652700FFFAF500E1FAFF0036C2FE00268AF3001563C5000755
          AB00000000000000000000000000000000000000000000000000DA661900FFF8
          DD00FFF8DD00FFFAE400F0F9F20049D9FF0036C2FE002AB4FD00268AF3001563
          C5000755AB000000000000000000000000000000000000000000E3691C00FFFA
          E400FFFAE400FFFAE400FFFAE40099E7FD0038D4FE0036C2FE002AB4FD00268A
          F3001563C5000755AB0000000000000000000000000000000000E3691C00FADD
          B400FADDB400FADDB400FADDB400FADDB40095CDDF0038D4FE0036C2FE002AB4
          FD00268AF3001563C5000755AB00000000000000000000000000E6752300FFFE
          F100FFFEF100FFFFF500FFFEF100FFFEF100FFFFF50099E7FD0038D4FE0036C2
          FE002AB4FD00268AF3001563C5000755AB000000000000000000E6752300FFFF
          F500FFFFF500FFFFF500FFFFF500FFFFF500FFFFF500FFFFF50099E7FD0038D4
          FE0036C2FE002AB4FD00268AF3002372D100A7A9A90000000000ED7E2A00FADE
          C000FADEC000FADEC000FADEC000FADEC000FADEC000FADEC000FADEC00095CD
          DF0038D4FE0036C2FE002AB4FD006869690033333300A7A9A900ED7E2A00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0099E7FD0044CEFB009D8EA6008A8A8A007272720051515100EE862E00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00C0937400CFCFCF00CFCFCF00BCBBBA0000000000EF8C2A00EF8C
          2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C
          2A00EF8C2A00EF8C2A00E3E3E100E3E3E1000000000000000000F1963C00FFC6
          7C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC6
          7C00FFC67C00F1963C0000000000000000000000000000000000F3A35100F3A3
          5100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100F3A3
          5100F3A35100F3A3510000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000CFFF0000C3FF0000E0FF0000E07F0000003F0000001F0000000F
          000000070000000300000001000000000000000000000001000000030000000F
          0000000F0000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000887DD000CA4E6000887DD001563C5004A6FC200788FCB000000
          0000000000000000000000000000788FCB0079BBE500000000000000000032BB
          E90001BFF30001ACF40001ACF40001ACF40001ACF4000494F1000265D1004654
          B2000000000000000000788FCB005DB4E60000000000000000000000000021C5
          FE0001BFF30001ACF40001ACF40001ACF40001ACF4000494F1000494F100006C
          E900043EA7003D93B6005DB4E60000000000000000000000000065D4F0002CCE
          FB0001BFF30001ACF40001ACF40001ACF40001ACF4000494F100006CE9000055
          ED000265D100161993000000000000000000000000000000000065D4F00021C5
          FE0001BFF30001ACF40001ACF40001BFF30001BFF3000494F1000055ED000055
          ED000055ED000265D1003939A00000000000000000000000000065D4F00013B7
          F60001ACF40001ACF40001BFF30001BFF30016C6F30001ACF400006CE9000055
          ED00006CE9000494F1000144B70000000000000000000000000073CFF00013B7
          F60001ACF40001ACF40001BFF30011AFEA005DB4E60059D1F20013B7F6000494
          F1000494F1000494F1000265D1001863AD0000000000000000000000000032BB
          E9000EB4F1000EB4F10016C6F3000265D1000027A2002593D00059D1F20001AC
          F4000494F1000494F1000494F100043EA70000000000000000000000000065D4
          F00044CEFB002CCEFB002CCEFB00595234001863AD000027A20044CEFB0001BF
          F3000494F1000494F10001ACF4000550B9000000000000000000000000000000
          000059D1F20044CEFB00C164060097A883000265D1000265D10001BFF30001BF
          F30001ACF40001ACF40001ACF4000550B9000000000000000000000000000000
          000000000000B55D0500B2BA8B002CCEFB0016C6F30001BFF30001BFF30001BF
          F30001BFF30001BFF30001BFF3001048B8000000000000000000000000002727
          270000000000151515002CCEFB002CCEFB0016C6F3000CA4E60016C6F30001BF
          F30001BFF30001BFF30001ACF4001E79BD000000000000000000555555000707
          070015151500A7A9A9000000000044CEFB0044CEFB00000000000000000038D4
          FE0001BFF30001BFF30032BBE900000000000000000000000000000000009798
          97004E4E4E000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000E07900008033000080070000000F0000000700000007
          0000000300008003000080030000C0030000E003000080030000098700001FFF
          0000FFFF0000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000007018000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000007018000070180000000000000000000000000000000000000000000000
          0000000000000000000000000000007018000070180000701800007018000070
          18000070180057B66E0000701800000000000000000000000000000000000000
          00000000000000000000000000000387220061D59E0061D59E0061D59E0061D5
          9E0057B66E0057B66E0057B66E00007018000000000000000000C0937400C093
          7400B3816200B3816200B38162000387220077E7B50025C4770025C4770025C4
          770015A7540015A7540015A7540057B66E000070180000000000D5AE9300EFE5
          D000EFE5D000E9D6C000D5AE93000387220077E7B50037DA920037DA920025C4
          770025C4770025C4770015A7540015A7540057B66E0000701800D5AE9300EFE5
          D000E2CAB300C0937400B38162000387220088EEC20037DA920037DA920037DA
          920037DA920025C4770025C4770061D59E000070180000000000DABBA100E9D6
          C000CDA18500DABBA100EFE5D0000387220088EEC20088EEC20088EEC20077E7
          B50077E7B50077E7B50061D59E00007018000000000000000000DABBA100DEC1
          A800D5AE9300EFE5D000EFE5D000038722000387220003872200038722000387
          22000387220077E7B50003872200000000000000000000000000DEC1A800D5AE
          9300DEC1A800E9D6C000CDA18500C0937400CDA18500EFE5D000EFE5D000C093
          7400038722000387220000000000000000000000000000000000DEC1A800D5AE
          9300DEC1A800EFE5D000E9D6C000DABBA100C0937400EFE5D000EFE5D000C093
          740003872200B381620000000000000000000000000000000000DEC1A800DEC1
          A800D5AE9300EFE5D000EFE5D000E9D6C000CDA18500EFE5D000EFE5D000B381
          6200D5AE9300B381620000000000000000000000000000000000DABBA100E9D6
          C000D5AE9300E2CAB300EFE5D000EFE5D000E9D6C000EFE5D000DABBA100C093
          7400E9D6C000B381620000000000000000000000000000000000DABBA100EFE5
          D000E2CAB300D5AE9300D5AE9300DEC1A800DEC1A800D5AE9300CDA18500E2CA
          B300EFE5D000B381620000000000000000000000000000000000DABBA100EFE5
          D000EFE5D000E9D6C000DEC1A800D5AE9300D5AE9300DEC1A800EFE5D000FBEB
          D600FBEBD600B381620000000000000000000000000000000000D5AE9300DABB
          A100D5AE9300D5AE9300CDA18500CDA18500CDA18500CDA18500C0937400C093
          7400C0937400B076520000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFDF0000FFCF0000F8070000F803000000010000000000000001
          00000003000000070000000F0000000F0000000F0000000F0000000F0000000F
          0000000F0000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000007018000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000007018000070180000000000000000000000000000000000000000000000
          0000000000000000000000000000007018000070180000701800007018000070
          18000070180057B66E0000701800000000000000000000000000000000000000
          00000000000000000000000000000387220061D59E0061D59E0061D59E0061D5
          9E0057B66E0057B66E0057B66E00007018000000000000000000CC520B00CC52
          0B00CC520B00CC520B00C6510A000387220077E7B50025C4770025C4770025C4
          770015A7540015A7540015A7540057B66E000070180000000000DA661900FFF8
          DD00FFF8DD00FFFAE400FFF8DD000387220077E7B50037DA920037DA920025C4
          770025C4770025C4770015A7540015A7540057B66E0000701800E3691C00FFFA
          E400FFFAE400FFFAE400FFFAE4000387220088EEC20037DA920037DA920037DA
          920037DA920025C4770025C4770061D59E000070180000000000E3691C00FADD
          B400FADDB400FADDB400FADDB4000387220088EEC20088EEC20088EEC20077E7
          B50077E7B50077E7B50061D59E00007018000000000000000000E6752300FFFE
          F100FFFEF100FFFFF500FFFEF100038722000387220003872200038722000387
          22000387220077E7B50003872200000000000000000000000000E6752300FFFF
          F500FFFFF500FFFFF500FFFFF500FFFFF500FFFFF500FFFFF500FFFFF500FFFF
          F500038722000387220000000000000000000000000000000000ED7E2A00FADE
          C000FADEC000FADEC000FADEC000FADEC000FADEC000FADEC000FADEC000FADE
          C00003872200DA66190000000000000000000000000000000000ED7E2A00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00DA78220000000000000000000000000000000000EE862E00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00E675230000000000000000000000000000000000EF8C2A00EF8C
          2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C
          2A00EF8C2A00EF8C2A0000000000000000000000000000000000F1963C00FFC6
          7C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC6
          7C00FFC67C00F1963C0000000000000000000000000000000000F3A35100F3A3
          5100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100F3A3
          5100F3A35100F3A3510000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFDF0000FFCF0000F8070000F803000000010000000000000001
          00000003000000070000000F0000000F0000000F0000000F0000000F0000000F
          0000000F0000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008484840084848400848484008484
          8400848484008484840084848400848484008484840084848400000000000000
          000000000000000000000000000084848400C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60084848400000000000000
          0000000000008484840084848400FF000000C6C6C600FFFFFF0000FFFF00FFFF
          FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00C6C6C60084848400000000000000
          000084848400FF000000FF000000FF000000C6C6C600FFFFFF00FFFFFF00FFFF
          FF0000FFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60084848400000000008484
          8400FF000000FF000000FF000000FF000000C6C6C600FFFFFF0000FFFF008484
          84008484840084848400C6C6C600FFFFFF00C6C6C60084848400000000008484
          8400FF000000FF000000FF000000FF000000C6C6C600FFFFFF0084848400FF00
          0000FF000000FF00000084848400FFFFFF00C6C6C6008484840084848400FF00
          0000FF000000FF000000FF000000FF000000C6C6C600FFFFFF0084848400C6C6
          C60084848400FF00000084848400FFFFFF00C6C6C6008484840084848400FF00
          0000FF000000FF0000008484840084848400C6C6C600FFFFFF0084848400FFFF
          FF00C6C6C6008484840084848400FFFFFF00C6C6C6008484840084848400FF00
          0000FF000000848484008484840084848400C6C6C600FFFFFF0000FFFF008484
          84008484840084848400C6C6C600FFFFFF00C6C6C6008484840084848400FF00
          0000FF000000848484008484840084848400C6C6C600FFFFFF00FFFFFF00FFFF
          FF0000FFFF00FFFFFF008484840084848400848484008484840084848400FF00
          0000FF000000C6C6C6008484840084848400C6C6C600FFFFFF0000FFFF00FFFF
          FF00FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C6000000000000000000C6C6
          C600FF000000FF000000FFFFFF00C6C6C600C6C6C600FFFFFF00FFFFFF00FFFF
          FF0000FFFF00FFFFFF00C6C6C600C6C6C600000000000000000000000000C6C6
          C600FF000000FFFFFF00C6C6C600FFFFFF00C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600848484000000000000000000000000000000
          0000C6C6C600FF000000FF000000C6C6C600FFFFFF00C6C6C600848484008484
          8400848484008484840084848400000000000000000000000000000000000000
          000000000000C6C6C600C6C6C600FF000000FF000000FFFFFF00C6C6C6008484
          8400848484008484840000000000000000000000000000000000000000000000
          0000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FC000000F8000000E0000000C000000080000000800000000000
          0000000000000000000000000000000100008003000080030000C0070000E00F
          0000F83F0000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
          00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000000000000000
          0000FF00000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000000000000000FF00
          00008400000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000000000848400FF00
          00000000000084000000FF000000FF000000FF000000FF00000084000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000008484000084
          840084000000FF000000FF000000C6C6C600C6C6C60084000000FF0000008400
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000000000848400C6C6
          C60084000000FF00000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000000000000084
          840000FFFF00FF000000FF000000FF000000FF000000FF000000FF0000008400
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000000000000000
          00000084840000FFFF00FF000000FFFFFF00FFFFFF0084000000FF0000008400
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000000000000000
          0000000000000084840000FFFF00FF000000FF000000FF00000084000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000000000000000
          00000000000084848400FF000000FF000000FF00000084000000FFFFFF00FF00
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000000000000000
          00000000000084848400FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FFFF
          FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
          00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C6C6C600FFFFFF008484840000000000000000000000
          00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C6C6C600848484000000000000000000000000000000
          0000000000008484840084848400848484008484840084848400848484008484
          8400848484008484840084848400000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000E0000000E0000000E0000000C000000080000000000000000000
          00000000000080000000C0000000E0000000E0000000E0000000E0010000E003
          0000E0070000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008484840084848400848484008484
          8400848484008484840084848400848484008484840000000000000000000000
          0000000000000000000000000000FF00000084848400FFFFFF0000FFFF00FFFF
          FF00FFFFFF00FFFFFF0000FFFF00FFFFFF008484840000000000000000000000
          000000000000FF000000FF000000FF00000084848400FFFFFF00FFFFFF00FFFF
          FF0000FFFF00FFFFFF00FFFFFF00FFFFFF008484840000000000000000000000
          0000FF000000FF000000FF000000FF00000084848400FFFFFF0000FFFF008400
          0000840000008400000084848400FFFFFF008484840000000000000000000000
          0000FF000000FF000000FF000000FF00000084848400FFFFFF0084840000FF00
          0000FF000000FF00000084000000FFFFFF00848484000000000000000000FF00
          0000FF000000FF000000FF000000FF00000084848400FFFFFF00848400008484
          840000840000FF00000084000000FFFFFF00848484000000000000000000FF00
          0000FF000000FF000000008400000084000084848400FFFFFF0084840000FFFF
          FF00848484000084000084000000FFFFFF00848484000000000000000000FF00
          0000FF00000000840000008400000084000084848400FFFFFF0000FFFF008484
          0000848400008484000084848400FFFFFF00848484000000000000000000FF00
          0000FF00000000840000008400000084000084848400FFFFFF00FFFFFF00FFFF
          FF0000FFFF00FFFFFF000000000000000000000000000000000000000000FF00
          0000FF00000000000000008400000084000084848400FFFFFF0000FFFF00FFFF
          FF00FFFFFF00FFFFFF0084848400FFFFFF008484840000000000000000008484
          8400FF000000FF000000FFFFFF000000000084848400FFFFFF00FFFFFF00FFFF
          FF0000FFFF00FFFFFF0084848400848484000000000000000000000000008484
          8400FF000000FFFFFF0000000000FFFFFF008484840084848400848484008484
          8400848484008484840084848400000000000000000000000000000000000000
          000084848400FF000000FF00000000000000FFFFFF0000000000008400000084
          0000008400000084000000000000000000000000000000000000000000000000
          0000000000008484840084848400FF000000FF000000FFFFFF00000000000084
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000848484008484840084848400848484008484
          8400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FC000000F8000000E0000000C000000080000000800000000000
          0000000000000000000000000000100100008403000088030000C5070000E08F
          0000F83F0000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000008484840084848400848484008484840084848400848484008484
          8400848484008484840084848400848484008484840000000000000000000000
          00000000000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C6008484840000000000000000000000
          0000FF00000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000000000000000000FF00
          0000000000000000000000000000848400008484000084840000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000000000000848400FF00
          000084000000FF000000FF000000FF000000FF000000FF00000084840000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6008484840000000000848484008484
          840084000000FF000000FF000000C6C6C600C6C6C600FF000000FF0000008484
          0000FFFFFF00FFFFFF00FFFFFF00C6C6C6008484840000000000848484008484
          840084840000FF00000084840000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6008484840000000000000000008484
          8400C6C6C600FF00000084840000848400008484000084840000848400008484
          0000FFFFFF00FFFFFF00FFFFFF00C6C6C6008484840000000000000000008400
          000084848400C6C6C60084840000FFFFFF00FFFFFF00FF000000FFFF00008484
          0000FFFFFF00FFFFFF00FFFFFF00C6C6C6008484840000000000000000000000
          00008400000084848400C6C6C600FF000000FF000000FFFF000084840000FFFF
          FF00FFFFFF00FFFFFF00C6C6C600848484008484840000000000000000000000
          0000000000008400000084840000848400008484000084840000FFFFFF00FF00
          0000FFFFFF00C6C6C60084848400848484008484840000000000000000000000
          00000000000084848400FFFFFF00FFFFFF00FFFFFF008484000084840000FFFF
          FF00FFFFFF008484840000000000000000000000000000000000000000000000
          00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0084848400FFFFFF00848484000000000000000000000000000000
          00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF008484840084848400000000000000000000000000000000000000
          0000000000008484840084848400848484008484840084848400848484008484
          8400848484008484840000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000E0010000E0010000C0010000A0010000000100000001
          0000000100008001000080010000C0010000E0010000E0010000E0030000E007
          0000E00F0000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000008484
          8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000008484
          8400FFFFFF00FFFFFF0084840000848400008484000084840000848400008484
          0000848400008484000084840000FFFFFF00FFFFFF0000000000000000008484
          8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000008484
          8400FFFFFF00FFFFFF0084840000848400008484000084840000848400008484
          0000848400008484000084840000FFFFFF00FFFFFF0000000000000000008484
          8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000008484
          8400FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF0084000000840000008400
          0000FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF0000000000000000008484
          8400FFFFFF00FFFF000084000000FFFFFF00848400008484000000840000FF00
          000084000000FFFFFF0084000000FFFF0000FFFFFF0000000000000000008484
          8400C6C6C60084000000FFFFFF00FFFFFF0084840000FFFF0000848400000084
          000084000000FFFFFF00FFFFFF0084000000C6C6C60000000000000000008484
          8400FFFFFF00FFFF000084000000FFFFFF0084840000FFFFFF00FFFF00008484
          000084000000FFFFFF0084000000FFFF0000FFFFFF0000000000000000008484
          8400FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF0084840000848400008484
          0000FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF0000000000000000008484
          8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000008484
          8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C6C6C600FFFFFF008484840000000000000000008484
          8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C6C6C600848484000000000000000000000000008484
          8400848484008484840084848400848484008484840084848400848484008484
          8400848484008484840084848400000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF00008000000080000000800000008000000080000000800000008000
          0000800000008000000080000000800000008000000080000000800100008003
          000080070000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000008484840000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
          00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000000000000000
          00000000000084848400FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600FFFF
          FF00C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C60000000000000000000000
          00000000000084848400FFFFFF00FFFFFF00FFFFFF0000840000848484000084
          000084848400FFFFFF00C6C6C600FFFFFF00C6C6C60000000000008400008484
          84000084000084848400008400008484840000840000FFFFFF00008400008484
          840000840000FFFFFF00C6C6C600FFFFFF00C6C6C60000000000848484000084
          000084848400008400008484840000840000FFFFFF0000840000848484000084
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000008400008484
          8400008400008484840000840000FFFFFF000084000084848400008400008484
          8400C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C60000000000000000000084
          00008484840000840000FFFFFF00008400008484840000840000848484000084
          0000FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C60000000000000000000000
          000000840000FFFFFF0000840000848484000084000084848400C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C60000000000000000000084
          0000FFFFFF00008400008484840000840000848484000084000084848400C6C6
          C600FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C6000000000000840000FFFF
          FF00008400008484840000840000848484000084000084848400008400008484
          8400C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C60000000000848484000084
          0000848484000084000084848400FFFFFF008484840000840000848484000084
          0000FFFFFF00FFFFFF0000000000000000000000000000000000008400008484
          84000084000084848400FFFFFF00FFFFFF00FFFFFF0084848400008400008484
          8400FFFFFF00FFFFFF0084848400FFFFFF000000000000000000000000000000
          00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
          0000000000008484840084848400848484008484840084848400848484008484
          8400848484008484840084848400000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000E0000000E0000000E0000000E0000000E0000000000000000000
          00000000000080000000C000000080000000000000000000000000010000E003
          0000E0070000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
          000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000000000000000000000000000
          000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000000000000000000000000000
          000084848400FFFFFF00FFFFFF00000000000000000000000000000000000000
          000000000000FFFFFF00FFFFFF00C6C6C6000000000000000000000000000000
          000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000000000000000000000000000
          000084848400FFFFFF00FFFFFF00000000000000000000000000000000000000
          000000000000FFFFFF00FFFFFF00C6C6C6000000000000000000000000000000
          000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000000000000000000000000000
          000084848400FFFFFF00FFFFFF00000000000000000000000000000000000000
          000000000000FFFFFF00FFFFFF00C6C6C6000000000000000000000000000000
          000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000000000000000000000000000
          000084848400FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000
          000000000000FFFFFF00FFFFFF00C6C6C6000000000000000000000000000000
          000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000000000000000000000000000
          000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000000000000000000000000000
          000084848400FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
          00000000000000000000FFFFFF0084848400FFFFFF0084848400FFFFFF008484
          8400FFFFFF0084848400FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000C0DCC00000000000C0DCC00000000000C0DC
          C00000000000C0DCC00000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000E0030000C0010000C0010000C0010000C0010000C0010000C001
          0000C0010000C0010000C0010000C0010000C0010000C0010000C0010000E003
          0000F0070000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          000000000000000000008484840000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000084848400C6C6
          C600C6C6C600848484000000000084848400000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000084848400C6C6C600C6C6
          C600FFFF0000848484008484840000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6C600C6C6C600C6C6
          C600C6C6C60084848400C6C6C60000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6C600FFFF0000C6C6
          C600C6C6C60084848400C6C6C60000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000084848400FFFF0000FFFF
          0000C6C6C600848484008484840000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000084848400C6C6
          C600C6C6C600848484000000000000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6
          C60000000000000000000000000000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000000C0000000800000001000000030000000300000003
          0000000300000003000000070000000F0000000F0000000F0000001F0000003F
          0000007F0000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C60000000000C6C6C600000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C6C6C600000000000000000000000000C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000FFFF0000FFFF0000FF
          FF00C6C6C600C6C6C6000000000000000000000000000000000000000000C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60084848400848484008484
          8400C6C6C600C6C6C60000000000C6C6C6000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C6C6C600C6C6C6000000000000000000C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C60000000000C6C6C60000000000C6C6C60000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C6C6C60000000000C6C6C6000000000000000000000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000C6C6C60000000000C6C6C60000000000000000000000
          00000000000000000000FFFFFF00000000000000000000000000000000000000
          0000FFFFFF000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF000000000000000000000000000000
          000000000000FFFFFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000C0070000800300000001000000010000000100000000
          00000000000080000000C0000000E0010000E0070000F0070000F0030000F803
          0000FFFF0000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C60000000000C6C6C600000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C6C6C600000000000000000000000000C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000FFFF0000FFFF0000FF
          FF00C6C6C600C6C6C6000000000000000000000000000000000000000000C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60084848400848484008484
          8400C6C6C600C6C6C60000000000C6C6C6000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C6C6C600C6C6C6000000000000000000C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C60000000000C6C6C60000000000C6C6C60000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C6C6C60000000000C6C6C6000000000000000000000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000C6C6C60000000000C6C6C60084848400000000000000
          00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0084840000FFFF0000FFFF0000FFFF000000000000000000008484
          8400000000000000000000000000000000000000000000000000000000000000
          000000000000FFFF000084840000000000000000000084848400000000000000
          0000FFFF000084840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
          0000FFFF0000FFFF000000000000000000000000000000000000000000008484
          8400000000000000000000000000000000000000000000000000000000000000
          000000000000FFFF000084840000000000000000000084848400000000000000
          0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF008484840084840000FFFF0000FFFF0000FFFF000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000008484840000000000000000000000000084848400000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000C0070000800300000001000000010000000100000000
          00000000000080000000C0000000E0000000800000008007000080000000F000
          0000F8000000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000331
          5F00022D58000229520002274D00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000335
          6400FFFFFF000CA4FF0002285000000000000000000000000000EBAF5900E7A6
          4800E49D3800E0962B00DD8E2000DA8A1A00D8891900D6871800D48517000439
          6A00FFFFFF000DA6FF00032B5400000000000000000000000000ECB25B00FAE0
          A100F7D99600F4D18A00FBFBFB00FAFAFA00F9F9F900F8F8F80005457A0013B1
          FF0011ADFF000FA9FF000CA5FF00022A52000000000000000000EEB55F00FAE0
          A100F7D99600F4D18A00FDFDFD00FCFCFC00FBFBFB0007538C0017B8FF0015B4
          FF0012B0FF0010ACFF000EA8FF000CA4FF000229500000000000F0B76200FAE0
          A100F7D99600F4D18A00FEFEFE00FDFDFD000A629F00FFFFFF0018BAFF0016B6
          FF0005427500043B6B00FFFFFF000DA7FF000BA3FF0002284E00F2B96600FAE0
          A100F7D99600F4D18A00FFFFFF00FFFFFF000B6AA800FFFFFF001ABDFF00074F
          8700FAFAFA00F9F9F900043A6900FFFFFF000DA6FF00032B5300F4BC6800FAE0
          A100F7D99600F4D18A00FFFFFF00FFFFFF000D72B000FFFFFF001BBFFF000956
          8F00FCFCFC00FBFBFB00053F7000FFFFFF000EA8FF00032E5700F5BE6B00FAE0
          A100F7D99600F4D18A00FFFFFF00FFFFFF000F7BB900FFFFFF001CC2FF000A5D
          9700FDFDFD00FDFDFD0006447700FFFFFF0010ABFF0003315C00F6C16F00FAE0
          A100F7D99600F4D18A00FFFFFF00C7C7C700C7C7C7000E78B700FFFFFF000B65
          A000C7C7C700FEFEFE00074A7E00FFFFFF00053C6B0000000000F8C37200FAE0
          A100F7D99600F4D18A00FFFFFF00FFFFFF00FFFFFF00FFFFFF000E77B4000C6E
          A900FFFFFF00FFFFFF000851860006497C000000000000000000F9C57500FAE0
          A100F7D99600F4D18A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00E0911E00000000000000000000000000FAC77800FAE0
          A100F7D99600F4D18A00FFFFFF00C7C7C700C7C7C700C7C7C700C7C7C700C7C7
          C700C7C7C700FFFFFF00E2932000000000000000000000000000FBC97A00FAE0
          A100F7D99600F4D18A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00E4952100000000000000000000000000FCCB7D00FAE0
          A100F7D99600F4D18A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00E7972300000000000000000000000000FDCD8000FCC5
          6F00FBBE5F00F9B75000F8B14300F5AA3600F3A52D00F2A32A00F0A12900EE9F
          2800ED9D2700EB9B2600E99A2400000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FF870000FF870000000700000003000000010000000000000000
          0000000000000000000000010000000300000007000000070000000700000007
          000000070000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000009C4D12009A4C1100994A
          1000974A0F0096490F0000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000009E4E1400FFDCBE00FFD9
          B900FED5B300D4793A0097490F00000000000000000000000000000000000000
          00000000000000000000000000000000000000000000A1501500FFE1C700FFDE
          C200FEDBBD00D37A3A00D57B3C00984A10000000000000000000000000000000
          000010448F000F3C88000A358100062E7B00052B7600A4531600FFE5CE00FFE3
          CB00FFE1C600D27A3B00D47B3D00D77D3E00994B11000000000000000000105A
          A30076E7FF00C7F5FF0076E2FE0036C7FC0006A5F700A8551800FFE8D500FFE8
          D200FFE5CD00D27A3C00D47C3E005B2C09005A2B0900592B080000000000156A
          AF0076E7FF00CEF6FF0076E7FF0037D0FD0007B0FB00AB581A00FFECDA00FFEA
          D700FFE8D400D17A3C00D37C3E00D57F40009E4E13000000000000000000197A
          BC0076E7FF00D4F7FF0076E7FF0038D5FF0008B9FD00AF5B1C00FFEEDD00FFEC
          DC00FFEBD900D07A3C00D37D3F00D57F4100A151150000000000000000001F8B
          C90076E7FF00DAF9FF0076E7FF0038D5FF0009BFFF00B25E1E00FED4A700FED1
          A400FECE9F00FECB9B00D27D3F0065310A0063310A00622F0A0000000000259D
          D60076E7FF00E0FAFF0076E7FF0038D5FF0009BFFF0006B1FE00B45F1F00FED4
          A800FED1A400FECFA000FECB9B00D3804300A856190000000000000000002AAE
          E20056B6DF0061A1CD003783BA001665A800064C9700053D890005317C00B55F
          2000FED4A9006F370B00FECEA100FECB9C00AB581B0000000000000000002FBF
          ED0076E7FF00EBFCFF0076E7FF0038D5FF0009BFFF0006B1FE0004A4FE00043C
          9000B761210073390C00B35E1F00B15C1E00AF5B1C00000000000000000033C9
          F3005FC6EC0072B8DF00449BCE001B7BBD00065FAB00044C9B00053D8D000441
          980000000000773A0C00000000000000000000000000000000000000000036D1
          F800F7FEFF00FFFFFF00F7FEFF00E6FAFF00CBF1FF00B2E7FF0097D9FF000448
          A000000000000000000000000000000000000000000000000000000000000000
          000068CFED008DD3EB0065C9E80030B7E60008A2E4000695E0000488DE000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FE0F0000FE070000FE030000C0010000800000008001
          00008001000080000000800100008001000080010000802F0000803F0000C07F
          0000FFFF0000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000CE530C00CD52
          0B00CB520B00CA510A00C8500A00C7500900C54F0900C44F0800C34E0700C24E
          0700C04D0600BF4C0600BE4C0500BC4B0500BB4B0400BA4A0400D2560E00FFEF
          C800FFEFC800FAD39C00FFEFC800FFEFC800FAD39C00FFEFC800FFEFC800FAD3
          9C00FFEFC800FFEFC800FAD39C00FFEFC800FFEFC800BD4C0500D6591100FFF2
          CE00FFF2CE00FAD5A000FFF2CE00FFF2CE00FAD5A000FFF2CE00FFF2CE00FAD5
          A000FFF2CE00FFF2CE00FAD5A000FFF2CE00FFF2CE00C04E0700DA5D1400FAD6
          A500FAD6A5000909BF000909BF00FAD6A500FAD6A500FAD6A500FAD6A500FAD6
          A500FAD6A500FAD6A500FAD6A500FAD6A500FAD6A500C4510900DD611700FFF8
          DD00FFF8DD000909BF000909BF00FFF8DD00FAD9AB00FFF8DD00FFF8DD00FAD9
          AB00FFF8DD00FFF8DD00FAD9AB00FFF8DD00FFF8DD00C7540C00E1661A00FFFA
          E400FFFAE400FADBAF00FFFAE400FFFAE400FADBAF00FFFAE400FFFAE400FADB
          AF00FFFAE4000909BF000909BF00FFFAE400FFFAE400CB580F00E46B1E00FADD
          B400FADDB400FADDB400FADDB400FADDB400FADDB400FADDB400FADDB400FADD
          B400FADDB4000909BF000909BF00FADDB400FADDB400CF5C1200E7712100FFFE
          F100FFFEF100FADDB900FFFEF100FFFEF100FADDB900FFFEF100FFFEF100FADD
          B900FFFEF100FFFEF100FADDB900FFFEF100FFFEF100D3611500EA762500FFFF
          F500FFFFF500FADEBB00FFFFF5000909BF000909BF00FFFFF500FFFFF500FADE
          BB00FFFFF500FFFFF500FADEBB00FFFFF500FFFFF500D7661800EC7B2800FADE
          BF00FADEBF00FADEBF00FADEBF000909BF000909BF00FADEBF00FADEBF00FADE
          BF00FADEBF00FADEBF00FADEBF00FADEBF00FADEBF00DA6C1C00EE812B00FFFF
          FF00FFFFFF00FADEC200FFFFFF00FFFFFF00FADEC200FFFFFF00FFFFFF00FADE
          C200FFFFFF00FFFFFF00FADEC200FFFFFF00FFFFFF00DE722000EF852E00FFFF
          FF00FFFFFF00FADEC200FFFFFF00FFFFFF00FADEC200FFFFFF00FFFFFF00FADE
          C200FFFFFF00FFFFFF00FADEC200FFFFFF00FFFFFF00E1772400EF8C2A00EF8C
          2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C
          2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00F1963C00FFC6
          7C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC6
          7C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00F1963C00F3A35100F3A3
          5100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100F3A3
          5100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000CE530C00CD52
          0B00CB520B00CA510A00C8500A00C7500900C54F0900C54F0900C54F0900C54F
          0900C54F0900C44F0800C34E0700C24E0700BC4B0500BA4A0400DD611700FDF3
          E000FDF3DF00FDF2DF00FDF2DF00FDF2DE00FDF2DE00FDF2DE00FDF1DD00FDF1
          DD00FDF1DD00FDF1DC00FDF0DC00FDF0DC00FDF0DB00C7540C00E1661A00FDF4
          E200FDF4E100FDF4E100FDF3E100FDF3E000FDF3E000FDF3E000FDF3DF00FDF2
          DF00FDF2DF000B04A1000C04A1000C05A100FDF1DD00CB580F00E46B1E00FEF5
          E300FEF5E300FEF5E300FEF5E200FEF4E200FDF4E200FDF4E200FDF4E100FDF4
          E100FDF3E1000C05A2000C04A2000B05A100FDF3DF00CF5C1200E7712100FEF6
          E500FEF6E500FEF7E800FEF6E400FEF6E4000C04A6000C04A5000C04A5000B04
          A500AAA2D500AAA1D300FDF4E200FDF5E400FDF4E100D3611500EA762500FEF8
          EA00FEF8EA00FEF8EA00FEF8E900FEF8E9000C05A8000D04A8000D04A8000D05
          A700FEF7E700AAA2D600FEF6E700FEF6E600FEF6E600D7661800EC7B2800FEF9
          F400FEF9F400FEF9F300FEF9F300FEF9F300AAA4DD00FEF8F200FEF8F200FEF8
          F100FEF8F100AAA4DD00FEF7F000FEF7F000FEF7EF00DA6C1C00EE812B00FEFA
          F600FEFAF600FEFAF600FEFAF500FEFAF5000D05AE000D05AE000D05AD000D05
          AD00AAA4DE00AAA4DE00FEF9F200FEF8F200FEF8F200DE722000EF852E00FEFC
          F800FEFBF800FEFBF700FEFBF700FEFBF7000D06B2000D06B1000D05B1000D05
          B000FEFAF500FEFAF500FEFAF500FEF9F400FEF9F400E1772400EF852E00FFFC
          FA000E05B8000E06B7000E05B700ABA6E200AAA6E100FEFCF800FEFBF800FEFB
          F700FEFBF700FEFBF700FEFBF700FEFAF600FEFAF600E1772400EF852E00FFFD
          FB000E06BB000E06BB000E06BA00FFFDFA00FFFDFA00FFFCFA00FFFCFA00FFFC
          F900FFFCF900FFFCF900FEFCF800FEFCF800FEFBF800E1772400EF8C2A00FFFE
          FD00FFFEFD00FFFEFC00FFFEFC00FFFDFC00FFFDFC00FFFDFB00FFFDFB00FFFD
          FB00FFFDFB00FFFDFA00FFFDFA00FFFCFA00FFFCFA00EF8C2A00EF8C2A00EF8C
          2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C
          2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00F1963C00FFC6
          7C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC6
          7C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00F1963C00F3A35100F3A3
          5100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100F3A3
          5100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000005151510050505000505050004F4F4F004E4E4E004D4D
          4D004D4D4D004C4C4C004B4B4B004B4B4B004949490048484800000000000000
          000000000000000000005A5A5A00F3F3F300F3F3F300F3F3F300CFCFCF00F3F3
          F300F3F3F300CFCFCF00F3F3F300F3F3F300F3F3F3004E4E4E00000000000000
          000000000000000000005D5D5D00F4F4F400F4F4F400F4F4F400D0D0D000F4F4
          F400F3F3F300CFCFCF00F3F3F300F3F3F300F3F3F30052525200000000000000
          0000000000000000000061616100D0D0D000D0D0D000D0D0D000D0D0D000D0D0
          D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D00055555500CE530C00CD52
          0B00CB520B00CA510A0065656500F5F5F500F5F5F500F5F5F500D0D0D000F5F5
          F500F4F4F400D0D0D000F4F4F400F4F4F400F4F4F40059595900DD611700FFF8
          DD00FFF8DD00FFFAE40069696900F5F5F500F5F5F500F5F5F500D0D0D000F5F5
          F500F5F5F500D0D0D000F5F5F500F5F5F500F5F5F5005C5C5C00E1661A00FFFA
          E400FFFAE400FFFAE4006E6E6E00D1D1D100D1D1D100D1D1D100D1D1D100D1D1
          D100D1D1D100D0D0D000D0D0D000D0D0D000D0D0D00061616100E46B1E00FADD
          B400000000000000000000000000000000000000000000000000000000000000
          00000000000000000000F6F6F600F6F6F600F6F6F60065656500E7712100FFFE
          F10000000000FFFFFF00FFFFFF00A6A6A6000000000000000000A6A6A600FFFF
          FF00FFFFFF0000000000F6F6F600F6F6F600F6F6F60069696900EA762500FFFF
          F500000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          000000000000000000008C8C8C008C8C8C008C8C8C0072727200EC7B2800FADE
          BF0000000000FFFFFF00FFFFFF00A6A6A6000000000000000000A6A6A600FFFF
          FF00FFFFFF0000000000BDBDBD00BDBDBD00BDBDBD007C7C7C00EE812B00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000089898900888888008888880087878700EF852E00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00E177240000000000000000000000000000000000EF8C2A00EF8C
          2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C2A00EF8C
          2A00EF8C2A00EF8C2A0000000000000000000000000000000000F1963C00FFC6
          7C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC67C00FFC6
          7C00FFC67C00F1963C0000000000000000000000000000000000F3A35100F3A3
          5100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100F3A35100F3A3
          5100F3A35100F3A3510000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          86000000424D86000000000000003E0000002800000010000000120000000100
          010000000000480000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000F0000000F0000000F0000000F000000000000000000000000000
          00000000000000000000000000000000000000000000000F0000000F0000000F
          0000000F0000FFFF0000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000F0000
          001B00000025000000250000001B0000000F0000000000000000000000000000
          00000000000000000000000000000000000000000001002C056900530AB90070
          0EEA00700EEA00530AB9002D06760000002A0000001500000000000000000505
          0511101010351111113B1111113B1111113C07460FA300992CFF10C067FF1FE0
          95FF1FE095FF14C068FF03992EFF003E08940000002A0000000F2A130148893E
          05EC934104FF914003FF8F3F03FF555007FF00992CFF1BD888FF25EEA9FF25EE
          A9FF31EEAEFF42F0B4FF42DA96FF0F9A32FF002D06760000001B2A130148893E
          05EC934104FF914003FF8F3F03FF555007FF00992CFF1BD888FF25EEA9FF25EE
          A9FF31EEAEFF42F0B4FF42DA96FF0F9A32FF002D06760000001B893F04E4E2CA
          B8FFFFFFFFFFFFFFFFFFFFFFFFFF54A75EFF10C067FF25EEA9FF14C872FF0099
          2DFF04992EFF37CA7FFF73F3C7FF4CC47EFF00530AB9000000269C4904FFFFFF
          FFFFEFEFEFFFEFEFEFFFEFEFEFFF178725FF1FE095FF2BEEACFF01992EFFFFFF
          FFFF823302FF0A891BFF068518FF068518FF00740EEA00000000A04C05FFFFFF
          FFFFF0F0F0FFF0F0F0FFF0F0F0FF188725FF26E097FF3EF0B3FF07992FFFFFFF
          FFFF0A891BFF0A891BFF00000029000000000000000000000000A24E05FFFFFF
          FFFFF2F2F2FFF2F2F2FFF2F2F2FF50A35AFF21C16DFF56F1BDFF43CC84FF149A
          33FF1A9A36FF3EF0B3FF0A891BFF000000290000000000000000B66208FFFFFF
          FFFFF3F3F3FFF3F3F3FFF3F3F3FF9BC8A1FF0B9A30FF59DCA0FF3EF0B3FF3EF0
          B3FF3EF0B3FF3EF0B3FF3EF0B3FF0A891BFF0000002900000000B96509FFD4D4
          D4FFD4D4D4FFD4D4D4FFD4D4D4FFD3D4D3FF6AA871FF179B36FF5EC686FF3EF0
          B3FF3EF0B3FF3EF0B3FF3EF0B3FF3EF0B3FF0A891BFF00000000C06B0AFFC26D
          0BFFC26D0BFFC26D0BFFC88033FFC38846FFD3D4D3FF9ECBA3FF51A55BFF1989
          27FF10780EFF3EF0B3FF3EF0B3FF0A891BFF04310A5C000000002A170238C06B
          0AFFF8F8F8FFF8F8F8FFFFFFFFFFC0792AFFD4D4D4FFF8F8F8FFF8F8F8FFFFFF
          FFFF0A891BFF3EF0B3FF0A891BFF04310A5C00000000000000002A170238C06B
          0AFFF8F8F8FFF8F8F8FFFFFFFFFFC0792AFFD4D4D4FFF8F8F8FFF8F8F8FFFFFF
          FFFF0A891BFF3EF0B3FF0A891BFF04310A5C0000000000000000000000002A17
          0238C06B0AFFFEFEFEFFFFFFFFFFBC6709FFD4D4D4FFFAFAFAFFFAFAFAFFFFFF
          FFFF0A891BFF0A891BFF04310A5C000000000000000000000000000000000000
          000052433261C06B0AFFFFFFFFFFBC6709FFD4D4D4FFFBFBFBFFFBFBFBFFFFFF
          FFFFAB5707FF1515153B00000000000000000000000000000000000000000000
          00002121212445352354C06B0AFFBC6709FFD4D4D4FFFCFCFCFFFCFCFCFFEBD5
          BFFFA05309ED1313133500000000000000000000000000000000000000000000
          000014141416141414163B2A1649BE701DFFBB6D1CFFBA6B1CFFB96B1CFF914F
          0BD538240F620505050F00000000000000000000000000000000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000090000001C0000001F0000001F0000001F0000001F0000
          001F0000001F0000001F0000001F0000001C0000000900000000000000000000
          000028120148803803EA8B3C03FF893B02FF883A02FF863902FF853702FF8436
          01FF823602FF813401FF742E01EA240E005E0000001C00000000000000000000
          0000843D04E4E0CAB8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFDCC6B8FF742F01E70000001F00000000000000000000
          0000843D04E4E0CAB8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFDCC6B8FF742F01E70000001F00000000000000000000
          0000994805FFFFFFFFFF3388F3FF2C81EBFFFFFFFFFFD76519FFD05E12FFFFFF
          FFFF009F11FF009F11FFFFFFFFFF863802FF0000001F00000000000000000000
          00009F4C05FFFFFFFFFF378CF6FF3185F0FFFFFFFFFFDC6A1EFFD46216FFFFFF
          FFFF009F11FF009F11FFFFFFFFFF8A3B03FF0000001F00000000000000000000
          0000A45107FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF8F4003FF0000001F00000000000000000000
          0000A95507FFFFFFFFFF3A8FFAFF388DF7FFFFFFFFFFE57326FFDE6C1FFFFFFF
          FFFF04A315FF00A011FFFFFFFFFF944404FF0000001F00000000000000000000
          0000AE5A08FFFFFFFFFF3A8FFAFF3A8FFAFFFFFFFFFFEA782BFFE27024FFFFFF
          FFFF07A618FF02A213FFFFFFFFFF9A4805FF0000001F00000000000000000000
          0000B15C08FFEBD5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFE7D1BFFF9F4D06FF0000001F00000000000000000000
          0000B45F09FFB45F09FFB35D09FFB15D09FFB05B08FFAF5908FFAD5807FFAB58
          07FFAA5607FFA85407FFA65306FFA55107FF0000001F00000000000000000000
          0000B66009FFD19C66FFD19C66FFD09B66FFCF9A65FFCF9965FFCE9965FFCE98
          65FFCC9764FFCC9765FFCB9664FFA95507FF0000001C00000000000000000000
          0000B66009FFD19C66FFD19C66FFD09B66FFCF9A65FFCF9965FFCE9965FFCE98
          65FFCC9764FFCC9765FFCB9664FFA95507FF0000001C00000000000000000000
          0000A55708E7B66009FFC1782FFFC1782EFFC1782FFFC1782EFFC0772FFFBE76
          2DFFBE752EFFBD752EFFAF5A08FF9D5106E90000000800000000000000000000
          00002D18023F8F4C07C9B66009FFB66009FFB66009FFB66009FFB66009FFB660
          09FFB55F08FFB45E09FF8D4A07C92C17023F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000003600000013CE03
          64FFCE0364FF0000003600000024000000130000003600000000000000000000
          000000000000000000000000000000000000CE0364FF4A01247F8B0243BDCE03
          64FFCE0364FF8B0243BD4A01247FCE0364FF0000003600000036000000000000
          0000000000000000000000000000CE0364FFCE0364FFCE0364FFCE0364FFCE03
          64FFCE0364FFCE0364FFCE0364FFCE0364FFCE0364FF00000013000000000000
          00000000000000000000000000004A01245CCE0364FFCE0364FFCE0364FFCE03
          64FFCE0364FFCE0364FFCE0364FFCE0364FF4A01247F00000024000000000000
          00000000000000000000000000004A01245CCE0364FFCE0364FFCE0364FFCE03
          64FFCE0364FFCE0364FFCE0364FFCE0364FF4A01247F00000024000000000000
          00000000000000000000000000008B0243BDCE0364FFCE0364FFAC0353DD4D01
          256C4D01255FAB0253D4CE0364FFCE0364FF8B0243BD00000036000000000000
          00000000000000000000CE0364FFCE0364FFCE0364FFCE0364FF4D0125810000
          0014000000004D01255FCE0364FFCE0364FFCE0364FFCE0364FF000000000000
          000C0000002500000029CE0364FFF89BC6FFF89BC6FFD51C74FF55213A950000
          004B0000001F55213A6CD51C74FFF89BC6FFF89BC6FFCE0364FF2B140248873E
          06EA924305FF8F4104FF8D3E04FFB71544FFF288BAFFE0458FFFC73470FC6625
          37B3551D3793B72F70DDE0458FFFF288BAFF8B0243BD000000138E4708E4DCC0
          A8FFFFFFFFFFFFFFFFFFFFFFFFFFEDA4C7FFED73ACFFEA68A5FFDD3B88FFD316
          70FFD31570FFDD3B88FFEA68A6FFCE0364FF56293E7F00000036A7550BFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFCE0364FFE65D9EFFCE0364FFE65D9EFFE65D
          9EFFE65D9EFFE75D9EFFCE0364FFE75D9EFFCE0364FF00000000A7550BFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE0364FFEDA4C7FFDE5697FFE047
          90FFE04790FF8B0243BD4A01245CCE0364FF0000000000000000AD5B0EFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE03
          64FFCE0364FF0000000000000000000000000000000000000000AD5B0EFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE03
          64FFCE0364FF0000000000000000000000000000000000000000B3610FFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9949
          07FF000000290000000000000000000000000000000000000000B86510FFB664
          10FFB46210FFB2610FFFB05E0EFFAB5A0DFFA9580CFFA6560CFFA4530BFFA151
          0AFF000000250000000000000000000000000000000000000000A85D0FE7B967
          11FFB96611FFB76511FFB66310FFB2600FFFB05E0EFFAD5C0DFFAA5A0DFF974F
          0BEA0000000A00000000000000000000000000000000000000002E19043F9251
          0DC9B96711FFB96711FFB96711FFB66510FFB56410FFB3620FFF8C4B0CC92B17
          033F000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          00000000000C0000002100000021000000210000002100000021000000210000
          002100000021000000210000001E000000100000000000000000000000003819
          005EAB5F15FFB26623FFB5743DFFB98150FFBD8C5FFFBE8D61FFBD8C60FFBD8B
          5CFFB87D45FFAD6F2DF65228008D00000019000000000000000000000000A747
          00FDC66200FFD0732AFFD89462FFE5C0A5FFF4E3DAFFFDFCFBFFFEFEFEFFFBEA
          D6FFEAB986FFD78327FF964900CC00000020000000000000000000000000AD49
          00FFC66200FFD1742AFFD99461FFE5BDA6FFF4E4DCFFFEFDFCFFF0F0F0FFE2D2
          C0FFC99F73FFBA7220FFA95300F800000029000000000000000000000000AD49
          00FFC66200FFD1742AFFD99461FFE5BDA6FFF4E4DCFFFEFDFCFFF0F0F0FFE2D2
          C0FFC99F73FFBA7220FFA95300F800000029000000000000000000000000AC51
          00EBD47623FFDA894EFFE9BD9EFFF1D9CAFFF9F1EBFF96C29BFF469A51FF1584
          21FF14811BFF3E7D1DFF5A5A06EC000000370000001500000000000000003819
          005EAE5807FFC16F31FFD4AC92FFDBC7B7FF6BA56CFF00992CFF10C067FF1FE0
          95FF1FE095FF14C068FF03992EFF003E08A00000002A0000000F00000000A747
          00FDC66200FFD0732AFFE1AC86FF96B07CFF00992CFF1BD888FF25EEA9FF25EE
          A9FF31EEAEFF42F0B4FF42DA96FF0F9A32FF002D06760000001B00000000AD49
          00FFC66200FFD1742AFFE2AC85FF4D9647FF10C067FF25EEA9FF14C872FF0099
          2DFF04992EFF37CA7FFF73F3C7FF4CC47EFF00530AB90000002600000000AC51
          00EBD47623FFDA894EFFE9BD9EFF188521FF1FE095FF2BEEACFF01992EFFFFF7
          EBFFF3CB9EFF0A891BFF068518FF068518FF00740EEA00000000000000003819
          005EAE5807FFC16F31FFD4AC92FF168320FF26E097FF3EF0B3FF07992FFFE3DA
          D0FF0A891BFF0A891BFF4522009F0000001C000000000000000000000000A747
          00FDC66200FFD0732AFFE1AC86FF4D9747FF21C16DFF56F1BDFF43CC84FF149A
          33FF1A9A36FFB9F9E4FF0A891BFF00000044000000000000000000000000AD49
          00FFC66200FFD1742AFFE2AC85FF96AF7CFF0B9A30FF59DCA0FF8BF5D1FFB9F9
          E4FFB9F9E4FFB9F9E4FFB9F9E4FF0A891BFF000000290000000000000000AD49
          00FFC66200FFD1742AFFE2AC85FF96AF7CFF0B9A30FF59DCA0FF8BF5D1FFB9F9
          E4FFB9F9E4FFB9F9E4FFB9F9E4FF0A891BFF000000290000000000000000AC51
          00EBD47623FFDA894EFFE9BD9EFFF0D9C9FF7DB67DFF179B36FF5EC686FFA4EA
          CAFFB9F9E4FFB9F9E4FFB9F9E4FFB9F9E4FF0A891BFF00000000000000003819
          005E582D0581844D23AFC59576F4CAAA92F3DAC8B9FE8FB07FFF499648FF1683
          1FFF137F18FEB9F9E4FFB9F9E4FF0A891BFF04310A5C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000A891BFFB9F9E4FF0A891BFF04310A5C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000A891BFF0A891BFF04310A5C000000000000000000000000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          000C000000250000002900000029000000290000002900000029000000290000
          00250000000C00000000000000000000000000000000000000002B140248873E
          06EA924305FF8F4104FF8D3E04FF893A03FF873902FF853702FF783001EB250F
          00650000002500000000000000000000000000000000000000008E4708E4DCC0
          A8FFFFFFFFFFBCBCBCFFFFFFFFFFFFFFFFFFBCBCBCFFFFFFFFFFD5B9A6FF7932
          02E8000000290000000000000000000000000000000000000000A7550BFFFFFF
          FFFFFFFFFFFFBCBCBCFFFFFFFFFFFFFFFFFFBCBCBCFFFFFFFFFFFFFFFFFF8B3D
          04FF000000290000000000000000000000000000000000000000A7550BFFFFFF
          FFFFFFFFFFFFBCBCBCFFFFFFFFFFFFFFFFFFBCBCBCFFFFFFFFFFFFFFFFFF8B3D
          04FF000000290000000000000000000000000000000000000000A7550BFFBCBC
          BCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFF8B3D
          04FF000000290000000000000000000000000000000000000000AD5B0EFFFFFF
          FFFFFFFFFFFFBCBCBCFFFFFFFFFFFFFFFFFFBCBCBCFFFFFFFFFFF3F3F3FF853D
          05FF000000420000001E000000160000000C0000000000000000B3610FFFFFFF
          FFFFFFFFFFFFBCBCBCFFFFFFFFFFFFFFFFFFBBBCBCFF98C5E8FF499CDDFF0D75
          C8FF006FC7ED005394B6002C5071000101220000001100000000B86510FFB664
          10FFB46210FFB2610FFFB05E0EFFAA5A0EFF506874FF409CE6FF99CAF1FFE0EF
          FBFFE0EFFBFF99CAF1FF409CE6FF003E6F90000101220000000CA85D0FE7B967
          11FFB96611FFB76511FFB66310FF726A59FF409CE6FFCCE5F8FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCCE5F8FF409CE6FF002C5071000000162E19043F9251
          0DC9B96711FFB96711FFB96711FF3C7499FF99CAF1FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF99CAF1FF005394B60000001E000000000000
          0000000000000000000000000000006FC7E6E0EFFBFFFFFFFFFFFFFFFFFF0055
          A2FF0055A2FF0055A2FFFFFFFFFFE0EFFBFF006FC7E90000001E000000000000
          0000000000000000000000000000006FC7E6E0EFFBFFFFFFFFFFFFFFFFFF0055
          A2FFFFFFFFFFFFFFFFFFFFFFFFFFE0EFFBFF006FC7E900000016000000000000
          0000000000000000000000000000006FC7E6E0EFFBFFFFFFFFFFFFFFFFFF0055
          A2FFFFFFFFFFFFFFFFFFFFFFFFFFE0EFFBFF006FC7E900000016000000000000
          0000000000000000000000000000005294AB99CAF1FFFFFFFFFFFFFFFFFF0055
          A2FFFFFFFFFFFFFFFFFFFFFFFFFF99CAF1FF005394B60000000C000000000000
          0000000000000000000000000000002C505C409CE6FFCCE5F8FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCCE5F8FF409CE6FF002C506700000000000000000000
          000000000000000000000000000000000101003E6F80409CE6FF99CAF1FFE0EF
          FBFFE0EFFBFF99CAF1FF409CE6FF003E6F860000010100000000000000000000
          00000000000000000000000000000000000000000101002C505C005294AB006F
          C7E6006FC7E6005294AB002C505C000001010000000000000000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          000C000000250000002900000029000000290000002900000029000000290000
          00250000000C00000000000000000000000000000000000000002B140248873E
          06EA924305FF8F4104FF8D3E04FF893A03FF873902FF853702FF783001EB250F
          00650000002500000000000000000000000000000000000000008E4708E4DCC0
          A8FFFFFFFFFFBCBCBCFFFFFFFFFFFFFFFFFFBCBCBCFFFFFFFFFFD5B9A6FF7932
          02E8000000290000000000000000000000000000000000000000A7550BFFFFFF
          FFFFFFFFFFFFBCBCBCFFFFFFFFFFFFFFFFFFBCBCBCFFFFFFFFFFFFFFFFFF8B3D
          04FF000000290000000000000000000000000000000000000000A7550BFFFFFF
          FFFFFFFFFFFFBCBCBCFFFFFFFFFFFFFFFFFFBCBCBCFFFFFFFFFFFFFFFFFF8B3D
          04FF000000290000000000000000000000000000000000000000A7550BFFBCBC
          BCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFF843A
          04FF000000430000002D0000002D0000001F0000000D00000000AD5B0EFFFFFF
          FFFFFFFFFFFFBCBCBCFFFFFFFFFFCCCCCCFF969696FFCCCCCCFF99B0CAFF2F4C
          79FF0050ADEA0050AEE6003777AD001732660000002F0000000EB3610FFFFFFF
          FFFFFFFFFFFFBCBCBCFF0085F0FF0085F0FF0085F0FF007BE5FF1485D5FF6BB2
          E6FFD4EAFDFFD4EAFDFF6BB2E6FF006CBBEE001C366C00000026B86510FFB664
          10FFB46210FFB2610FFF0085F0FFFFFFFFFF6DAAF2FF268ED9FF6BB2E6FFDAEE
          F9FF0055A2FFDAEEF9FFFFFFFFFF6BB2E6FF005192CC00000031A85D0FE7B967
          11FFB96611FFB76511FF0085F0FFFFFFFFFF6DAAF2FF006ECDFFD4EAFDFF0055
          A2FFDAEEF9FF0055A2FFDAEEF9FFD4EAFDFF0060C0F7000000322E19043F9251
          0DC9B96711FFB96711FF0085F0FFFFFFFFFF6DAAF2FF006ECDFFD4EAFDFFFFFF
          FFFFFFFFFFFFDAEEF9FF0055A2FFD4EAFDFF0066C6FA0000002C000000000000
          000000000000000000000085F0FFFFFFFFFF6DAAF2FF3291D9FF6BB2E6FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF6BB2E6FF0470B8E20000000D000000000000
          000000000000000000000085F0FFFFFFFFFF6DAAF2FF73AEE3FF218AD7FF6BB2
          E6FFD4EAFDFFD4EAFDFF6BB2E6FF0074D4FF0017326600000000000000000000
          000000000000000000000085F0FFFFFFFFFF6DAAF2FF73AEE3FF218AD7FF6BB2
          E6FFD4EAFDFFD4EAFDFF6BB2E6FF0074D4FF0017326600000000000000000000
          000000000000000000000085F0FFFFFFFFFFA8DBFFFF62A7E9FF86BEEAFF3C9A
          DEFF006ECDFF006ECDFF3197DFFF007BE5FF0000003300000000000000000000
          00000000000000000000000000000085F0FFFFFFFFFFA8DBFFFF6DAAF2FF6DAA
          F2FF6DAAF2FF6DAAF2FF6DAAF2FF0085F0FF0000003300000000000000000000
          00000000000000000000000000002E3D48580085F0FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF0085F0FF0000003300000000000000000000
          000000000000000000000000000004050506476173840085F0FF0085F0FF0085
          F0FF0085F0FF0085F0FF0085F0FF0085F0FF0000000000000000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000400080101
          0103000000000000000000000000000000000000000000000000050505111010
          10351111113B1111113B1111113B1010103B0F0F0F3B0F0F0F3B0F0F0F3B0D0D
          0D35040404110000000000000000000000000000000000000000361F0D6E893E
          06ED934104FF914003FF8F3F03FF833501FF1D700BFF6A481AFF733107EE2E18
          0B720D0D0D3500000000000000000000000000000000000000008B4106EAE2CA
          B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C881AFF9CBCA0FFD1BDB0FF722E
          03EA0F0F0F3B090D0C32000000000000000000000000000000009C4904FFFFFF
          FFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF008310FF499A53FFDFDFDFFF8233
          02FF1010103B008400FF23232357000000000000000000000000A04C05FFFFFF
          FFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF20922FFF0C952DFF60A76AFF7644
          14FF12121240008400FF008400FF232423580000000000000000A24E05FFFFFF
          FFFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FF68B473FF14A243FF1BAD57FF1B8D
          31FF106521CB008400FF38D699FF008400FF2323235700000000B66208FFFFFF
          FFFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFD5E5D7FF219534FF22B767FF2AC2
          7AFF31CD8BFF37D597FF3DDCA5FF40E1AEFF008400FF23232357B96509FFFFFF
          FFFFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFC4DFC9FF2F9E43FF13A4
          47FF36D499FF3CDBA3FF40E1AEFF40E1AEFF008400FF23232357C06B0AFFD4D4
          D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFF7F7F7FFF7F7F7FFF0F8F2FF5F67
          11FF0B6720C5008400FF40E1AEFF008400FF2228226002020204C26D0BFFC26D
          0BFFC26D0BFFC88033FFC38846FFD4D4D4FFF8F8F8FFF8F8F8FFFFFFFFFFA551
          06FF1414143B008400FF008400FF212921610202020500000000C06B0AFFFFFF
          FFFFFFFFFFFFFFFFFFFFC0792AFFD4D4D4FFFAFAFAFFFAFAFAFFFFFFFFFFA854
          07FF1515153B008400FF0000000000000000000000000000000000000000C06B
          0AFFFEFEFEFFFFFFFFFFBC6709FFD4D4D4FFFBFBFBFFFBFBFBFFFFFFFFFFAB57
          07FF131313350000000000000000000000000000000000000000000000000000
          0000C06B0AFFFFFFFFFFBC6709FFD4D4D4FFFCFCFCFFFCFCFCFFEBD5BFFF9F52
          08EB0505050F0000000000000000000000000000000000000000000000000000
          000014141416C06B0AFFBC6709FFBB6D1CFFBA6B1CFFB96B1CFF8D4A06C92C17
          023F000000000000000000000000000000000000000000000000000000000000
          00000909090A080808090909090A080808090808080908080809000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          B6040000424DB604000000000000360000002800000010000000120000000100
          2000000000008004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000303030FF303030FF3030
          30FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000303030FF303030FF00A0ABFF00A0ABFF00A0
          ABFF303030FF0000000000000000000000000000000000000000000000000000
          000000000000303030FF303030FF00A0ABFF00A0ABFF00F2FFFF00F2FFFF00F2
          FFFF00A0ABFF303030FF00000000000000000000000000000000000000003030
          30FF303030FF00A0ABFF00A0ABFF00F2FFFF00F2FFFF633600FF633600FF00A0
          ABFF00F2FFFF00A0ABFF303030FF000000000000000000000000633600FF00A0
          ABFF00A0ABFF00F2FFFF00F2FFFF633600FF7F5B00FFD9A77DFFD9A77DFF6336
          00FF00A0ABFF00F2FFFF00A0ABFF303030FF0000000000000000633600FF00F2
          FFFF00F2FFFF633600FF7F5B00FFBC7200FFBC7200FFBC7200FFBC7200FFD9A7
          7DFF633600FF00A0ABFF00F2FFFF00A0ABFF303030FF00000000633600FF6336
          00FF633600FFBC7200FFBC7200FFBC7200FF00F2FFFFBC7200FFBC7200FFBC72
          00FFD9A77DFF633600FF00A0ABFF00F2FFFF00A0ABFF303030FF633600FF7F5B
          00FFA37600FFBC7200FFBC7200FFBC7200FF68F5FFFFBC7200FFBC7200FFBC72
          00FFBC7200FFD9A77DFF633600FF00A0ABFF303030FF00000000000000006336
          00FFFF9F2AFFD9A77DFFBC7200FFBC7200FFBC7200FFBC7200FF00F2FFFF00F2
          FFFFBC7200FFBC7200FFD9A77DFF633600FF303030FF00000000000000000000
          0000633600FFFF9F2AFFD9A77DFFBC7200FFBC7200FFBC7200FFBC7200FF68F5
          FFFF00F2FFFF00F2FFFFBC7200FFD9A77DFF303030FF00000000000000000000
          000000000000633600FFFFFF7FFFD9A77DFFBC7200FF68F5FFFFBC7200FFBC72
          00FF00F2FFFF00F2FFFFBC7200FFBC7200FFD9A77DFF303030FF000000000000
          00000000000000000000633600FFFFFF7FFFD9A77DFFBC7200FF68F5FFFF00F2
          FFFF00F2FFFFBC7200FFD9A77DFFFF9F2AFF7F5B00FF633600FF000000000000
          0000000000000000000000000000633600FFFFFF7FFFD9A77DFFBC7200FFBC72
          00FFD9A77DFFFF9F2AFF7F5B00FF633600FF0000000000000000000000000000
          000000000000000000000000000000000000633600FFFFFF7FFFFFFF7FFFFFFF
          7FFF7F5B00FF633600FF00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000633600FF633600FF6336
          00FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 376
    Top = 320
    object MarcarTodos1: TMenuItem
      Caption = 'Marcar Todos'
      OnClick = MarcarTodos1Click
    end
    object DesmarcarTodos1: TMenuItem
      Caption = 'Desmarcar Todos'
      OnClick = DesmarcarTodos1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
  end
  object dsMotivoChamado: TDataSource
    DataSet = QryMotivoChamado
    Left = 231
    Top = 218
  end
  object QryMotivoChamado: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = QryCidadesBeforeOpen
    SQL.Strings = (
      'select * from ofc_motivo_chamado mc'
      'where mc.cnpj = :cnpj'
      'and coalesce(mc.ativo,'#39'N'#39') = '#39'S'#39
      'order by mc.nome')
    Left = 232
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object QryMotivoChamadoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_MOTIVO_CHAMADO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryMotivoChamadoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_MOTIVO_CHAMADO"."CODIGO"'
      Required = True
    end
    object QryMotivoChamadoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_MOTIVO_CHAMADO"."NOME"'
      Size = 50
    end
    object QryMotivoChamadoATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"OFC_MOTIVO_CHAMADO"."ATIVO"'
      FixedChar = True
      Size = 1
    end
  end
  object QryDefeito: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = QryCidadesBeforeOpen
    SQL.Strings = (
      'select CNPJ, CODIGO, NOME, ATIVO'
      'from OFC_DEFEITO'
      'Where CNPJ = :CNPJ '
      'and coalesce(ATIVO,'#39'N'#39') = '#39'S'#39
      'Order by NOME')
    Left = 264
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object QryDefeitoCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"OFC_DEFEITO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryDefeitoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_DEFEITO"."CODIGO"'
      Required = True
    end
    object QryDefeitoNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"OFC_DEFEITO"."NOME"'
      Required = True
      Size = 50
    end
    object QryDefeitoATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"OFC_DEFEITO"."ATIVO"'
      FixedChar = True
      Size = 1
    end
  end
  object dsDefeitoReclamado: TDataSource
    DataSet = QryDefeito
    Left = 263
    Top = 218
  end
  object PCD_GERA_OS_PREVENTIVA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'PCD_GERA_OS_PREVENTIVA'
    Left = 536
    Top = 288
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EQUIPAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TECNICO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DEFEITO_RECLAMADO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MOTIVO_CHAMADO'
        ParamType = ptInput
      end>
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 1048
    Top = 24
  end
end
