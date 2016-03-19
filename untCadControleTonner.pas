unit untCadControleTonner;

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
  cxPC, Menus, cxDropDownEdit, cxCalendar, StdCtrls, cxButtons, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMemo, cxCalc;

type
  TfrmCadControleTonner = class(TfrmCadPadraoMaster)
    dtListCNPJ: TIBStringField;
    dtListCODIGO: TIntegerField;
    dtListCLIENTE: TIntegerField;
    dtListDATA: TDateTimeField;
    dtListNOME_RAZAO: TIBStringField;
    TVRegistroCNPJ: TcxGridDBBandedColumn;
    TVRegistroCODIGO: TcxGridDBBandedColumn;
    TVRegistroCLIENTE: TcxGridDBBandedColumn;
    TVRegistroDATA: TcxGridDBBandedColumn;
    TVRegistroNOME_RAZAO: TcxGridDBBandedColumn;
    dtEditCNPJ: TIBStringField;
    dtEditCODIGO: TIntegerField;
    dtEditCLIENTE: TIntegerField;
    dtEditDATA: TDateTimeField;
    dsClientes: TDataSource;
    QryClientes: TIBQuery;
    QryClientesCODIGO: TIntegerField;
    QryClientesNOME_RAZAO: TIBStringField;
    QryClientesTECNICO: TIntegerField;
    QryClientesEMAIL: TIBStringField;
    QryClientesCIDADE: TIBStringField;
    cxLabel12: TcxLabel;
    aTfrmCadClientes: TcxDBLookupComboBox;
    btnCliente: TcxButton;
    cxDBDateEdit3: TcxDBDateEdit;
    cxLabel37: TcxLabel;
    dtEditOBSERVACOES: TIBStringField;
    edDescricao: TcxDBMemo;
    cxLabel42: TcxLabel;
    dtListDet1CNPJ: TIBStringField;
    dtListDet1CODIGO: TIntegerField;
    dtListDet1COD_CONTROLE_TONNER: TIntegerField;
    dtListDet1PRODUTO: TIBStringField;
    dtListDet1QTDE: TFloatField;
    dtListDet1TIPO: TIBStringField;
    dtListDet1NOME_PRODUTO: TIBStringField;
    dtListDet1NOME_MARCA: TIBStringField;
    dtListDet1NOME_MODELO: TIBStringField;
    TVDet1CNPJ: TcxGridDBBandedColumn;
    TVDet1CODIGO: TcxGridDBBandedColumn;
    TVDet1COD_CONTROLE_TONNER: TcxGridDBBandedColumn;
    TVDet1PRODUTO: TcxGridDBBandedColumn;
    TVDet1QTDE: TcxGridDBBandedColumn;
    TVDet1TIPO: TcxGridDBBandedColumn;
    TVDet1NOME_PRODUTO: TcxGridDBBandedColumn;
    TVDet1NOME_MARCA: TcxGridDBBandedColumn;
    TVDet1NOME_MODELO: TcxGridDBBandedColumn;
    dtEditDet1CNPJ: TIBStringField;
    dtEditDet1CODIGO: TIntegerField;
    dtEditDet1COD_CONTROLE_TONNER: TIntegerField;
    dtEditDet1PRODUTO: TIBStringField;
    dtEditDet1QTDE: TFloatField;
    dtEditDet1TIPO: TIBStringField;
    dsProdutosItens: TDataSource;
    QryProdutosItens: TIBQuery;
    QryProdutosItensCNPJ: TIBStringField;
    QryProdutosItensCODIGO: TIBStringField;
    QryProdutosItensCODIGO_2: TIBStringField;
    QryProdutosItensCNPJ_AGRUP: TIBStringField;
    QryProdutosItensCOD_AGRUP: TIBStringField;
    QryProdutosItensNOME: TIBStringField;
    QryProdutosItensMARCA: TIntegerField;
    QryProdutosItensNOME_MARCA: TIBStringField;
    QryProdutosItensGRUPO: TIntegerField;
    QryProdutosItensSUBGRUPO: TIntegerField;
    QryProdutosItensREDUCAO: TIntegerField;
    QryProdutosItensUNIDADE: TIBStringField;
    QryProdutosItensUND_PRIMARIA: TIBStringField;
    QryProdutosItensCTE: TSmallintField;
    QryProdutosItensCTIE: TSmallintField;
    QryProdutosItensQTDADE_1: TFloatField;
    QryProdutosItensQTDADE_2: TFloatField;
    QryProdutosItensLOCALIZACAO_1: TIBStringField;
    QryProdutosItensLOCALIZACAO_2: TIBStringField;
    QryProdutosItensLOCALIZACAO_3: TIBStringField;
    QryProdutosItensNEG_QTDADE_2: TIBStringField;
    QryProdutosItensQTDADE_MIN: TIntegerField;
    QryProdutosItensQTDADE_MAX: TIntegerField;
    QryProdutosItensCOMPLEMENTO_NF: TIBStringField;
    QryProdutosItensDT_ULT_COMPRA: TDateTimeField;
    QryProdutosItensQT_ULT_COMPRA: TIntegerField;
    QryProdutosItensDT_ULT_VENDA: TDateTimeField;
    QryProdutosItensMARGEM_BRUTA: TFloatField;
    QryProdutosItensPRC_REPOS: TFloatField;
    QryProdutosItensPRC_CUSTO_ANT: TFloatField;
    QryProdutosItensPRC_CUSTO_MED: TFloatField;
    QryProdutosItensPRC_VENDA: TFloatField;
    QryProdutosItensPRC_VENDA_ANT: TFloatField;
    QryProdutosItensPRC_VENDA_MED: TFloatField;
    QryProdutosItensALIQUOTA_ECF: TIBStringField;
    QryProdutosItensORIGEM: TSmallintField;
    QryProdutosItensPESO_LIQ: TFloatField;
    QryProdutosItensPERC_FRETE: TFloatField;
    QryProdutosItensIPI: TFloatField;
    QryProdutosItensVOLUME: TFloatField;
    QryProdutosItensPROD_PESAVEL: TIBStringField;
    QryProdutosItensETIQUETA_ENT: TIBStringField;
    QryProdutosItensATIVO: TIBStringField;
    QryProdutosItensULTIMO_FORNECEDOR: TIntegerField;
    QryProdutosItensFORNECEDOR: TIntegerField;
    QryProdutosItensSUBUNIDADE: TIntegerField;
    QryProdutosItensPRC_CUSTO_CODIF: TIBStringField;
    QryProdutosItensCODIGO_INTERNO: TIntegerField;
    QryProdutosItensDT_ULT_ATU_PRECO: TDateTimeField;
    QryProdutosItensCUSTO_AQUISICAO: TFloatField;
    QryProdutosItensVENDE_FRACIONADO: TIBStringField;
    QryProdutosItensQNTDE_EXPOSTA: TFloatField;
    QryProdutosItensPOSSUI_LOTE: TIBStringField;
    QryProdutosItensQNTDE_MAXIMA_VENDA: TFloatField;
    QryProdutosItensPIS: TIBStringField;
    QryProdutosItensCOFINS: TIBStringField;
    QryProdutosItensCOM_VENDA_VLR: TFloatField;
    QryProdutosItensCOM_VENDA_PCT: TFloatField;
    QryProdutosItensPARTICIP_LUCRO: TFloatField;
    QryProdutosItensNAO_COBR_JUR_ATE: TIntegerField;
    QryProdutosItensPREVISAO_ENTREGA: TDateTimeField;
    QryProdutosItensQNTDE_PEDIDA: TFloatField;
    QryProdutosItensATUALIZA_ARQ_EXTERNO: TIBStringField;
    QryProdutosItensSERVICO: TIBStringField;
    QryProdutosItensVALIDADE: TIntegerField;
    QryProdutosItensCUSTO_INDEXADO: TFloatField;
    QryProdutosItensCOMPLEMENTO: TIBStringField;
    QryProdutosItensATUALIZAR: TIBStringField;
    QryProdutosItensEST_MIN: TFloatField;
    QryProdutosItensEST_MAX: TFloatField;
    QryProdutosItensMODELO: TIntegerField;
    QryProdutosItensNOME_MODELO: TIBStringField;
    QryProdutosItensSERIE: TIBStringField;
    QryProdutosItensDEBITA_ICMS: TIBStringField;
    QryProdutosItensSECAO: TIntegerField;
    QryProdutosItensNFE_EXP: TIBStringField;
    QryProdutosItensSELECIONADO: TIBStringField;
    QryProdutosItensQNTDE_MINIMA_VENDA: TFloatField;
    QryProdutosItensVALIDA_MULT_QTDE_MIN: TIBStringField;
    QryProdutosItensFATOR_CONVERSAO: TFloatField;
    QryProdutosItensSINCRONIZA_FILIAIS: TIBStringField;
    QryProdutosItensQNTDE_PDR_CARGA: TFloatField;
    QryProdutosItensUND_CARREGAMENTO: TIBStringField;
    QryProdutosItensTRIB_ALIQ_EST: TFloatField;
    QryProdutosItensTRIB_ALIQ_INT: TFloatField;
    QryProdutosItensTRIB_MODALIDADE: TIBStringField;
    QryProdutosItensBCH_CODIGO: TIntegerField;
    QryProdutosItensCODIGO_NCM: TIBStringField;
    QryProdutosItensAPLICACAO: TMemoField;
    QryProdutosItensIMG_2: TBlobField;
    QryProdutosItensIMG_1: TBlobField;
    QryProdutosItensIMG_3: TBlobField;
    QryProdutosItensIMG_4: TBlobField;
    QryProdutosItensCODIGO_FABRICANTE: TIBStringField;
    QryProdutosItensCOR: TIntegerField;
    QryProdutosItensMATERIAL: TIntegerField;
    QryProdutosItensTRIB_PIS: TIBStringField;
    QryProdutosItensTRIB_COFINS: TIBStringField;
    QryProdutosItensTRIB_IPI: TIBStringField;
    QryProdutosItensVENCTO_PRC_VENDA: TDateField;
    QryProdutosItensCSOSN: TIntegerField;
    QryProdutosItensCOD_GETIN: TIBStringField;
    QryProdutosItensCOD_LOCALIZACAO_1: TIntegerField;
    QryProdutosItensCOD_LOCALIZACAO_2: TIntegerField;
    QryProdutosItensCOD_LOCALIZACAO_3: TIntegerField;
    QryProdutosItensCOD_TECNICO: TIntegerField;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxLabel30: TcxLabel;
    btnProduto: TcxButton;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel11: TcxLabel;
    cxDBComboBox1: TcxDBComboBox;
    cxLabel10: TcxLabel;
    dtListDet1DATA: TDateTimeField;
    dtEditDet1DATA: TDateTimeField;
    dtListDet1DT_REGISTRO: TDateTimeField;
    dtEditDet1DT_REGISTRO: TDateTimeField;
    cxDBDateEdit2: TcxDBDateEdit;
    cxLabel14: TcxLabel;
    cxDBMemo1: TcxDBMemo;
    cxLabel15: TcxLabel;
    dtEditDet1OBSERVACAO: TIBStringField;
    dtEditSALDO: TFloatField;
    cxDBCalcEdit2: TcxDBCalcEdit;
    cxLabel16: TcxLabel;
    dtListOBSERVACOES: TIBStringField;
    dtListSALDO: TFloatField;
    cxDBDateEdit1: TcxDBDateEdit;
    cxLabel13: TcxLabel;
    TVRegistroOBSERVACOES: TcxGridDBBandedColumn;
    TVRegistroSALDO: TcxGridDBBandedColumn;
    TVDet1DATA: TcxGridDBBandedColumn;
    TVDet1DT_REGISTRO: TcxGridDBBandedColumn;
    procedure dtEditNewRecord(DataSet: TDataSet);
    procedure dtEditDet1NewRecord(DataSet: TDataSet);
    procedure dtEditDet1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadControleTonner: TfrmCadControleTonner;

implementation

{$R *.dfm}

procedure TfrmCadControleTonner.dtEditNewRecord(DataSet: TDataSet);
begin
  inherited;
  dtEditDATA.value := date;
end;

procedure TfrmCadControleTonner.dtEditDet1NewRecord(DataSet: TDataSet);
begin
  inherited;
  dtEditDet1COD_CONTROLE_TONNER.value := dtEditCODIGO.value;
  dtEditDet1DATA.value  := Date;
  dtEditDet1DT_REGISTRO.value  := Date;
end;

procedure TfrmCadControleTonner.dtEditDet1AfterPost(DataSet: TDataSet);
begin
  inherited;
  dtEdit.Refresh;
end;

end.
