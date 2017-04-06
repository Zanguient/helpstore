unit untCadProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untCadPadraoMaster, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxContainer,
  dxSkinsdxBarPainter, dxmdaset, cxIntlBase, cxintl, cxPropertiesStore,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxBarDBNav, ImgList, ActnList,
  dxBar, cxClasses, IBQuery, IBCustomDataSet, cxLabel, cxTextEdit,
  cxDBEdit, ExtCtrls, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxPC, cxCheckBox, cxImage, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Menus, StdCtrls, cxButtons, cxCalc,
  cxCalendar, cxMemo, cxDBLabel, cxGroupBox;

type
  TfrmCadProdutos = class(TfrmCadPadraoMaster)
    edtSerie: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    img1: TcxDBImage;
    img2: TcxDBImage;
    img4: TcxDBImage;
    img3: TcxDBImage;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel12: TcxLabel;
    aTFrmCadGrupos: TcxDBLookupComboBox;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    CmbSubGrupo: TcxDBLookupComboBox;
    QryGrupo: TIBQuery;
    DsGrupo: TDataSource;
    DsSubGrupo: TDataSource;
    QrySubGrupo: TIBQuery;
    QryGrupoCNPJ: TIBStringField;
    QryGrupoCODIGO: TIntegerField;
    QryGrupoNOME: TIBStringField;
    QryGrupoBASE: TSmallintField;
    QryGrupoMINIMO: TSmallintField;
    QryGrupoMAXIMO: TSmallintField;
    QrySubGrupoCNPJ: TIBStringField;
    QrySubGrupoGRUPO: TIntegerField;
    QrySubGrupoSUBGRUPO: TIntegerField;
    QrySubGrupoNOME: TIBStringField;
    QrySubGrupoDESCONTO_MAX: TFloatField;
    QrySubGrupoDIGITA_PRC: TIBStringField;
    QrySubGrupoCOMPRAS_C: TIntegerField;
    QrySubGrupoCOMPRAS_D: TIntegerField;
    QrySubGrupoTRANSFERENCIA_C: TIntegerField;
    QrySubGrupoTRANSFERENCIA_D: TIntegerField;
    QrySubGrupoVENDAS_C: TIntegerField;
    QrySubGrupoVENDAS_D: TIntegerField;
    QrySubGrupoESTOQUE: TIntegerField;
    QrySubGrupoESTOQUE_INI: TIntegerField;
    QrySubGrupoESTOQUE_FIM: TIntegerField;
    QrySubGrupoOBS: TMemoField;
    BtnGrupos: TcxButton;
    cxLabel15: TcxLabel;
    aTfrmCadSecoesProdutos: TcxDBLookupComboBox;
    QrySecao: TIBQuery;
    DsSecao: TDataSource;
    QrySecaoCNPJ: TIBStringField;
    QrySecaoCOD_SECAO: TIntegerField;
    QrySecaoNOME: TIBStringField;
    cxLabel16: TcxLabel;
    aTfrmCadModelo: TcxDBLookupComboBox;
    QryModelo: TIBQuery;
    DsModelo: TDataSource;
    QryModeloCNPJ: TIBStringField;
    QryModeloCODIGO: TIntegerField;
    QryModeloNOME: TIBStringField;
    cxLabel17: TcxLabel;
    aTfrmCadMarcas: TcxDBLookupComboBox;
    BtnSecao: TcxButton;
    BtnModelo: TcxButton;
    BtnMarcas: TcxButton;
    QryMarca: TIBQuery;
    DsMarca: TDataSource;
    QryMarcaCNPJ: TIBStringField;
    QryMarcaCODIGO: TIntegerField;
    QryMarcaNOME: TIBStringField;
    cxLabel18: TcxLabel;
    aTfrmCadMaterial: TcxDBLookupComboBox;
    DsMaterial: TDataSource;
    QryMaterial: TIBQuery;
    QryMaterialCNPJ: TIBStringField;
    QryMaterialCODIGO: TIntegerField;
    QryMaterialNOME: TIBStringField;
    BtnMaterial: TcxButton;
    cxLabel19: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel20: TcxLabel;
    aTfrmCadUnidadesMedidas: TcxDBLookupComboBox;
    BtnUnidade: TcxButton;
    QryUnidade: TIBQuery;
    DsUnidade: TDataSource;
    QryUnidadeCNPJ: TIBStringField;
    QryUnidadeSIGLA: TIBStringField;
    QryUnidadeNOME: TIBStringField;
    QryUnidadeUNIDADES: TFloatField;
    cxLabel21: TcxLabel;
    aTfrmCadCor: TcxDBLookupComboBox;
    BtnCor: TcxButton;
    QryCor: TIBQuery;
    DsCor: TDataSource;
    QryCorCNPJ: TIBStringField;
    QryCorCODIGO: TIntegerField;
    QryCorNOME: TIBStringField;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel22: TcxLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    aTfrmCadLocalizacaoEstoque: TcxDBLookupComboBox;
    BtnLocalizacao1: TcxButton;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    bTfrmCadLocalizacaoEstoque: TcxDBLookupComboBox;
    BtnLocalizacao2: TcxButton;
    cxLabel25: TcxLabel;
    cTfrmCadLocalizacaoEstoque: TcxDBLookupComboBox;
    BtnLocalizacao3: TcxButton;
    QryLocalizacao1: TIBQuery;
    DsLocalizacao1: TDataSource;
    QryLocalizacao1CODIGO: TIntegerField;
    QryLocalizacao1CNPJ: TIBStringField;
    QryLocalizacao1DESCRICAO: TIBStringField;
    QryLocalizacao2: TIBQuery;
    IntegerField1: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    DsLocalizacao2: TDataSource;
    QryLocalizacao3: TIBQuery;
    IntegerField2: TIntegerField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    DsLocalizacao3: TDataSource;
    cxLabel28: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel29: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxLabel30: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxLabel31: TcxLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    cxLabel32: TcxLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    cxLabel35: TcxLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    cxLabel36: TcxLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    cxLabel37: TcxLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    cxLabel38: TcxLabel;
    cxDBTextEdit17: TcxDBTextEdit;
    cxLabel39: TcxLabel;
    cxDBTextEdit18: TcxDBTextEdit;
    aTfrmCadFornecedores: TcxDBLookupComboBox;
    cxLabel40: TcxLabel;
    BtnFornecedor: TcxButton;
    QryFornecedor: TIBQuery;
    DsFornecedor: TDataSource;
    QryFornecedorEMPRESA: TIBStringField;
    QryFornecedorCODIGO: TIntegerField;
    QryFornecedorPESSOA_FJ: TIntegerField;
    QryFornecedorNOME_RAZAO: TIBStringField;
    QryFornecedorFONE: TIBStringField;
    QryFornecedorFANTASIA: TIBStringField;
    QryFornecedorCPF_CGC: TIBStringField;
    QryFornecedorUF: TIBStringField;
    cxLabel41: TcxLabel;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    QryUltimoFornecedor: TIBQuery;
    DsUltimoFornecedor: TDataSource;
    QryUltimoFornecedorEMPRESA: TIBStringField;
    QryUltimoFornecedorCODIGO: TIntegerField;
    QryUltimoFornecedorPESSOA_FJ: TIntegerField;
    QryUltimoFornecedorNOME_RAZAO: TIBStringField;
    QryUltimoFornecedorFONE: TIBStringField;
    QryUltimoFornecedorFANTASIA: TIBStringField;
    QryUltimoFornecedorCPF_CGC: TIBStringField;
    QryUltimoFornecedorUF: TIBStringField;
    cxLabel42: TcxLabel;
    aTfrmCadTecnicos: TcxDBLookupComboBox;
    BtnTecnico: TcxButton;
    QryTecnico: TIBQuery;
    QryTecnicoCODIGO: TIntegerField;
    QryTecnicoNOME: TIBStringField;
    QryTecnicoEMAIL: TIBStringField;
    QryTecnicoASSINATURA: TMemoField;
    cxLabel43: TcxLabel;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBTextEdit20: TcxDBTextEdit;
    cxLabel44: TcxLabel;
    cxLabel45: TcxLabel;
    cxDBTextEdit21: TcxDBTextEdit;
    cxLabel46: TcxLabel;
    cxDBTextEdit22: TcxDBTextEdit;
    cxLabel47: TcxLabel;
    cxDBTextEdit23: TcxDBTextEdit;
    cxDBCheckBox7: TcxDBCheckBox;
    cxDBCheckBox8: TcxDBCheckBox;
    cxDBCheckBox9: TcxDBCheckBox;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxLabel48: TcxLabel;
    cxLabel49: TcxLabel;
    cxDBCalcEdit2: TcxDBCalcEdit;
    cxLabel50: TcxLabel;
    cxDBCalcEdit3: TcxDBCalcEdit;
    cxDBCalcEdit4: TcxDBCalcEdit;
    cxLabel51: TcxLabel;
    cxLabel52: TcxLabel;
    cxDBCalcEdit5: TcxDBCalcEdit;
    cxLabel53: TcxLabel;
    cxDBCalcEdit6: TcxDBCalcEdit;
    cxDBCalcEdit7: TcxDBCalcEdit;
    cxLabel54: TcxLabel;
    cxLabel55: TcxLabel;
    cxDBCalcEdit8: TcxDBCalcEdit;
    cxLabel56: TcxLabel;
    cxDBCalcEdit9: TcxDBCalcEdit;
    cxDBCalcEdit10: TcxDBCalcEdit;
    cxLabel57: TcxLabel;
    cxLabel58: TcxLabel;
    cxDBCalcEdit11: TcxDBCalcEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxLabel59: TcxLabel;
    cxLabel60: TcxLabel;
    cxDBCalcEdit12: TcxDBCalcEdit;
    cxLabel61: TcxLabel;
    cxDBCalcEdit13: TcxDBCalcEdit;
    cxDBComboBox1: TcxDBComboBox;
    cxLabel62: TcxLabel;
    cxDBCalcEdit14: TcxDBCalcEdit;
    cxLabel63: TcxLabel;
    cxDBComboBox2: TcxDBComboBox;
    cxLabel64: TcxLabel;
    cxDBCalcEdit15: TcxDBCalcEdit;
    cxLabel65: TcxLabel;
    aTfrmCadReducoes: TcxDBLookupComboBox;
    cxLabel66: TcxLabel;
    BtnReducoes: TcxButton;
    QryReducao: TIBQuery;
    DsReducao: TDataSource;
    QryReducaoCNPJ: TIBStringField;
    QryReducaoCODIGO: TIntegerField;
    QryReducaoPERC_ESTADUAL: TFloatField;
    QryReducaoPERC_INTERESTADUAL: TFloatField;
    QryReducaoMENSAGEM_NF: TIBStringField;
    QryReducaoMENSAGEM_NF_IE: TIBStringField;
    QryReducaoPERC_CONTRIBUINTE: TFloatField;
    cxDBComboBox3: TcxDBComboBox;
    cxLabel67: TcxLabel;
    cxLabel68: TcxLabel;
    cxDBComboBox4: TcxDBComboBox;
    cxLabel69: TcxLabel;
    cxDBComboBox5: TcxDBComboBox;
    cxLabel70: TcxLabel;
    cxDBComboBox6: TcxDBComboBox;
    cxLabel71: TcxLabel;
    cxDBComboBox7: TcxDBComboBox;
    CSON: TDataSource;
    cxLabel72: TcxLabel;
    cxDBTextEdit24: TcxDBTextEdit;
    cxDBCheckBox10: TcxDBCheckBox;
    cxDBComboBox8: TcxDBComboBox;
    cxLabel73: TcxLabel;
    cxDBMemo1: TcxDBMemo;
    cxDBCheckBox11: TcxDBCheckBox;
    dtListDet1CNPJ: TIBStringField;
    dtListDet1CODIGO: TIntegerField;
    dtListDet1ESTOQUE: TFloatField;
    dtListDet1LOTE: TIBStringField;
    dtListDet1PRODUTO: TIBStringField;
    dtListDet1PENEIRA: TIBStringField;
    dtListDet1ATESTADO: TIBStringField;
    dtListDet1GERMINACAO: TFloatField;
    dtListDet1PUREZA: TFloatField;
    dtListDet1VALIDADE: TDateTimeField;
    dtListDet1DT_ULTIMA_COMPRA: TDateTimeField;
    dtListDet1DT_ULTIMA_VENDA: TDateTimeField;
    dtListDet1PESO: TFloatField;
    TVDet1CNPJ: TcxGridDBBandedColumn;
    TVDet1CODIGO: TcxGridDBBandedColumn;
    TVDet1ESTOQUE: TcxGridDBBandedColumn;
    TVDet1LOTE: TcxGridDBBandedColumn;
    TVDet1PRODUTO: TcxGridDBBandedColumn;
    TVDet1PENEIRA: TcxGridDBBandedColumn;
    TVDet1ATESTADO: TcxGridDBBandedColumn;
    TVDet1GERMINACAO: TcxGridDBBandedColumn;
    TVDet1PUREZA: TcxGridDBBandedColumn;
    TVDet1VALIDADE: TcxGridDBBandedColumn;
    TVDet1DT_ULTIMA_COMPRA: TcxGridDBBandedColumn;
    TVDet1DT_ULTIMA_VENDA: TcxGridDBBandedColumn;
    TVDet1PESO: TcxGridDBBandedColumn;
    dtEditDet1CNPJ: TIBStringField;
    dtEditDet1CODIGO: TIntegerField;
    dtEditDet1ESTOQUE: TFloatField;
    dtEditDet1LOTE: TIBStringField;
    dtEditDet1PRODUTO: TIBStringField;
    dtEditDet1PENEIRA: TIBStringField;
    dtEditDet1ATESTADO: TIBStringField;
    dtEditDet1GERMINACAO: TFloatField;
    dtEditDet1PUREZA: TFloatField;
    dtEditDet1VALIDADE: TDateTimeField;
    dtEditDet1DT_ULTIMA_COMPRA: TDateTimeField;
    dtEditDet1DT_ULTIMA_VENDA: TDateTimeField;
    dtEditDet1PESO: TFloatField;
    cxLabel26: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxLabel27: TcxLabel;
    cxLabel74: TcxLabel;
    cxDBTextEdit25: TcxDBTextEdit;
    cxLabel75: TcxLabel;
    cxDBTextEdit26: TcxDBTextEdit;
    cxLabel76: TcxLabel;
    cxDBTextEdit27: TcxDBTextEdit;
    cxLabel77: TcxLabel;
    cxDBTextEdit28: TcxDBTextEdit;
    cxLabel78: TcxLabel;
    cxDBTextEdit29: TcxDBTextEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxLabel79: TcxLabel;
    cxLabel80: TcxLabel;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    cxLabel81: TcxLabel;
    dtListDet2CNPJ: TIBStringField;
    dtListDet2PRODUTO: TIBStringField;
    dtListDet2GRADE: TIBStringField;
    dtListDet2MATERIAL: TIntegerField;
    dtListDet2COR: TIntegerField;
    dtListDet2ULTIMA_COMPRA: TDateTimeField;
    dtListDet2QTDADE_COMPRA: TFloatField;
    dtListDet2ULTIMA_VENDA: TDateTimeField;
    dtListDet2QTDADE_VENDA: TFloatField;
    dtListDet2ESTOQUE: TFloatField;
    dtListDet2NOME_MATERIAL: TIBStringField;
    dtListDet2NOME_COR: TIBStringField;
    dtListDet2PERFIL: TIntegerField;
    dtListDet2NOME_PERFIL: TIBStringField;
    TVDet2PRODUTO: TcxGridDBBandedColumn;
    TVDet2GRADE: TcxGridDBBandedColumn;
    TVDet2MATERIAL: TcxGridDBBandedColumn;
    TVDet2COR: TcxGridDBBandedColumn;
    TVDet2ULTIMA_COMPRA: TcxGridDBBandedColumn;
    TVDet2QTDADE_COMPRA: TcxGridDBBandedColumn;
    TVDet2ULTIMA_VENDA: TcxGridDBBandedColumn;
    TVDet2QTDADE_VENDA: TcxGridDBBandedColumn;
    TVDet2ESTOQUE: TcxGridDBBandedColumn;
    TVDet2NOME_MATERIAL: TcxGridDBBandedColumn;
    TVDet2NOME_COR: TcxGridDBBandedColumn;
    TVDet2PERFIL: TcxGridDBBandedColumn;
    TVDet2NOME_PERFIL: TcxGridDBBandedColumn;
    dtEditDet2CNPJ: TIBStringField;
    dtEditDet2PRODUTO: TIBStringField;
    dtEditDet2GRADE: TIBStringField;
    dtEditDet2MATERIAL: TIntegerField;
    dtEditDet2COR: TIntegerField;
    dtEditDet2ULTIMA_COMPRA: TDateTimeField;
    dtEditDet2QTDADE_COMPRA: TFloatField;
    dtEditDet2ULTIMA_VENDA: TDateTimeField;
    dtEditDet2QTDADE_VENDA: TFloatField;
    dtEditDet2ESTOQUE: TFloatField;
    dtEditDet2NOME_MATERIAL: TIBStringField;
    dtEditDet2NOME_COR: TIBStringField;
    dtEditDet2PERFIL: TIntegerField;
    dtEditDet2NOME_PERFIL: TIBStringField;
    cxLabel82: TcxLabel;
    cxDBTextEdit30: TcxDBTextEdit;
    cxLabel83: TcxLabel;
    bTfrmCadMaterial: TcxDBLookupComboBox;
    BtnGradesMaterial: TcxButton;
    QryGradesMaterial: TIBQuery;
    DsGradesMaterial: TDataSource;
    QryGradesMaterialCNPJ: TIBStringField;
    QryGradesMaterialCODIGO: TIntegerField;
    QryGradesMaterialNOME: TIBStringField;
    aTFrmCadPerfilGrades: TcxDBLookupComboBox;
    cxLabel84: TcxLabel;
    BtnPerfilGrade: TcxButton;
    QryPerfil: TIBQuery;
    DsPerfil: TDataSource;
    QryPerfilCNPJ: TIBStringField;
    QryPerfilCODIGO: TIntegerField;
    QryPerfilNOME: TIBStringField;
    QryPerfilINICIAL: TIntegerField;
    QryPerfilFINAL: TIntegerField;
    QryPerfilINTERVALO: TIntegerField;
    cxLabel85: TcxLabel;
    cxDBTextEdit31: TcxDBTextEdit;
    cxLabel86: TcxLabel;
    cxDBTextEdit32: TcxDBTextEdit;
    cxLabel87: TcxLabel;
    cxDBTextEdit33: TcxDBTextEdit;
    cxLabel88: TcxLabel;
    cxDBTextEdit34: TcxDBTextEdit;
    dtListDet3CNPJ: TIBStringField;
    dtListDet3CTE: TIntegerField;
    dtListDet3CTIE: TIntegerField;
    dtListDet3PRODUTO: TIBStringField;
    TVDet3CTE: TcxGridDBBandedColumn;
    TVDet3CTIE: TcxGridDBBandedColumn;
    TVDet3PRODUTO: TcxGridDBBandedColumn;
    dtEditDet3CNPJ: TIBStringField;
    dtEditDet3CTE: TIntegerField;
    dtEditDet3CTIE: TIntegerField;
    dtEditDet3PRODUTO: TIBStringField;
    cxDBComboBox9: TcxDBComboBox;
    cxLabel89: TcxLabel;
    cxLabel90: TcxLabel;
    cxDBComboBox10: TcxDBComboBox;
    dtListDet6CNPJ: TIBStringField;
    dtListDet6CODIGO: TIntegerField;
    dtListDet6PRODUTO: TIBStringField;
    dtListDet6COD_FORNECEDOR: TIntegerField;
    dtListDet6FATOR: TFloatField;
    dtListDet6UNIDADE: TIBStringField;
    dtListDet6FORNECEDOR: TIBStringField;
    dtListDet6COD_PRD_FORNECEDOR: TIBStringField;
    TVDet6CODIGO: TcxGridDBBandedColumn;
    TVDet6PRODUTO: TcxGridDBBandedColumn;
    TVDet6COD_FORNECEDOR: TcxGridDBBandedColumn;
    TVDet6FATOR: TcxGridDBBandedColumn;
    TVDet6UNIDADE: TcxGridDBBandedColumn;
    TVDet6FORNECEDOR: TcxGridDBBandedColumn;
    TVDet6COD_PRD_FORNECEDOR: TcxGridDBBandedColumn;
    dtEditDet6CNPJ: TIBStringField;
    dtEditDet6CODIGO: TIntegerField;
    dtEditDet6PRODUTO: TIBStringField;
    dtEditDet6FORNECEDOR: TIntegerField;
    dtEditDet6FATOR: TFloatField;
    dtEditDet6UNIDADE: TIBStringField;
    dtEditDet6COD_PRD_FORNECEDOR: TIBStringField;
    bTfrmCadFornecedores: TcxDBLookupComboBox;
    cxLabel91: TcxLabel;
    BtnFornecedores: TcxButton;
    QryProdForn: TIBQuery;
    IBStringField5: TIBStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    IBStringField9: TIBStringField;
    IBStringField10: TIBStringField;
    DsProdForn: TDataSource;
    cxDBTextEdit35: TcxDBTextEdit;
    cxLabel92: TcxLabel;
    cxLabel93: TcxLabel;
    cxDBTextEdit36: TcxDBTextEdit;
    cxLabel94: TcxLabel;
    cxDBTextEdit37: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    cxLabel95: TcxLabel;
    cxLabel96: TcxLabel;
    cxLabel97: TcxLabel;
    QryUnidades: TIBQuery;
    DsUnidades: TDataSource;
    QryUnidadesCNPJ: TIBStringField;
    QryUnidadesSIGLA: TIBStringField;
    QryUnidadesNOME: TIBStringField;
    QryUnidadesUNIDADES: TFloatField;
    ActIncluirModelo: TAction;
    dtListCODIGO: TIBStringField;
    dtListCODIGO_FABRICANTE: TIBStringField;
    dtListCOMPLEMENTO: TIBStringField;
    dtListNOME: TIBStringField;
    dtListQTDADE_2: TFloatField;
    dtListQTDADE_1: TFloatField;
    dtListPRC_VENDA: TFloatField;
    dtListCODIGO_2: TIBStringField;
    dtListPRC_REPOS: TFloatField;
    dtListMARCA: TIBStringField;
    dtListSERIE: TIBStringField;
    dtListMDL_CODIGO: TIntegerField;
    dtListMODELO: TIBStringField;
    dtListSECAO: TIBStringField;
    dtListLOCALIZACAO_1: TIBStringField;
    dtListLOCALIZACAO_2: TIBStringField;
    dtListLOCALIZACAO_3: TIBStringField;
    dtEditCOMPLEMENTO: TIBStringField;
    dtEditVENCTO_PRC_VENDA: TDateField;
    dtEditVALIDA_MULT_QTDE_MIN: TIBStringField;
    dtEditCOD_TECNICO: TIntegerField;
    dtEditCNPJ: TIBStringField;
    dtEditCODIGO: TIBStringField;
    dtEditCOD_GETIN: TIBStringField;
    dtEditCODIGO_INTERNO: TIntegerField;
    dtEditCODIGO_2: TIBStringField;
    dtEditCNPJ_AGRUP: TIBStringField;
    dtEditCOD_AGRUP: TIBStringField;
    dtEditNOME: TIBStringField;
    dtEditMARCA: TIntegerField;
    dtEditMODELO: TIntegerField;
    dtEditGRUPO: TIntegerField;
    dtEditSUBGRUPO: TIntegerField;
    dtEditREDUCAO: TIntegerField;
    dtEditUNIDADE: TIBStringField;
    dtEditCTE: TIntegerField;
    dtEditCTIE: TIntegerField;
    dtEditQTDADE_1: TFloatField;
    dtEditQTDADE_2: TFloatField;
    dtEditQNTDE_MINIMA_VENDA: TFloatField;
    dtEditLOCALIZACAO_1: TIBStringField;
    dtEditLOCALIZACAO_2: TIBStringField;
    dtEditLOCALIZACAO_3: TIBStringField;
    dtEditNEG_QTDADE_2: TIBStringField;
    dtEditQTDADE_MIN: TIntegerField;
    dtEditQTDADE_MAX: TIntegerField;
    dtEditCOMPLEMENTO_NF: TIBStringField;
    dtEditDT_ULT_COMPRA: TDateField;
    dtEditQT_ULT_COMPRA: TIntegerField;
    dtEditDT_ULT_VENDA: TDateField;
    dtEditMARGEM_BRUTA: TFloatField;
    dtEditPRC_REPOS: TFloatField;
    dtEditPRC_CUSTO_ANT: TFloatField;
    dtEditPRC_CUSTO_MED: TFloatField;
    dtEditPRC_VENDA: TFloatField;
    dtEditPRC_VENDA_ANT: TFloatField;
    dtEditPRC_VENDA_MED: TFloatField;
    dtEditALIQUOTA_ECF: TIBStringField;
    dtEditORIGEM: TSmallintField;
    dtEditTRIB_PIS: TIBStringField;
    dtEditTRIB_COFINS: TIBStringField;
    dtEditTRIB_IPI: TIBStringField;
    dtEditPESO_LIQ: TFloatField;
    dtEditPERC_FRETE: TFloatField;
    dtEditCSOSN: TIntegerField;
    dtEditIPI: TFloatField;
    dtEditVOLUME: TFloatField;
    dtEditPROD_PESAVEL: TIBStringField;
    dtEditETIQUETA_ENT: TIBStringField;
    dtEditATIVO: TIBStringField;
    dtEditULTIMO_FORNECEDOR: TIntegerField;
    dtEditFORNECEDOR: TIntegerField;
    dtEditSUBUNIDADE: TIntegerField;
    dtEditNOME_MARCA: TIBStringField;
    dtEditCODIGO_NCM: TIBStringField;
    dtEditNOME_MODELO: TIBStringField;
    dtEditPRC_CUSTO_CODIF: TIBStringField;
    dtEditDT_ULT_ATU_PRECO: TDateField;
    dtEditVENDE_FRACIONADO: TIBStringField;
    dtEditQNTDE_EXPOSTA: TFloatField;
    dtEditPOSSUI_LOTE: TIBStringField;
    dtEditCUSTO_AQUISICAO: TFloatField;
    dtEditQNTDE_PEDIDA: TFloatField;
    dtEditPREVISAO_ENTREGA: TDateField;
    dtEditQNTDE_MAXIMA_VENDA: TFloatField;
    dtEditPIS: TIBStringField;
    dtEditCOFINS: TIBStringField;
    dtEditCOM_VENDA_VLR: TFloatField;
    dtEditCOM_VENDA_PCT: TFloatField;
    dtEditPARTICIP_LUCRO: TFloatField;
    dtEditNAO_COBR_JUR_ATE: TIntegerField;
    dtEditATUALIZA_ARQ_EXTERNO: TIBStringField;
    dtEditSERVICO: TIBStringField;
    dtEditVALIDADE: TIntegerField;
    dtEditSECAO: TIntegerField;
    dtEditCUSTO_INDEXADO: TIBBCDField;
    dtEditCOMPROMETIDO: TIBBCDField;
    dtEditEST_MIN: TIBBCDField;
    dtEditEST_MAX: TIBBCDField;
    dtEditSERIE: TIBStringField;
    dtEditDEBITA_ICMS: TIBStringField;
    dtEditUND_PRIMARIA: TIBStringField;
    dtEditFATOR_CONVERSAO: TIBBCDField;
    dtEditQNTDE_PDR_CARGA: TIBBCDField;
    dtEditSINCRONIZA_FILIAIS: TIBStringField;
    dtEditUND_CARREGAMENTO: TIBStringField;
    dtEditTRIB_ALIQ_EST: TIBBCDField;
    dtEditTRIB_ALIQ_INT: TIBBCDField;
    dtEditTRIB_MODALIDADE: TIBStringField;
    dtEditAPLICACAO: TMemoField;
    dtEditIMG_2: TBlobField;
    dtEditIMG_1: TBlobField;
    dtEditIMG_3: TBlobField;
    dtEditIMG_4: TBlobField;
    dtEditCODIGO_FABRICANTE: TIBStringField;
    dtEditCOR: TIntegerField;
    dtEditMATERIAL: TIntegerField;
    dtEditBCH_CODIGO: TIntegerField;
    dtEditCOD_LOCALIZACAO_1: TIntegerField;
    dtEditCOD_LOCALIZACAO_2: TIntegerField;
    dtEditCOD_LOCALIZACAO_3: TIntegerField;
    dtEditEST_DISPONIVEL: TIBBCDField;
    dtEditQTD_UNIT: TFloatField;
    dtEditQTD_UM: TFloatField;
    dtEditEstoque_Fisico: TFloatField;
    dtEditCOD_CEST: TIBStringField;
    TVRegistroCODIGO: TcxGridDBBandedColumn;
    TVRegistroCODIGO_FABRICANTE: TcxGridDBBandedColumn;
    TVRegistroCOMPLEMENTO: TcxGridDBBandedColumn;
    TVRegistroNOME: TcxGridDBBandedColumn;
    TVRegistroQTDADE_2: TcxGridDBBandedColumn;
    TVRegistroQTDADE_1: TcxGridDBBandedColumn;
    TVRegistroPRC_VENDA: TcxGridDBBandedColumn;
    TVRegistroCODIGO_2: TcxGridDBBandedColumn;
    TVRegistroPRC_REPOS: TcxGridDBBandedColumn;
    TVRegistroMARCA: TcxGridDBBandedColumn;
    TVRegistroSERIE: TcxGridDBBandedColumn;
    TVRegistroMDL_CODIGO: TcxGridDBBandedColumn;
    TVRegistroMODELO: TcxGridDBBandedColumn;
    TVRegistroSECAO: TcxGridDBBandedColumn;
    TVRegistroLOCALIZACAO_1: TcxGridDBBandedColumn;
    TVRegistroLOCALIZACAO_2: TcxGridDBBandedColumn;
    TVRegistroLOCALIZACAO_3: TcxGridDBBandedColumn;
    cxDBTextEdit38: TcxDBTextEdit;
    cxLabel98: TcxLabel;
    cxLabel99: TcxLabel;
    edtFiltroCodigo: TcxDBTextEdit;
    cxLabel100: TcxLabel;
    edtFiltroNome: TcxDBTextEdit;
    mtbFiltroCODIGO: TStringField;
    mtbFiltroNOME: TStringField;
    edtFiltroCodFabricante: TcxDBTextEdit;
    cxLabel101: TcxLabel;
    mtbFiltroCODIGO_FABRICANTE: TStringField;
    edtCodSecundario: TcxDBTextEdit;
    cxLabel102: TcxLabel;
    mtbFiltroCODIGO_2: TStringField;
    cxDBLabel6: TcxDBLabel;
    cxLabel103: TcxLabel;
    procedure ActCadLookupExecute(Sender: TObject);
    procedure dtEditNewRecord(DataSet: TDataSet);
    procedure BtnGruposClick(Sender: TObject);
    procedure BtnSecaoClick(Sender: TObject);
    procedure BtnModeloClick(Sender: TObject);
    procedure BtnMarcasClick(Sender: TObject);
    procedure BtnMaterialClick(Sender: TObject);
    procedure BtnUnidadeClick(Sender: TObject);
    procedure BtnCorClick(Sender: TObject);
    procedure BtnLocalizacao1Click(Sender: TObject);
    procedure BtnLocalizacao2Click(Sender: TObject);
    procedure BtnLocalizacao3Click(Sender: TObject);
    procedure BtnFornecedorClick(Sender: TObject);
    procedure BtnTecnicoClick(Sender: TObject);
    procedure dtEditCTESetText(Sender: TField; const Text: String);
    procedure dtEditTRIB_PISGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dtEditTRIB_PISSetText(Sender: TField; const Text: String);
    procedure dtEditTRIB_COFINSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dtEditTRIB_COFINSSetText(Sender: TField; const Text: String);
    procedure dtEditTRIB_IPISetText(Sender: TField; const Text: String);
    procedure dtEditTRIB_IPIGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dtEditCSOSNGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dtEditCSOSNSetText(Sender: TField; const Text: String);
    procedure BtnReducoesClick(Sender: TObject);
    procedure dtEditAfterPost(DataSet: TDataSet);
    procedure BtnGradesMaterialClick(Sender: TObject);
    procedure BtnPerfilGradeClick(Sender: TObject);
    procedure BtnFornecedoresClick(Sender: TObject);
    procedure dtEditDet1NewRecord(DataSet: TDataSet);
    procedure dtEditCalcFields(DataSet: TDataSet);
    procedure ActIncluirModeloExecute(Sender: TObject);
    procedure dtEditAfterEdit(DataSet: TDataSet);
    procedure dtEditAfterInsert(DataSet: TDataSet);
    procedure dtEditBeforeOpen(DataSet: TDataSet);
    procedure dtEditBeforePost(DataSet: TDataSet);
    procedure ActFilterExecute(Sender: TObject);
    procedure actLimpaAcessaFiltroExecute(Sender: TObject);
    procedure dtEditAfterOpen(DataSet: TDataSet);
    procedure dtEditCTEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dtEditCTIEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dtEditCTIESetText(Sender: TField; const Text: String);
  private
    { Private declarations }
    procedure Filtrar;
  public
    { Public declarations }
  end;

