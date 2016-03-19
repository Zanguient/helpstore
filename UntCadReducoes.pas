unit UntCadReducoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untCadPadrao, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinsdxBarPainter, cxIntlBase, cxintl, cxPropertiesStore,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxBarDBNav, ImgList, ActnList,
  dxBar, cxClasses, IBQuery, IBCustomDataSet, cxLabel, cxTextEdit,
  cxDBEdit, ExtCtrls, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxPC;

type
  TfrmCadReducoes = class(TfrmCadPadrao)
    dtListCNPJ: TIBStringField;
    dtListCODIGO: TIntegerField;
    dtListPERC_ESTADUAL: TFloatField;
    dtListPERC_INTERESTADUAL: TFloatField;
    dtListMENSAGEM_NF: TIBStringField;
    dtListMENSAGEM_NF_IE: TIBStringField;
    dtListPERC_CONTRIBUINTE: TFloatField;
    GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn;
    GridDBBandedTableView2PERC_ESTADUAL: TcxGridDBBandedColumn;
    GridDBBandedTableView2PERC_INTERESTADUAL: TcxGridDBBandedColumn;
    GridDBBandedTableView2MENSAGEM_NF: TcxGridDBBandedColumn;
    GridDBBandedTableView2MENSAGEM_NF_IE: TcxGridDBBandedColumn;
    GridDBBandedTableView2PERC_CONTRIBUINTE: TcxGridDBBandedColumn;
    dtEditCNPJ: TIBStringField;
    dtEditCODIGO: TIntegerField;
    dtEditPERC_ESTADUAL: TFloatField;
    dtEditPERC_INTERESTADUAL: TFloatField;
    dtEditMENSAGEM_NF: TIBStringField;
    dtEditMENSAGEM_NF_IE: TIBStringField;
    dtEditPERC_CONTRIBUINTE: TFloatField;
    cxLabel3: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadReducoes: TfrmCadReducoes;

implementation

{$R *.dfm}

end.
