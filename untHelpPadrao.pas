unit untHelpPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls, ComCtrls, DBCtrls;

type
  TfrmHelpPadrao = class(TForm)
    DBRichEdit1: TDBRichEdit;
    dsHelp: TDataSource;
    qryVerificaHelp: TIBQuery;
    qryVerificaHelpCNPJ: TIBStringField;
    qryVerificaHelpCODIGO: TIntegerField;
    qryVerificaHelpFORMULARIO: TIBStringField;
    qryVerificaHelpCONFIG: TMemoField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHelpPadrao: TfrmHelpPadrao;

implementation

{$R *.dfm}

end.
