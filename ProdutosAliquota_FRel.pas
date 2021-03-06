 unit ProdutosAliquota_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, Menus,
  cxButtons, cxLabel;

type
  TFRelProdutosAliq = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    Label2: TcxLabel;
    Print: TRDprint;
    ActBuscarProd: TAction;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    Label7: TcxLabel;
    EdTipo: TdxPickEdit;
    CmbAliquota: TdxPickEdit;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure cmbFornecedorEnter(Sender: TObject);
    procedure cmbFornecedorExit(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FRelProdutosAliq: TFRelProdutosAliq;
  Linha, Pagina: Integer;
implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelProdutosAliq.FormCreate(Sender: TObject);
begin
  // Se o Usu�rio for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelProdutosAliq.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelProdutosAliq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  //
  Action := caFree;
  FRelProdutosAliq := Nil;
end;

procedure TFRelProdutosAliq.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelProdutosAliq.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodap�...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelProdutosAliq.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabe�alho...
  Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 80), [Normal]);
                    //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  Print.ImpF(05, 01, '         Codigo Nome                                                  Estoque  Data U.C. Qtdade U.C. Preco U.C.  Preco Venda  Qdade Loja', [Comp17]);
  Print.ImpF(06, 01, '--------------- -------------------------------------------------- ---------- ---------- ----------- ---------- ------------ -----------', [Comp17]);
  linha  := 07;
end;

procedure TFRelProdutosAliq.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try

  Except
    On E:EDataBaseError Do
       Begin
         ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
         Exit;
       End
    Else
       Begin
         ShowMessage('Ocorreu um Erro n�o identificado pelo Sistema !');
         Exit;
       End;
  End;
end;

procedure TFRelProdutosAliq.ActPreviewExecute(Sender: TObject);
begin
  //
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  Print.TitulodoRelatorio := 'Listagem de Produtos por Aliquota - (' + Trim(CmbAliquota.Text) + ')';
  //
  DMRelatorios.ProdutosFornecedor.Close;

  DMRelatorios.ProdutosFornecedor.SQL.Clear ;

  DMRelatorios.ProdutosFornecedor.SQL.Add (' SELECT CODIGO, NOME, QTDADE_2, DT_ULT_COMPRA, QT_ULT_COMPRA,                   ');
  DMRelatorios.ProdutosFornecedor.SQL.Add (' PRC_REPOS, PRC_VENDA FROM EST_PRODUTOS WHERE CNPJ = :CNPJ AND ATIVO = :ATV AND ');
  DMRelatorios.ProdutosFornecedor.SQL.Add (' ALIQUOTA_ECF = :FORNECEDOR ORDER BY NOME                                       ');

  DMRelatorios.ProdutosFornecedor.ParamByName('CNPJ').asString     := DMApp.Cnpj;
  If EdTipo.Text = 'Ativo' Then
      DMRelatorios.ProdutosFornecedor.ParamByName('ATV' ).asString     := 'S'
      Else
          DMRelatorios.ProdutosFornecedor.ParamByName('ATV' ).asString     := 'N';

  If cmbAliquota.Text <> '' Then
     DMRelatorios.ProdutosFornecedor.ParamByName('FORNECEDOR').asString := cmbAliquota.text
  Else
     Begin
       ShowMessage('Voc� deve informar corretamente a Al�quota !');
       Exit;
     End;
  //
  DMRelatorios.ProdutosFornecedor.Open;
  //
  If DMRelatorios.ProdutosFornecedor.RecordCount = 0 Then
     Begin
       ShowMessage('N�o h� registro a imprimir para o per�odo, verifique !');
       //
       DMRelatorios.ProdutosFornecedor.Close;
       //
       cmbAliquota.SetFocus;
       Exit;
     End
     Else
     Begin
          lblStatus.Visible := False ;
          DMRelatorios.ProdutosFornecedor.FetchAll ;
          Anda.Max := DMRelatorios.ProdutosFornecedor.RecordCount;
          Anda.Position := 0;
          Anda.Visible  := TRUE ;
     End;
  //
  print.Abrir;
  //
  DMRelatorios.ProdutosFornecedor.First;
  While Not DMRelatorios.ProdutosFornecedor.Eof Do
        Begin
          //
          Print.ImpF(Linha, 01, Format('%15s %-50s %10s %10s %11s %10s %12s ___________',
                                       [DMRelatorios.ProdutosFornecedorCODIGO.Text,
                                        copy(DMRelatorios.ProdutosFornecedorNOME.Text,1,45),
                                        DMRelatorios.ProdutosFornecedorQTDADE_2.Text,
                                        DMRelatorios.ProdutosFornecedorDT_ULT_COMPRA.Text,
                                        DMRelatorios.ProdutosFornecedorQT_ULT_COMPRA.Text,
                                        DMRelatorios.ProdutosFornecedorPRC_REPOS.Text,
                                        DMRelatorios.ProdutosFornecedorPRC_VENDA.Text]), [Comp17]);
          //
          Anda.Position := Anda.Position + 1;
          DMRelatorios.ProdutosFornecedor.Next;
          //
          Inc(Linha);
          //
          If Linha >= 63 Then
             Print.Novapagina;
        End;
  //
  DMRelatorios.ProdutosFornecedor.Close;
  //
  Anda.Visible:= False;
  print.Fechar;
end;

procedure TFRelProdutosAliq.cmbFornecedorEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFRelProdutosAliq.cmbFornecedorExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

end.
