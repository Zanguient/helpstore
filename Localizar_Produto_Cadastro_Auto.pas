 unit Localizar_Produto_Cadastro_Auto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Db, ActnList, Buttons, ExtCtrls, IBQuery,  IBCustomDataSet, cxPropertiesStore,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, cxButtons, cxLabel, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGroupBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxRadioGroup, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue;

type
  TFrmLocProdutoCadastro_Auto = class(TForm)
    Actions: TActionList;
    ActOk: TAction;
    ActCancelar: TAction;
    DSource: TDataSource;
    stgLocalizarProduto: TcxPropertiesStore;
    pnlTop: TcxGroupBox;
    Label6: TcxLabel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    cxLabel1: TcxLabel;
    EdCodigo: TcxTextEdit;
    EdNome: TcxTextEdit;
    EdCodigoFab: TcxTextEdit;
    EdCodigoSec: TcxTextEdit;
    GRID: TcxGrid;
    GRIDDBTableView1: TcxGridDBTableView;
    GRIDLevel1: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    RdCodigo: TcxRadioButton;
    RDNOME: TcxRadioButton;
    RzBitBtn1: TcxButton;
    BtnCancelar: TcxButton;
    qryLocalizarProduto: TIBQuery;
    qryLocalizarProdutoCODIGO: TIBStringField;
    qryLocalizarProdutoNOME: TIBStringField;
    qryLocalizarProdutoQTDADE_2: TFloatField;
    qryLocalizarProdutoQTDADE_1: TFloatField;
    qryLocalizarProdutoPRC_VENDA: TFloatField;
    qryLocalizarProdutoCODIGO_2: TIBStringField;
    qryLocalizarProdutoPRC_REPOS: TFloatField;
    qryLocalizarProdutoMARCA: TIBStringField;
    qryLocalizarProdutoSERIE: TIBStringField;
    qryLocalizarProdutoMDL_CODIGO: TIntegerField;
    qryLocalizarProdutoMODELO: TIBStringField;
    qryLocalizarProdutoSECAO: TIBStringField;
    qryLocalizarProdutoLOCALIZACAO_1: TIBStringField;
    qryLocalizarProdutoLOCALIZACAO_2: TIBStringField;
    qryLocalizarProdutoLOCALIZACAO_3: TIBStringField;
    qryLocalizarProdutoCODIGO_FABRICANTE: TIBStringField;
    qryLocalizarProdutoCOMPLEMENTO: TIBStringField;
    GRIDDBTableView1CODIGO: TcxGridDBColumn;
    GRIDDBTableView1NOME: TcxGridDBColumn;
    GRIDDBTableView1QTDADE_2: TcxGridDBColumn;
    GRIDDBTableView1QTDADE_1: TcxGridDBColumn;
    GRIDDBTableView1PRC_VENDA: TcxGridDBColumn;
    GRIDDBTableView1CODIGO_2: TcxGridDBColumn;
    GRIDDBTableView1PRC_REPOS: TcxGridDBColumn;
    GRIDDBTableView1MARCA: TcxGridDBColumn;
    GRIDDBTableView1SERIE: TcxGridDBColumn;
    GRIDDBTableView1MDL_CODIGO: TcxGridDBColumn;
    GRIDDBTableView1MODELO: TcxGridDBColumn;
    GRIDDBTableView1SECAO: TcxGridDBColumn;
    GRIDDBTableView1LOCALIZACAO_1: TcxGridDBColumn;
    GRIDDBTableView1LOCALIZACAO_2: TcxGridDBColumn;
    GRIDDBTableView1LOCALIZACAO_3: TcxGridDBColumn;
    GRIDDBTableView1CODIGO_FABRICANTE: TcxGridDBColumn;
    GRIDDBTableView1COMPLEMENTO: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure GridDblClick(Sender: TObject);
    procedure ActOkExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GRIDEnter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdCodigoEnter(Sender: TObject);
    procedure EdNomeEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlTopExit(Sender: TObject);
    procedure EdCodigoExit(Sender: TObject);
  private
    { Private declarations }
    sqlOriginal : string;

    function  GetTrecho: String;
    function  GetTrechoNome: String;
    function  GetTrechoPrecoVenda: String;
    Procedure Ordenar;
    Procedure FiltraTodos;
    Procedure FiltraCodigo;
    Procedure FiltraNome;
    Procedure FiltraCodigoFab;
    Procedure LimpaEdit;
    Procedure FiltraCodigoSec;
  public
    { Public declarations }
    Vendedor: Integer;
    CampTrecho: String;
    CampTrechoNome: String;
    CampTrechoPrecoVenda: String;
  end;

var
  FrmLocProdutoCadastro_Auto: TFrmLocProdutoCadastro_Auto;

implementation

uses
    Application_DM,
    Funcoes,
    Main,
    Usuarios_DM, Produtos_Form;


