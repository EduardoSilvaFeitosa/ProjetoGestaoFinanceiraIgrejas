inherited FrmRegChurchGrid: TFrmRegChurchGrid
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBackground: TPanel
    inherited pnContentPrincipal: TPanel
      inherited pnHeader: TPanel
        inherited pnIdentForm: TPanel
          inherited lbNameForm: TLabel
            Width = 180
            Height = 41
            Caption = 'Igrejas'
            ExplicitWidth = 77
          end
          inherited lbDescForm: TLabel
            Width = 180
            Caption = 'Informa'#231#245'es das igrejas'
            ExplicitWidth = 121
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
                Width = 101
                Height = 13
                Anchors = [akLeft, akBottom]
                Caption = 'Nome/Raz'#227'o Social'
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
                Width = 48
                Height = 13
                Anchors = [akLeft, akBottom]
                Caption = 'Endere'#231'o'
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
                Width = 53
                Height = 13
                Anchors = [akLeft, akBottom]
                Caption = 'Criado em'
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
                Caption = 'Status'
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
                      0954506E67496D61676589504E470D0A1A0A0000000D494844520000001C0000
                      001C0806000000720DDF94000000097048597300000B1300000B1301009A9C18
                      000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000001
                      D84944415478DAED96CD51C25010C7771F32A3374B88379C514C07860EE840A9
                      003D8B1A46B84B05D0817660ACC08807723376C05DC9DF4D5E20C8042410B8E8
                      9B81096FDFEE8FFD7A1BA62D2FCEAA50326D83507C8A9415ACC14BE3630BC09D
                      770D246363C092796751409628EC83B91EEE01E8C8EF2129723CF7DAC91758BE
                      B389F936550834BDFEB59D2BF0D06C5D00DA332118B1BA1F7D333A03B7719F2B
                      70E2E9B6723805EBCAA335F1903F2B9E6BFBB9030FCBED3A316C48D1CC181812
                      A839E8E71452C3B4F7F750EC82501D03C0C12551415249B753F9EC89B7CDDFBC
                      5D082C1D492B145437314A0EF1576D6C3435C4C1A8E9BDDDF456039EB43039C8
                      7439AF12A5476D42D232DE6B63AEDDA5800C81FD92A3D271FB9C14BAB9002908
                      6A8BC2B412506E12493A9FA59ECA084CC1F4BCD7AB5A666058B1BB41B10E4635
                      AC56063F0EFA579DF580C03329A5BD416C20064A88C3B164CD58732484951F40
                      E65AAC7FA6CF2FF430114EE730201E2AC50FE37F4C08781211468546CA98CD61
                      9ACDA5812233F4B4605FE4075ADE7E8F7A54A60541F9FFC0BF0BF4C352D7BB38
                      1F977E3896E4B0194D0BE247AD8C6AB82F1F371A53C925DE8BF52C7DF1676DFC
                      B5571AD094C6059D6E86377AF65C7D35667EA7599BBD6DE037E5AA8D2CD13173
                      B10000000049454E44AE426082}
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
                    object dbName: TDBText
                      AlignWithMargins = True
                      Left = 3
                      Top = 3
                      Width = 181
                      Height = 15
                      Margins.Bottom = 0
                      Align = alTop
                      DataField = 'nome'
                      DataSource = dtsMain
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 7691090
                      Font.Height = -11
                      Font.Name = 'Segoe UI'
                      Font.Style = [fsBold]
                      ParentFont = False
                      ExplicitWidth = 122
                    end
                    object dbCnpj: TDBText
                      AlignWithMargins = True
                      Left = 3
                      Top = 18
                      Width = 181
                      Height = 17
                      Margins.Top = 0
                      Align = alTop
                      DataField = 'cnpj'
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
                  object dbAdress: TDBText
                    AlignWithMargins = True
                    Left = 12
                    Top = 13
                    Width = 165
                    Height = 17
                    Margins.Top = 5
                    Margins.Bottom = 0
                    Anchors = [akLeft]
                    DataField = 'logradouro'
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
                  object dbCreatedDate: TDBText
                    AlignWithMargins = True
                    Left = 8
                    Top = 12
                    Width = 102
                    Height = 17
                    Margins.Top = 5
                    Margins.Bottom = 0
                    Anchors = [akLeft]
                    DataField = 'creationDate'
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
                    object dbStatus: TDBText
                      AlignWithMargins = True
                      Left = 18
                      Top = 7
                      Width = 60
                      Height = 18
                      Margins.Top = 5
                      Margins.Bottom = 0
                      Alignment = taCenter
                      Color = clWhite
                      DataField = 'status'
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
    object mtMaincreationDate: TSQLTimeStampField
      FieldName = 'creationDate'
      Origin = 'creation_date'
      OnGetText = mtMaincreationDateGetText
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
      OnGetText = mtMainstatusGetText
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
