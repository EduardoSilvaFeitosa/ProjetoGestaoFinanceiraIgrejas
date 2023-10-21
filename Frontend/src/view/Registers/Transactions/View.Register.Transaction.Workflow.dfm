inherited FrmRegTransactionWorkflow: TFrmRegTransactionWorkflow
  Caption = 'FrmRegTransactionWorkflow'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBackground: TPanel
    inherited pnRight: TPanel
      inherited pnHead: TPanel
        inherited lbHeaderTitle: TLabel
          Width = 462
          Height = 34
          Caption = 'Movimenta'#231#245'es'
          ExplicitWidth = 462
        end
      end
      inherited pnFooter: TPanel
        inherited pnBtnBottomContainer: TPanel
          inherited btnConfirm: TFrmButton
            inherited pnBackground: TPanel
              inherited pnBtn: TPanel
                inherited txtBtn: TLabel
                  Width = 112
                  Height = 37
                  OnClick = pnBtnBottomClick
                end
              end
            end
          end
        end
      end
    end
  end
  object mtMain: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 218
    Top = 28
    object mtMainid: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object mtMaindtfato: TDateField
      FieldName = 'dtfato'
      Origin = 'dtfato'
    end
    object mtMaincompetencia: TWideStringField
      FieldName = 'competencia'
      Origin = 'competencia'
      Size = 10
    end
    object mtMainnatureza: TWideStringField
      FieldName = 'natureza'
      Origin = 'natureza'
      FixedChar = True
      Size = 1
    end
    object mtMaintipo: TSmallintField
      FieldName = 'tipo'
      Origin = 'tipo'
    end
    object mtMainvalor: TFMTBCDField
      FieldName = 'valor'
      Origin = 'valor'
      DisplayFormat = 'R$ #,##0.0'
      Precision = 20
      Size = 4
    end
    object mtMaincreationDate: TSQLTimeStampField
      FieldName = 'creationDate'
      Origin = 'creation_date'
    end
    object mtMainlastUpdate: TSQLTimeStampField
      FieldName = 'lastUpdate'
      Origin = 'last_update'
    end
    object mtMainobservacao: TWideStringField
      FieldName = 'observacao'
      Origin = 'observacao'
      Size = 300
    end
    object mtMainidmembro: TLargeintField
      FieldName = 'idmembro'
      Origin = 'idmembro'
    end
    object mtMainidcampanha: TLargeintField
      FieldName = 'idcampanha'
      Origin = 'idcampanha'
    end
    object mtMaindescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
  end
end