{$R *.DFM}

function TFrmLocProdutoCadastro_Auto.GetTrecho: String ;
begin
  Result := DSource.DataSet.FieldByName ('CODIGO').AsString ;
end;

procedure TFrmLocProdutoCadastro_Auto.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     If UPPERCASE(DmApp.ORDENA_VENDA) <> 'NOME'
     then begin
          rdcodigo.Checked := True;
          EdCodigo.SetFocus ;
     end
     else begin
          rdNome.Checked := True;
          EdNome.SetFocus ;
     end;
end;

procedure TFrmLocProdutoCadastro_Auto.GridKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13  then
      ActOk.Execute;
   { else if key = #27 then
    begin
      If RdCodigo.Checked then
        EdCodigo.SetFocus
      else
        EdNome.SetFocus
    end;}
end;

procedure TFrmLocProdutoCadastro_Auto.GridDblClick(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrmLocProdutoCadastro_Auto.ActOkExecute(Sender: TObject);
begin
  If (qryLocalizarProdutoCodigo.asString <> '') then
  begin
    CampTrecho           := GetTrecho;
    CampTrechoNome       := GetTrechoNome;
    CampTrechoPrecoVenda := GetTrechoPrecoVenda;
    ModalResult := mrOk;
  end;
end;

procedure TFrmLocProdutoCadastro_Auto.ActCancelarExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmLocProdutoCadastro_Auto.Ordenar;
begin
{  If RdNome.Checked then
    EdNome.SetFocus
  else
    EdCodigo.SetFocus ; }
end;

procedure TFrmLocProdutoCadastro_Auto.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmLocProdutoCadastro_Auto.GRIDEnter(Sender: TObject);
begin
     ActOk.ShortCut       := 13 ;
     ActCancelar.ShortCut := VK_F12 ;
end;

procedure TFrmLocProdutoCadastro_Auto.GRIDExit(Sender: TObject);
begin
     ActOk.ShortCut       := VK_F12 ;
     ActCancelar.ShortCut := 27 ;
end;

procedure TFrmLocProdutoCadastro_Auto.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  if DMUsuarios.Direito = 'SUPERVISOR' then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, FrmLocProdutoCadastro_Auto.Caption, ListaActions(Actions))
  else If DMUsuarios.Objeto = Self.Name then
     AtivaActions(Actions, DMUsuarios.Direito);

  DSource.DataSet := qryLocalizarProduto;
  sqlOriginal := qryLocalizarProduto.sql.text;
  Vendedor := 0; //Necessário por conta da tabela de preços que é por vendedor
end;

procedure TFrmLocProdutoCadastro_Auto.EdCodigoEnter(Sender: TObject);
begin
     CorFundo( Sender );


     RDNOME.Checked := False ;
     RdCodigo.Checked := True ;
     Ordenar ;
end;

procedure TFrmLocProdutoCadastro_Auto.EdNomeEnter(Sender: TObject);
begin
     CorFundo( Sender );

     RdCodigo.Checked := False ;

     RdNome.Checked := True ;

     Ordenar ;
end;

procedure TFrmLocProdutoCadastro_Auto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryLocalizarProduto.sql.text := sqlOriginal;
end;

function TFrmLocProdutoCadastro_Auto.GetTrechoNome: String;
begin
  Result := DSource.DataSet.FieldByName ('NOME').AsString ;
end;

function TFrmLocProdutoCadastro_Auto.GetTrechoPrecoVenda: String;
begin
  Result := DSource.DataSet.FieldByName ('PRC_VENDA').asstring ;
end;

procedure TFrmLocProdutoCadastro_Auto.pnlTopExit(Sender: TObject);
begin
  if trim(EdCodigo.text) <> '' then
    FiltraCodigo
  else
    if trim(EdNome.text) <> '' then
      FiltraNome
  else
    if trim(EdCodigoFab.text) <> '' then
      FiltraCodigoFab
  else
    if trim(EdCodigoSec.text) <> '' then
      FiltraCodigoSec
  else
    FiltraTodos;
end;

procedure TFrmLocProdutoCadastro_Auto.FiltraCodigo;
Var
   Aux : String;
