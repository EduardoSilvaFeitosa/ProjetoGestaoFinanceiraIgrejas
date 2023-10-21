inherited FrmRegMemberWorkflow: TFrmRegMemberWorkflow
  Caption = 'FrmRegMemberWorkflow'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBackground: TPanel
    inherited pnLeft: TPanel
      inherited Panel7: TPanel
        inherited lbTitle: TLabel
          Width = 28
          Caption = 'Novo'
          ExplicitWidth = 28
        end
        inherited Label1: TLabel
          Caption = 'Informar os dados do membro'
        end
      end
    end
    inherited pnRight: TPanel
      inherited pnHead: TPanel
        inherited lbHeaderTitle: TLabel
          Width = 462
          Height = 34
          Caption = 'Membros'
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
    object mtMainnome: TWideStringField
      DisplayWidth = 100
      FieldName = 'nome'
      Origin = 'nome'
      Size = 30
    end
    object mtMainemail: TWideStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 70
    end
    object mtMaintelefone: TWideStringField
      DisplayWidth = 14
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 12
    end
    object mtMaincargo: TWideStringField
      FieldName = 'cargo'
      Origin = 'cargo'
      Size = 50
    end
    object mtMaincreation_date: TSQLTimeStampField
      FieldName = 'creationDate'
      Origin = 'creation_date'
    end
    object mtMainstatus: TSmallintField
      FieldName = 'status'
      Origin = 'status'
    end
    object mtMaindtingresso: TDateField
      FieldName = 'dtingresso'
      Origin = 'dtingresso'
    end
    object mtMainlast_update: TSQLTimeStampField
      FieldName = 'lastUpdate'
      Origin = 'last_update'
    end
  end
end
