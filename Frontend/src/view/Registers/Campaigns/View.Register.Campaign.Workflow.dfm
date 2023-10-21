inherited FrmRegCampaignWorkflow: TFrmRegCampaignWorkflow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBackground: TPanel
    inherited pnLeft: TPanel
      inherited Panel7: TPanel
        inherited Label1: TLabel
          Caption = 'Informar os dados da campanha'
        end
      end
    end
    inherited pnRight: TPanel
      inherited pnHead: TPanel
        inherited lbHeaderTitle: TLabel
          Width = 462
          Height = 34
          Caption = 'Campanhas'
          ExplicitWidth = 104
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
    Left = 232
    Top = 24
    object mtMainid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object mtMaindescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object mtMaindtinicio: TDateField
      FieldName = 'dtinicio'
      Origin = 'dtinicio'
    end
    object mtMaindtfinal: TDateField
      FieldName = 'dtfinal'
      Origin = 'dtfinal'
    end
    object mtMainvlralvo: TFMTBCDField
      FieldName = 'vlralvo'
      Origin = 'vlralvo'
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
    object mtMainstatus: TSmallintField
      FieldName = 'status'
      Origin = 'status'
    end
    object mtMainobservacao: TWideStringField
      FieldName = 'observacao'
      Origin = 'observacao'
      Size = 299
    end
  end
end
