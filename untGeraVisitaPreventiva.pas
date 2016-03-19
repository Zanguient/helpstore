unit untGeraVisitaPreventiva;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untFormPadrao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, Menus, cxLabel, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, StdCtrls, cxButtons, cxProgressBar, ExtCtrls,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxGroupBox, IBCustomDataSet, IBQuery, cxCurrencyEdit, cxDBEdit, dxmdaset,
  Grids, DBGrids, cxCheckBox, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxPropertiesStore, dxSkinsdxBarPainter, ImgList, ActnList, dxBarDBNav,
  dxBar,cxGridExportLink, cxStorage, IBStoredProc, ACBrBase, ACBrEnterTab;

type
  TfrmGeraVisitaPreventiva = class(TFormPadrao)
    dsRegiao: TDataSource;
    qryRegiao: TIBQuery;
    qryRegiaoCNPJ: TIBStringField;
    qryRegiaoCODIGO: TIntegerField;
    qryRegiaoNOME: TIBStringField;
    qryRegiaoVENDEDOR: TIntegerField;
    qryRegiaoTERCEIRO: TIntegerField;
    qryRegiaoDESCRICAO: TIBStringField;
    qryRegiaoTECNICO: TIntegerField;
    cxGroupBox1: TcxGroupBox;
    dsCidades: TDataSource;
    QryCidades: TIBQuery;
    QryCidadesCNPJ: TIBStringField;
    QryCidadesCODIGO: TIntegerField;
    QryCidadesNOME: TIBStringField;
    QryCidadesUF: TIBStringField;
    QryCidadesCOD_IBGE: TIBStringField;
    QryCidadesCOD_IAGRO: TIntegerField;
    btnCidade: TcxButton;
    bTfrmCadCidades: TcxDBLookupComboBox;
    cxLabel34: TcxLabel;
    aTfrmCadRegiao: TcxDBLookupComboBox;
    cxLabel35: TcxLabel;
    btnRegiao: TcxButton;
    qryFiltroCliente: TIBQuery;
    qryFiltroClienteCODIGO: TIntegerField;
    qryFiltroClienteNOME_RAZAO: TIBStringField;
    qryFiltroClienteTECNICO: TIntegerField;
    qryFiltroClienteEMAIL: TIBStringField;
    qryFiltroClienteCIDADE: TIBStringField;
    dsClienteFiltro: TDataSource;
    btnFiltroCliente: TcxButton;
    bTfrmCadClientes: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    btnTipoContrato: TcxButton;
    aTfrmCadTipoContrato: TcxDBLookupComboBox;
    cxLabel12: TcxLabel;
    dsTipoContrato: TDataSource;
    QryTipoContrato: TIBQuery;
    QryTipoContratoCNPJ: TIBStringField;
    QryTipoContratoCODIGO: TIntegerField;
    QryTipoContratoNOME: TIBStringField;
    GroupBox7: TGroupBox;
    Label17: TcxLabel;
    Label18: TcxLabel;
    mtbFiltro: TdxMemData;
    mtbFiltroCLIENTE: TIntegerField;
    dsFiltro: TDataSource;
    mtbFiltroREGIAO: TIntegerField;
    mtbFiltroCIDADE: TIntegerField;
    mtbFiltroDIAS_ATRASO_INI: TIntegerField;
    mtbFiltroDIAS_ATRASO_FIM: TIntegerField;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    mtbFiltroTIPO_CONTRATO: TIntegerField;
    dsTecnico: TDataSource;
    QryTecnico: TIBQuery;
    QryTecnicoCODIGO: TIntegerField;
    QryTecnicoNOME: TIBStringField;
    QryTecnicoEMAIL: TIBStringField;
    QryTecnicoASSINATURA: TMemoField;
    btnTecnico: TcxButton;
    aTfrmCadTecnicos: TcxDBLookupComboBox;
    cxLabel15: TcxLabel;
    mtbFiltroTECNICO: TIntegerField;
    mtbPreventiva: TdxMemData;
    dsPreventiva: TDataSource;
    QryPreventiva: TIBQuery;
    QryPreventivaCONTRATO_ATIVO: TIBStringField;
    QryPreventivaCONTRATO_CLIENTE: TIntegerField;
    QryPreventivaCONTRATO_CODIGO: TIntegerField;
    QryPreventivaCONTRATO_DIAS_RECHAMADO: TIntegerField;
    QryPreventivaCONTRATO_DT_FIM: TDateTimeField;
    QryPreventivaCONTRATO_DT_INICIO: TDateTimeField;
    QryPreventivaNUMERO_CONTRATO: TIBStringField;
    QryPreventivaTEMPO_RESPOSTA: TIntegerField;
    QryPreventivaATIVIDADE_CLIENTE: TIntegerField;
    QryPreventivaBAIRRO_CLIENTE: TIntegerField;
    QryPreventivaCIDADE_CLIENTE: TIntegerField;
    QryPreventivaCODIGO_CLIENTE: TIntegerField;
    QryPreventivaCPF_CNPJ: TIBStringField;
    QryPreventivaNOME_FANTASIA: TIBStringField;
    QryPreventivaRAZAO_SOCIAL: TIBStringField;
    QryPreventivaREGIAO_CLIENTE: TIntegerField;
    QryPreventivaRG_INSC_ESTADUAL: TIBStringField;
    QryPreventivaUF: TIBStringField;
    QryPreventivaPRODUTO_ATIVO: TIBStringField;
    QryPreventivaCODIGO_PRODUTO: TIBStringField;
    QryPreventivaCODIGO_PRODUTO_SEC: TIBStringField;
    QryPreventivaCODIGO_MARCA: TIntegerField;
    QryPreventivaNOME_PRODUTO: TIBStringField;
    QryPreventivaMARCA_PRODUTO: TIBStringField;
    QryPreventivaMODELO_PRODUTO: TIBStringField;
    QryPreventivaTIPO_CONTRATO: TIntegerField;
    QryPreventivaNOME_CONTRATO: TIBStringField;
    QryPreventivaMEDIA_COPIA: TIntegerField;
    QryPreventivaCONTRATO_COPIAS_PREVENTIVA: TIntegerField;
    QryPreventivaQTDE_COPIA_ATUAL: TIntegerField;
    QryPreventivaQTDE_COPIA_PREVISTA: TIntegerField;
    QryPreventivaDT_FECHAMENTO_ULTIMO: TDateField;
    QryPreventivaCONTADOR_ULTIMO: TIntegerField;
    QryPreventivaPONTO_VISITA_PREVENTIVA: TDateField;
    QryPreventivaNOME_CIDADE: TIBStringField;
    QryPreventivaNOME_REGIAO: TIBStringField;
    QryPreventivaNOME_TIPO_CONTRATO: TIBStringField;
    QryPreventivaDIAS_EM_ATRASO: TIntegerField;
    QryPreventivaCONT: TIntegerField;
    mtbPreventivaCONTRATO_ATIVO: TStringField;
    mtbPreventivaCONTRATO_CLIENTE: TIntegerField;
    mtbPreventivaCONTRATO_CODIGO: TIntegerField;
    mtbPreventivaCONTRATO_DIAS_RECHAMADO: TIntegerField;
    mtbPreventivaCONTRATO_DT_FIM: TDateTimeField;
    mtbPreventivaCONTRATO_DT_INICIO: TDateTimeField;
    mtbPreventivaNUMERO_CONTRATO: TStringField;
    mtbPreventivaTEMPO_RESPOSTA: TIntegerField;
    mtbPreventivaATIVIDADE_CLIENTE: TIntegerField;
    mtbPreventivaBAIRRO_CLIENTE: TIntegerField;
    mtbPreventivaCIDADE_CLIENTE: TIntegerField;
    mtbPreventivaCODIGO_CLIENTE: TIntegerField;
    mtbPreventivaCPF_CNPJ: TStringField;
    mtbPreventivaNOME_FANTASIA: TStringField;
    mtbPreventivaRAZAO_SOCIAL: TStringField;
    mtbPreventivaREGIAO_CLIENTE: TIntegerField;
    mtbPreventivaRG_INSC_ESTADUAL: TStringField;
    mtbPreventivaUF: TStringField;
    mtbPreventivaPRODUTO_ATIVO: TStringField;
    mtbPreventivaCODIGO_PRODUTO: TStringField;
    mtbPreventivaCODIGO_PRODUTO_SEC: TStringField;
    mtbPreventivaCODIGO_MARCA: TIntegerField;
    mtbPreventivaNOME_PRODUTO: TStringField;
    mtbPreventivaMARCA_PRODUTO: TStringField;
    mtbPreventivaMODELO_PRODUTO: TStringField;
    mtbPreventivaTIPO_CONTRATO: TIntegerField;
    mtbPreventivaNOME_CONTRATO: TStringField;
    mtbPreventivaMEDIA_COPIA: TIntegerField;
    mtbPreventivaCONTRATO_COPIAS_PREVENTIVA: TIntegerField;
    mtbPreventivaQTDE_COPIA_ATUAL: TIntegerField;
    mtbPreventivaQTDE_COPIA_PREVISTA: TIntegerField;
    mtbPreventivaDT_FECHAMENTO_ULTIMO: TDateField;
    mtbPreventivaCONTADOR_ULTIMO: TIntegerField;
    mtbPreventivaPONTO_VISITA_PREVENTIVA: TDateField;
    mtbPreventivaNOME_CIDADE: TStringField;
    mtbPreventivaNOME_REGIAO: TStringField;
    mtbPreventivaNOME_TIPO_CONTRATO: TStringField;
    mtbPreventivaDIAS_EM_ATRASO: TIntegerField;
    mtbPreventivaCONT: TIntegerField;
    mtbPreventivaSEL: TBooleanField;
    cxButton1: TcxButton;
    dsTecnicoPadrao: TDataSource;
    qryTecnicoPadrao: TIBQuery;
    qryTecnicoPadraoCODIGO: TIntegerField;
    qryTecnicoPadraoNOME: TIBStringField;
    qryTecnicoPadraoEMAIL: TIBStringField;
    qryTecnicoPadraoASSINATURA: TMemoField;
    mtbFiltroTECNICO_PADRAO: TIntegerField;
    GridPopupMenu: TcxGridPopupMenu;
    cxPropertiesStore: TcxPropertiesStore;
    dxBarManager: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btnInsert: TdxBarButton;
    btnDelete: TdxBarButton;
    btnSalvar: TdxBarButton;
    btnEditar: TdxBarButton;
    btnCancelar: TdxBarButton;
    btnCustomizar: TdxBarButton;
    btnexportar: TdxBarButton;
    btnContrair: TdxBarButton;
    btnExpandir: TdxBarButton;
    btnImprimir: TdxBarButton;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrior1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavigator1: TdxBarDBNavigator;
    ActionList1: TActionList;
    ActFirst: TAction;
    ActPrior: TAction;
    ActNext: TAction;
    ActLast: TAction;
    ActFilter: TAction;
    ActFechar: TAction;
    ActESC: TAction;
    ActContrair: TAction;
    ActExpandir: TAction;
    ActExportar: TAction;
    ActConfigurar: TAction;
    ActCadLookup: TAction;
    ActGerar: TAction;
    SaveDialog: TSaveDialog;
    imgMain: TcxImageList;
    Panel1: TPanel;
    Grid: TcxGrid;
    GridDBBandedTableView1: TcxGridDBBandedTableView;
    TVGrid: TcxGridDBBandedTableView;
    TVGridRecId: TcxGridDBBandedColumn;
    TVGridCONTRATO_ATIVO: TcxGridDBBandedColumn;
    TVGridCONTRATO_CLIENTE: TcxGridDBBandedColumn;
    TVGridCONTRATO_CODIGO: TcxGridDBBandedColumn;
    TVGridCONTRATO_DIAS_RECHAMADO: TcxGridDBBandedColumn;
    TVGridCONTRATO_DT_FIM: TcxGridDBBandedColumn;
    TVGridCONTRATO_DT_INICIO: TcxGridDBBandedColumn;
    TVGridNUMERO_CONTRATO: TcxGridDBBandedColumn;
    TVGridTEMPO_RESPOSTA: TcxGridDBBandedColumn;
    TVGridATIVIDADE_CLIENTE: TcxGridDBBandedColumn;
    TVGridBAIRRO_CLIENTE: TcxGridDBBandedColumn;
    TVGridCIDADE_CLIENTE: TcxGridDBBandedColumn;
    TVGridCODIGO_CLIENTE: TcxGridDBBandedColumn;
    TVGridCPF_CNPJ: TcxGridDBBandedColumn;
    TVGridNOME_FANTASIA: TcxGridDBBandedColumn;
    TVGridRAZAO_SOCIAL: TcxGridDBBandedColumn;
    TVGridREGIAO_CLIENTE: TcxGridDBBandedColumn;
    TVGridRG_INSC_ESTADUAL: TcxGridDBBandedColumn;
    TVGridUF: TcxGridDBBandedColumn;
    TVGridPRODUTO_ATIVO: TcxGridDBBandedColumn;
    TVGridCODIGO_PRODUTO: TcxGridDBBandedColumn;
    TVGridCODIGO_PRODUTO_SEC: TcxGridDBBandedColumn;
    TVGridCODIGO_MARCA: TcxGridDBBandedColumn;
    TVGridNOME_PRODUTO: TcxGridDBBandedColumn;
    TVGridMARCA_PRODUTO: TcxGridDBBandedColumn;
    TVGridMODELO_PRODUTO: TcxGridDBBandedColumn;
    TVGridTIPO_CONTRATO: TcxGridDBBandedColumn;
    TVGridNOME_CONTRATO: TcxGridDBBandedColumn;
    TVGridMEDIA_COPIA: TcxGridDBBandedColumn;
    TVGridCONTRATO_COPIAS_PREVENTIVA: TcxGridDBBandedColumn;
    TVGridQTDE_COPIA_ATUAL: TcxGridDBBandedColumn;
    TVGridQTDE_COPIA_PREVISTA: TcxGridDBBandedColumn;
    TVGridDT_FECHAMENTO_ULTIMO: TcxGridDBBandedColumn;
    TVGridCONTADOR_ULTIMO: TcxGridDBBandedColumn;
    TVGridPONTO_VISITA_PREVENTIVA: TcxGridDBBandedColumn;
    TVGridNOME_CIDADE: TcxGridDBBandedColumn;
    TVGridNOME_REGIAO: TcxGridDBBandedColumn;
    TVGridNOME_TIPO_CONTRATO: TcxGridDBBandedColumn;
    TVGridDIAS_EM_ATRASO: TcxGridDBBandedColumn;
    TVGridCONT: TcxGridDBBandedColumn;
    TVGridSEL: TcxGridDBBandedColumn;
    LVGrid: TcxGridLevel;
    pnlFiltro: TPanel;
    pbTimer: TcxProgressBar;
    PopupMenu1: TPopupMenu;
    MarcarTodos1: TMenuItem;
    DesmarcarTodos1: TMenuItem;
    N1: TMenuItem;
    ActSel: TAction;
    dsMotivoChamado: TDataSource;
    QryMotivoChamado: TIBQuery;
    QryMotivoChamadoCNPJ: TIBStringField;
    QryMotivoChamadoCODIGO: TIntegerField;
    QryMotivoChamadoNOME: TIBStringField;
    QryMotivoChamadoATIVO: TIBStringField;
    QryDefeito: TIBQuery;
    QryDefeitoCNPJ: TIBStringField;
    QryDefeitoCODIGO: TIntegerField;
    QryDefeitoNOME: TIBStringField;
    QryDefeitoATIVO: TIBStringField;
    dsDefeitoReclamado: TDataSource;
    btnMotivo: TcxButton;
    aTfrmCadMotivoChamado: TcxDBLookupComboBox;
    cxLabel19: TcxLabel;
    aTfrmCadDefeitos: TcxDBLookupComboBox;
    btnDefeitoReclamado: TcxButton;
    cxLabel17: TcxLabel;
    cxButton2: TcxButton;
    bTfrmCadTecnicos: TcxDBLookupComboBox;
    cxLabel2: TcxLabel;
    mtbFiltroDEFEITO_PADRAO: TIntegerField;
    mtbFiltroMOTIVO_PADRAO: TIntegerField;
    PCD_GERA_OS_PREVENTIVA: TIBStoredProc;
    ACBrEnterTab1: TACBrEnterTab;
    btnHelp: TdxBarButton;
    ActHelp: TAction;
    procedure FormCreate(Sender: TObject);
    procedure QryCidadesBeforeOpen(DataSet: TDataSet);
    procedure btnFiltroClienteClick(Sender: TObject);
    procedure btnCidadeClick(Sender: TObject);
    procedure btnRegiaoClick(Sender: TObject);
    procedure btnTipoContratoClick(Sender: TObject);
    procedure btnTecnicoClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure ActFirstExecute(Sender: TObject);
    procedure ActPriorExecute(Sender: TObject);
    procedure ActNextExecute(Sender: TObject);
    procedure ActLastExecute(Sender: TObject);
    procedure ActContrairExecute(Sender: TObject);
    procedure ActExpandirExecute(Sender: TObject);
    procedure ActExportarExecute(Sender: TObject);
    procedure ActConfigurarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActGerarExecute(Sender: TObject);
    procedure MarcarTodos1Click(Sender: TObject);
    procedure DesmarcarTodos1Click(Sender: TObject);
    procedure ActSelExecute(Sender: TObject);
    procedure btnDefeitoReclamadoClick(Sender: TObject);
    procedure btnMotivoClick(Sender: TObject);
    procedure ActHelpExecute(Sender: TObject);
  private
    { Private declarations }
    procedure Selecionar(Sel:Boolean);
    procedure Filtrar;
  public
    { Public declarations }
  end;

