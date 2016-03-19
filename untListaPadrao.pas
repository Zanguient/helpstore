unit untListaPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxPC,  cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, ExtCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxNavigator, cxDBNavigator, IBQuery,
  IBCustomDataSet, cxGridCustomPopupMenu, cxGridPopupMenu, cxFilterControl,
  cxDBFilterControl, dxBar, dxBarDBNav, ActnList, ImgList, Grids, DBGrids,
  cxLookAndFeels, cxDBLookupComboBox, cxCalendar, cxImageComboBox, cxCalc,
  cxBlobEdit, cxSpinEdit,
        cxGridExportLink,
    cxControls,
  cxGridUIHelper, dxPSGlbl, dxPSUtl, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSEngn, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSCore, dxPgsDlg, cxPropertiesStore, cxContainer, ACBrBase,
  ACBrEnterTab, cxIntlBase, cxintl, cxGridBandedTableView,
  cxGridDBBandedTableView, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxStorage,
  dxSkinsForm, dxLayoutControl, cxLabel, cxTextEdit, cxDBEdit,
  untFormPadrao, cxButtonEdit, dxmdaset;

type
  TfrmListaPadrao = class(TFormPadrao)
    dsPesquisa: TDataSource;
    dtList: TIBQuery;
    dxBarManager: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    ActionList1: TActionList;
    ActFirst: TAction;
    ActPrior: TAction;
    ActNext: TAction;
    ActLast: TAction;
    ActRefresh: TAction;
    ActFilter: TAction;
    btnCancelar: TdxBarButton;
    cxImageList1: TcxImageList;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavRefresh1: TdxBarDBNavButton;
    dxBarDBNavPrior1: TdxBarDBNavButton;
    ActFechar: TAction;
    ActESC: TAction;
    btnCustomizar: TdxBarButton;
    btnexportar: TdxBarButton;
    btnContrair: TdxBarButton;
    btnExpandir: TdxBarButton;
    btnImprimir: TdxBarButton;
    ActContrair: TAction;
    ActExpandir: TAction;
    ActExportar: TAction;
    ActConfigurar: TAction;
    GridPopupMenu: TcxGridPopupMenu;
    SaveDialog: TSaveDialog;
    cxPropertiesStore: TcxPropertiesStore;
    ActCadLookup: TAction;
    cxIntl1: TcxIntl;
    ActImprimir: TAction;
    ActLayout: TAction;
    Panel1: TPanel;
    Grid: TcxGrid;
    GridDBBandedTableView1: TcxGridDBBandedTableView;
    TVGrid: TcxGridDBBandedTableView;
    LVGrid: TcxGridLevel;
    ActHelp: TAction;
    mtbFiltro: TdxMemData;
    dsFiltro: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure ActFirstExecute(Sender: TObject);
    procedure ActPriorExecute(Sender: TObject);
    procedure ActNextExecute(Sender: TObject);
    procedure ActLastExecute(Sender: TObject);
    procedure ActRefreshExecute(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActESCExecute(Sender: TObject);
    procedure ActContrairExecute(Sender: TObject);
    procedure ActExpandirExecute(Sender: TObject);
    procedure ActConfigurarExecute(Sender: TObject);
    procedure ActExportarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLayoutExecute(Sender: TObject);
    procedure dtListBeforeOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActCadLookupExecute(Sender: TObject);
    procedure ActFilterExecute(Sender: TObject);
  private
    { Private declarations }
    procedure LiberaActList;
  protected
    procedure First(DtsList : TDataSource);
    procedure Next(DtsList : TDataSource);
    procedure Prior(DtsList : TDataSource);
    procedure Last(DtsList : TDataSource);
    procedure Refresh(DtsList : TDataSource);


  public
    { Public declarations }
    

  end;

var
  frmListaPadrao: TfrmListaPadrao;

implementation

uses  Application_DM;

{$R *.dfm}

procedure TfrmListaPadrao.FormShow(Sender: TObject);
begin
 inherited;
  dtList.Close;
  dtList.Open;


  dxBarDBNavFirst1.Enabled := true;
  dxBarDBNavNext1.Enabled := true;
  dxBarDBNavLast1.Enabled := true;
  dxBarDBNavRefresh1.Enabled := true;
  dxBarDBNavPrior1.Enabled := true;
  LiberaActList;
  Grid.SetFocus;

end;


procedure TfrmListaPadrao.ActFirstExecute(Sender: TObject);
begin
  dtList.First;
end;

procedure TfrmListaPadrao.ActPriorExecute(Sender: TObject);
begin
  dtList.Prior;
end;

procedure TfrmListaPadrao.ActNextExecute(Sender: TObject);
begin
  dtList.Next;
end;

procedure TfrmListaPadrao.ActLastExecute(Sender: TObject);
begin
  dtList.Last;
end;

procedure TfrmListaPadrao.ActRefreshExecute(Sender: TObject);
begin
  dtList.Close;
  dtList.Open;
end;

procedure TfrmListaPadrao.LiberaActList;
begin
  ActExportar.Enabled := true;
  ActConfigurar.Enabled := true;
  ActContrair.Enabled := true;
  ActExpandir.Enabled := true;
  ActFirst.Enabled := true;
  ActPrior.Enabled := true;
  ActNext.Enabled  := true;
  ActLast.Enabled  := true;
  ActRefresh.Enabled:= true;
  ActFilter.Enabled:= true;
end;


procedure TfrmListaPadrao.ActFecharExecute(Sender: TObject);
begin
   if (Application.MessageBox('Deseja realmente sair do cadastro?','Aviso',mb_yesno + mb_iconquestion) = id_no) then
      exit;

    close;
end;

procedure TfrmListaPadrao.ActESCExecute(Sender: TObject);
begin
    ActFechar.Execute
end;

procedure TfrmListaPadrao.ActContrairExecute(Sender: TObject);
begin
  TVGrid.ViewData.Collapse(True);
end;

procedure TfrmListaPadrao.ActExpandirExecute(Sender: TObject);
begin
  TVGrid.ViewData.Expand(True);
end;

procedure TfrmListaPadrao.ActConfigurarExecute(Sender: TObject);
begin
 TcxGridTableController(Grid.FocusedView.Controller).Customization := True;
end;

procedure TfrmListaPadrao.ActExportarExecute(Sender: TObject);
begin
  with SaveDialog do
  begin
    DefaultExt := 'xls';
    Filter := '*.xls';
    FileName := 'Cadastros de '+TfrmListaPadrao(owner).Caption;
    if Execute then
      ExportGridToExcel(FileName,Grid);
  end;
end;



procedure TfrmListaPadrao.First(DtsList: TDataSource);
begin
 DtsList.DataSet.First;
end;

procedure TfrmListaPadrao.Next(DtsList: TDataSource);
begin
  DtsList.DataSet.Next;
end;

procedure TfrmListaPadrao.Last(DtsList: TDataSource);
begin
 DtsList.DataSet.Last;
end;

procedure TfrmListaPadrao.Prior(DtsList: TDataSource);
begin
  DtsList.DataSet.Prior;
end;

procedure TfrmListaPadrao.Refresh(DtsList: TDataSource);
begin
  DtsList.DataSet.Close;
  DtsList.DataSet.Open;
end;

procedure TfrmListaPadrao.FormCreate(Sender: TObject);
var
  FMyStream: TMemoryStream;
  DirUser, Diretorio, filtro : String;
  AFilterControl: TcxFilterControl;
begin
  inherited;
  mtbFiltro.Open;
  mtbFiltro.Edit;

  cxPropertiesStore.StorageName := TfrmListaPadrao(Sender).Name;
  cxPropertiesStore.StorageType := stStream;
  FmyStream := TMemoryStream.Create;
  cxPropertiesStore.StorageStream := FMyStream;

  if FileExists('C:\Sistemas\HelpStore\filtros\'+cxPropertiesStore.StorageName) then
  begin
    FMyStream.LoadFromFile('C:\Sistemas\HelpStore\filtros\'+cxPropertiesStore.StorageName);
    FMyStream.Position := 0;
    cxPropertiesStore.RestoreFrom;
  end;

  filtro := 'C:\Sistemas\HelpStore\filtros\'+TfrmListaPadrao(Sender).Caption+'.flt';
  if (FileExists(filtro)) then
  begin
   AFilterControl := TcxFilterControl.Create(Self);
   AFilterControl.LinkComponent := TVGrid;
   AFilterControl.LoadFromFile(filtro);
   AFilterControl.ApplyFilter;
   TVGrid.DataController.Filter.Active := True;
   AFilterControl.Free;
  end;


  TfrmListaPadrao(Sender).Visible := false;
end;


procedure TfrmListaPadrao.ActLayoutExecute(Sender: TObject);
begin
  //lcmain.Customization := true;
end;

procedure TfrmListaPadrao.dtListBeforeOpen(DataSet: TDataSet);
begin
  if ((TIBQuery(DataSet).tag = 0) or (TIBQuery(DataSet).Tag = 4)) then
    TIBQuery(DataSet).ParamByName('cnpj').value := dmApp.cnpj;
end;


procedure TfrmListaPadrao.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  Diretorio :string;
  DirUser, filtro : String;
  AFilterControl: TcxFilterControl;
begin
  inherited;
  if (TVGrid.DataController.Filter.Active) then
  begin

   filtro := 'C:\Sistemas\HelpStore\filtros\'+TfrmListaPadrao(Sender).Caption+'.flt';

   // FileCreate(filtro);
   AFilterControl := TcxFilterControl.Create(Self);
   AFilterControl.LinkComponent := TVGrid;
   AFilterControl.SaveToFile(filtro);
   AFilterControl.Free;
 end;
          (cxPropertiesStore.StorageStream as TMemoryStream).Position := 0;
           cxPropertiesStore.StoreTo(true);
          (cxPropertiesStore.StorageStream as TMemoryStream).SaveToFile(('C:\Sistemas\HelpStore\filtros\'+cxPropertiesStore.StorageName));

  //lcMain.Store;
end;



procedure TfrmListaPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   //fui obrigado a retirar a propriedade shortcut pois ocorria o fechamento da tela
  // na ocorrencia de erro e posterior tratamento do madshi.
  if key = vk_return then
    SelectNext(ActiveControl,True,True);
end;

procedure TfrmListaPadrao.ActCadLookupExecute(Sender: TObject);
var
  campo,classe : string;
  Formulario: TFormClass;
begin
  inherited;
  {Para que o lookup funcione corretamente são necessários os seguintes passos:
   1 - Colocar o nome do componente de controle (dblookup) letra+NOME DO FORM A SER CRIADO
       ex: no cadastro de fornecedores de tem o dblookup de bancos, logo o nome do dblookup precisa ser
       aTfrmCadBancos.

   2 - Em todo formulario que for instanciado por lookup (como é o caso de FrmCadbancos) é necessário
       colocar a clausula inicialization da classe

   3 - Já para que o botão funcione, basta manter o mesmo padrao do que já é utilzado
   ex: colocar no onclick do botao ---> CadastroLookup(TfrmCadBancos,dtEdit,'BANCO_C1',QryBanco1);
  }
  if (TcxDBLookupComboBox(Screen.ActiveControl).Parent is TcxDBLookupComboBox) then
  begin
    //'extraindo' a classe do nome do controle
    Classe := copy(TcxDBLookupComboBox(TcxDBLookupComboBox(Screen.ActiveControl).Parent).name,2,50);

    //capturando a classe, so ira funcionar se ela estiver inicializada, por isso a necessidade do inicialization
    Formulario := TFormClass(GetClass(Classe));

    //pegando o nome do field no controle
    campo := TcxDBLookupComboBox(TcxDBLookupComboBox(Screen.ActiveControl).Parent).DataBinding.DataField;

    if not Assigned(Formulario) then
      exit;

    //chamando a rotina de lookup
    //CadastroLookup(Formulario,dtEdit,campo,TIBQuery(TcxDBLookupComboBox(TcxDBLookupComboBox(Screen.ActiveControl).Parent).Properties.listsource.dataset));
  end;
end;

procedure TfrmListaPadrao.ActFilterExecute(Sender: TObject);
begin
  inherited;
    //Filtro a ser implementado no fomulario descentente
  dtList.Open;
  TVGrid.ViewData.Expand(True);
end;

end.
