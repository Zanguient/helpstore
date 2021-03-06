 unit Mesas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ActnList, dxBarDBNav, dxBar, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  IBCustomDataSet,
  dxDBEdtr, dxCntner, ExtCtrls, Buttons, StdCtrls,    
  Grids, DBGrids, DBCtrls, Mask, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxClasses,
  cxPC, cxLabel;

type
  TFrmMesas = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Image1: TImage;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Panel1: TPanel;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Label1: TcxLabel;
    Label3: TcxLabel;
    Shape1: TShape;
    EdCodigo: TdxDBEdit;
    edMesa: TdxDBEdit;
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    btnLocalizar: TdxBarButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    BtnListagem: TdxBarButton;
    BtnFechar: TdxBarButton;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActLocalizar: TAction;
    ActListagem: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    ActFechar: TAction;
    actLookup: TAction;
    DataSource: TDataSource;
    DBCheckBox1: TDBCheckBox;
    dxBarButton1: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure cmbNomeRazaoEnter(Sender: TObject);
    procedure cmbNomeRazaoExit(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMesas: TFrmMesas;

implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes;

{$R *.DFM}

procedure TFrmMesas.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
  //
  FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('CODIGO').asInteger;

  //
  If DataSource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;

  If FrmMesas.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;
  //
  Action := caFree;
  frmMesas := Nil;
end;

procedure TFrmMesas.ActIncluirExecute(Sender: TObject);
begin
    If DataSource.State in dsEditModes Then
      Exit;
    Try
       DataSource.DataSet.Append;
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

procedure TFrmMesas.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir esta mesa ?',
                       'Aten��o !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
  DataSource.Dataset.Delete;

end;

procedure TFrmMesas.ActPostExecute(Sender: TObject);
begin
  Try
   If DataSource.State in dsEditModes Then
   begin
       DataSource.DataSet.Post;
       DMApp.Transaction.CommitRetaining;
   end;

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
  end;
end;

procedure TFrmMesas.ActCancelExecute(Sender: TObject);
begin
  if DataSource.DataSet.State in dsEditModes Then
    DataSource.DataSet.Cancel
  else
    BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmMesas.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );

  Try
     If Not(Datasource.DataSet.Active) Then
       DataSource.DataSet.Open;

     (Datasource.DataSet as TIBDataset).FetchAll;
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

procedure TFrmMesas.FormCreate(Sender: TObject);
begin

  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usu�rio for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmMesas.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmMesas.EdCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
       If Self.ActiveControl = pc Then
          Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmMesas.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmMesas.ActFecharExecute(Sender: TObject);
begin
  If FrmMesas.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmMesas.cmbNomeRazaoEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFrmMesas.cmbNomeRazaoExit(Sender: TObject);
begin
     TIRACORFUNDO(SENDER);
end;

procedure TFrmMesas.actEditarExecute(Sender: TObject);
begin
  with dmCadastros do
  begin
    Mesas.edit;
  end;
end;

procedure TFrmMesas.ActAlterarExecute(Sender: TObject);
begin
  if DataSource.State in dsEditModes then
    Exit;

  Try
    dmcadastros.Mesas.Edit;
  Except
    On E:EDataBaseError Do
    Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
         Exit;
    End
    Else
        Begin
             MessageDlg('Ocorreu um Erro n�o identificado pelo Sistema !',MtError,[MbOk],0);
             Exit;
    End;
  End;
end;

procedure TFrmMesas.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes
  Then Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       ActLocalizar.Enabled := False;
       ActListagem.Enabled  := False;
       BtnSalvar.Enabled    := True;
       BtnCancelar.Enabled  := True;
       ActFechar.Enabled    := False;
  End
  Else Begin
       ActIncluir.Enabled   := ActIncluir.Tag = 1;
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       ActExcluir.Enabled   := ActExcluir.Tag = 1;
       ActLocalizar.Enabled := True;
       ActListagem.Enabled  := ActListagem.Tag = 1;
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
  End;
end;

end.
