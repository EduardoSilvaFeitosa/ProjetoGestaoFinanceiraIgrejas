inherited FrmRegMemberGrid: TFrmRegMemberGrid
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBackground: TPanel
    inherited pnContentPrincipal: TPanel
      inherited pnHeader: TPanel
        inherited pnIdentForm: TPanel
          inherited lbNameForm: TLabel
            Width = 180
            Height = 41
            Caption = 'Membros'
            ExplicitWidth = 109
          end
          inherited lbDescForm: TLabel
            Width = 180
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
                Value = 17.000000000000000000
              end
              item
                Value = 24.000000000000000000
              end
              item
                Value = 15.000000000000000000
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
                Control = pnTitlePhoto
                Row = 0
              end
              item
                Column = 1
                Control = pnTitleName
                Row = 0
              end
              item
                Column = 2
                Control = pnTitleEmail
                Row = 0
              end
              item
                Column = 3
                Control = pnTitleCreatedAt
                Row = 0
              end
              item
                Column = 4
                Control = pnTitleStatus
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
            object pnTitlePhoto: TPanel
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
              object lbPhoto: TLabel
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
              end
            end
            object pnTitleName: TPanel
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
              object lbName: TLabel
                Left = 6
                Top = 5
                Width = 32
                Height = 13
                Anchors = [akLeft, akBottom]
                Caption = 'Nome'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6110509
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object pnTitleEmail: TPanel
              Left = 183
              Top = 0
              Width = 181
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
                181
                24)
              object lbEmail: TLabel
                Left = 6
                Top = 5
                Width = 28
                Height = 13
                Anchors = [akLeft, akBottom]
                Caption = 'Email'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6110509
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object pnTitleCreatedAt: TPanel
              Left = 366
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
              object lbCreatedAt: TLabel
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
            object pnTitleStatus: TPanel
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
              object lbStatus: TLabel
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
          object dbGrdMembers: TDBCtrlGrid
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
                    Value = 17.000000000000000000
                  end
                  item
                    Value = 24.000000000000000000
                  end
                  item
                    Value = 15.000000000000000000
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
                    Control = pnCellPhoto
                    Row = 0
                  end
                  item
                    Column = 1
                    Control = pnCellName
                    Row = 0
                  end
                  item
                    Column = 2
                    Control = pnCellEmail
                    Row = 0
                  end
                  item
                    Column = 3
                    Control = pnCellCreatedAt
                    Row = 0
                  end
                  item
                    Column = 4
                    Control = pnCellStatus
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
                object pnCellPhoto: TPanel
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
                  object ImgUser: TImage
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
                      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
                      002808060000008CFEB86D000000097048597300000B1300000B1301009A9C18
                      000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000003
                      6B4944415478DAED984D52134114C7FB75A60854A9159746D07002831B0D9492
                      3164E10E4E009C003801C9098013249C2071459580932A8B44DD249E2041022C
                      65611510927EBE19B4C8C77CBC49825AEA7F938FE9E9F9F5EBEEF7FE3D20FE70
                      C1EF06F8B70173E56AE8EE79200E4A4644009EB45F534A1D0A250ADFEE342B0B
                      539367BF1470AFF8655E82B68202E3BC87400195DA4ECC8C676F15D00403086C
                      D0D7489F01A90985693FA02C40732AEF9D07330270BE4FB06E651BA2917E1D9B
                      AC0D0CB8533A8D8C086588FEA3E6A41A41EA5E90AE806C38146728D4362054AC
                      9F20E20030CB189427A42320178E602A816043D7BB76AA41F723AA1C5D8F7A41
                      CAD1C694EEB0D31D01F74BC719FA581AA473C3A886D4E848D9339200F9C4F3F0
                      021B70FFA0BE24246484A770391173DF91DCBE105B0B73D38FF23CC0D271D573
                      D4248ADE7DDD2309FF88E257EFC18A5A22F670D213901F3D21A843569AA20123
                      A71D5E51145F7646B1E701EF4A2706B742882044124FC3876E4DDE7EAA47032D
                      2873BA332BCEAB58587704F4311D96A8DEA693331329B736C6C7D3756A97E2F5
                      D8BB6C3A00774B477129A4C1ED8CEE3E6B6063CA298F59A90A5599DA85B85D76
                      6F964EC083A39494729D0D782DDBFA6AD56D11C8F88133A510D792D3E39BB680
                      7BC57A962AC0A24FC01B50B8AE24F494B85FB0366569F32DDF06E0B0F4AF019A
                      4601B04229A266B96812ADE3C720906A3144FB986A67C0DD627D55026CB0A0C8
                      BD9011C827631305B7A666662097B3C474373DA9AB2B829663CEB98129505BDA
                      6873D3ABC439C0A624CA15B7A8AAA6D2932F6E06ED2751D72479379DE182DD64
                      DA30E562E35C13B529E752E7ED5C7C44D2B620D0730B73B171E75267CA699A39
                      CE852BEB8C73613753BD41E0DB2D84CDC474786D1880C687930DAA18AB5D7FF3
                      EC966B14854CE9B107E981E01CCD83FD1272B6FCC5939CED31932229C72ED37E
                      A7DB9CD6D06570DD2672A63A721F0BD0E33CE1EB00BEFB9E368526334E7DB965
                      075747EC95122C50C0BCBAC237EDEF60764AD588D6D4229AA6CD2A54AB2E79CF
                      3375795A760664BF62E555D699C2846C612B3534238190A775BCCC59C7BE5E1E
                      ED97E84025C034B4917EA386B2B536F7ACF7783914C07650BA711105C45901A3
                      0A21506DD99D7B6F05F0A70C4A1DCD0B2D2A94889B16AB930A3F93E3A905C65A
                      85412AD0DFFD0AF83F20E93B33D0D738223CB9E70000000049454E44AE426082}
                    Proportional = True
                    ExplicitTop = 2
                  end
                end
                object pnCellName: TPanel
                  Left = 53
                  Top = 0
                  Width = 130
                  Height = 38
                  Align = alClient
                  BevelEdges = []
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 1
                  DesignSize = (
                    130
                    38)
                  object pnGrpCellName: TPanel
                    Left = 0
                    Top = 3
                    Width = 133
                    Height = 35
                    Anchors = [akLeft, akRight]
                    BevelEdges = []
                    BevelOuter = bvNone
                    TabOrder = 0
                    DesignSize = (
                      133
                      35)
                    object dbName: TDBText
                      AlignWithMargins = True
                      Left = 3
                      Top = 10
                      Width = 127
                      Height = 15
                      Margins.Bottom = 0
                      Anchors = [akLeft, akRight]
                      DataField = 'nome'
                      DataSource = dtsMain
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 7691090
                      Font.Height = -11
                      Font.Name = 'Segoe UI'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                  end
                end
                object pnCellEmail: TPanel
                  Left = 183
                  Top = 0
                  Width = 183
                  Height = 38
                  Align = alClient
                  BevelEdges = []
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 2
                  DesignSize = (
                    183
                    38)
                  object dbEmail: TDBText
                    AlignWithMargins = True
                    Left = 12
                    Top = 13
                    Width = 165
                    Height = 17
                    Margins.Top = 5
                    Margins.Bottom = 0
                    Anchors = [akLeft]
                    DataField = 'email'
                    DataSource = dtsMain
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 7691090
                    Font.Height = -11
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentFont = False
                  end
                  object DBText2: TDBText
                    Left = 112
                    Top = 1
                    Width = 65
                    Height = 17
                    DataField = 'id'
                    DataSource = dtsMain
                    Visible = False
                  end
                end
                object pnCellCreatedAt: TPanel
                  Left = 366
                  Top = 0
                  Width = 115
                  Height = 38
                  Align = alClient
                  BevelEdges = []
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 3
                  DesignSize = (
                    115
                    38)
                  object dbCreatedAt: TDBText
                    AlignWithMargins = True
                    Left = 8
                    Top = 12
                    Width = 102
                    Height = 17
                    Margins.Top = 5
                    Margins.Bottom = 0
                    Anchors = [akLeft]
                    DataField = 'creationdate'
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
                object pnCellStatus: TPanel
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
                  object pnGrpCellStatus: TPanel
                    Left = 32
                    Top = 6
                    Width = 60
                    Height = 28
                    Anchors = []
                    BevelEdges = []
                    BevelOuter = bvNone
                    Color = clWhite
                    ParentBackground = False
                    TabOrder = 0
                    DesignSize = (
                      60
                      28)
                    object shpCollStatus: TShape
                      Left = 0
                      Top = 0
                      Width = 60
                      Height = 28
                      Anchors = []
                      Pen.Style = psClear
                      Shape = stRoundRect
                    end
                    object dbStatus: TDBText
                      AlignWithMargins = True
                      Left = 0
                      Top = 7
                      Width = 60
                      Height = 18
                      Margins.Top = 5
                      Margins.Bottom = 0
                      Alignment = taCenter
                      DataField = 'status'
                      DataSource = dtsMain
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 6837074
                      Font.Height = -11
                      Font.Name = 'Segoe UI'
                      Font.Style = [fsBold]
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
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 12
    end
    object mtMaindtingresso: TDateField
      FieldName = 'dtingresso'
      Origin = 'dtingresso'
    end
    object mtMaincargo: TWideStringField
      FieldName = 'cargo'
      Origin = 'cargo'
      Size = 50
    end
    object mtMaincreation_date: TSQLTimeStampField
      FieldName = 'creationDate'
      Origin = 'creationDate'
      OnGetText = mtMaincreation_dateGetText
    end
    object mtMainstatus: TSmallintField
      FieldName = 'status'
      Origin = 'status'
      OnGetText = mtMainstatusGetText
    end
    object mtMainlast_update: TSQLTimeStampField
      FieldName = 'lastUpdate'
      Origin = 'last_update'
    end
  end
end