var
  frmGeraVisitaPreventiva: TfrmGeraVisitaPreventiva;

implementation

uses Application_DM, untCadCidades, untCadRegioes, UntCadTipoContrato,
  UntCadTecnicos, untCadClientes, UntCadDefeitos,
  UntCadProblemaIdentificado, Funcoes, untHelpPadrao;

{$R *.dfm}

{ TfrmGeraVisitaPreventiva }

procedure TfrmGeraVisitaPreventiva.Filtrar;
var
 motivo, defeito : variant;
begin
    mtbPreventiva.Close;
    mtbPreventiva.Open;
    {:cnpj,:cod_regiao,:cod_cidade,:cod_tecnico,:cod_cliente,:cod_tp_contrato,:dias_ini,:dias_fim,:data_base)}
    QryPreventiva.Close;
    QryPreventiva.ParambyName('cnpj').value := dmApp.cnpj;
    QryPreventiva.ParambyName('cod_regiao').value := mtbFiltroREGIAO.AsInteger;
    QryPreventiva.ParambyName('cod_cidade').value := mtbFiltroCIDADE.AsInteger;
    QryPreventiva.ParambyName('cod_tecnico').value := mtbFiltroTECNICO.AsInteger;
    QryPreventiva.ParambyName('cod_cliente').value := mtbFiltroCLIENTE.AsInteger;
    QryPreventiva.ParambyName('cod_tp_contrato').value := mtbFiltroTIPO_CONTRATO.AsInteger;
    QryPreventiva.ParambyName('dias_ini').value := mtbFiltroDIAS_ATRASO_INI.AsInteger;
    QryPreventiva.ParambyName('dias_fim').value := mtbFiltroDIAS_ATRASO_FIM.AsInteger;
    QryPreventiva.ParambyName('data_base').value := dmApp.DataServidor;
    QryPreventiva.Open;

  //  mtbPreventiva.DisableControls;

  //  QryPreventiva.Last;;
   // showmessage(IntToStr(QryPreventiva.RecordCount));


    QryPreventiva.First;
    while not QryPreventiva.eof do
    begin
        mtbPreventiva.Insert;
        mtbPreventivacontrato_ativo.value := QryPreventivacontrato_ativo.value;
        mtbPreventivacontrato_cliente.value := QryPreventivacontrato_cliente.value;
        mtbPreventivacontrato_codigo.value := QryPreventivacontrato_codigo.value;
        mtbPreventivacontrato_dias_rechamado.value := QryPreventivacontrato_dias_rechamado.value;
        mtbPreventivacontrato_dt_fim.value := QryPreventivacontrato_dt_fim.value;
        mtbPreventivacontrato_dt_inicio.value := QryPreventivacontrato_dt_inicio.value;
        mtbPreventivanumero_contrato.value := QryPreventivanumero_contrato.value;
        mtbPreventivatempo_resposta.value := QryPreventivatempo_resposta.value;
        mtbPreventivaatividade_cliente.value := QryPreventivaatividade_cliente.value;
        mtbPreventivabairro_cliente.value := QryPreventivabairro_cliente.value;
        mtbPreventivacidade_cliente.value := QryPreventivacidade_cliente.value;
        mtbPreventivacodigo_cliente.value := QryPreventivacodigo_cliente.value;
        mtbPreventivacpf_cnpj.value := QryPreventivacpf_cnpj.value;
        mtbPreventivanome_fantasia.value := QryPreventivanome_fantasia.value;
        mtbPreventivarazao_social.value := QryPreventivarazao_social.value;
        mtbPreventivaregiao_cliente.value := QryPreventivaregiao_cliente.value;
        mtbPreventivarg_insc_estadual.value := QryPreventivarg_insc_estadual.value;
        mtbPreventivauf.value := QryPreventivauf.value;
        mtbPreventivaproduto_ativo.value := QryPreventivaproduto_ativo.value;
        mtbPreventivacodigo_produto.value := QryPreventivacodigo_produto.value;
        mtbPreventivacodigo_produto_sec.value := QryPreventivacodigo_produto_sec.value;
        mtbPreventivacodigo_marca.value := QryPreventivacodigo_marca.value;
        mtbPreventivanome_produto.value := QryPreventivanome_produto.value;
        mtbPreventivamarca_produto.value := QryPreventivamarca_produto.value;
        mtbPreventivamodelo_produto.value := QryPreventivamodelo_produto.value;
        mtbPreventivatipo_contrato.value := QryPreventivatipo_contrato.value;
        mtbPreventivanome_contrato.value := QryPreventivanome_contrato.value;
        mtbPreventivamedia_copia.value := QryPreventivamedia_copia.value;
        mtbPreventivacontrato_copias_preventiva.value := QryPreventivacontrato_copias_preventiva.value;
        mtbPreventivaqtde_copia_atual.value := QryPreventivaqtde_copia_atual.value;
        mtbPreventivaqtde_copia_prevista.value := QryPreventivaqtde_copia_prevista.value;
        mtbPreventivadt_fechamento_ultimo.value := QryPreventivadt_fechamento_ultimo.value;
        mtbPreventivacontador_ultimo.value := QryPreventivacontador_ultimo.value;
        mtbPreventivaponto_visita_preventiva.value := QryPreventivaponto_visita_preventiva.value;
        mtbPreventivanome_cidade.value := QryPreventivanome_cidade.value;
        mtbPreventivanome_regiao.value := QryPreventivanome_regiao.value;
        mtbPreventivanome_tipo_contrato.value := QryPreventivanome_tipo_contrato.value;
        mtbPreventivadias_em_atraso.value := QryPreventivadias_em_atraso.value;
        mtbPreventivacont.value := QryPreventivacont.value;

        QryPreventiva.Next;
    end;

  motivo := RetornaValor('select max(codigo) from ofc_motivo_chamado m where m.padrao_preventiva = ''S'' and m.cnpj = '+QuoTedStr(dmApp.Cnpj));
  defeito := RetornaValor('select max(codigo) from OFC_DEFEITO d where d.padrao_preventiva = ''S'' and d.cnpj = '+QuoTedStr(dmApp.Cnpj));
  if not(VarIsNull(defeito)) then
    mtbFiltroDEFEITO_PADRAO.value := defeito;

  if not(VarIsNull(motivo)) then
    mtbFiltroMOTIVO_PADRAO.value := (motivo);

  //  mtbPreventiva.EnableControls;
 //   QryPreventiva.Last;
 //   QryPreventiva.First;
