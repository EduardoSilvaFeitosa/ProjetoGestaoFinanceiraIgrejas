inherited FrmRegCampaignGrid: TFrmRegCampaignGrid
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBackground: TPanel
    inherited pnContentPrincipal: TPanel
      inherited pnHeader: TPanel
        inherited pnIdentForm: TPanel
          inherited lbNameForm: TLabel
            Width = 180
            Height = 41
            Caption = 'Campanhas'
            ExplicitWidth = 131
          end
          inherited lbDescForm: TLabel
            Width = 180
            Caption = 'Informa'#231#245'es das campanhas'
            ExplicitWidth = 145
          end
        end
        inherited pnGrpAddFilter: TPanel
          inherited pnBtnAdd: TPanel
            inherited btnAdd: TFrmButton
              inherited pnBackground: TPanel
                inherited pnBtn: TPanel
                  inherited txtBtn: TLabel
                    Width = 112
                    Height = 35
                  end
                end
              end
            end
          end
        end
      end
      inherited pnContent: TPanel
        inherited pnGridHeader: TPanel
          object gpHeader: TGridPanel
            Left = 0
            Top = 0
            Width = 763
            Height = 24
            Align = alClient
            BevelEdges = []
            BevelOuter = bvNone
            ColumnCollection = <
              item
                Value = 7.000000000000000000
              end
              item
                Value = 24.000000000000000000
              end
              item
                Value = 16.000000000000000000
              end
              item
                Value = 16.000000000000000000
              end
              item
                Value = 16.000000000000000000
              end
              item
                Value = 21.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = pnTitleIcon
                Row = 0
              end
              item
                Column = 1
                Control = pnTitleDescription
                Row = 0
              end
              item
                Column = 2
                Control = pnTitleStartDate
                Row = 0
              end
              item
                Column = 3
                Control = pnTitleEndDate
                Row = 0
              end
              item
                Column = 4
                Control = pnTitleTargetValue
                Row = 0
              end
              item
                Column = 5
                Control = pnTitleOperation
                Row = 0
              end>
            ParentBackground = False
            ParentColor = True
            RowCollection = <
              item
                Value = 100.000000000000000000
              end>
            TabOrder = 0
            DesignSize = (
              763
              24)
            object pnTitleIcon: TPanel
              Left = 0
              Top = 0
              Width = 53
              Height = 24
              Anchors = []
              BevelEdges = []
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 0
              DesignSize = (
                53
                24)
              object lbIcon: TLabel
                Left = 16
                Top = 6
                Width = 24
                Height = 13
                Anchors = [akBottom]
                Caption = 'Foto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6110509
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
            end
            object pnTitleDescription: TPanel
              Left = 53
              Top = 0
              Width = 115
              Height = 24
              Anchors = [akLeft]
              BevelEdges = []
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 1
              DesignSize = (
                115
                24)
              object lbDescription: TLabel
                Left = 6
                Top = 5
                Width = 49
                Height = 13
                Anchors = [akLeft, akBottom]
                Caption = 'Descri'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6110509
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object pnTitleStartDate: TPanel
              Left = 237
              Top = 0
              Width = 122
              Height = 24
              Anchors = [akLeft]
              BevelEdges = []
              BevelOuter = bvNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 15907254
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = True
              ParentFont = False
              TabOrder = 2
              DesignSize = (
                122
                24)
              object lbStartDate: TLabel
                Left = 6
                Top = 5
                Width = 28
                Height = 13
                Anchors = [akLeft, akBottom]
                Caption = 'In'#237'cio'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6110509
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object pnTitleEndDate: TPanel
              Left = 359
              Top = 0
              Width = 114
              Height = 24
              Anchors = [akLeft]
              BevelEdges = []
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 3
              DesignSize = (
                114
                24)
              object lbEndDate: TLabel
                Left = 4
                Top = 6
                Width = 42
                Height = 13
                Anchors = [akLeft, akBottom]
                Caption = 'T'#233'rmino'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6110509
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object pnTitleTargetValue: TPanel
              Left = 481
              Top = 0
              Width = 121
              Height = 24
              Anchors = []
              BevelEdges = []
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 4
              DesignSize = (
                121
                24)
              object lbTargetValue: TLabel
                Left = 0
                Top = 6
                Width = 121
                Height = 13
                Alignment = taCenter
                Anchors = [akLeft, akRight, akBottom]
                AutoSize = False
                Caption = 'Valor alvo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6110509
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitWidth = 146
              end
            end
            object pnTitleOperation: TPanel
              Left = 606
              Top = 0
              Width = 154
              Height = 24
              Anchors = []
              BevelEdges = []
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 5
              DesignSize = (
                154
                24)
              object lbOperation: TLabel
                Left = 0
                Top = 6
                Width = 154
                Height = 13
                Alignment = taCenter
                Anchors = [akLeft, akRight, akBottom]
                AutoSize = False
                Caption = 'Opera'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6110509
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
          end
        end
        inherited pnGridDetalhes: TPanel
          object dbGrd: TDBCtrlGrid
            Left = 0
            Top = 5
            Width = 780
            Height = 426
            Align = alClient
            DataSource = dtsMain
            PanelBorder = gbNone
            PanelHeight = 42
            PanelWidth = 763
            TabOrder = 0
            RowCount = 10
            object pnGridContent: TPanel
              Left = 0
              Top = 0
              Width = 763
              Height = 42
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              BevelEdges = []
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 0
              object shpRowLimit: TShape
                Left = 0
                Top = 38
                Width = 763
                Height = 4
                Align = alBottom
                Brush.Color = 16772581
                Pen.Color = 16772581
                Pen.Style = psClear
                ExplicitTop = -29
                ExplicitWidth = 737
              end
              object gpContent: TGridPanel
                Left = 0
                Top = 0
                Width = 763
                Height = 38
                Align = alClient
                BevelEdges = []
                BevelOuter = bvNone
                ColumnCollection = <
                  item
                    Value = 7.000000000000000000
                  end
                  item
                    Value = 24.000000000000000000
                  end
                  item
                    Value = 16.000000000000000000
                  end
                  item
                    Value = 16.000000000000000000
                  end
                  item
                    Value = 16.000000000000000000
                  end
                  item
                    Value = 21.000000000000000000
                  end>
                ControlCollection = <
                  item
                    Column = 0
                    Control = pnCellIcon
                    Row = 0
                  end
                  item
                    Column = 1
                    Control = pnCellDescription
                    Row = 0
                  end
                  item
                    Column = 2
                    Control = pnCellStartDate
                    Row = 0
                  end
                  item
                    Column = 3
                    Control = pnCellEndDate
                    Row = 0
                  end
                  item
                    Column = 4
                    Control = pnCellTargetValue
                    Row = 0
                  end
                  item
                    Column = 5
                    Control = pnCellOperation
                    Row = 0
                  end>
                ParentColor = True
                RowCollection = <
                  item
                    Value = 100.000000000000000000
                  end>
                TabOrder = 0
                object pnCellIcon: TPanel
                  Left = 0
                  Top = 0
                  Width = 53
                  Height = 38
                  Align = alClient
                  BevelEdges = []
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 0
                  DesignSize = (
                    53
                    38)
                  object ImgTargetIcon: TImage
                    AlignWithMargins = True
                    Left = 10
                    Top = 3
                    Width = 31
                    Height = 34
                    Margins.Left = 1
                    Margins.Top = 1
                    Margins.Right = 1
                    Margins.Bottom = 1
                    Anchors = [akLeft, akRight]
                    Center = True
                    Picture.Data = {
                      0954506E67496D61676589504E470D0A1A0A0000000D494844520000001F0000
                      001F08060000001FAE1639000000097048597300000B1300000B1301009A9C18
                      000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000003
                      8F4944415478DAD5974B521A411880BB197461A935DE60DC59892F76A9F82838
                      81BAB3120C7002E104E809202710A3B1B2434FC0F888E58EA9688C3B2627C82C
                      5C8599E9FC0DDDF8D3F3004CAAAC741505DDFEFD7FFD3FBBA5E40507FDAFE046
                      7A539F74279729A5865C638CD98FC947CB364F1D557E2EBD6D3C985FEC67C339
                      70BA3D956709B201D374A42594E6BF5D7C3A94F3C5F50F65DFF7E9DDD5F1DEB3
                      E00B6B3B79F8AAC0478F976487B797C7790C068FECC167FF59F0A5B5DC814FFC
                      3C5A7240D9215868799E6781554E32993428253A804F55B008C9E8F0F9F56C93
                      32BA8CA01F0154B5CC9A436206068B61C2FC5C4EB00E1AAE205761CC2F8AA9AD
                      B5B58C7553B3E5DF790E4CFC9E30B8E50F374FC9B4B8B25384BCA8441DCC235E
                      E1FEF2A41669B988F141189867EE9837C695A7E1A3AB2E5D58CB82629A1B061C
                      056F71E3B8AB019C926070E72EC0AA5836005FDDA983C6CD61C00138B61A2B56
                      E308BFCD04A36709A699D675CD8A88752C380CDE102EB56F2F8F6691AB5B4284
                      27DE161CCAC4FB420E77CA28731861E712CCF364CA9F2ADF5E1C9502F0E5745E
                      87F2F925A6358017C481B827F262BD00EB3D2BE6DE6C1BE3E3E339051C28AD4E
                      57F4271BBC7A344D9B0964FBFC6A360DF5DB102AB664DD029C1F882797094A33
                      7CEDD5DB775C495DE4068903878433233D47E30404A4C9D7A0AC4ADFBF7EAE0A
                      D9D6B06074D88E1EF06EE1FEBA1B8A50B8EB79C68FEB939FD81B721384C780DF
                      2D1520F770502291E8647CD24DD678B5E03D03E1209002016B04CB7B09FA7AE5
                      7D11E015AC27CC88C898232B7571627EA99800088BB9AD79DA962C3954310EC8
                      CF74D7B2E0095A8F8C39CE76DEC741A0D35E71E3C01B65B6E3F6AA74C7D08A09
                      CD76F5D42034CB859418F34D255C6E8AE7EAC24B04BAE3ACEC8E324CB8620270
                      1CAFBE0E17BC304CEA93335873E05B571F1931DDB1AF4FF4C195183BED763B25
                      DD0A96ED8165653260E0C414DDB129F4F59232141E12371B0E909107E886C005
                      2BE806E97FD9F0B66B426995941BB0419EAAA2A0862BF43E57AEC6BE03C821EA
                      59E7773AB4581B3F3254304EE0817011AB266CEABD64C0E555781CEEC7B9BCF3
                      D0F4A7F9D55B949E810BC6BABB384E85C9C7BEE120CE5580EEA2256EBD092ACF
                      18238EEBBA36B71E2A831F728974CB0985A3FF513912BC1B824E0E9489D2CB07
                      8CC8921C098E0F01EECC8127D25132BD47C698561BF4D01C092E072F477077E0
                      3F1678955AC300FF0AFE2FC78BC2FF00D6FABE3EE5D529E00000000049454E44
                      AE426082}
                    Proportional = True
                    ExplicitTop = 2
                  end
                end
                object pnCellDescription: TPanel
                  Left = 53
                  Top = 0
                  Width = 184
                  Height = 38
                  Align = alClient
                  BevelEdges = []
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 1
                  DesignSize = (
                    184
                    38)
                  object pnGrpCellDescription: TPanel
                    Left = 0
                    Top = 3
                    Width = 187
                    Height = 35
                    Anchors = [akLeft, akRight]
                    BevelEdges = []
                    BevelOuter = bvNone
                    TabOrder = 0
                    object dbDescription: TDBText
                      AlignWithMargins = True
                      Left = 3
                      Top = 3
                      Width = 181
                      Height = 15
                      Margins.Bottom = 0
                      Align = alTop
                      DataField = 'descricao'
                      DataSource = dtsMain
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 7691090
                      Font.Height = -11
                      Font.Name = 'Segoe UI'
                      Font.Style = [fsBold]
                      ParentFont = False
                      ExplicitWidth = 122
                    end
                    object dbComments: TDBText
                      AlignWithMargins = True
                      Left = 3
                      Top = 18
                      Width = 181
                      Height = 17
                      Margins.Top = 0
                      Align = alTop
                      DataField = 'observacao'
                      DataSource = dtsMain
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 7691090
                      Font.Height = -11
                      Font.Name = 'Segoe UI'
                      Font.Style = []
                      ParentFont = False
                      ExplicitTop = 21
                      ExplicitWidth = 122
                    end
                  end
                end
                object pnCellStartDate: TPanel
                  Left = 237
                  Top = 0
                  Width = 122
                  Height = 38
                  Align = alClient
                  BevelEdges = []
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 2
                  DesignSize = (
                    122
                    38)
                  object dbStartDate: TDBText
                    AlignWithMargins = True
                    Left = 12
                    Top = 13
                    Width = 165
                    Height = 17
                    Margins.Top = 5
                    Margins.Bottom = 0
                    Anchors = [akLeft]
                    DataField = 'dtinicio'
                    DataSource = dtsMain
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 7691090
                    Font.Height = -11
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object DBText2: TDBText
                    Left = 73
                    Top = 1
                    Width = 65
                    Height = 17
                    DataField = 'id'
                    DataSource = dtsMain
                    Visible = False
                  end
                end
                object pnCellEndDate: TPanel
                  Left = 359
                  Top = 0
                  Width = 122
                  Height = 38
                  Align = alClient
                  BevelEdges = []
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 3
                  DesignSize = (
                    122
                    38)
                  object dbEndDate: TDBText
                    AlignWithMargins = True
                    Left = 8
                    Top = 12
                    Width = 102
                    Height = 17
                    Margins.Top = 5
                    Margins.Bottom = 0
                    Anchors = [akLeft]
                    DataField = 'dtfinal'
                    DataSource = dtsMain
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 7691090
                    Font.Height = -11
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentFont = False
                    ExplicitTop = 11
                  end
                end
                object pnCellTargetValue: TPanel
                  Left = 481
                  Top = 0
                  Width = 122
                  Height = 38
                  Align = alClient
                  BevelEdges = []
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 4
                  DesignSize = (
                    122
                    38)
                  object pnGrpCellTargetValue: TPanel
                    Left = 13
                    Top = 6
                    Width = 100
                    Height = 28
                    Anchors = []
                    BevelEdges = []
                    BevelOuter = bvNone
                    Color = clWhite
                    ParentBackground = False
                    TabOrder = 0
                    DesignSize = (
                      100
                      28)
                    object shpCollTargetValue: TShape
                      Left = -1
                      Top = 0
                      Width = 100
                      Height = 28
                      Anchors = []
                      Brush.Color = 16447477
                      Pen.Style = psClear
                      Shape = stRoundRect
                    end
                    object dbTargetValue: TDBText
                      AlignWithMargins = True
                      Left = 18
                      Top = 7
                      Width = 60
                      Height = 18
                      Margins.Top = 5
                      Margins.Bottom = 0
                      Alignment = taCenter
                      Color = clRed
                      DataField = 'vlralvo'
                      DataSource = dtsMain
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 6837074
                      Font.Height = -11
                      Font.Name = 'Segoe UI'
                      Font.Style = [fsBold]
                      ParentColor = False
                      ParentFont = False
                    end
                  end
                end
                object pnCellOperation: TPanel
                  Left = 603
                  Top = 0
                  Width = 160
                  Height = 38
                  Align = alClient
                  BevelEdges = []
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 5
                  object pnGrpCellOperation: TPanel
                    Left = 0
                    Top = 0
                    Width = 160
                    Height = 38
                    Align = alClient
                    BevelEdges = []
                    BevelOuter = bvNone
                    ParentColor = True
                    TabOrder = 0
                    DesignSize = (
                      160
                      38)
                    object pnGrpCellOperationContainer: TPanel
                      Left = 20
                      Top = 2
                      Width = 120
                      Height = 35
                      Anchors = [akTop, akBottom]
                      BevelEdges = []
                      BevelOuter = bvNone
                      ParentColor = True
                      TabOrder = 0
                      DesignSize = (
                        120
                        35)
                      object pnCellIconSearch: TPanel
                        AlignWithMargins = True
                        Left = 1
                        Top = 5
                        Width = 38
                        Height = 27
                        Margins.Left = 1
                        Margins.Top = 1
                        Margins.Right = 1
                        Margins.Bottom = 1
                        Anchors = []
                        BevelEdges = []
                        BevelOuter = bvNone
                        ParentColor = True
                        TabOrder = 0
                        object shpIconSearch: TShape
                          Left = 0
                          Top = 0
                          Width = 38
                          Height = 27
                          Brush.Color = 16447477
                          Pen.Style = psClear
                          Shape = stRoundRect
                        end
                        object IconSearch: TImage
                          Left = 0
                          Top = 0
                          Width = 38
                          Height = 27
                          Cursor = crHandPoint
                          Align = alClient
                          Center = True
                          Picture.Data = {
                            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
                            00180806000000E0773DF8000000097048597300000B1300000B1301009A9C18
                            000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000001
                            914944415478DADD944152C2500C861390D12547808523384EAD379013389E40
                            3D01B82EE863286BF004EA09D413C00D7CB0D03A2CEC11D8A10334E6C1146CA7
                            A5D0CAC66C3AEFBD245FDEFF92226CD9F07F010A9A7981086D02C8AE154D28AC
                            BE515F1F70DCFCE4A8DC9AB5D933DF08880F6092FA5ABD6AA874AE0FE0240F94
                            E944416203944F4117B9284822C06C1D01490C88820401BA1C5CDA04E087FC3E
                            F3381575B3F22EAB6D58618B475E61A10065395D64F79C4C994F2EE72D8B3612
                            3D8F5293BA2DC5F0808B4082562C804ABE4B3B1DDED4FD415CB6FCC649494136
                            91CF2B9166B608A1321B2274AE2C59EB1EEA4DDD21789A3F20D5AD7E4DC406B8
                            933C453C1948432E1FB071CADDD15160AB67E41300C2DB346E0B07FF8B904A4A
                            1E777F9F654A13BD26BF81D6108078AB124DC7703E783364E188E549A7EE1598
                            90EE3E64AD120BE099C6004BD445DEE4DCF7E8BC10A5CEDC3577D4E3174CDB2A
                            79516B96F9262B86D12B23FA93038E597F6107854625E76A8784CEB5256F1E02
                            006A159E3CAE2D2552DAFD71F205609BF6034D3D242802E8A45A000000004945
                            4E44AE426082}
                          OnClick = btnSearchClick
                          ExplicitLeft = -6
                          ExplicitTop = 4
                          ExplicitWidth = 57
                          ExplicitHeight = 53
                        end
                      end
                      object pnCellIconEdit: TPanel
                        AlignWithMargins = True
                        Left = 43
                        Top = 5
                        Width = 38
                        Height = 27
                        Margins.Left = 1
                        Margins.Top = 1
                        Margins.Right = 1
                        Margins.Bottom = 1
                        Anchors = []
                        BevelEdges = []
                        BevelOuter = bvNone
                        ParentColor = True
                        TabOrder = 1
                        object shpIconEdit: TShape
                          Left = 0
                          Top = 0
                          Width = 38
                          Height = 27
                          Brush.Color = 16447477
                          Pen.Style = psClear
                          Shape = stRoundRect
                        end
                        object IconEdit: TImage
                          Left = 0
                          Top = 0
                          Width = 38
                          Height = 27
                          Cursor = crHandPoint
                          Align = alClient
                          Center = True
                          Picture.Data = {
                            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
                            00180806000000E0773DF8000000097048597300000B1300000B1301009A9C18
                            000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000000
                            FE4944415478DABDD5CB0D82401006E09918138F968037BC202DD8811D8875A0
                            6155B8DB89355881AB07B337EDC0024C1897100C310B2C3838173830FFB70FB2
                            8BD073E1DF01D78B9788702080716D27A150D770DB1E982577DDED580DCF0231
                            0031654F7559572E5FF18D0DF23BD080F00035081F5081F00286BE4E401DDA2F
                            80B4557223FA01FCBDF80E6705AA8A1570BD24D28901E06BAEA478B0028E2FC6
                            231A9EF363061FEA124ED8806CE484B41820AE528223607AD2FB11B000F9B290
                            C8DE75A3CC909B0C25CB1E94C3F334C6DFD426BC33601B6E04A6B3F869BACD0A
                            B04DB87906FE2E001A44DFB7DA07281F740DE146A0A93E80457827A06DBD0117
                            D4CB19590D086F0000000049454E44AE426082}
                          OnClick = btnEditClick
                          ExplicitLeft = 32
                          ExplicitTop = 32
                          ExplicitWidth = 105
                          ExplicitHeight = 105
                        end
                      end
                      object pnCellIconDelete: TPanel
                        AlignWithMargins = True
                        Left = 84
                        Top = 5
                        Width = 38
                        Height = 27
                        Margins.Left = 1
                        Margins.Top = 1
                        Margins.Right = 1
                        Margins.Bottom = 1
                        Anchors = []
                        BevelEdges = []
                        BevelOuter = bvNone
                        ParentColor = True
                        TabOrder = 2
                        object shpIconDelete: TShape
                          Left = 0
                          Top = 0
                          Width = 38
                          Height = 27
                          Brush.Color = 16447477
                          Pen.Style = psClear
                          Shape = stRoundRect
                        end
                        object IconDelete: TImage
                          Left = 0
                          Top = 0
                          Width = 38
                          Height = 27
                          Cursor = crHandPoint
                          Align = alClient
                          Center = True
                          Picture.Data = {
                            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
                            00180806000000E0773DF8000000097048597300000B1300000B1301009A9C18
                            000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000000
                            904944415478DA6364A031601CB5802C0B34F45AEB1918FF37A008FE676CB871
                            A9BA916C0B34F45BFE93A2F1C6C51AA27C4F3F0B6805502C20D61730D7E3530F
                            53333016E00A5F42F24407D1A0B100571021EB1FDC160CBF38C0A68FBE1668EA
                            B7BC07EA1020E0E907372E562B921744064D090CFF99EB8165B3020EC51FFE33
                            FE2BBC71A16E015916D0028C5A401000002B757F192DDF633B0000000049454E
                            44AE426082}
                          OnClick = btnDeleteClick
                          ExplicitLeft = 2
                          ExplicitTop = 8
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    inherited spvFilters: TSplitView
      inherited pnContentFilters: TPanel
        inherited pnTitleFilters: TPanel
          inherited lbTitleFilters: TLabel
            Width = 170
            Height = 34
          end
        end
      end
    end
  end
  inherited mtMain: TFDMemTable
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
      OnGetText = mtMaindtinicioGetText
    end
    object mtMaindtfinal: TDateField
      FieldName = 'dtfinal'
      Origin = 'dtfinal'
      OnGetText = mtMaindtfinalGetText
    end
    object mtMainvlralvo: TFMTBCDField
      FieldName = 'vlralvo'
      Origin = 'vlralvo'
      DisplayFormat = 'R$ #,##0.0'
      Precision = 20
      Size = 4
    end
    object mtMaincreationDate: TSQLTimeStampField
      FieldName = 'creationDate'
      Origin = 'creation_date'
      OnGetText = mtMaincreationDateGetText
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
