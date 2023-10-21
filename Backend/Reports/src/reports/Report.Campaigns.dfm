inherited FrmReportCampaigns: TFrmReportCampaigns
  Caption = 'FrmReportCampaigns'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Report: TRLReport
    DataSource = dtsCampaing
    inherited bdFooterMain: TRLBand
      Top = 313
      ExplicitTop = 313
    end
    object bdHeaderMain: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 75
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 242
        Top = 38
        Width = 234
        Height = 20
        Alignment = taCenter
        Caption = 'RELAT'#211'RIO DE CAMPANHAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
    end
    object bdTitleCampaign: TRLBand
      Left = 38
      Top = 113
      Width = 718
      Height = 104
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Borders.Color = 14277081
      object txtName: TRLDBText
        Left = 88
        Top = 16
        Width = 60
        Height = 16
        DataField = 'descricao'
        DataSource = dtsCampaing
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel3: TRLLabel
        Left = 19
        Top = 39
        Width = 74
        Height = 16
        Caption = 'Per'#237'odo: de '
      end
      object RLDBText1: TRLDBText
        Left = 90
        Top = 39
        Width = 45
        Height = 16
        DataField = 'dtinicio'
        DataSource = dtsCampaing
        Text = ''
      end
      object RLLabel4: TRLLabel
        Left = 19
        Top = 72
        Width = 183
        Height = 16
        Caption = 'Movimenta'#231#245'es vinculadas: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 426
        Top = 39
        Width = 40
        Height = 16
        DataField = 'status'
        DataSource = dtsCampaing
        Text = ''
      end
      object RLLabel9: TRLLabel
        Left = 382
        Top = 39
        Width = 46
        Height = 16
        Caption = 'Status:'
      end
      object RLLabel2: TRLLabel
        Left = 157
        Top = 39
        Width = 32
        Height = 16
        Caption = ' At'#233':'
      end
      object RLDBText5: TRLDBText
        Left = 190
        Top = 39
        Width = 38
        Height = 16
        DataField = 'dtfinal'
        DataSource = dtsCampaing
        Text = ''
      end
      object RLLabel10: TRLLabel
        Left = 18
        Top = 16
        Width = 70
        Height = 16
        Caption = 'Descri'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 549
        Top = 39
        Width = 66
        Height = 16
        Caption = 'Valor Alvo:'
      end
      object RLDBText7: TRLDBText
        Left = 616
        Top = 39
        Width = 38
        Height = 16
        DataField = 'vlralvo'
        DataSource = dtsCampaing
        DisplayMask = 'R$ #,##0.0'
        Text = ''
      end
    end
    object sbdCampaign: TRLSubDetail
      Left = 38
      Top = 217
      Width = 718
      Height = 96
      AllowedBands = [btHeader, btDetail, btSummary]
      DataSource = dtsTrCampaing
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 25
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLDBText2: TRLDBText
          Left = 549
          Top = 5
          Width = 69
          Height = 16
          DataField = 'valormoeda'
          DataSource = dtsTrCampaing
          Text = ''
        end
        object RLLabel6: TRLLabel
          Left = 68
          Top = 5
          Width = 12
          Height = 16
          Caption = '- '
        end
        object RLDBText3: TRLDBText
          Left = 83
          Top = 5
          Width = 60
          Height = 16
          DataField = 'descricao'
          DataSource = dtsTrCampaing
          Text = ''
        end
        object RLDBText10: TRLDBText
          Left = 669
          Top = 6
          Width = 14
          Height = 16
          DataField = 'id'
          DataSource = dtsTrCampaing
          DisplayMask = 'R$ #,##0.0'
          Text = ''
          Visible = False
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 25
        Width = 718
        Height = 67
        BandType = btSummary
        object RLLabel7: TRLLabel
          Left = 19
          Top = 17
          Width = 87
          Height = 16
          Caption = 'Observa'#231#245'es: '
        end
        object RLDBMemo1: TRLDBMemo
          Left = 32
          Top = 39
          Width = 649
          Height = 16
          Behavior = [beSiteExpander]
          DataField = 'observacao'
          DataSource = dtsCampaing
        end
        object RLLabel11: TRLLabel
          Left = 509
          Top = 17
          Width = 44
          Height = 16
          Caption = 'Total: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object RLDBText8: TRLDBText
          Left = 549
          Top = 17
          Width = 29
          Height = 16
          DataField = 'total'
          DataSource = dtsCampaing
          Text = ''
        end
      end
    end
  end
  object dtsCampaing: TDataSource
    DataSet = QryCampaing
    Left = 56
    Top = 32
  end
  object dtsTrCampaing: TDataSource
    DataSet = QryTrCampaing
    Left = 56
    Top = 80
  end
  object QryCampaing: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'WITH CTE_DADOS_CAMPANHAS AS ('
      'SELECT '
      'id'
      ',cast(Upper(descricao) as varchar(200)) descricao'
      ',dtinicio'
      ',dtfinal'
      ',COALESCE(vlralvo, 0) vlralvo'
      
        ',cast(CASE WHEN COALESCE(M.idcampanha, 0) > 0 THEN replace(to_ch' +
        'ar(m.valor, '#39'L9G999G990D99'#39'), '#39'  '#39','#39#39') ELSE NULL END as varchar(' +
        '50)) total'
      
        ',CAST(CASE WHEN COALESCE(status, 1) = 0 THEN '#39'Em progresso'#39' else' +
        ' '#39'Conclu'#237'da'#39' end as varchar(20)) status'
      
        ',cast(COALESCE(observacao, '#39'          -   Nenhuma observa'#231#227'o adi' +
        'cionada '#39') as varchar (300)) observacao'
      ',m.valor'
      ',deleted_date'
      'FROM campanhas'
      'LEFT JOIN ('
      'SELECT '
      #9'TM.idcampanha,'
      
        #9'SUM(CASE WHEN natureza = '#39'C'#39' THEN abs(TM.valor) else abs(TM.val' +
        'or)*(-1) end) valor'
      'FROM movimentacoes TM'
      'WHERE TM.deleted_date IS NULL'
      'AND COALESCE(TM.idcampanha, 0) <> 0'
      'group by '
      #9'TM.idcampanha'
      ') M on m.idcampanha = id'
      ')'
      'SELECT '
      'id'
      ',descricao'
      ',dtinicio'
      ',dtfinal'
      ',vlralvo'
      ',total'
      ',status'
      ',observacao'
      'FROM CTE_DADOS_CAMPANHAS'
      'WHERE deleted_date IS NULL ')
    Left = 160
    Top = 33
    object QryCampaingid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryCampaingdescricao: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      ReadOnly = True
      Size = 200
    end
    object QryCampaingdtinicio: TDateField
      FieldName = 'dtinicio'
      Origin = 'dtinicio'
    end
    object QryCampaingdtfinal: TDateField
      FieldName = 'dtfinal'
      Origin = 'dtfinal'
    end
    object QryCampaingvlralvo: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vlralvo'
      Origin = 'vlralvo'
      ReadOnly = True
      Precision = 64
      Size = 0
    end
    object QryCampaingtotal: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'total'
      Origin = 'total'
      ReadOnly = True
      Size = 50
    end
    object QryCampaingstatus: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = 'status'
      ReadOnly = True
    end
    object QryCampaingobservacao: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'observacao'
      Origin = 'observacao'
      ReadOnly = True
      Size = 300
    end
  end
  object QryTrCampaing: TFDQuery
    IndexFieldNames = 'idcampanha'
    AggregatesActive = True
    MasterSource = dtsCampaing
    MasterFields = 'id'
    DetailFields = 'idcampanha'
    Connection = Connection
    SQL.Strings = (
      'WITH CTE_MOVIMENTACAO_CAMPANHAS AS ('
      'SELECT '
      #9'id'
      #9',CAST('
      #9'case'
      
        #9'when TM.descricao is null then '#39'Nenhuma movimenta'#231#227'o vinculada ' +
        #39
      #9'else TM.descricao END '
      #9'as varchar(100)) descricao'
      
        #9',CAST(CASE WHEN natureza = '#39'C'#39' THEN '#39'C - Cr'#233'dito'#39' WHEN natureza' +
        ' = '#39'D'#39' then '#39'D - D'#233'bito'#39' else null end as varchar(12)) natureza'
      #9',to_char(TM.dtFato, '#39'DD/MM/YYYY'#39') dtFato'
      #9',TM.idcampanha '
      #9',to_char(TM.valor, '#39'L9G999G990D99'#39') valorMoeda'
      #9',TM.valor'
      'FROM '
      #9'movimentacoes TM'
      'WHERE TM.deleted_date IS NULL '
      'AND COALESCE(TM.idcampanha, 0) <> 0'
      '), CTE_MOVIMENTACAOES_CAMPANHA AS ('
      'SELECT'
      'c.id idcampanha'
      ',TM.id'
      ',cast(CASE '
      
        'WHEN COALESCE(TM.id, 0) >0 THEN CONCAT(TM.descricao, '#39' | '#39', natu' +
        'reza, '#39' | '#39', dtFato) '
      'ELSE '#39'Nenhuma movimenta'#231#227'o vinculada'#39' '
      'END as varchar(150)) descricao'
      ',tm.valor'
      
        ',cast(CASE WHEN COALESCE(TM.id, 0) > 0 THEN replace(TM.valorMoed' +
        'a, '#39'  '#39','#39#39') ELSE NULL END as varchar(50)) valorMoeda'
      ',C.dtinicio'
      ',C.dtfinal'
      ',C.deleted_date'
      'FROM campanhas c'
      'LEFT JOIN CTE_MOVIMENTACAO_CAMPANHAS TM ON c.id = tm.idcampanha '
      ')'
      'SELECT '
      'idcampanha'
      ',id'
      ',descricao'
      ',valor'
      ',valorMoeda'
      ',dtinicio'
      ',dtfinal'
      ',deleted_date'
      'FROM CTE_MOVIMENTACAOES_CAMPANHA'
      'WHERE deleted_date IS NULL ')
    Left = 161
    Top = 78
    object QryTrCampaingidcampanha: TLargeintField
      FieldName = 'idcampanha'
      Origin = 'idcampanha'
    end
    object QryTrCampaingid: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryTrCampaingdescricao: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      ReadOnly = True
      Size = 150
    end
    object QryTrCampaingvalor: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 20
      Size = 4
    end
    object QryTrCampaingvalormoeda: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'valormoeda'
      Origin = 'valormoeda'
      ReadOnly = True
      Size = 50
    end
  end
end
