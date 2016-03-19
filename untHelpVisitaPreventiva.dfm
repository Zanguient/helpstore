object frmHelpVisitaPreventiva: TfrmHelpVisitaPreventiva
  Left = 199
  Top = 105
  Width = 593
  Height = 436
  Caption = 'HelpStore - Ajuda'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RichEdit1: TRichEdit
    Left = 0
    Top = 0
    Width = 577
    Height = 398
    Align = alClient
    Color = 14680063
    Lines.Strings = (
      'Formul'#225'rio - Manuten'#231#227'o Visitas Preventivas'
      ''
      '1 - Objetivo '
      
        '     Permitir a gera'#231#227'o autom'#225'tica de Ordens de Servi'#231'o para vis' +
        'itas preventivas'
      ''
      '2 - Pr'#233' Requisitos'
      
        '     a -  Todos os Equipamentos que forem objetos de visitas pre' +
        'ventivas dever'#227'o estar previamente definidos com o '
      
        'par'#226'metro '#39'Preventiva'#39' estipulado no Contrato de Atendimento. Es' +
        'te par'#226'metro representa a quantidade de DIAS '#224' '
      
        #39'autorizar'#39' uma visita preventiva ap'#243's a '#250'ltima Ordem de Servi'#231'o' +
        ' Fechada no sistema (Data de Fechamento).'
      
        '            M'#243'dulo'#224'Servi'#231'os'#224'Cadastros'#224'Contrato de Atendimento'#224#39'E' +
        'quipamentos'#39' - '#39'Par'#226'metros - '
      'Dias/Horas'#39'-'#39'PREVENTIVA'#39)
    ReadOnly = True
    TabOrder = 0
  end
end
