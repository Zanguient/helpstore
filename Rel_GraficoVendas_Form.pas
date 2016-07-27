 unit Rel_GraficoVendas_Form;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, TeEngine, Series, TeeProcs,
  Chart, DBChart{, QrTee};

type
  TQrp = class(TQuickRep)
    TitleBand1: TQRBand;
  private

  public

  end;

var
  Qrp: TQrp;

implementation

uses Relatorios_DM, Application_DM, GraficoVendas_Form;

{$R *.DFM}

end.
