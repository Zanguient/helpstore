unit UntCartaCorrecao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxPC, cxContainer, cxEdit, cxGroupBox, cxTextEdit,
  cxMemo, OleCtrls, SHDocVw, Menus, ActnList, StdCtrls, cxButtons, ACBrNFe,
  ACBrNFeDANFEClass,  DB, IBCustomDataSet,
   cxLabel, ACBrBase, ACBrDFe;

type
  TFrmCartaCorrecao = class(TForm)
    cxPageControl1: TcxPageControl;
    TabRespostas: TcxTabSheet;
    TabXML: TcxTabSheet;
    MemoResp: TcxMemo;
    ActionList1: TActionList;
    ActImprimir: TAction;
    ActGeraPDF: TAction;
    ACBrNFe1: TACBrNFe;
    DtVenda: TIBDataSet;
    DsVenda: TDataSource;
    DtVendaCODIGO: TIntegerField;
    DtVendaCNPJ: TIBStringField;
    DtVendaNFE_CHAVE: TIBStringField;
    DtVendaNFE_XML: TMemoField;
    DtVendaCARTA_CORRECAO_ELETRONICA: TMemoField;
    DtVendaCCE_SEQUENCIA: TIntegerField;
    DtVendaNUM_NF: TIntegerField;
    TabCorrecao: TcxTabSheet;
    MemoCorrecao: TcxMemo;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGroupBox1: TcxGroupBox;
    WBResposta: TWebBrowser;
    cxGroupBox2: TcxGroupBox;
    cxButton3: TcxButton;
    BtnVisualizar: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure ActGeraPDFExecute(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure ActImprimirExecute(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure DtVendaAfterOpen(DataSet: TDataSet);
  private
    { Private declarations } 
    procedure CartaCorrecao;    
    procedure LoadXML(MyMemo: TcxMemo; MyWebBrowser: TWebBrowser);
  public
    { Public declarations }
    Venda: Integer;
  end;

var
  FrmCartaCorrecao: TFrmCartaCorrecao;
  CorrecaoXML, CorrecaoAnterior: String;

implementation

uses Application_DM, pcnconversao, ACBrUtil, Cadastros_Dm2, 
  pcnEnvEventoNFe, ACBrNFeWebServices, pcnRetEnvEventoNFe, pcnEventoNFe;//ACBrNFeWebServices;

{$R *.dfm}

procedure TFrmCartaCorrecao.LoadXML(MyMemo: TcxMemo; MyWebBrowser: TWebBrowser);
begin
  MyMemo.Lines.SaveToFile(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');
  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');
end;

procedure TFrmCartaCorrecao.CartaCorrecao;
var
 Chave, idLote, CNPJ, nSeqEvento, Correcao : string;
begin
  Chave := DtVendaNFE_CHAVE.Value;
  idLote := FormatDateTime('yymmddhhmm', NOW);
  CNPJ := DtVendaCNPJ.Value;

  if DtVendaCCE_SEQUENCIA.AsInteger > 0 then
    nSeqEvento := IntToStr( DtVendaCCE_SEQUENCIA.Value + 1)
  else
    nSeqEvento := '1';
    
  if (MemoCorrecao.Text <> '') or (Length(MemoCorrecao.Text) < 16) then
    Correcao := MemoCorrecao.Text//'Correção a ser considerada, texto livre. A correção mais recente substitui as anteriores.';
  else
  begin
    Application.MessageBox('Campo Correção tem que ser preenchido com pelo menos 15 caracteres. ','Erro',MB_OK + MB_ICONERROR);
    MemoCorrecao.SetFocus;
    Exit;
  end;

  if (Correcao = CorrecaoAnterior) and (Application.MessageBox('Correção igual a última efetuada. Deseja continuar?','Erro',MB_YESNO + MB_ICONERROR) = mrNo) then
  begin
    MemoCorrecao.SetFocus;
    Exit;
  end;
  {if not(InputQuery('WebServices Eventos: Carta de Correção', 'Correção a ser considerada', Correcao)) then
     exit; }
  DmApp.ACBrNFe.EventoNFe.Evento.Clear;

  with DmApp.ACBrNFe.EventoNFe.Evento.Add do
  begin
    infEvento.chNFe := Chave;
    infEvento.CNPJ   := CNPJ;
    infEvento.dhEvento := now;
    infEvento.tpEvento := teCCe;
    infEvento.nSeqEvento := StrToInt(nSeqEvento);
    infEvento.detEvento.xCorrecao := Correcao;
  end;

  if DmApp.ACBrNFe.EnviarEvento(StrToInt(idLote)) then//EnviarEventoNFe(StrToInt(idLote)) then
  begin
    CorrecaoXML := DmApp.ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.XML;
    MemoResp.Lines.Text := CorrecaoXML;
    LoadXML(MemoResp, WBResposta);

    if DmApp.ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat = 135 then
    begin
      DtVendaCARTA_CORRECAO_ELETRONICA.Value := DmApp.ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.XML;//UTF8Encode(DmApp.ACBrNFe.WebServices.EnvEvento.RetWS); //ACBrNFe1. NotasFiscais.Items[0].XML;
      DtVendaCCE_SEQUENCIA.Value := StrToInt(nSeqEvento);
      DtVenda.Post;
      DtVenda.Transaction.CommitRetaining;
      ActImprimir.Execute;
    end else
    begin
      Application.MessageBox('Carta de Correção não gerada','Verifique',MB_OK + MB_ICONERROR);
      Exit;
    end;
  end else
  begin
    with DmApp.ACBrNFe.WebServices.EnvEvento do
    begin
      raise Exception.Create(
        'Ocorreram erros ao enviar a Carta de Correção:' + sLineBreak +
        'Lote: '     + IntToStr(EventoRetorno.idLote) + sLineBreak +
        'Ambiente: ' + TpAmbToStr(EventoRetorno.tpAmb) + sLineBreak +
        'Orgao: '    + IntToStr(EventoRetorno.cOrgao) + sLineBreak +
        sLineBreak +
        'Status: '   + IntToStr(EventoRetorno.cStat) + sLineBreak +
        'Motivo: '   + EventoRetorno.xMotivo
      );
    end;
  end;
end;

procedure TFrmCartaCorrecao.FormShow(Sender: TObject);
begin
  cxPageControl1.HideTabs := True;
  MemoCorrecao.text := '';
  
  cxPageControl1.ActivePage := TabCorrecao;
  DtVenda.Close;
  DtVenda.ParamByName('CNPJ').Value := DmApp.cnpj;
  DtVenda.ParamByName('CODIGO').Value := Venda;
  DtVenda.Open;
  DtVenda.Edit;
  if DtVendaCARTA_CORRECAO_ELETRONICA.AsString <> '' then
  begin
    ACBrNFe1.EventoNFe.Evento.Clear;
    ACBrNFe1.EventoNFe.LerXMLFromString(DtVendaCARTA_CORRECAO_ELETRONICA.AsString);
    CorrecaoAnterior := ACBrNFe1.EventoNFe.Evento.Items[0].infEvento.detEvento.xCorrecao;
    MemoCorrecao.Text := CorrecaoAnterior;
  end;
end;

procedure TFrmCartaCorrecao.ActGeraPDFExecute(Sender: TObject);
begin
{  DmApp.ACBrNFe.DANFE.PathPDF := PathPDF;
  DmApp.ACBrNFeDANFERaveCB.MostrarPreview := True;

  DmApp.ACBrNFe.NotasFiscais.Clear;
  DmApp.ACBrNFe.NotasFiscais.LoadFromString(<XML Nota Eletrônica>);
 
  DmApp.ACBrNFe.EventoNFe.Evento.Clear;
  DmApp.ACBrNFe.EventoNFe.LerXMLFromString(<XML Evento>);

  DmApp.ACBrNFe.ImprimirEventoPDF;        }
end;

procedure TFrmCartaCorrecao.cxButton1Click(Sender: TObject);
begin
  CartaCorrecao; 
end;

procedure TFrmCartaCorrecao.ActImprimirExecute(Sender: TObject);
var
  FileXml, CartaXml, NomeArquivo: String;
begin
  NomeArquivo := 'CCe_' + DtVendaNUM_NF.AsString + '_Seq_' + DtVendaCCE_SEQUENCIA.AsString ;

  if not(DirectoryExists('C:\Sistemas\HelpStore\NFe\Temp\')) then
    CreateDir('C:\Sistemas\HelpStore\NFe\Temp\');

  FileXML := 'C:\Sistemas\HelpStore\NFe\Temp\'+DtVendaNUM_NF.AsString+'.tmp';
  DtVendaNFE_XML.SaveToFile(FileXML);

  CartaXml := 'C:\Sistemas\HelpStore\NFe\Temp\'+ NomeArquivo +'.xml';
  DtVendaCARTA_CORRECAO_ELETRONICA.SaveToFile(CartaXml);

    ACBrNFe1.NotasFiscais.Clear;
   ACBrNFe1.NotasFiscais.LoadFromFile(FileXML);

   ACBrNFe1.EventoNFe.Evento.Clear;
   ACBrNFe1.EventoNFe.LerXMLFromString(DtVendaCARTA_CORRECAO_ELETRONICA.AsString);                            
   //ACBrNFe1.EventoNFe.Evento.Items[0].InfEvento.cOrgao := StrToIntDef(copy(DtVendaNFE_CHAVE.AsString,1,2),0);

   ACBrNFe1.ImprimirEvento;
end;

procedure TFrmCartaCorrecao.cxButton2Click(Sender: TObject);
begin
  cxPageControl1.ActivePage := TabXML;
end;

procedure TFrmCartaCorrecao.cxButton3Click(Sender: TObject);
begin
  cxPageControl1.ActivePage := TabCorrecao;
end;

procedure TFrmCartaCorrecao.BtnVisualizarClick(Sender: TObject);
begin
  ActImprimir.Execute;
end;

procedure TFrmCartaCorrecao.DtVendaAfterOpen(DataSet: TDataSet);
begin
  if DtVendaCARTA_CORRECAO_ELETRONICA.AsString <> '' then
    BtnVisualizar.Enabled := True
  else
    BtnVisualizar.Enabled := False;
end;

end.

