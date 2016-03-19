inherited frmCadHelp: TfrmCadHelp
  Left = 427
  Top = 134
  Caption = 'Help'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
        inherited GridDBBandedTableView2: TcxGridDBBandedTableView
          object GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CNPJ'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CODIGO'
            Width = 69
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2FORMULARIO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FORMULARIO'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CONFIG: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONFIG'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
        end
      end
    end
    inherited tbsEdita: TcxTabSheet
      inherited Panel2: TPanel
        inherited edtNome: TcxDBTextEdit
          DataBinding.DataField = 'FORMULARIO'
        end
        inherited cxLabel2: TcxLabel
          Caption = 'Formul'#225'rio'
        end
        object DBRichEdit1: TDBRichEdit
          Left = 6
          Top = 80
          Width = 564
          Height = 241
          BevelInner = bvLowered
          DataField = 'CONFIG'
          DataSource = dsRegistro
          TabOrder = 4
        end
        object cxLabel3: TcxLabel
          Left = 5
          Top = 63
          Caption = 'Config'
          Transparent = True
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    DeleteSQL.Strings = (
      'delete from sis_help'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into sis_help'
      '  (CNPJ, CODIGO, CONFIG, FORMULARIO)'
      'values'
      '  (:CNPJ, :CODIGO, :CONFIG, :FORMULARIO)')
    RefreshSQL.Strings = (
      'Select * '
      'from sis_help '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from sis_help h'
      'where h.cnpj = :cnpj and h.codigo = :codigo')
    ModifySQL.Strings = (
      'update sis_help'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  CONFIG = :CONFIG,'
      '  FORMULARIO = :FORMULARIO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_SIS_HELP_ID'
    GeneratorField.ApplyEvent = gamOnPost
    object dtEditCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_HELP"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"SIS_HELP"."CODIGO"'
    end
    object dtEditFORMULARIO: TIBStringField
      FieldName = 'FORMULARIO'
      Origin = '"SIS_HELP"."FORMULARIO"'
      Size = 50
    end
    object dtEditCONFIG: TMemoField
      FieldName = 'CONFIG'
      Origin = '"SIS_HELP"."CONFIG"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'select * from sis_help h'
      'where h.cnpj = :cnpj')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_HELP"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"SIS_HELP"."CODIGO"'
    end
    object dtListFORMULARIO: TIBStringField
      DisplayLabel = 'Formul'#225'rio'
      FieldName = 'FORMULARIO'
      Origin = '"SIS_HELP"."FORMULARIO"'
      Size = 50
    end
    object dtListCONFIG: TMemoField
      DisplayLabel = 'Config'
      FieldName = 'CONFIG'
      Origin = '"SIS_HELP"."CONFIG"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  inherited dxBarManager: TdxBarManager
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    DockControlHeights = (
      0
      0
      0
      26)
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
  inherited cxPropertiesStore: TcxPropertiesStore
    Components = <
      item
        Component = Grid
        Properties.Strings = (
          'Align'
          'Anchors'
          'BevelEdges'
          'BevelInner'
          'BevelKind'
          'BevelOuter'
          'BevelWidth'
          'BorderStyle'
          'BorderWidth'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'DragOpening'
          'DragOpeningWaitTime'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'Left'
          'LevelTabs'
          'LookAndFeel'
          'Name'
          'ParentFont'
          'PopupMenu'
          'RootLevelOptions'
          'RootLevelStyles'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = GridDBBandedTableView2
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
        Component = GridDBBandedTableView2CNPJ
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
        Component = GridDBBandedTableView2CODIGO
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
        Component = GridDBBandedTableView2CONFIG
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
        Component = GridDBBandedTableView2FORMULARIO
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
  end
end
