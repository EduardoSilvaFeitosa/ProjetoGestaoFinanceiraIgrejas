object FrmReportBase: TFrmReportBase
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FrmReportBase'
  ClientHeight = 567
  ClientWidth = 795
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Report: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    Borders.Color = 14277081
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object bdFooterMain: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 30
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Borders.Color = 14277081
      object lbEmitidoEm: TRLLabel
        Left = 20
        Top = 9
        Width = 78
        Height = 16
        Caption = 'Emitido em :'
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object siEmitidoEm: TRLSystemInfo
        Left = 104
        Top = 9
        Width = 37
        Height = 16
        Color = clWhite
        Info = itNow
        ParentColor = False
        Text = ''
        Transparent = False
      end
    end
  end
  object PDFFilter: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.1.2 \251 Copyright '#169' 1999-20' +
      '21 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 296
    Top = 304
  end
  object PgDriver: TFDPhysPgDriverLink
    VendorHome = 'D:\Dev\projeto-tcc\Backend\Business'
    Left = 712
    Top = 35
  end
  object Connection: TFDConnection
    Params.Strings = (
      'ConnectionDef=connection_tcc')
    LoginPrompt = False
    Left = 661
    Top = 34
  end
end
