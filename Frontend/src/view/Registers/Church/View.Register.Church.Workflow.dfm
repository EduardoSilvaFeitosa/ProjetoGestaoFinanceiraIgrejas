inherited FrmRegChurchWorkflow: TFrmRegChurchWorkflow
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
          Caption = 'Informar os dados da Igreja'
        end
        inherited Shape1: TShape
          Visible = False
        end
      end
      inherited Panel8: TPanel
        Visible = False
        inherited Image2: TImage
          Visible = False
        end
        inherited Label2: TLabel
          Visible = False
        end
        inherited Label3: TLabel
          Visible = False
        end
        inherited Shape2: TShape
          Visible = False
        end
        inherited Shape3: TShape
          Visible = False
        end
      end
      inherited Panel9: TPanel
        Visible = False
        inherited Image3: TImage
          Visible = False
        end
        inherited Label4: TLabel
          Visible = False
        end
        inherited Label5: TLabel
          Visible = False
        end
        inherited Shape5: TShape
          Visible = False
        end
      end
    end
    inherited pnRight: TPanel
      inherited pnHead: TPanel
        inherited lbHeaderTitle: TLabel
          Width = 462
          Height = 34
          Caption = 'Igrejas'
          ExplicitWidth = 62
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
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object mtMaincreationDate: TSQLTimeStampField
      FieldName = 'creationDate'
      Origin = 'creation_date'
    end
    object mtMainnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 200
    end
    object mtMaincnpj: TWideStringField
      FieldName = 'cnpj'
      Origin = 'cnpj'
      EditMask = '00\.000\.000\/0000\-00;0;'
      Size = 18
    end
    object mtMainstatus: TSmallintField
      FieldName = 'status'
      Origin = 'status'
    end
    object mtMaincep: TWideStringField
      FieldName = 'cep'
      Origin = 'cep'
      Size = 10
    end
    object mtMainnumero: TWideStringField
      FieldName = 'numero'
      Origin = 'numero'
      Size = 10
    end
    object mtMainlogradouro: TWideStringField
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 150
    end
    object mtMainlastUpdate: TSQLTimeStampField
      FieldName = 'lastUpdate'
      Origin = 'last_update'
    end
  end
end
