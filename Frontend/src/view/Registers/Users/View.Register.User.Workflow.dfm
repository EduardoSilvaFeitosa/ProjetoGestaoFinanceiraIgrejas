inherited FrmRegUserWorkflow: TFrmRegUserWorkflow
  Caption = 'FrmRegUserWorkflow'
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
          Caption = 'Informar os dados do usu'#225'rio'
        end
      end
      inherited Panel8: TPanel
        inherited Label2: TLabel
          Width = 74
          Caption = 'Foto de Perfil'
          ExplicitWidth = 74
        end
        inherited Label3: TLabel
          Caption = 'Escolher a foto de perfil do usu'#225'rio'
        end
      end
    end
    inherited pnRight: TPanel
      inherited pnHead: TPanel
        inherited lbHeaderTitle: TLabel
          Width = 462
          Height = 34
          Caption = 'Us'#225'rios'
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
    Left = 232
    Top = 24
    object mtMainid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object mtMainname: TWideStringField
      FieldName = 'name'
      Origin = 'name'
      Size = 70
    end
    object mtMainemail: TWideStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 70
    end
    object mtMainusername: TWideStringField
      FieldName = 'username'
      Origin = 'username'
      Size = 70
    end
    object mtMainpassword: TWideStringField
      FieldName = 'password'
      Origin = '"password"'
      Size = 70
    end
    object mtMainidacesso: TLargeintField
      FieldName = 'idacesso'
      Origin = 'idacesso'
    end
    object mtMainstatus: TSmallintField
      FieldName = 'status'
      Origin = 'status'
    end
  end
end