end;

procedure TfrmGeraVisitaPreventiva.FormCreate(Sender: TObject);
var
  FMyStream: TMemoryStream;
  DirUser, Diretorio, filtro : String;
begin
  inherited;
  cxPropertiesStore.StorageName := TfrmGeraVisitaPreventiva(Sender).Name;
  cxPropertiesStore.StorageType := stStream;
  FmyStream := TMemoryStream.Create;
  cxPropertiesStore.StorageStream := FMyStream;

  if FileExists('C:\Sistemas\HelpStore\filtros\'+cxPropertiesStore.StorageName) then
  begin
    FMyStream.LoadFromFile('C:\Sistemas\HelpStore\filtros\'+cxPropertiesStore.StorageName);
    FMyStream.Position := 0;
    cxPropertiesStore.RestoreFrom;
  end;

  mtbFiltro.Open;
  mtbFiltro.Edit;
  mtbFiltroDIAS_ATRASO_INI.value := 0;
  mtbFiltroDIAS_ATRASO_FIM.value := 10000;
  mtbPreventiva.Open;
  mtbPreventiva.Edit;
end;

procedure TfrmGeraVisitaPreventiva.QryCidadesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  TIBQuery(Dataset).parambyname('cnpj').value := dmApp.cnpj;
end;

procedure TfrmGeraVisitaPreventiva.btnFiltroClienteClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadClientes,TIBDataSet(mtbFiltro),'CLIENTE',qryFiltroCliente);
end;

procedure TfrmGeraVisitaPreventiva.btnCidadeClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadCidades,TIBDataSet(mtbFiltro),'CIDADE',QryCidades);
end;

