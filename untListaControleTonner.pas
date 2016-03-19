unit untListaControleTonner;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untListaPadrao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, cxIntlBase,
  cxintl, cxPropertiesStore, cxGridCustomPopupMenu, cxGridPopupMenu,
  dxBarDBNav, ImgList, ActnList, dxBar, cxClasses, IBCustomDataSet,
  IBQuery, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  ExtCtrls, cxContainer, Menus, cxDBEdit, StdCtrls, dxmdaset, cxButtons,
  cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmListaControleTonner = class(TfrmListaPadrao)
    dtListCNPJ: TIBStringField;
    dtListCODIGO_CONTROLE: TIntegerField;
    dtListCOD_CLIENTE: TIntegerField;
    dtListDATA_CONTROLE: TDateTimeField;
    dtListCONTROLE_OBS: TIBStringField;
    dtListNOME_RAZAO: TIBStringField;
    dtListNOME_PRODUTO: TIBStringField;
    dtListNOME_MARCA: TIBStringField;
    dtListNOME_MODELO: TIBStringField;
    dtListCODIGO_ITEM: TIntegerField;
    dtListPRODUTO: TIBStringField;
    dtListQTDE: TFloatField;
    dtListTIPO: TIBStringField;
    dtListITEM_DATA: TDateTimeField;
    dtListDT_REGISTRO: TDateTimeField;
    TVGridCNPJ: TcxGridDBBandedColumn;
    TVGridCODIGO_CONTROLE: TcxGridDBBandedColumn;
    TVGridCOD_CLIENTE: TcxGridDBBandedColumn;
    TVGridDATA_CONTROLE: TcxGridDBBandedColumn;
    TVGridCONTROLE_OBS: TcxGridDBBandedColumn;
    TVGridNOME_RAZAO: TcxGridDBBandedColumn;
    TVGridNOME_PRODUTO: TcxGridDBBandedColumn;
    TVGridNOME_MARCA: TcxGridDBBandedColumn;
    TVGridNOME_MODELO: TcxGridDBBandedColumn;
    TVGridCODIGO_ITEM: TcxGridDBBandedColumn;
    TVGridPRODUTO: TcxGridDBBandedColumn;
    TVGridQTDE: TcxGridDBBandedColumn;
    TVGridTIPO: TcxGridDBBandedColumn;
    TVGridITEM_DATA: TcxGridDBBandedColumn;
    TVGridDT_REGISTRO: TcxGridDBBandedColumn;
    dtListCPF_CGC: TIBStringField;
    dtListQTDE_CALC: TFloatField;
    TVGridCPF_CGC: TcxGridDBBandedColumn;
    TVGridQTDE_CALC: TcxGridDBBandedColumn;
    qryFiltroCliente: TIBQuery;
    qryFiltroClienteCODIGO: TIntegerField;
    qryFiltroClienteNOME_RAZAO: TIBStringField;
    qryFiltroClienteTECNICO: TIntegerField;
    qryFiltroClienteEMAIL: TIBStringField;
    qryFiltroClienteCIDADE: TIBStringField;
    dsClienteFiltro: TDataSource;
    dsCidades: TDataSource;
    QryCidades: TIBQuery;
    QryCidadesCNPJ: TIBStringField;
    QryCidadesCODIGO: TIntegerField;
    QryCidadesNOME: TIBStringField;
    QryCidadesUF: TIBStringField;
    QryCidadesCOD_IBGE: TIBStringField;
    QryCidadesCOD_IAGRO: TIntegerField;
    bTfrmCadCidades: TcxDBLookupComboBox;
    cxLabel34: TcxLabel;
    bTfrmCadClientes: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    btnFiltroCliente: TcxButton;
    btnCidade: TcxButton;
    GroupBox7: TGroupBox;
    Label17: TcxLabel;
    Label18: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    mtbFiltroCIDADE: TIntegerField;
    mtbFiltroCLIENTE: TIntegerField;
    mtbFiltroQTDE_INI: TFloatField;
    mtbFiltroQTDE_FIM: TFloatField;
    dtListCIDADE_NOME: TIBStringField;
    dtListSALDO: TFloatField;
    TVGridCIDADE_NOME: TcxGridDBBandedColumn;
    TVGridSALDO: TcxGridDBBandedColumn;
    procedure ActFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListaControleTonner: TfrmListaControleTonner;

implementation

{$R *.dfm}

procedure TfrmListaControleTonner.ActFilterExecute(Sender: TObject);
begin
  dtList.Close;
  if mtbFiltroCIDADE.AsInteger > 0 then
    dtList.Parambyname('cod_cidade').value := mtbFiltroCIDADE.AsInteger
  else
    dtList.Parambyname('cod_cidade').value := 0;

  if mtbFiltroCLIENTE.AsInteger > 0 then
    dtList.Parambyname('cod_cliente').value := mtbFiltroCLIENTE.AsInteger
  else
    dtList.Parambyname('cod_cliente').value := 0;


  dtList.Parambyname('qtde_ini').value := mtbFiltroQTDE_INI.asInteger;
  dtList.Parambyname('qtde_fim').value := mtbFiltroQTDE_FIM.asInteger;


  inherited;
end;

procedure TfrmListaControleTonner.FormCreate(Sender: TObject);
begin
  inherited;
  mtbFiltroQTDE_INI.value := 0;
  mtbFiltroQTDE_FIM.value := 1000;
end;

procedure TfrmListaControleTonner.Panel1Exit(Sender: TObject);
begin
  inherited;
  ActFilter.Execute;
end;

procedure TfrmListaControleTonner.FormShow(Sender: TObject);
begin
  inherited;
   ActFilter.Execute;
end;



end.
