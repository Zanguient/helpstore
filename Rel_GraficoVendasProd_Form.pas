 unit Rel_GraficoVendasProd_Form;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, TeEngine, Series, TeeProcs,
  Chart, DBChart{, QrTee};

type
  TQrp2 = class(TQuickRep)
    TitleBand1: TQRBand;
  private

  public

  end;

var
  Qrp2: TQrp2;

implementation

uses Relatorios_DM, Application_DM, GraficoVendas_Form,
  GraficoVendasGrupoProdutos_Form;

{$R *.DFM}

end.