begin
     If Trim(EdCodigo.Text) <> '' then
     begin
       Aux := EdCodigo.Text ;
       If DmApp.Elimina_Zeros = 'S' THEN
       BEGIN
         While Copy(Aux, 1, 1) = '0' DO
         BEGIN
           Aux := Copy ( Aux, 2, 15 );
         End;
       END;

       If DmApp.Acrescenta_Zeros = 'S' THEN
       BEGIN
         While Length ( Aux ) < 10 DO
         BEGIN
           Aux := '0' + Aux ;
         End;
       END ;

       //VERIFICA SE TEM GRADE
       IF (( LENGTH( TRIM( AUX )) = 15 ) AND ( DMAPP.EST_USA_GRADE = 'S' )) THEN
       BEGIN
         AUX := COPY(AUX,  1, 6);
       END;

      EdCodigo.Text := Aux ;

	  //FECHA O REGISTRO E TRAZ OS NOVOS REGISTROS
       qryLocalizarProduto.Close;
       if (FrmProdutos = nil) then
         qryLocalizarProduto.sql.text := sqlOriginal + ' where prd.cnpj = :cnpj and prd.ativo = ''S'' and prd.codigo like '+QuotedStr(trim(EdCodigo.Text)+'%')+' order by prd.codigo '
       else
         qryLocalizarProduto.sql.text := sqlOriginal + ' where prd.cnpj = :cnpj and prd.codigo like '+QuotedStr(trim(EdCodigo.Text)+'%')+' order by prd.codigo ';

      // qryLocalizarProduto.parambyname('vendedor').value := vendedor;
       qryLocalizarProduto.Open;
       LimpaEdit;
    end;
end;

procedure TFrmLocProdutoCadastro_Auto.FiltraNome;
var
  sql : string;
begin
     if (FrmProdutos = nil) then
       sql := sqlOriginal + ' where prd.cnpj = :cnpj and prd.nome like ''%''||'+QuoTedStr(EdNome.text)+'||''%''  order by prd.nome '
     else
       sql := sqlOriginal + ' where prd.cnpj = :cnpj and prd.ativo = ''S'' and prd.nome like ''%''||'+QuoTedStr(EdNome.text)+'||''%''  order by prd.nome ';

     qryLocalizarProduto.Close;
     qryLocalizarProduto.sql.text := sql;
     qryLocalizarProduto.Open;

     //LocateNext = Apos a Posicao corrente do Cursor
     if qryLocalizarProdutoCodigo.asString = '' Then
        MessageDlg('Produto Não Encontrado!', mtInformation, [mbOK], 0);

     LimpaEdit;

end;

procedure TFrmLocProdutoCadastro_Auto.FiltraCodigoFab;
Var
   Aux : String;
begin
  qryLocalizarProduto.Close;

  if (FrmProdutos = nil) then
    qryLocalizarProduto.sql.text := sqlOriginal + ' where prd.cnpj = :cnpj and prd.ativo = ''S'' and prd.codigo_fabricante like '+QuotedStr(trim(EdCodigoFab.Text)+'%')+' order by prd.codigo_fabricante '
  else
    qryLocalizarProduto.sql.text := sqlOriginal + ' where prd.cnpj = :cnpj and codigo_fabricante like '+QuotedStr(trim(EdCodigoFab.Text)+'%')+' order by codigo_fabricante ';

  // qryLocalizarProduto.parambyname('vendedor').value := vendedor;
  qryLocalizarProduto.Open;
  LimpaEdit;

end;

procedure TFrmLocProdutoCadastro_Auto.EdCodigoExit(Sender: TObject);
begin
 TiraCorFundo ( Sender );
 //GRID.SetFocus;
end;

procedure TFrmLocProdutoCadastro_Auto.FiltraTodos;
begin
  qryLocalizarProduto.Close;
  if (FrmProdutos = nil) then
    qryLocalizarProduto.sql.text := sqlOriginal + ' where prd.cnpj = :cnpj and prd.ativo = ''S''  order by prd.nome '
  else
    qryLocalizarProduto.sql.text := sqlOriginal + ' where prd.cnpj = :cnpj order by prd.nome ';

  // qryLocalizarProduto.parambyname('vendedor').value := vendedor;
  qryLocalizarProduto.Open;
  LimpaEdit;
end;

procedure TFrmLocProdutoCadastro_Auto.LimpaEdit;
begin
  EdCodigo.Clear;
  EdNome.Clear;
  EdCodigoFab.Clear;
  EdCodigoSec.Clear;
end;

procedure TFrmLocProdutoCadastro_Auto.FiltraCodigoSec;
var
  sql : string;
begin
  if (FrmProdutos = nil) then
    sql := sqlOriginal + ' where prd.cnpj = :cnpj and  prd.codigo_2 like ''%''||'+QuoTedStr(trim(EdCodigoSec.text))+'||''%''  order by  prd.codigo_2 '
  else
    sql := sqlOriginal + ' where prd.cnpj = :cnpj and prd.ativo = ''S'' and  prd.codigo_2 like ''%''||'+QuoTedStr(trim(EdCodigoSec.text))+'||''%''  order by  prd.codigo_2 ';

  qryLocalizarProduto.Close;
  qryLocalizarProduto.sql.text := sql;
  qryLocalizarProduto.Open;

  //LocateNext = Apos a Posicao corrente do Cursor
  if qryLocalizarProdutoCodigo.asString = '' Then
    MessageDlg('Produto Não Encontrado!', mtInformation, [mbOK], 0);

  LimpaEdit;
end;

end.