var
  frmCadProdutos: TfrmCadProdutos;

implementation

uses UntCadSecoesProdutos, UntCadModelo, UntCadMarcas, UntCadMaterial,
  untCadUnidadesMedidas, UntCadCor, Application_DM, UntCadGrupos,
  UntCadLocalizacaoEstoque, UntCadTecnicos, untCadFornecedores,
  UntCadReducoes, UntCadPerfilGrades, Funcoes, Cadastros_DM;

{$R *.dfm}


procedure TfrmCadProdutos.Filtrar;
var
  filtro : string;
begin
  filtro := '';  
  dtList.Close;
  
  if mtbFiltroCODIGO.AsString <> '' then
    filtro := filtro + ' and prd.codigo containing ''' + mtbFiltroCODIGO.AsString + '''';

  if mtbFiltroNOME.AsString <> '' then
    filtro := filtro + ' and prd.nome containing ''' + mtbFiltroNOME.AsString + '''';

  if mtbFiltroCODIGO_FABRICANTE.AsString <> '' then
    filtro := filtro + ' and prd.codigo_fabricante containing ''' + mtbFiltroCODIGO_FABRICANTE.AsString + '''';

  if mtbFiltroCODIGO_2.AsString <> '' then
    filtro := filtro + ' and prd.codigo_2 containing ''' + mtbFiltroCODIGO_2.AsString + '''';

  dtList.sql.text := sqloriginal + filtro;
end;

procedure TfrmCadProdutos.ActCadLookupExecute(Sender: TObject);
begin
  inherited;

  if aTFrmCadPerfilGrades.Focused then
    BtnPerfilGrade.OnClick(self);

  if aTfrmCadReducoes.Focused then
    BtnReducoes.OnClick(self);

  if bTfrmCadFornecedores.Focused then
    BtnFornecedores.OnClick(self);

  if bTfrmCadMaterial.Focused then
    BtnGradesMaterial.OnClick(self);

  if aTFrmCadGrupos.Focused then
    BtnGrupos.OnClick(self);

  if aTfrmCadSecoesProdutos.Focused then
    BtnSecao.OnClick(self);

  if aTfrmCadModelo.Focused then
    BtnModelo.OnClick(self);

  if aTfrmCadMarcas.Focused then
    BtnMarcas.OnClick(self);

  if aTfrmCadMaterial.Focused then
    BtnMaterial.OnClick(self);

  if aTfrmCadUnidadesMedidas.Focused then
    BtnUnidade.OnClick(self);

  if aTfrmCadCor.Focused then
    BtnCor.OnClick(self);

  if aTfrmCadLocalizacaoEstoque.Focused then
    BtnLocalizacao1.OnClick(self);

  if bTfrmCadLocalizacaoEstoque.Focused then
    BtnLocalizacao2.OnClick(self);

  if cTfrmCadLocalizacaoEstoque.Focused then
    BtnLocalizacao3.OnClick(self);

  if aTfrmCadFornecedores.Focused then
    BtnFornecedor.OnClick(self);

  if aTfrmCadTecnicos.Focused then        
    BtnTecnico.OnClick(self);
end;

procedure TfrmCadProdutos.dtEditNewRecord(DataSet: TDataSet);
var
  I: Integer;
begin
  inherited;

  dtEditCODIGO_INTERNO.Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 0) + 1;
  dtEditATUALIZA_ARQ_EXTERNO.Value := 'N' ;
  dtEditVALIDA_MULT_QTDE_MIN.Value := 'N' ;
  dtEditDEBITA_ICMS.Value      := 'N' ;
  dtEditATIVO.Value            := 'S' ;
  dtEditCOMPLEMENTO_NF.Value   := 'N' ;
  dtEditVENDE_FRACIONADO.Value := 'N' ;
  dtEditPOSSUI_LOTE.Value      := 'N' ;
  dtEditCTE.Value              := 1   ;
  dtEditCTIe.Value             := 1   ;
  dtEditNEG_QTDADE_2.Value     := 'N' ;
  dtEditEtiqueta_ent.Value     := 'N' ;
  dtEditComplemento_NF.Value   := 'N' ;
  dtEditPROD_PESAVEL.Value     := 'N' ;
  dtEditSERVICO.Value          := 'N' ;
  dtEditCUSTO_INDEXADO.Value   := 0   ;
  dtEditSINCRONIZA_FILIAIS.Value          := 'S' ;
  For I := 0 to dtEdit.FieldCount - 1 do
  begin
      if dtEdit.Fields.FIELDS[i].DataType = FtFloat
      then Begin
           dtEdit.Fields[i].Value := 0;
      end;
  end;
  dtEditMARGEM_BRUTA.value := DmApp.MARGEM_BRUTA;
  end;

procedure TfrmCadProdutos.BtnGruposClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadGrupos,dtEdit,'GRUPO',QryGrupo);
end;

procedure TfrmCadProdutos.BtnSecaoClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadSecoesProdutos,dtEdit,'SECAO',QrySecao);
end;

procedure TfrmCadProdutos.BtnModeloClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadModelo,dtEdit,'MODELO',QryModelo);
end;

procedure TfrmCadProdutos.BtnMarcasClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadMarcas,dtEdit,'MARCA',QryMarca);
end;

procedure TfrmCadProdutos.BtnMaterialClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadMaterial,dtEdit,'MATERIAL',QryMaterial);
end;

procedure TfrmCadProdutos.BtnUnidadeClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadUnidadesMedidas,dtEdit,'UNIDADE',QryUnidade);
end;

procedure TfrmCadProdutos.BtnCorClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadCor,dtEdit,'COR',QryCor);
end;

procedure TfrmCadProdutos.BtnLocalizacao1Click(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadLocalizacaoEstoque,dtEdit,'COD_LOCALIZACAO_1',QryLocalizacao1);
end;

procedure TfrmCadProdutos.BtnLocalizacao2Click(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadLocalizacaoEstoque,dtEdit,'COD_LOCALIZACAO_2',QryLocalizacao2);
end;

procedure TfrmCadProdutos.BtnLocalizacao3Click(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadLocalizacaoEstoque,dtEdit,'COD_LOCALIZACAO_3',QryLocalizacao3);
end;

procedure TfrmCadProdutos.BtnFornecedorClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadFornecedores,dtEdit,'FORNECEDOR',QryFornecedor);
end;

procedure TfrmCadProdutos.BtnTecnicoClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadTecnicos,dtEdit,'COD_TECNICO',QryTecnico);
end;

procedure TfrmCadProdutos.dtEditCTESetText(Sender: TField;
  const Text: String);
begin
  inherited;
  If Text = '1 - Tributada Integralmente' Then
     Sender.Value := 1;

  If Text = '2 - Tributada com Redução na Base de Cálculo' Then
     Sender.Value := 2;

  If Text = '3 - Isento de ICMS' Then
     Sender.Value := 3;

  If Text = '4 - ICMS não incidência' Then
     Sender.Value := 4;
     
  If Text = '5 - Diferido' Then
     Sender.Value := 5;

  If Text = '6 - Substituição Tributária' Then
     Sender.Value := 6;

  If Text = '7 - ISS' Then
     Sender.Value := 7;
end;

procedure TfrmCadProdutos.dtEditTRIB_PISGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
   If Sender.Value = '01' Then
     Text := '01 - Op. Tributavel';
   If Sender.Value = '02' Then
     Text := '02 - Op. Tributavel - Aliq. Diferenciada';
   If Sender.Value = '03' Then
     Text := '03 - Op. Tributavel - Aliq. por Unidade de Produto';
   If Sender.Value = '04' Then
     Text := '04 - Op. Tributavel - Monofasica';
   If Sender.Value = '06' Then
     Text := '06 - Op. Tributavel - Aliq. Zero';
   If Sender.Value = '07' Then
     Text := '07 - Op. Isenta';
   If Sender.Value = '08' Then
     Text := '08 - Op. Sem Incidencia';
   If Sender.Value = '09' Then
     Text := '09 - Op. Suspensao';
   If Sender.Value = '99' Then
     Text := '99 - Outras Operacoes';
end;

procedure TfrmCadProdutos.dtEditTRIB_PISSetText(Sender: TField;
  const Text: String);
begin
  inherited;

  If trim(Text) = '01 - Op. Tributavel' Then
     Sender.Value := '01';
   If trim(Text) = '02 - Op. Tributavel - Aliq. Diferenciada' Then
     Sender.Value := '02' ;
   If trim(Text) = '03 - Op. Tributavel - Aliq. por Unidade de Produto' Then
     Sender.Value := '03';
   If trim(Text) = '04 - Op. Tributavel - Monofasica'  Then
     Sender.Value := '04';
   If trim(Text) = '06 - Op. Tributavel - Aliq. Zero' Then
     Sender.Value := '06';
   If trim(Text) = '07 - Op. Isenta' Then
     Sender.Value := '07';
   If trim(Text) = '08 - Op. Sem Incidencia' Then
     Sender.Value := '08' ;
   If trim(Text) = '09 - Op. Suspensao'  Then
     Sender.Value := '09';
   If trim(Text) = '99 - Outras Operacoes' Then
     Sender.Value := '99';

end;

procedure TfrmCadProdutos.dtEditTRIB_COFINSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  If Sender.Value = '01' Then
   Text := '01 - Op. Tributavel';
  If Sender.Value = '02' Then
   Text := '02 - Op. Tributavel - Aliq. Diferenciada';
  If Sender.Value = '03' Then
   Text := '03 - Op. Tributavel - Aliq. por Unidade de Produto';
  If Sender.Value = '04' Then
   Text := '04 - Op. Tributavel - Monofasica';
  If Sender.Value = '06' Then
   Text := '06 - Op. Tributavel - Alq. Zero';
  If Sender.Value = '07' Then
   Text := '07 - Op. Isenta';
  If Sender.Value = '08' Then
   Text := '08 - Op. Sem Incidencia';
  If Sender.Value = '09' Then
   Text := '09 - Op. Suspensao';
  If Sender.Value = '99' Then
   Text := '99 - Outras Operacoes';
end;

procedure TfrmCadProdutos.dtEditTRIB_COFINSSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  If trim(Text) = '01 - Op. Tributavel' Then
   Sender.Value := '01';
  If trim(Text) = '02 - Op. Tributavel - Aliq. Diferenciada' Then
   Sender.Value := '02' ;
  If trim(Text) = '03 - Op. Tributavel - Aliq. por Unidade de Produto' Then
   Sender.Value := '03';
  If trim(Text) = '04 - Op. Tributavel - Monofasica'  Then
   Sender.Value := '04';
  If trim(Text) = '06 - Op. Tributavel - Aliq. Zero' Then
   Sender.Value := '06';
  If trim(Text) = '07 - Op. Isenta' Then
   Sender.Value := '07';
  If trim(Text) = '08 - Op. Sem Incidencia' Then
   Sender.Value := '08' ;
  If trim(Text) = '09 - Op. Suspensao'  Then
   Sender.Value := '09';
  If trim(Text) = '99 - Outras Operacoes' Then
   Sender.Value := '99';
end;

procedure TfrmCadProdutos.dtEditTRIB_IPISetText(Sender: TField;
  const Text: String);
begin
  inherited;
   If trim(Text) = '00 - Entrada com recuperacao de credito' Then
     Sender.Value := '00';
   If trim(Text) = '01 - Entrada tributada com aliquota zero' Then
     Sender.Value := '01';
   If trim(Text) = '02 - Entrada isenta' Then
     Sender.Value := '02';
   If trim(Text) = '03 - Entrada nao-tributada' Then
     Sender.Value := '03';
   If trim(Text) = '04 - Entrada imune' Then
     Sender.Value := '04';
   If trim(Text) = '05 - Entrada com suspensao' Then
     Sender.Value := '05';
   If trim(Text) = '49 - Outras entradas' Then
     Sender.Value := '49';
   If trim(Text) = '50 - Saida tributada' Then
     Sender.Value := '50';
   If trim(Text) = '51 - Saida tributada com aliquota zero' Then
     Sender.Value := '51';
   If trim(Text) = '52 - Saida isenta' Then
     Sender.Value := '52';
   If trim(Text) = '53 - Saida nao-tributada' Then
     Sender.Value := '53';
   If trim(Text) = '54 - Saida imune' Then
     Sender.Value := '54';
   If trim(Text) = '55 - Saida com suspensao' Then
     Sender.Value := '55';
   If trim(Text) = '99 - Outras Saidas'Then
     Sender.Value := '99' ;
end;

procedure TfrmCadProdutos.dtEditTRIB_IPIGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
   If Sender.Value = '00' Then
     Text := '00 - Entrada com recuperacao de credito';
   If Sender.Value = '01' Then
     Text := '01 - Entrada tributada com aliquota zero';
   If Sender.Value = '02' Then
     Text := '02 - Entrada isenta';
   If Sender.Value = '03' Then
     Text := '03 - Entrada nao-tributada';
   If Sender.Value = '04' Then
     Text := '04 - Entrada imune';
   If Sender.Value = '05' Then
     Text := '05 - Entrada com suspensao';
   If Sender.Value = '49' Then
     Text := '49 - Outras entradas';
   If Sender.Value = '50' Then
     Text := '50 - Saida tributada';
   If Sender.Value = '51' Then
     Text := '51 - Saida tributada com aliquota zero';
   If Sender.Value = '52' Then
     Text := '52 - Saida isenta';
   If Sender.Value = '53' Then
     Text := '53 - Saida nao-tributada';
   If Sender.Value = '54' Then
     Text := '54 - Saida imune';
   If Sender.Value = '55' Then
     Text := '55 - Saida com suspensao';
   If Sender.Value = '99' Then
     Text := '99 - Outras Saidas';
end;

procedure TfrmCadProdutos.dtEditCSOSNGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;  
  {if (Sender.Value = 101) then
    Text:= '101 - Tributado com permissão de crédito'
  else if (Sender.Value = 102) then
    Text:= '102 - Tributado sem permissão de crédito'
  else if (Sender.Value = 103) then
    Text:= '103 - Isenção de icms por faixa de receita bruta'
  else if (Sender.Value = 201) then
    Text:= '201 - Tributado com permissão de crédito e com cobrança do ICMS por ST'
  else if (Sender.Value = 202) then
    Text:= '202 - Tributado sem permissão de crédito e com cobrança do ICMS por ST'
  else if (Sender.Value = 203) then
    Text:= '203 - Isenção do ICMS para faixa de receita bruta e com combrança de ICMS por ST'
  else if (Sender.Value = 300) then
    Text:= '300 - Imune'
  else if (Sender.Value = 400) then
    Text:= '400 - Não tributado'
  else if (Sender.Value = 900) then
    Text:= '900 - Códigos usados por ME/EPPs nas demais operações que não se enquadrem nas demais'; }
end;

procedure TfrmCadProdutos.dtEditCSOSNSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  {if Trim(Text)= '101 - Tributado com permissão de crédito' then              -
    Sender.Value := 101
  else if Trim(Text) ='102 - Tributado sem permissão de crédito' then
     Sender.Value := 102
  else if Trim(Text)= '103 - Isenção de icms por faixa de receita bruta' then
    Sender.Value := 103
  else if Trim(Text) = '201 - Tributado com permissão de crédito e com cobrança do ICMS por ST' then
    Sender.Value := 201
  else if Trim(Text) = '202 - Tributado sem permissão de crédito e com cobrança do ICMS por ST' then
    Sender.Value := 202
  else if Trim(Text) = '203 - Isenção do ICMS para faixa de receita bruta e com combrança de ICMS por ST' then
    Sender.Value := 203
  else if Trim(Text) = '300 - Imune' then
    Sender.Value := 300
  else if Trim(Text) = '400 - Não tributado' then
    Sender.Value := 400
  else if Trim(Text) = '900 - Códigos usados por ME/EPPs nas demais operações que não se enquadrem nas demais' then
    Sender.Value := 900;    }
end;

procedure TfrmCadProdutos.BtnReducoesClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadReducoes,dtEdit,'REDUCAO',QryReducao);
end;

procedure TfrmCadProdutos.dtEditAfterPost(DataSet: TDataSet);
begin
  inherited;
  if (DmApp.BCH_HABILITA_SINC_AUT = 'S') then
    dmApp.BCH_SYNC_PRODUTO(dtEditCODIGO.AsString);
end;

procedure TfrmCadProdutos.BtnGradesMaterialClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadMaterial,dtEditDet2,'MATERIAL',QryGradesMaterial);
end;

procedure TfrmCadProdutos.BtnPerfilGradeClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TFrmCadPerfilGrades,dtEditDet2,'PERFIL',QryPerfil); 
end;

procedure TfrmCadProdutos.BtnFornecedoresClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadFornecedores,dtEditDet6,'FORNECEDOR',QryProdForn);
end;

procedure TfrmCadProdutos.dtEditDet1NewRecord(DataSet: TDataSet);
begin
  inherited;
  dtEditDet1PRODUTO.value := dtEditCODIGO.value;
  dtEditDet2PRODUTO.value := dtEditCODIGO.value;
  dtEditDet3PRODUTO.value := dtEditCODIGO.value;
  dtEditDet6PRODUTO.value := dtEditCODIGO.value;
end;

procedure TfrmCadProdutos.dtEditCalcFields(DataSet: TDataSet);
begin
  inherited;
  If (dtEditUNIDADE.Value <> dtEditUNIDADE.OldValue) Or (dtEditQTD_UM.IsNull) Or(dtEditQTD_UNIT.IsNull)  Then
  Begin
       //
    if QryUnidade.Active then
    begin
      If QryUnidadeSIGLA.Value <> dtEditUNIDADE.Value Then
        QryUnidade.Locate('SIGLA', dtEditUNIDADE.Value, []);
    end;

    If dtEditSUBUNIDADE.Value > 0  then
       dtEditQTD_UM.Value   := arredonda((dtEditQTDADE_2.Value / dtEditSUBUNIDADE.Value),2)
    else
       dtEditQTD_UM.Value   := arredonda(dtEditQTDADE_2.Value,2); //aqui

     dtEditQTD_UNIT.Value := dtEditQTDADE_2.Value - (dtEditQTD_UM.Value * dtEditSUBUNIDADE.VALUE);
  end;

  dtEditEstoque_Fisico.Value := dtEditPRC_CUSTO_MED.Value * dtEditQTD_UNIT.Value ;
end;

procedure TfrmCadProdutos.ActIncluirModeloExecute(Sender: TObject);
Var
   Complemento,Possui_Lote, Debita_ICMS, Complemento_NF, Pesavel, Servico,
   Vende_Fracionado, Nome,codigo, Unidade, ECF, ETIQUETA, ESTNEG: String;
   Marca, Modelo, Reducao, secao, xcor, xmaterial, SubUnidade, GRUPO, SUBGRUPO,CTE, CTIE, ORIGEM: Integer;
   Est_Minimo, Est_Maximo: real;
begin
  inherited;

  if not (TVRegistro.focused) then
    exit;

  dtEdit.Close;
  dtEdit.Open;
  dtEdit.Edit;

  Nome        := dtEditNOME.value ;
  Unidade     := dtEditUNIDADE.value;
  CTE         := dtEditCTE.value;
  CTIE        := dtEditCTIE.value;
  ORIGEM      := dtEditORIGEM.value;
  ECF         := dtEditALIQUOTA_ECF.value;
  ETIQUETA    := dtEditETIQUETA_ENT.value;
  ESTNEG      := dtEditNEG_QTDADE_2.value;
  Marca       := dtEditMARCA.value;
  secao       := dtEditSECAO.value;
  Modelo      := dtEditModelo.value;
  Reducao     := dtEditREDUCAO.value;
  SubUnidade  := dtEditSUBUNIDADE.value;
  GRUPO       := dtEditGRUPO.value;
  SUBGRUPO    := dtEditSUBGRUPO.value;
  Complemento := dtEditCOMPLEMENTO.value;
  Possui_Lote := dtEditPOSSUI_LOTE.value;
  Debita_ICMS := dtEditDEBITA_ICMS.value;
  Complemento_NF := dtEditCOMPLEMENTO_NF.value;
  Pesavel := dtEditPROD_PESAVEL.value;
  Servico := dtEditSERVICO.value;
  xcor := dtEditCOR.value;
  xMATERIAL := dtEditMATERIAL.value;
  Vende_Fracionado := dtEditVENDE_FRACIONADO.value;
  Est_Minimo := dtEditEST_MIN.value;
  Est_Maximo := dtEditEST_MAX.value;

  ActInsert.Execute ;

  dtEditNOME.value         := Nome        ;
  dtEditUNIDADE.value      := Unidade     ;
  dtEditCTE.value          := CTE         ;
  dtEditCTIE.value         := CTIE        ;
  dtEditORIGEM.value       := ORIGEM      ;
  dtEditALIQUOTA_ECF.value := ECF         ;
  dtEditSECAO.value := secao         ;
  dtEditETIQUETA_ENT.value := ETIQUETA    ;
  dtEditNEG_QTDADE_2.value := ESTNEG      ;
  dtEditCOR.value := xcor;
  dtEditMATERIAL.value := xMATERIAL;
  dtEditMARCA.value        := Marca       ;
  if (modelo > 0) then
    dtEditMODELO.value       := Modelo    ;
  dtEditREDUCAO.value      := Reducao     ;
  dtEditSUBUNIDADE.value   := SubUnidade  ;
  dtEditGRUPO.value        := GRUPO       ;
  dtEditSUBGRUPO.value     := SUBGRUPO    ;
  dtEditCOMPLEMENTO.value := Complemento;
  dtEditPOSSUI_LOTE.value := Possui_Lote;
  dtEditDEBITA_ICMS.value := Debita_ICMS;
  dtEditCOMPLEMENTO_NF.value := Complemento_NF;
  dtEditPROD_PESAVEL.value := Pesavel;
  dtEditSERVICO.value := Servico;
  dtEditVENDE_FRACIONADO.value := Vende_Fracionado;
  dtEditEST_MIN.value := Est_Minimo;
  dtEditEST_MAX.value := Est_Maximo;
end;

procedure TfrmCadProdutos.dtEditAfterEdit(DataSet: TDataSet);
begin
  inherited;

  dmCadastros.SubgruposProd.close;
  dmCadastros.SubgruposProd.Open;
end;

procedure TfrmCadProdutos.dtEditAfterInsert(DataSet: TDataSet);
begin
  inherited;

  dtEditCNPJ.Value           := DMApp.Cnpj;
  dtEditCODIGO_INTERNO.Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 0) + 1;
end;

procedure TfrmCadProdutos.dtEditBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  If (DataSet is TIBQuery) Then
  Begin
   (DataSet as TIBQuery).ParamByName('EMPRESA').asString := DMApp.Cnpj;
   (Dataset as TIBQuery).Prepare;
  End else
    If (DataSet is TIBDataset) Then
    Begin
     (DataSet as TIBDataSet).ParamByName('EMPRESA').asString := DMApp.Cnpj;
     (Dataset as TIBDataSet).Prepare;
    End;
end;

procedure TfrmCadProdutos.dtEditBeforePost(DataSet: TDataSet);
begin
  inherited;

    If Dataset.State = dsInsert Then
     dtEditCODIGO_INTERNO.Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 1);

    dtEditCNPJ.Value := DmApp.Cnpj ;

    if (dtEditNOME.Value = '') then
      dtEditNOME.value := copy(aTFrmCadGrupos.Text,1,11)+'-'+copy(aTfrmCadSecoesProdutos.Text,1,11)+'-'+copy(CmbSubGrupo.Text,1,11)+'-'+copy(aTfrmCadModelo.Text,1,11);

    If Not dtEditCOD_AGRUP.IsNull
    then begin
         dtEditCNPJ_AGRUP.Value := DmApp.Cnpj ;
    end;

    if (dtEditCOR.asInteger = 0) then
       dtEditCOR.asVariant := Null;

    if (dtEditMATERIAL.asInteger = 0) then
       dtEditMATERIAL.asVariant := Null;
end;

procedure TfrmCadProdutos.ActFilterExecute(Sender: TObject);
begin     
  Filtrar;
  inherited;
end;

procedure TfrmCadProdutos.actLimpaAcessaFiltroExecute(Sender: TObject);
begin
  inherited;
  if (mtbFiltroCODIGO.AsString <> '') or (mtbFiltroNOME.AsString <> '')
      or (mtbFiltroCODIGO_FABRICANTE.AsString <> '') or(mtbFiltroCODIGO_2.AsString <> '') then
  begin
    mtbFiltroCODIGO.Clear;
    mtbFiltroNOME.Clear;
    mtbFiltroCODIGO_FABRICANTE.Clear;
    mtbFiltroCODIGO_2.Clear;

    dtList.Close;
    dtList.SQL.Clear;
    dtList.SQL.Text := sqlOriginal;
    dtList.Open;

    Grid.SetFocus;
  end else
    if (edtFiltroCodigo.Text <> '') or (edtFiltroNome.Text <> '')
      or (edtFiltroCodFabricante.Text <> '') or(edtCodSecundario.Text <> '') then
    begin
      edtFiltroCodigo.Text := '';
      edtFiltroNome.Text := '';
      edtFiltroCodFabricante.Text := '';
      edtCodSecundario.Text := '';
    end else
      edtFiltroCodigo.SetFocus;
end;

procedure TfrmCadProdutos.dtEditAfterOpen(DataSet: TDataSet);
begin
  inherited;

  {case dtEditCTE.Value

  If Sender.Value = 1 Then
     Text := '1 - Tributada Integralmente';

  If Sender.Value = 2 Then
     Text := '2 - Tributada com Reduçao na Base de Cálculo';

  If Sender.Value = 3 Then
     Text := '3 - Isento de ICMS';

  If Sender.Value = 4 Then
     Text := '4 - ICMS nao incidência';

  If Sender.Value = 5 Then
     Text := '5 - Diferido';

  If Sender.Value = 6 Then
     Text := '6 - Substituiçao Tributária';

  If Sender.Value = 7 Then
     Text := '7 - ISS'; }
end;

procedure TfrmCadProdutos.dtEditCTEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  If Sender.Value = 1 Then
     Text := '1 - Tributada Integralmente';

  If Sender.Value = 2 Then
     Text := '2 - Tributada com Reduçao na Base de Cálculo';

  If Sender.Value = 3 Then
     Text := '3 - Isento de ICMS';

  If Sender.Value = 4 Then
     Text := '4 - ICMS nao incidência';

  If Sender.Value = 5 Then
     Text := '5 - Diferido';

  If Sender.Value = 6 Then
     Text := '6 - Substituiçao Tributária';

  If Sender.Value = 7 Then
     Text := '7 - ISS';
end;

procedure TfrmCadProdutos.dtEditCTIEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  
  If Sender.Value = 1 Then
     Text := '1 - Tributada Integralmente';

  If Sender.Value = 2 Then
     Text := '2 - Tributada com Reduçao na Base de Cálculo';

  If Sender.Value = 3 Then
     Text := '3 - Isento de ICMS';

  If Sender.Value = 4 Then
     Text := '4 - ICMS nao incidência';

  If Sender.Value = 5 Then
     Text := '5 - Diferido';

  If Sender.Value = 6 Then
     Text := '6 - Substituiçao Tributária';

  If Sender.Value = 7 Then
     Text := '7 - ISS';

end;

procedure TfrmCadProdutos.dtEditCTIESetText(Sender: TField;
  const Text: String);
begin
  inherited;

  If Text = '1 - Tributada Integralmente' Then
     Sender.Value := 1;

  If Text = '2 - Tributada com Redução na Base de Cálculo' Then
     Sender.Value := 2;

  If Text = '3 - Isento de ICMS' Then
     Sender.Value := 3;

  If Text = '4 - ICMS não incidência' Then
     Sender.Value := 4;
     
  If Text = '5 - Diferido' Then
     Sender.Value := 5;

  If Text = '6 - Substituição Tributária' Then
     Sender.Value := 6;

  If Text = '7 - ISS' Then
     Sender.Value := 7;
end;

end.
