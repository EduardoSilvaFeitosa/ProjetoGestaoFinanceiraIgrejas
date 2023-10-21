inherited FrmReportEntradas: TFrmReportEntradas
  Caption = 'FrmReportEntradas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Report: TRLReport
    DataSource = dtsMain
    inherited bdFooterMain: TRLBand
      Top = 241
      ExplicitTop = 241
    end
    object gpResumo: TRLGroup
      Left = 38
      Top = 38
      Width = 718
      Height = 203
      AllowedBands = [btHeader, btDetail]
      DataFields = 'competencia'
      PageBreaking = pbAfterPrint
      object bdHeade: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 65
        BandType = btHeader
        object RLDBText7: TRLDBText
          Left = 299
          Top = 30
          Width = 102
          Height = 20
          Alignment = taCenter
          DataField = 'competencia'
          DataSource = dtsMain
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
      end
      object sdtEntradas: TRLSubDetail
        Left = 0
        Top = 81
        Width = 718
        Height = 118
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.Color = 14277081
        DataSource = dtsEntradas
        object RLBand2: TRLBand
          Left = 0
          Top = 1
          Width = 718
          Height = 41
          BandType = btColumnHeader
          object Label1: TLabel
            Left = 24
            Top = 16
            Width = 55
            Height = 16
            Caption = 'Entradas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand5: TRLBand
          Left = 0
          Top = 66
          Width = 718
          Height = 52
          BandType = btSummary
          object RLLabel4: TRLLabel
            Left = 19
            Top = 17
            Width = 78
            Height = 16
            Caption = 'Quantidade: '
          end
          object RLLabel5: TRLLabel
            Left = 382
            Top = 17
            Width = 40
            Height = 16
            Caption = 'Total: '
          end
          object RLDBResult3: TRLDBResult
            Left = 98
            Top = 17
            Width = 46
            Height = 16
            DataField = 'idmembro'
            DataSource = dtsEntradas
            Info = riCount
            Text = ''
          end
          object RLDBText2: TRLDBText
            Left = 428
            Top = 17
            Width = 37
            Height = 16
            DataField = 'valorp'
            DataSource = dtsMain
            DisplayMask = 'R$ #,##0.0'
            Text = ''
          end
        end
        object RLBand1: TRLBand
          Left = 0
          Top = 42
          Width = 718
          Height = 24
          object RLDBText8: TRLDBText
            Left = 83
            Top = 4
            Width = 60
            Height = 16
            DataField = 'descricao'
            DataSource = dtsEntradas
            Text = ''
          end
          object RLLabel8: TRLLabel
            Left = 68
            Top = 4
            Width = 12
            Height = 16
            Caption = '- '
          end
          object RLDBText9: TRLDBText
            Left = 382
            Top = 4
            Width = 30
            Height = 16
            DataField = 'valor'
            DataSource = dtsEntradas
            DisplayMask = 'R$ #,##0.0'
            Text = ''
          end
        end
      end
      object RLBand10: TRLBand
        Left = 0
        Top = 65
        Width = 718
        Height = 16
      end
    end
  end
  object dtsMain: TDataSource [2]
    DataSet = QryMain
    Left = 48
    Top = 32
  end
  object QryMain: TFDQuery [3]
    AggregatesActive = True
    SQL.Strings = (
      'WITH CTE_ANOS AS ('
      #9'SELECT'
      #9#9'DISTINCT'
      #9#9'EXTRACT(year FROM dtfato) AS numyear '
      #9'FROM movimentacoes'
      #9'where deleted_date is null'
      '), CTE_MESES as ('
      'SELECT *'
      'FROM '
      #9'vw_lista_meses, '
      #9'CTE_ANOS Y'
      '),CTE_SALDOS_MESES AS ('
      'SELECT '
      'm.numyear, '
      'm.idmonth,'
      'm.description,'
      'COALESCE(sum(rt.valor),0) valor,'
      
        'COALESCE(sum(case when rt.natureza = '#39'C'#39' then rt.valor else 0 en' +
        'd),0) valorP,'
      
        'COALESCE(sum(case when rt.natureza = '#39'D'#39' then rt.valor else 0 en' +
        'd),0) valorN'
      'FROM CTE_MESES M'
      
        'LEFT JOIN vw_report_transaction RT ON RT.nummonth = M.idmonth an' +
        'd rt.numyear = m.numyear'
      'GROUP BY'
      'm.numyear, '
      'm.idmonth,'
      'm.description'
      '), cte_saldos as ('
      'SELECT '
      '*,'
      
        '(SUM(valor) over (order by numyear, idmonth) - valor) saldoAnter' +
        'ior'
      'FROM CTE_SALDOS_MESES'
      ')'
      'SELECT '
      'idmonth'
      ',numyear '
      ',description'
      ',valor as saldoAtual'
      ',(valor + saldoAnterior) as saldoProxMes'
      ',saldoAnterior'
      ',valorP'
      ',valorN '
      
        ',upper(Concat('#39'RELAT'#211'RIO DE ENTRADAS - '#39',description, '#39' / '#39',numy' +
        'ear)) competencia'
      'FROM CTE_SALDOS'
      'WHERE 1 = 1'
      '')
    Left = 48
    Top = 72
    object QryMainidmonth: TIntegerField
      FieldName = 'idmonth'
      Origin = 'idmonth'
    end
    object QryMainnumyear: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'numyear'
      Origin = 'numyear'
      ReadOnly = True
      Precision = 64
      Size = 0
    end
    object QryMaindescription: TWideStringField
      FieldName = 'description'
      Origin = 'description'
      Size = 8190
    end
    object QryMainsaldoatual: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'saldoatual'
      Origin = 'saldoatual'
      ReadOnly = True
      Precision = 64
      Size = 0
    end
    object QryMainsaldoanterior: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'saldoanterior'
      Origin = 'saldoanterior'
      ReadOnly = True
      Precision = 64
      Size = 0
    end
    object QryMaincompetencia: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'competencia'
      Origin = 'competencia'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object QryMainvalorp: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valorp'
      Origin = 'valorp'
      ReadOnly = True
      Precision = 64
      Size = 0
    end
    object QryMainvalorn: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valorn'
      Origin = 'valorn'
      ReadOnly = True
      Precision = 64
      Size = 0
    end
    object QryMainsaldoproxmes: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'saldoproxmes'
      Origin = 'saldoproxmes'
      ReadOnly = True
      Precision = 64
      Size = 0
    end
  end
  object dtsEntradas: TDataSource [4]
    DataSet = QryEntradas
    Left = 40
    Top = 144
  end
  object QryEntradas: TFDQuery [5]
    IndexFieldNames = 'numyear;nummonth'
    AggregatesActive = True
    MasterSource = dtsMain
    MasterFields = 'numyear;idmonth'
    DetailFields = 'numyear;nummonth'
    SQL.Strings = (
      'SELECT '
      'descricao'
      ',competencia'
      ',tipo'
      ',natureza'
      ',dtfato'
      ',valor'
      ',ocorrencias'
      ',nummonth'
      ',numyear'
      ',forder'
      'FROM vw_report_transaction'
      'WHERE natureza = '#39'C'#39
      '')
    Left = 40
    Top = 190
    object QryEntradasdescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 150
    end
    object QryEntradascompetencia: TWideStringField
      FieldName = 'competencia'
      Origin = 'competencia'
      Size = 10
    end
    object QryEntradastipo: TSmallintField
      FieldName = 'tipo'
      Origin = 'tipo'
    end
    object QryEntradasnatureza: TWideStringField
      FieldName = 'natureza'
      Origin = 'natureza'
      FixedChar = True
      Size = 1
    end
    object QryEntradasdtfato: TDateField
      FieldName = 'dtfato'
      Origin = 'dtfato'
    end
    object QryEntradasvalor: TFMTBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 64
      Size = 0
    end
    object QryEntradasocorrencias: TLargeintField
      FieldName = 'ocorrencias'
      Origin = 'ocorrencias'
    end
    object QryEntradasnummonth: TFMTBCDField
      FieldName = 'nummonth'
      Origin = 'nummonth'
      Precision = 64
      Size = 0
    end
    object QryEntradasnumyear: TFMTBCDField
      FieldName = 'numyear'
      Origin = 'numyear'
      Precision = 64
      Size = 0
    end
    object QryEntradasforder: TIntegerField
      FieldName = 'forder'
      Origin = 'forder'
    end
  end
end
