unit UntExportaXml;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, dxmdaset, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, Menus, StdCtrls, cxButtons, ACBrNFe, pcnConversao, DateUtils,
  pcnConversaoNFe, ACBrBase, ACBrDFe;

type
  TFrmExportaXml = class(TForm)
    DtConsultaXml: TIBQuery;
    DsConsultaXml: TDataSource;
    MtbConsultaXml: TdxMemData;
    DsMtbConsultaXml: TDataSource;
    MtbConsultaXmlDtInicial: TDateField;
    MtbConsultaXmlDtFinal: TDateField;
    DtInicial: TcxDBDateEdit;
    cxLabel1: TcxLabel;
    DtFinal: TcxDBDateEdit;
    cxLabel2: TcxLabel;
    DtConsultaXmlNFE_XML: TMemoField;
    cxButton1: TcxButton;
    SaveDialog1: TSaveDialog;
    ACBrNFe1: TACBrNFe;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmExportaXml: TFrmExportaXml;

implementation

uses Application_DM, ShellApi, Funcoes;

{$R *.dfm}

procedure TFrmExportaXml.FormCreate(Sender: TObject);
begin
  DtConsultaXml.Close;
  DtConsultaXml.Open;

  MtbConsultaXml.Close;
  MtbConsultaXml.Open;
  MtbConsultaXml.Append;
end;

procedure TFrmExportaXml.cxButton1Click(Sender: TObject);
var
  CaminhoDestino, FileXml, Aux, AnoInicial, AnoFinal, MesInicial, MesFinal, CaminhoFiscal: String;
begin
  if not (MtbConsultaXmlDtInicial.Value > 0) and not (MtbConsultaXmlDtFinal.Value > 0) then
    Exit;
    
  DtConsultaXml.Close;
  DtConsultaXml.Open;
  DtConsultaXml.First;

  CaminhoFiscal := RetornaValor('SELECT NFE_GER_PATH_LOGS FROM SIS_EMPRESAS') + '\';
  CaminhoDestino := CaminhoFiscal;//'C:\Fiscal\';

  AnoInicial := IntToStr(YearOF(MtbConsultaXmlDtInicial.value));
  AnoFinal := IntToStr(YearOf(MtbConsultaXmlDtFinal.Value));
  
  if MonthOf(MtbConsultaXmlDtInicial.value) > 9 then
    MesInicial := IntToStr(MonthOf(MtbConsultaXmlDtInicial.value))
  else
    MesInicial := '0' + IntToStr(MonthOf(MtbConsultaXmlDtInicial.value));
    
  if MonthOf(MtbConsultaXmlDtFinal.value) > 9 then
    MesFinal := IntToStr(MonthOf(MtbConsultaXmlDtFinal.value))
  else
    MesFinal := '0' + IntToStr(MonthOf(MtbConsultaXmlDtFinal.value));

  if AnoInicial <> AnoFinal then
    CaminhoDestino := CaminhoDestino + AnoInicial + MesInicial + '_' + AnoFinal + MesFinal + '_exp' + '\'
  else
    if MesInicial <> MesFinal then
      CaminhoDestino := CaminhoDestino + AnoInicial + MesInicial + '_' + MesFinal + '_exp' + '\'
    else
      CaminhoDestino := CaminhoDestino + AnoInicial + MesInicial + '_exp' + '\';

  if not(DirectoryExists(CaminhoDestino)) then
    CreateDir(CaminhoDestino);

  while not DtConsultaXml.Eof do
  begin
    FileXML := CaminhoDestino + 'tmp.tmp';
    DtConsultaXmlNFE_XML.SaveToFile(FileXML);
    ACBrNFe1.NotasFiscais.LoadFromFile(FileXML);
    ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFe; // moNFe ou moNFCe
    Aux := ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
    Aux := Copy(Aux, 4, Length(Aux) - 3);
    FileXML := CaminhoDestino + Aux + '-nfe.xml';
    DtConsultaXmlNFE_XML.SaveToFile(FileXML);
    DeleteFile(CaminhoDestino + 'tmp.tmp');
    DtConsultaXml.Next;
    ACBrNFe1.NotasFiscais.Clear;
  end;

  Application.MessageBox(Pchar('Os arquivos XMLs foram salvos para a pasta "' + CaminhoFiscal + '".'
                          + #013 + 'O nome da pasta é composto pelo ano e o mês do período selecionado.'),'Aviso',mb_ok+mb_iconinformation);
  ShellExecute(Application.HANDLE, 'open', PChar(ExtractFilePath(CaminhoFiscal)),nil,nil,SW_SHOWNORMAL);
end;

end.
