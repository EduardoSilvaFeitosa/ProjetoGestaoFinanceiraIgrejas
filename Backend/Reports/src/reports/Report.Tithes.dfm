inherited FrmReportTithes: TFrmReportTithes
  Caption = 'FrmReportTithes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Report: TRLReport
    DataSource = dtsMembers
    inherited bdFooterMain: TRLBand
      Top = 296
      ExplicitTop = 296
    end
    object dbHeaderMain: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 75
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 260
        Top = 38
        Width = 198
        Height = 20
        Alignment = taCenter
        Caption = 'RELAT'#211'RIO DE D'#205'ZIMOS '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
    end
    object bdMemberInfo: TRLBand
      Left = 38
      Top = 113
      Width = 718
      Height = 103
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Borders.Color = 14277081
      object RLLabel2: TRLLabel
        Left = 19
        Top = 15
        Width = 45
        Height = 16
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtName: TRLDBText
        Left = 68
        Top = 15
        Width = 36
        Height = 16
        DataField = 'nome'
        DataSource = dtsMembers
        Text = ''
      end
      object RLLabel3: TRLLabel
        Left = 19
        Top = 38
        Width = 46
        Height = 16
        Caption = 'Status:'
      end
      object RLDBText1: TRLDBText
        Left = 68
        Top = 38
        Width = 40
        Height = 16
        DataField = 'status'
        DataSource = dtsMembers
        Text = ''
      end
      object RLLabel4: TRLLabel
        Left = 19
        Top = 72
        Width = 130
        Height = 16
        Caption = 'Hist'#243'rico de d'#237'zimos: '
      end
      object RLDBText4: TRLDBText
        Left = 426
        Top = 38
        Width = 36
        Height = 16
        DataField = 'cargo'
        DataSource = dtsMembers
        Text = ''
      end
      object RLLabel9: TRLLabel
        Left = 382
        Top = 38
        Width = 42
        Height = 16
        Caption = 'Cargo:'
      end
      object RLLabel5: TRLLabel
        Left = 382
        Top = 15
        Width = 31
        Height = 16
        Caption = 'Ano:'
      end
      object RLDBText5: TRLDBText
        Left = 419
        Top = 15
        Width = 54
        Height = 16
        DataField = 'numyear'
        DataSource = dtsMembers
        Text = ''
      end
    end
    object sbdTithes: TRLSubDetail
      Left = 38
      Top = 216
      Width = 718
      Height = 80
      AllowedBands = [btDetail, btSummary]
      DataSource = dtsTrMembers
      object bdTithesInfo: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 25
        object RLDBText2: TRLDBText
          Left = 382
          Top = 5
          Width = 30
          Height = 16
          DataField = 'valor'
          DataSource = dtsTrMembers
          DisplayMask = 'R$ #,##0.0'
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
          Width = 67
          Height = 16
          DataField = 'description'
          DataSource = dtsTrMembers
          Text = ''
        end
      end
      object bdTitheDetails: TRLBand
        Left = 0
        Top = 25
        Width = 718
        Height = 52
        BandType = btSummary
        object RLLabel7: TRLLabel
          Left = 19
          Top = 17
          Width = 78
          Height = 16
          Caption = 'Quantidade: '
        end
        object RLDBResult1: TRLDBResult
          Left = 98
          Top = 17
          Width = 46
          Height = 16
          DataField = 'idmembro'
          DataSource = dtsTrMembers
          Info = riCount
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 382
          Top = 17
          Width = 29
          Height = 16
          DataField = 'total'
          DataSource = dtsMembers
          Text = ''
        end
        object RLLabel8: TRLLabel
          Left = 343
          Top = 17
          Width = 36
          Height = 16
          Caption = 'Total:'
        end
      end
    end
  end
  inherited Connection: TFDConnection
    Connected = True
  end
  object QryTrMembers: TFDQuery
    IndexFieldNames = 'idmembro'
    MasterSource = dtsMembers
    MasterFields = 'id'
    DetailFields = 'idmembro'
    Connection = Connection
    SQL.Strings = (
      'WITH CTE_LISTA_MESES as ('
      'SELECT '
      #9'idMonth, cast(description as varchar(20)) description'
      'FROM ('
      'VALUES '
      #9'(1, '#39'Janeiro'#39'),'
      #9'(2, '#39'Fevereiro'#39'),'
      #9'(3, '#39'Mar'#231'o'#39'),'
      #9'(4, '#39'Abril'#39'),'
      #9'(5, '#39'Maio'#39'),'
      #9'(6, '#39'Junho'#39'),'
      #9'(7, '#39'Julho'#39'),'
      #9'(8, '#39'Agosto'#39'),'
      #9'(9, '#39'Setembro'#39'),'
      #9'(10, '#39'Outubro'#39'),'
      #9'(11, '#39'Novembro'#39'),'
      #9'(12, '#39'Dezembro'#39')'
      ') months (idMonth, description)'
      '), CTE_DIZIMOS_MEMBROS AS ('
      'SELECT '
      'TM.id,'
      'EXTRACT(MONTH FROM TM.dtFato) numMonth,'
      'EXTRACT(YEAR FROM TM.dtFato) numYEAR,'
      'TM.valor,'
      'TM.idmembro'
      'FROM movimentacoes TM'
      'WHERE TM.deleted_date IS NULL'
      '), CTE_DADOS_MEMBROS_MESES AS ('
      'SELECT '
      ' CLM.description'
      ',TM.id idmembro'
      ',CDM.numYEAR'
      ',CLM.idMonth'
      ',COALESCE(CDM.valor, 0) valor'
      'FROM CTE_LISTA_MESES CLM'
      'INNER JOIN  membros TM ON TM.deleted_date IS NULL'
      
        'LEFT JOIN CTE_DIZIMOS_MEMBROS CDM ON TM.ID = CDM.idmembro AND CL' +
        'M.idMonth = CDM.numMonth '
      ')'
      'SELECT '
      'idmembro'
      ',idMonth'
      ',numYEAR'
      ',description'
      ',valor'
      'FROM CTE_DADOS_MEMBROS_MESES'
      'WHERE 1 = 1 ')
    Left = 56
    Top = 96
    object QryTrMembersdescription: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'description'
      Origin = 'description'
      ReadOnly = True
    end
    object QryTrMembersidmembro: TLargeintField
      FieldName = 'idmembro'
      Origin = 'idmembro'
    end
    object QryTrMembersnumyear: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'numyear'
      Origin = 'numyear'
      ReadOnly = True
      Precision = 64
      Size = 0
    end
    object QryTrMembersvalor: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
      ReadOnly = True
      Precision = 64
      Size = 0
    end
  end
  object QryMembers: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'WITH CTE_DIZIMOS_MEMBROS AS ('
      'SELECT'
      ' M.id'
      ',M.nome'
      ',M.dtingresso'
      ',COALESCE(M.cargo, '#39'N'#227'o informado'#39') cargo'
      
        ',CAST(CASE WHEN COALESCE(M.status, 1) = 0 THEN '#39'Inativo'#39' else '#39'A' +
        'tivo'#39' end as varchar(20)) status'
      ',numyear'
      ',COALESCE(M.status, 1) nStatus'
      
        ',cast(replace(to_char(COALESCE(TM.valor, 0), '#39'L9G999G990D99'#39'), '#39 +
        '  '#39','#39#39') as varchar(50)) total'
      ',COALESCE(TM.valor, 0) valor'
      ',M.deleted_date'
      'FROM ('
      'SELECT  '
      'CAST(date_part('#39'year'#39',dtfato) as int) as numyear'
      'FROM movimentacoes'
      'WHERE deleted_date is null'
      'GROUP BY  '
      'CAST(date_part('#39'year'#39',dtfato) as int)'
      ') TYears'
      'INNER JOIN membros M ON M.deleted_date is null'
      'LEFT JOIN ('
      'SELECT '
      #9'TM.idmembro,'
      
        #9'SUM(CASE WHEN natureza = '#39'C'#39' THEN abs(TM.valor) else abs(TM.val' +
        'or)*(-1) end) valor'
      'FROM movimentacoes TM'
      'WHERE TM.deleted_date IS NULL'
      'AND COALESCE(TM.idmembro, 0) <> 0'
      'group by '
      #9'TM.idmembro'
      ') TM on TM.idmembro = M.id'
      ')'
      'SELECT'
      'id'
      ',nome'
      ',dtingresso'
      ',cargo'
      ',status'
      ',numyear'
      ',nStatus'
      ',total'
      ',valor'
      ',deleted_date'
      'FROM CTE_DIZIMOS_MEMBROS'
      'WHERE deleted_date IS NULL')
    Left = 56
    Top = 40
    object QryMembersid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryMembersnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object QryMembersdtingresso: TDateField
      FieldName = 'dtingresso'
      Origin = 'dtingresso'
    end
    object QryMemberscargo: TWideStringField
      FieldName = 'cargo'
      Origin = 'cargo'
      Size = 50
    end
    object QryMembersstatus: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = 'status'
      ReadOnly = True
    end
    object QryMembersnumyear: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'numyear'
      Origin = 'numyear'
      ReadOnly = True
    end
    object QryMembersnstatus: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nstatus'
      Origin = 'nstatus'
      ReadOnly = True
    end
    object QryMemberstotal: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'total'
      Origin = 'total'
      ReadOnly = True
      Size = 50
    end
    object QryMembersvalor: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
      ReadOnly = True
      Precision = 64
      Size = 0
    end
    object QryMembersdeleted_date: TSQLTimeStampField
      FieldName = 'deleted_date'
      Origin = 'deleted_date'
    end
  end
  object dtsMembers: TDataSource
    DataSet = QryMembers
    Left = 128
    Top = 40
  end
  object dtsTrMembers: TDataSource
    DataSet = QryTrMembers
    Left = 127
    Top = 96
  end
end