procedure TfrmGeraVisitaPreventiva.btnRegiaoClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadRegiao,TIBDataSet(mtbFiltro),'REGIAO',qryRegiao);
end;

procedure TfrmGeraVisitaPreventiva.btnTipoContratoClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadTipoContrato,TIBDataSet(mtbFiltro),'TIPO_CONTRATO',QryTipoContrato);
end;

procedure TfrmGeraVisitaPreventiva.btnTecnicoClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadTecnicos,TIBDataSet(mtbFiltro),'TECNICO_PADRAO',QryTecnico);
end;

procedure TfrmGeraVisitaPreventiva.cxButton1Click(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

procedure TfrmGeraVisitaPreventiva.ActFirstExecute(Sender: TObject);
begin
  inherited;
  mtbPreventiva.First;
end;

procedure TfrmGeraVisitaPreventiva.ActPriorExecute(Sender: TObject);
begin
  inherited;
  mtbPreventiva.Prior;
end;

procedure TfrmGeraVisitaPreventiva.ActNextExecute(Sender: TObject);
begin
  inherited;
  mtbPreventiva.Next;
end;

procedure TfrmGeraVisitaPreventiva.ActLastExecute(Sender: TObject);
begin
  inherited;
    mtbPreventiva.last;
end;

procedure TfrmGeraVisitaPreventiva.ActContrairExecute(Sender: TObject);
begin
  inherited;
  TVGrid.ViewData.Collapse(True);
end;

procedure TfrmGeraVisitaPreventiva.ActExpandirExecute(Sender: TObject);
begin
  inherited;
  TVGrid.ViewData.Expand(True);
end;

procedure TfrmGeraVisitaPreventiva.ActExportarExecute(Sender: TObject);
begin
  inherited;
  with SaveDialog do
  begin
    DefaultExt := 'xls';
    Filter := '*.xls';
    FileName := 'Cadastros de '+TfrmGeraVisitaPreventiva(owner).Caption;
    if Execute then
      ExportGridToExcel(FileName,Grid);
  end;
end;

procedure TfrmGeraVisitaPreventiva.ActConfigurarExecute(Sender: TObject);
begin
  inherited;
  TcxGridTableController(Grid.FocusedView.Controller).Customization := True;
end;

procedure TfrmGeraVisitaPreventiva.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  Diretorio :string;
  DirUser, filtro : String;
begin
  inherited;

  (cxPropertiesStore.StorageStream as TMemoryStream).Position := 0;
   cxPropertiesStore.StoreTo(true);
  (cxPropertiesStore.StorageStream as TMemoryStream).SaveToFile(('C:\Sistemas\HelpStore\filtros\'+cxPropertiesStore.StorageName));

end;

procedure TfrmGeraVisitaPreventiva.ActGerarExecute(Sender: TObject);
var
  book : TBookmark;
  cont,qtdestatus : integer;
begin
   //necessário para que o sistema não fique validando a ausencia de parametros padroes (tecnico,defeito,motivo) mesmo já definidos pelo usuário
   Grid.SetFocus;
  //verificando a qtde de status definidos como 'padrão' de abertura, pois se houver mais de 1 o procedimento
  //irá gerar um erro
  qtdestatus := RetornaValor('select count(*) from ofc_status st where st.padrao_abertura = ''S'' and st.cnpj = '+QuoTedStr(dmApp.Cnpj));
  if (qtdestatus > 1) then
  begin
    Application.MessageBox('Impossível gerar registros. Existe mais de 1 (um) status definido como ''Padrão'' de abertura no módulo de OS','Aviso',mb_iconerror+mb_ok);
    exit;
  end;

  cont := 0;
  book := mtbPreventiva.GetBookmark;
  mtbPreventiva.DisableControls;
  mtbPreventiva.First;
  while not mtbPreventiva.Eof do
  begin
    if (mtbPreventivaSEL.Value) then
    begin
      cont := cont + 1;
    end;

    mtbPreventiva.Next;
  end;
  mtbPreventiva.GotoBookmark(book);
  mtbPreventiva.EnableControls;
  mtbPreventiva.FreeBookmark(book);

  if (cont = 0) then
  begin
    Application.messagebox('Impossível gerar OS Preventiva. Nenhum registro selecionado','Aviso',mb_ok+mb_iconerror);
    exit;
  end;

  if (mtbFiltroTECNICO_PADRAO.Asinteger = 0) then
  begin
    Application.messagebox('Impossível gerar OS Preventiva. Defina um técnico padrão para os registros','Aviso',mb_ok+mb_iconinformation);
    bTfrmCadTecnicos.setfocus;
    exit;
  end;

  if (mtbFiltroDEFEITO_PADRAO.Asinteger = 0) then
  begin
    Application.messagebox('Impossível gerar OS Preventiva. Defina um defeito padrão para os registros','Aviso',mb_ok+mb_iconinformation);
    aTfrmCadDefeitos.setfocus;
    exit;
  end;

  if (mtbFiltroMOTIVO_PADRAO.Asinteger = 0) then
  begin
    Application.messagebox('Impossível gerar OS Preventiva. Defina um motivo padrão para os registros','Aviso',mb_ok+mb_iconinformation);
    aTfrmCadMotivoChamado.setfocus;
    exit;
  end;

  if  Application.messagebox('Deseja gerar as OS Preventivas para os registros selecionados?','Aviso',mb_yesno+mb_iconquestion) = id_no then
    exit;

  pbTimer.Properties.Max := cont;
  pbTimer.Properties.Min := 0;
  book := mtbPreventiva.GetBookmark;
  mtbPreventiva.DisableControls;
  mtbPreventiva.First;
  while not mtbPreventiva.Eof do
  begin
    if (mtbPreventivaSEL.Value) then
    begin
      PCD_GERA_OS_PREVENTIVA.Parambyname('cnpj').value := dmApp.cnpj;
      PCD_GERA_OS_PREVENTIVA.Parambyname('CLIENTE').value := mtbPreventivaCODIGO_CLIENTE.value;
      PCD_GERA_OS_PREVENTIVA.Parambyname('EQUIPAMENTO').value := mtbPreventivaCODIGO_PRODUTO.value;
      PCD_GERA_OS_PREVENTIVA.Parambyname('TECNICO').value := mtbFiltroTECNICO_PADRAO.value;
      PCD_GERA_OS_PREVENTIVA.Parambyname('DEFEITO_RECLAMADO').value := mtbFiltroDEFEITO_PADRAO.value;
      PCD_GERA_OS_PREVENTIVA.Parambyname('MOTIVO_CHAMADO').value := mtbFiltroMOTIVO_PADRAO.value;
      PCD_GERA_OS_PREVENTIVA.ExecProc;

      pbTimer.Position := pbTimer.Position + 1; 
    end;

    mtbPreventiva.Next;
  end;
  mtbPreventiva.GotoBookmark(book);
  mtbPreventiva.EnableControls;
  mtbPreventiva.FreeBookmark(book);

  Application.messagebox('Registros gerados com sucesso','Aviso',mb_ok+mb_iconinformation);
  Filtrar;

end;

procedure TfrmGeraVisitaPreventiva.Selecionar(Sel: Boolean);
var
  book : TBookmark;
begin
  book := mtbPreventiva.GetBookmark;
  mtbPreventiva.DisableControls;
  mtbPreventiva.First;
  while not mtbPreventiva.Eof do
  begin
    mtbPreventiva.Edit;
    mtbPreventivaSEL.Value := Sel;
    mtbPreventiva.Post;
    mtbPreventiva.Next;
  end;
  mtbPreventiva.GotoBookmark(book);
  mtbPreventiva.EnableControls;
  mtbPreventiva.FreeBookmark(book);
end;

procedure TfrmGeraVisitaPreventiva.MarcarTodos1Click(Sender: TObject);
begin
  inherited;
  Selecionar(True);
end;

procedure TfrmGeraVisitaPreventiva.DesmarcarTodos1Click(Sender: TObject);
begin
  inherited;
  Selecionar(false);
end;

procedure TfrmGeraVisitaPreventiva.ActSelExecute(Sender: TObject);
begin
  inherited;
  mtbPreventiva.Edit;
  mtbPreventivaSEL.Value := not(mtbPreventivaSEL.Value);
end;

procedure TfrmGeraVisitaPreventiva.btnDefeitoReclamadoClick(
  Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadDefeitos,TIBDataSet(mtbFiltro),'DEFEITO_PADRAO',QryDefeito);
end;

procedure TfrmGeraVisitaPreventiva.btnMotivoClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadMotivoChamado,TIBDataSet(mtbFiltro),'MOTIVO_PADRAO',QryMotivoChamado);
end;

procedure TfrmGeraVisitaPreventiva.ActHelpExecute(Sender: TObject);
begin
  inherited;
  if frmHelpPadrao = nil  then
  begin
    //criando form help
    frmHelpPadrao := TfrmHelpPadrao.Create(Self);

    with frmHelpPadrao do
    begin
      qryVerificaHelp.close;
      qryVerificaHelp.parambyname('cnpj').value := dmapp.cnpj;
      qryVerificaHelp.parambyname('formulario').value := uppercase('frmGeraVisitaPreventiva');
      qryVerificaHelp.Open;

      if qryVerificaHelpCODIGO.AsInteger = 0 then
        application.messagebox('Módulo de Ajuda ainda não implementado','Aviso',mb_ok+mb_iconinformation)
      else
      begin
        caption :=  'Help - '+frmGeraVisitaPreventiva.Caption;
        Showmodal;
      end;
    end;


    frmHelpPadrao.Free;
    frmHelpPadrao := Nil;
  end;
end;

end.
