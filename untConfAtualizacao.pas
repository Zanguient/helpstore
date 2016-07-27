unit untConfAtualizacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, DB, IBCustomDataSet, cxTextEdit, cxDBEdit, cxLabel,
  Menus, StdCtrls, cxButtons, ActnList, ImgList;

type
  TfrmConfAtualizacao = class(TForm)
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    dtConf: TIBDataSet;
    dsConf: TDataSource;
    dtConfCNPJ: TIBStringField;
    dtConfCODIGO: TIntegerField;
    dtConfPATH_SERVIDOR_EXE: TIBStringField;
    dtConfNOME_SERVIDOR: TIBStringField;
    cxLabel2: TcxLabel;
    edLocEXE: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    edLocAtualiza: TcxDBTextEdit;
    dtConfPATH_ATUALIZACAO: TIBStringField;
    OpenDialog: TOpenDialog;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    ImageList1: TImageList;
    ActionList1: TActionList;
    actSalvar: TAction;
    ActCancelar: TAction;
    actLocEXE: TAction;
    actLocAtualizacao: TAction;
    btnProximo: TcxButton;
    btnAnterior: TcxButton;
    btnDeletar: TcxButton;
    actProximo: TAction;
    actAnterior: TAction;
    actDeletar: TAction;
    procedure FormCreate(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure actLocEXEExecute(Sender: TObject);
    procedure actLocAtualizacaoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dtConfNewRecord(DataSet: TDataSet);
    procedure actProximoExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actDeletarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfAtualizacao: TfrmConfAtualizacao;

implementation

uses Application_DM, FileCtrl;

{$R *.dfm}

procedure TfrmConfAtualizacao.FormCreate(Sender: TObject);
begin
  dtConf.Close;
  dtConf.ParamByName('CNPJ').value := DmApp.CNPJ;
  dtConf.Open;
  dtConf.FetchAll;

  if dtConf.RecordCount = 1 then
    dtConf.Edit
  else
    if dtConf.RecordCount > 1 then
    begin
      Application.MessageBox('Mais de um registro de atualização encontrado. Exclua o incorreto.', 'Atenção', mb_ok + MB_ICONERROR);
      btnAnterior.Visible := True;
      btnProximo.Visible := True;
      btnDeletar.Visible := True;
      btnSalvar.Visible := False;
      btnCancelar.Visible := False;
    end else
      begin
        dtConf.Close;
        dtConf.Open;
        dtConf.Insert;
      end;
end;

procedure TfrmConfAtualizacao.actSalvarExecute(Sender: TObject);
begin
  if (dtConfPATH_SERVIDOR_EXE.Value <> null) and (dtConfNOME_SERVIDOR.Value <> null) and (dtConfPATH_ATUALIZACAO.Value <> null) then
  begin
    dtConf.Post;
    dtConf.Transaction.Commit;
    dtConf.Close;
    Close;
  end else
    Application.MessageBox('Preencha todos os campos antes de salvar.', 'Atenção', mb_ok + MB_ICONERROR);
end;

procedure TfrmConfAtualizacao.ActCancelarExecute(Sender: TObject);
begin
  if dtConf.State = dsInsert then
  begin
    dtConf.Cancel;
    dtConf.Insert;
  end else
  begin
    dtConf.Cancel;
    dtConf.Edit;
  end;
end;

procedure TfrmConfAtualizacao.actLocEXEExecute(Sender: TObject);
begin
  OpenDialog.Filter := '.exe';
  if OpenDialog.Execute then
    edLocEXE.Text := ExtractFilePath(OpenDialog.FileName);
end;

procedure TfrmConfAtualizacao.actLocAtualizacaoExecute(Sender: TObject);
var
  Dir: string;
const
  SELDIRHELP = 1000;
begin      
  //if OpenDialog.Execute then
  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
    edLocAtualiza.Text := Dir;//ExtractFilePath(OpenDialog.FileName);
end;

procedure TfrmConfAtualizacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dtConf.State in [dsInsert, dsEdit] then
  begin
    if Application.MessageBox('Atenção', 'Deseja salvar as alterações antes de sair?', mb_YesNo + MB_ICONQUESTION) = mrYes then
    begin
      dtConf.Post;
      dtConf.Transaction.Commit;
    end else
      dtConf.Cancel;
  end;
end;

procedure TfrmConfAtualizacao.dtConfNewRecord(DataSet: TDataSet);
begin
  dtConfCNPJ.value := DmApp.CNPJ;
end;

procedure TfrmConfAtualizacao.actProximoExecute(Sender: TObject);
begin
  dtConf.Next;
end;

procedure TfrmConfAtualizacao.actAnteriorExecute(Sender: TObject);
begin
  dtConf.Prior;
end;

procedure TfrmConfAtualizacao.actDeletarExecute(Sender: TObject);
begin
  dtConf.Delete; 
  dtConf.Transaction.Commit;  
  dtConf.Close;
  Close;
end;

end.
