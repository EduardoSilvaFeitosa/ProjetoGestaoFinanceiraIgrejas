inherited FrmMasterReports: TFrmMasterReports
  Caption = 'FrmMasterReports'
  Color = 16447477
  PixelsPerInch = 96
  TextHeight = 13
  object pnBackground: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 600
    Align = alClient
    BevelEdges = []
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      800
      600)
    object pnContentPrincipal: TPanel
      Left = 0
      Top = 0
      Width = 800
      Height = 600
      Align = alClient
      BevelEdges = []
      BevelOuter = bvNone
      Padding.Left = 20
      Padding.Top = 20
      Padding.Bottom = 10
      ParentColor = True
      TabOrder = 0
      object pnHeader: TPanel
        AlignWithMargins = True
        Left = 20
        Top = 20
        Width = 768
        Height = 64
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 12
        Margins.Bottom = 0
        Align = alTop
        BevelEdges = []
        BevelOuter = bvNone
        Padding.Bottom = 10
        ParentColor = True
        TabOrder = 0
        object pnIdentForm: TPanel
          Left = 0
          Top = 0
          Width = 153
          Height = 54
          Align = alLeft
          BevelEdges = []
          BevelOuter = bvNone
          TabOrder = 0
          object lbNameForm: TLabel
            Left = 0
            Top = 0
            Width = 153
            Height = 41
            Align = alClient
            Caption = 'Relat'#243'rios'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6110509
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitWidth = 115
            ExplicitHeight = 32
          end
          object lbDescForm: TLabel
            Left = 0
            Top = 41
            Width = 153
            Height = 13
            Align = alBottom
            Caption = 'Informa'#231#245'es dos relat'#243'rios'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6837074
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ExplicitWidth = 137
          end
        end
        object pnGrpAddFilter: TPanel
          AlignWithMargins = True
          Left = 600
          Top = 0
          Width = 168
          Height = 54
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alRight
          BevelEdges = []
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
          object pnBtnAdd: TPanel
            Left = 42
            Top = 9
            Width = 120
            Height = 42
            Cursor = crHandPoint
            Hint = 'Click here to add new item'
            BevelEdges = []
            BevelOuter = bvNone
            ParentColor = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Visible = False
            inline btnAdd: TFrmButton
              Left = 0
              Top = 0
              Width = 120
              Height = 42
              Align = alClient
              TabOrder = 0
              inherited pnBackground: TPanel
                inherited pnBtn: TPanel
                  ExplicitTop = 2
                  ExplicitHeight = 40
                  inherited txtBtn: TLabel
                    Width = 112
                    Height = 35
                    Caption = 'Adicionar'
                    ExplicitWidth = 50
                  end
                end
              end
            end
          end
          object pnIconFilter: TPanel
            Left = 3
            Top = 9
            Width = 35
            Height = 35
            Cursor = crHandPoint
            Hint = 'Click here to set filters'
            BevelEdges = []
            BevelOuter = bvNone
            ParentBackground = False
            ParentColor = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            object IconFilter: TImage
              Left = 0
              Top = 0
              Width = 35
              Height = 35
              Cursor = crHandPoint
              Align = alClient
              Center = True
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
                00180806000000E0773DF8000000097048597300000B1300000B1301009A9C18
                000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000001
                994944415478DADD954D4EC24014C729ED16C211EAD688295B95A4BD016B4363
                39817A037A02B90135226B6E401394B8A3097E2CAD37206149A7E37FC894542D
                7486C698F836035378BFF7F57F554ABF6CCAFF01D49BF63B0E7D4F3FE17C7277
                F0B700C3747442C80C1F6B92CE17EA4A6D044F5EB813C0B37070F425011D44EF
                6D7BF8A3C94767ED9EA22897229E29A5EEF3C3A0BBEB379953844CC638CC1CE7
                3E9C5B79416402783F1844DFF2BF1075B7B6D53D17C0ECF0E4DC50557596F54C
                2568EAD40B44CAB85368C7A7F6152D976EBE9526B7EEC20066E8074D7FC7C448
                A9BF3000536762EAC63C3B0BD9F945001BC5D69BED162171883EB19176B8B7DE
                B2BC742BA4D24AB4210588E3F8FAE5F1BE2722C8241B290046B7F13A1D06193A
                41B414BE948BD49D8F2C2C2940527FE8A4C6F796CE9CE3BEC3CBE63108A20F34
                4DB302DF5B8800365B3601E866AB568DAB633832BE02EC3EEF07EB4D43089056
                754488FE361D7E6497686D8E7489D210447CCB4426B875D75B76EF572683A00C
                A3288ABAA9EDEBE1CE252432E693C1885D147E2717165A51FB0420C3E119D6EE
                B6D70000000049454E44AE426082}
              Transparent = True
              ExplicitWidth = 33
              ExplicitHeight = 24
            end
          end
        end
      end
      object pnControls: TPanel
        Left = 20
        Top = 549
        Width = 780
        Height = 41
        Align = alBottom
        BevelEdges = []
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
        Visible = False
        DesignSize = (
          780
          41)
        object pnCtrlIdentPage: TPanel
          Left = 0
          Top = 0
          Width = 153
          Height = 41
          Align = alLeft
          BevelEdges = []
          BevelOuter = bvNone
          TabOrder = 0
          object pnIdentActualPage: TLabel
            Left = 0
            Top = 14
            Width = 153
            Height = 19
            AutoSize = False
            Caption = 'P'#225'gina 1 de 1'
            Color = 8662824
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10316896
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
        end
        object pnCtrlBotoes: TPanel
          Left = 281
          Top = 5
          Width = 218
          Height = 35
          Anchors = [akTop, akBottom]
          BevelEdges = []
          BevelOuter = bvNone
          ParentBackground = False
          ParentColor = True
          TabOrder = 1
          object lbIdentPages: TLabel
            Left = 70
            Top = 8
            Width = 81
            Height = 19
            Alignment = taCenter
            AutoSize = False
            Caption = ' 1  ..  1'
            Color = 8662824
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10316896
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object pnLast: TPanel
            Left = 185
            Top = 0
            Width = 33
            Height = 35
            Align = alRight
            BevelEdges = []
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 0
            object IconLast: TImage
              Left = 0
              Top = 0
              Width = 33
              Height = 35
              Cursor = crHandPoint
              Align = alClient
              Center = True
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
                00180806000000E0773DF8000000097048597300000B1300000B1301009A9C18
                000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000000
                924944415478DA6364A031601CB560045BA06717570FA22F1D5AD488CF005DDB
                D8FF20FAF2E1C558CDC22AA8651565C0CCCC7C1EAC8091B1019F25645900D598
                00A4E613B2846C0B88B584220B88B184620B085942150B80292AFEFFFFFF0B40
                6C20DD78E5C89206AA5980CF708A2D2064384516106338D9162067347C8653E4
                031D9B18B0A1F80CA7C8026A81510B46800500BBBC8519CC1227180000000049
                454E44AE426082}
              Transparent = True
              ExplicitLeft = 6
              ExplicitTop = 2
            end
          end
          object pnFirst: TPanel
            Left = 0
            Top = 0
            Width = 33
            Height = 35
            Align = alLeft
            BevelEdges = []
            BevelOuter = bvNone
            ParentBackground = False
            ParentColor = True
            TabOrder = 1
            object IconFirst: TImage
              Left = 0
              Top = 0
              Width = 33
              Height = 35
              Cursor = crHandPoint
              Align = alClient
              Center = True
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
                00180806000000E0773DF8000000097048597300000B1300000B1301009A9C18
                000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000000
                934944415478DA6364A031601CB560045BA06B1BFB1F445F3EBC18AF23F4ECE2
                EA41F4A5438B1AA96E01C8F0FFFFFF3780D87FFFFE35BC766CD905AA59806238
                C3DFC46B87972DA09A0F88359C2C0B48319C640B48359C640B746C621A181919
                C1A90648270053CE42AA5A408E256445322996909D4C89B584A28C866C09D533
                1AB22520FACA91250D24F9805A60D482116001005E688719CC40E57100000000
                49454E44AE426082}
              Transparent = True
              ExplicitLeft = 8
              ExplicitTop = 16
              ExplicitWidth = 105
              ExplicitHeight = 105
            end
          end
          object pnPrevious: TPanel
            Left = 33
            Top = 0
            Width = 33
            Height = 35
            Align = alLeft
            BevelEdges = []
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 2
            object IconPrevious: TImage
              Left = 0
              Top = 0
              Width = 33
              Height = 35
              Cursor = crHandPoint
              Align = alClient
              Center = True
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
                00180806000000E0773DF8000000097048597300000B1300000B1301009A9C18
                000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000000
                894944415478DA6364A031601CB560D402AC40CF2EAE1E445F3AB4A891EA1680
                0CFFFFFF7F0388FDF7EF5FC36BC7965DA09A05288633FC4DBC7678D902AAF980
                1CC389B6805CC389B28012C389B240C726A6819191119C6A80740230E52CA4AA
                05945A427424936B0949C9941C4B48CE68C896503DA3215B02A2AF1C59D24075
                1F900A462D1801160000DB62571960FDCB3A0000000049454E44AE426082}
              Transparent = True
              ExplicitLeft = 8
              ExplicitTop = 16
              ExplicitWidth = 105
              ExplicitHeight = 105
            end
          end
          object pnNext: TPanel
            Left = 152
            Top = 0
            Width = 33
            Height = 35
            Align = alRight
            BevelEdges = []
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 3
            object IconNext: TImage
              Left = 0
              Top = 0
              Width = 33
              Height = 35
              Cursor = crHandPoint
              Align = alClient
              Center = True
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
                00180806000000E0773DF8000000097048597300000B1300000B1301009A9C18
                000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000000
                884944415478DA6364A031601CB560D40230D0B38BAB07D1970E2D6AA4BA055A
                565106CCCCCCE7C18A19191B48B584281FE8DAC62600A9F9E45842741C906B09
                49914C8E2524A722522D21D902608A8AFFFFFFFF02101B48375E39B2A4816A16
                906A384916906338D116906B385116206734520D27DA073A3631604349359C68
                0B2801A3168C000B00A8B65519BC4DD7FD0000000049454E44AE426082}
              Transparent = True
              ExplicitLeft = 8
              ExplicitTop = 16
              ExplicitWidth = 105
              ExplicitHeight = 105
            end
          end
        end
      end
      object pnContent: TPanel
        Left = 20
        Top = 84
        Width = 780
        Height = 465
        Align = alClient
        BevelEdges = []
        BevelOuter = bvNone
        Padding.Top = 10
        ParentColor = True
        TabOrder = 2
        object pnGridHeader: TPanel
          Left = 0
          Top = 10
          Width = 780
          Height = 24
          Align = alTop
          BevelEdges = []
          BevelOuter = bvNone
          Padding.Right = 17
          ParentBackground = False
          ParentColor = True
          TabOrder = 0
          Visible = False
        end
        object pnGridDetalhes: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 34
          Width = 760
          Height = 431
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 20
          Margins.Bottom = 0
          Align = alClient
          BevelEdges = []
          BevelOuter = bvNone
          Padding.Top = 5
          ParentColor = True
          TabOrder = 1
          object GridPanel1: TGridPanel
            Left = 0
            Top = 5
            Width = 760
            Height = 160
            Align = alTop
            BevelEdges = []
            BevelOuter = bvNone
            Color = 16447477
            ColumnCollection = <
              item
                SizeStyle = ssAbsolute
                Value = 253.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 252.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 253.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = pnEntriesReport
                Row = 0
              end
              item
                Column = 1
                Control = pnWithdrawalsReport
                Row = 0
              end
              item
                Column = 2
                Control = pnTithesReport
                Row = 0
              end
              item
                Column = 0
                Control = pnCampaignsReport
                Row = 1
              end
              item
                Column = 1
                Control = pnCashFlowReport
                Row = 1
              end>
            ParentBackground = False
            RowCollection = <
              item
                Value = 50.000000000000000000
              end
              item
                Value = 50.000000000000000000
              end>
            TabOrder = 0
            object pnEntriesReport: TPanel
              AlignWithMargins = True
              Left = 0
              Top = 0
              Width = 245
              Height = 77
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 8
              Align = alClient
              BevelEdges = []
              BevelOuter = bvNone
              Color = clWhite
              Padding.Left = 8
              Padding.Top = 15
              Padding.Right = 8
              Padding.Bottom = 15
              ParentBackground = False
              TabOrder = 0
              OnClick = OnEntriesReportClick
              object Panel2: TPanel
                Left = 8
                Top = 15
                Width = 229
                Height = 47
                Align = alClient
                BevelEdges = []
                BevelOuter = bvNone
                TabOrder = 0
                OnClick = OnEntriesReportClick
                object Panel3: TPanel
                  Left = 0
                  Top = 0
                  Width = 40
                  Height = 47
                  Align = alLeft
                  BevelEdges = []
                  BevelOuter = bvNone
                  TabOrder = 0
                  OnClick = OnEntriesReportClick
                  object Image1: TImage
                    Left = 0
                    Top = 0
                    Width = 40
                    Height = 47
                    Cursor = crHandPoint
                    Align = alClient
                    Center = True
                    Picture.Data = {
                      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000960000
                      009608060000003C0171E2000000097048597300000B1300000B1301009A9C18
                      000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000005
                      0F4944415478DAEDDD4D4E1C471880E16E7EB616B9C1646745B6C3D28A8C35BE
                      41965144C2DC00FB04E013C43941C68145B639012878E1250A5E64676EE0D913
                      A6529F8225ABE47498E1FB99AE7E1F090DBBAF8A7A5D3DB018B70D60A08D5E00
                      EA445830415830415830415830415830415830415830415830415830415830B1
                      3261DD7FFCDD68737373DCCE9BAD799BB6A2D7A3A16DDBCB8BB3A369F43A42F6
                      1E397C34FE76EBDEFCDE7E939A496AD228FA876121C775F8E71FBFBE8C5E87FB
                      BEA3063F7AFAE37E4AE9307F5BC5EDD46588718584F5E8E9DE4F29CD9F476FDE
                      D3D0E2720FEBEB9DBD5FE6CD7C12BDF108438ACB35ACFCF83BB879FC0DD650E2
                      720BEBFE38FFD677BDF93E7AC3AB600871B985F570E78793FC328EDEF0AAA83D
                      2E97B0B8AD3EAFE6B85CC27AF064F730FF100FA237BB8A6A8DCB25ACDA1F83F3
                      F9FCC5DADA9AFCC359EA6F7235C6E515D687A6E23F84E6DF749FE5B866EBEBEB
                      27CBEEB3B6B8BCC24AD11BB52461BD7B737CFAD537DF6F13D7CD5E3C860C252C
                      F99EB86EF6E13164486109E2222C15655862E871119682CF8525861C176129F8
                      AFB0C450E3222C055D618921C645580AFE2F2C31B4B8084BC16DC212438A8BB0
                      14DC362C3194B8084BC122618921C445580A160D4BD41E17612958262C51735C
                      84A560D9B044AD71119682BB84256A8C8BB014DC352C515B5C84A540232C5153
                      5C84A5402B2C514B5C84A540332C51435C84A5403B2CD1F7B8084B814558A2CF
                      71119602ABB0445FE3222C059661893EC645580AACC3127D8B8BB014788425FA
                      14176129F00A4BF4252EC252E01996B86B5C176747E6E74E580ABCC31277898B
                      B07A22222CB16C5C84D51351618965E222AC9E880C4B2C1A1761F54474586291
                      B808AB27529BCEDBD4CEA2D7918D6EBE3A11164C10164C10164C10164C10164C
                      10164C10164C10164C10164C10164C10164C10164C10164C10164C10164C1016
                      4C10164C10164C10568094D2E9BB37C7CF16DC5FAFFE3375C20A40583A08AB40
                      583A08AB40583A08AB40583A08AB40583A08AB40583A08AB40583A08AB40583A
                      08AB40583A08AB40583A08AB40583AFA16D6653EF8D70B6DB06DF79A5B7CB4CF
                      4784A5A35761791C3A61E920AC8019D108AB40583A08AB40583A08AB40583A08
                      AB40583A08AB40583A08AB40583A08AB40583A08AB40583A08AB40583A08AB40
                      583A08AB504B58D1F11256A19643272C2584E53FA30B61156A3974C2524258FE
                      33BA1056A19643272C2584E53FA30B61156A3974C2524258FE33BA1056A19643
                      272C2584E53FA30B61156A3974C2524258FE33BA1056A19643272C2584E53FA3
                      0B61156A3974C2524258FE33BA1056A19643272C2584E53FA30B61156A3974C2
                      524258FE33BA1056A19643272C2584E53FA30B61156A3974C2524258FE33BA10
                      164CD414D6FB66818FC486A9590EEB0BEB215E61F5EAB30D6AB6CC6378192E61
                      3D78B27BD8B6ED81C72C74CB61BDCC611D5ACFF10A6B9CC33AF198856EEB57EB
                      5F9EBF9D5E5ACF71094BF0388CE7F518146E61716BC5F3BAAD845B5882F75A71
                      BCDE5B7DE41A9678B8B33BCD63F7BCE70E5B7A7D71763CF19CE81E96C837D7AB
                      7C73ED47CC1E9A7C53FD9C6FAAE7DE7343C212F9CDFC24BFC8637114B586CACD
                      F2D78B8BB3A369C4F0B0B0C4F67832BABEBE1E3704A626DF50E7F9E5F78D8D8D
                      57E7A7D359D43A42C3FAD4BF91FDBD9D52B31DBD96BE594BED2CAD35B3ABABAB
                      D3BFDEFE7619BD1EB13261A12E84051384051384051384051384051384051384
                      0513840513840513840513840513FF004B42FBF11069B1E70000000049454E44
                      AE426082}
                    Proportional = True
                    OnClick = OnEntriesReportClick
                    ExplicitLeft = 112
                    ExplicitTop = 56
                    ExplicitWidth = 105
                    ExplicitHeight = 105
                  end
                end
                object Panel4: TPanel
                  Left = 40
                  Top = 0
                  Width = 189
                  Height = 47
                  Cursor = crHandPoint
                  Align = alClient
                  BevelEdges = []
                  BevelOuter = bvNone
                  Padding.Left = 8
                  TabOrder = 1
                  OnClick = OnEntriesReportClick
                  object Label2: TLabel
                    Left = 8
                    Top = 0
                    Width = 181
                    Height = 13
                    Cursor = crHandPoint
                    Align = alTop
                    Caption = 'Entradas'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6110509
                    Font.Height = -11
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Layout = tlCenter
                    OnClick = OnEntriesReportClick
                    ExplicitTop = 3
                    ExplicitWidth = 45
                  end
                  object Label1: TLabel
                    AlignWithMargins = True
                    Left = 11
                    Top = 16
                    Width = 175
                    Height = 31
                    Cursor = crHandPoint
                    Margins.Bottom = 0
                    Align = alClient
                    AutoSize = False
                    Caption = 'Relat'#243'rio com os dados das movimenta'#231#245'es de entrada.'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6110509
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    WordWrap = True
                    OnClick = OnEntriesReportClick
                    ExplicitLeft = 15
                    ExplicitTop = 22
                    ExplicitWidth = 183
                    ExplicitHeight = 26
                  end
                end
              end
            end
            object pnWithdrawalsReport: TPanel
              AlignWithMargins = True
              Left = 253
              Top = 0
              Width = 244
              Height = 77
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 8
              Align = alClient
              BevelEdges = []
              BevelOuter = bvNone
              Color = clWhite
              Padding.Left = 8
              Padding.Top = 15
              Padding.Right = 8
              Padding.Bottom = 15
              ParentBackground = False
              TabOrder = 1
              OnClick = OnWithdrawalsReportClick
              object Panel6: TPanel
                Left = 8
                Top = 15
                Width = 228
                Height = 47
                Align = alClient
                BevelEdges = []
                BevelOuter = bvNone
                TabOrder = 0
                OnClick = OnWithdrawalsReportClick
                object Panel7: TPanel
                  Left = 0
                  Top = 0
                  Width = 40
                  Height = 47
                  Align = alLeft
                  BevelEdges = []
                  BevelOuter = bvNone
                  TabOrder = 0
                  OnClick = OnWithdrawalsReportClick
                  object Image2: TImage
                    Left = 0
                    Top = 0
                    Width = 40
                    Height = 47
                    Cursor = crHandPoint
                    Align = alClient
                    Center = True
                    Picture.Data = {
                      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000960000
                      009608060000003C0171E2000000097048597300000B1300000B1301009A9C18
                      000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000005
                      0F4944415478DAEDDD4D4E1C471880E16E7EB616B9C1646745B6C3D28A8C35BE
                      41965144C2DC00FB04E013C43941C68145B639012878E1250A5E64676EE0D913
                      A6529F8225ABE47498E1FB99AE7E1F090DBBAF8A7A5D3DB018B70D60A08D5E00
                      EA445830415830415830415830415830415830415830415830415830415830B1
                      3261DD7FFCDD68737373DCCE9BAD799BB6A2D7A3A16DDBCB8BB3A369F43A42F6
                      1E397C34FE76EBDEFCDE7E939A496AD228FA876121C775F8E71FBFBE8C5E87FB
                      BEA3063F7AFAE37E4AE9307F5BC5EDD46588718584F5E8E9DE4F29CD9F476FDE
                      D3D0E2720FEBEB9DBD5FE6CD7C12BDF108438ACB35ACFCF83BB879FC0DD650E2
                      720BEBFE38FFD677BDF93E7AC3AB600871B985F570E78793FC328EDEF0AAA83D
                      2E97B0B8AD3EAFE6B85CC27AF064F730FF100FA237BB8A6A8DCB25ACDA1F83F3
                      F9FCC5DADA9AFCC359EA6F7235C6E515D687A6E23F84E6DF749FE5B866EBEBEB
                      27CBEEB3B6B8BCC24AD11BB52461BD7B737CFAD537DF6F13D7CD5E3C860C252C
                      F99EB86EF6E13164486109E2222C15655862E871119682CF8525861C176129F8
                      AFB0C450E3222C055D618921C645580AFE2F2C31B4B8084BC16DC212438A8BB0
                      14DC362C3194B8084BC122618921C445580A160D4BD41E17612958262C51735C
                      84A560D9B044AD71119682BB84256A8C8BB014DC352C515B5C84A540232C5153
                      5C84A5402B2C514B5C84A540332C51435C84A5403B2CD1F7B8084B814558A2CF
                      71119602ABB0445FE3222C059661893EC645580AACC3127D8B8BB014788425FA
                      14176129F00A4BF4252EC252E01996B86B5C176747E6E74E580ABCC31277898B
                      B07A22222CB16C5C84D51351618965E222AC9E880C4B2C1A1761F54474586291
                      B808AB27529BCEDBD4CEA2D7918D6EBE3A11164C10164C10164C10164C10164C
                      10164C10164C10164C10164C10164C10164C10164C10164C10164C10164C1016
                      4C10164C10164C10568094D2E9BB37C7CF16DC5FAFFE3375C20A40583A08AB40
                      583A08AB40583A08AB40583A08AB40583A08AB40583A08AB40583A08AB40583A
                      08AB40583A08AB40583A08AB40583AFA16D6653EF8D70B6DB06DF79A5B7CB4CF
                      4784A5A35761791C3A61E920AC8019D108AB40583A08AB40583A08AB40583A08
                      AB40583A08AB40583A08AB40583A08AB40583A08AB40583A08AB40583A08AB40
                      583A08AB504B58D1F11256A19643272C2584E53FA30B61156A3974C2524258FE
                      33BA1056A19643272C2584E53FA30B61156A3974C2524258FE33BA1056A19643
                      272C2584E53FA30B61156A3974C2524258FE33BA1056A19643272C2584E53FA3
                      0B61156A3974C2524258FE33BA1056A19643272C2584E53FA30B61156A3974C2
                      524258FE33BA1056A19643272C2584E53FA30B61156A3974C2524258FE33BA10
                      164CD414D6FB66818FC486A9590EEB0BEB215E61F5EAB30D6AB6CC6378192E61
                      3D78B27BD8B6ED81C72C74CB61BDCC611D5ACFF10A6B9CC33AF198856EEB57EB
                      5F9EBF9D5E5ACF71094BF0388CE7F518146E61716BC5F3BAAD845B5882F75A71
                      BCDE5B7DE41A9678B8B33BCD63F7BCE70E5B7A7D71763CF19CE81E96C837D7AB
                      7C73ED47CC1E9A7C53FD9C6FAAE7DE7343C212F9CDFC24BFC8637114B586CACD
                      F2D78B8BB3A369C4F0B0B0C4F67832BABEBE1E3704A626DF50E7F9E5F78D8D8D
                      57E7A7D359D43A42C3FAD4BF91FDBD9D52B31DBD96BE594BED2CAD35B3ABABAB
                      D3BFDEFE7619BD1EB13261A12E84051384051384051384051384051384051384
                      0513840513840513840513840513FF004B42FBF11069B1E70000000049454E44
                      AE426082}
                    Proportional = True
                    OnClick = OnWithdrawalsReportClick
                    ExplicitLeft = 2
                    ExplicitHeight = 50
                  end
                end
                object Panel8: TPanel
                  Left = 40
                  Top = 0
                  Width = 188
                  Height = 47
                  Cursor = crHandPoint
                  Align = alClient
                  BevelEdges = []
                  BevelOuter = bvNone
                  Padding.Left = 8
                  TabOrder = 1
                  OnClick = OnWithdrawalsReportClick
                  object Label3: TLabel
                    Left = 8
                    Top = 0
                    Width = 180
                    Height = 13
                    Cursor = crHandPoint
                    Align = alTop
                    Caption = 'Sa'#237'das'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6110509
                    Font.Height = -11
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Layout = tlCenter
                    OnClick = OnWithdrawalsReportClick
                    ExplicitTop = 3
                    ExplicitWidth = 33
                  end
                  object Label4: TLabel
                    AlignWithMargins = True
                    Left = 11
                    Top = 16
                    Width = 174
                    Height = 31
                    Cursor = crHandPoint
                    Margins.Bottom = 0
                    Align = alClient
                    AutoSize = False
                    Caption = 'Relat'#243'rio com os dados das movimenta'#231#245'es de sa'#237'da.'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6110509
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    WordWrap = True
                    OnClick = OnWithdrawalsReportClick
                    ExplicitLeft = 0
                    ExplicitTop = 0
                    ExplicitWidth = 120
                    ExplicitHeight = 15
                  end
                end
              end
            end
            object pnTithesReport: TPanel
              Left = 505
              Top = 0
              Width = 253
              Height = 80
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 8
              Align = alClient
              BevelEdges = []
              BevelOuter = bvNone
              Color = clWhite
              Padding.Left = 8
              Padding.Top = 15
              Padding.Right = 8
              Padding.Bottom = 15
              ParentBackground = False
              TabOrder = 2
              OnClick = OnTithesReportClick
              object Panel10: TPanel
                Left = 8
                Top = 15
                Width = 237
                Height = 50
                Align = alClient
                BevelEdges = []
                BevelOuter = bvNone
                TabOrder = 0
                OnClick = OnTithesReportClick
                object Panel11: TPanel
                  Left = 0
                  Top = 0
                  Width = 40
                  Height = 50
                  Align = alLeft
                  BevelEdges = []
                  BevelOuter = bvNone
                  TabOrder = 0
                  OnClick = OnTithesReportClick
                  object Image3: TImage
                    Left = 0
                    Top = 0
                    Width = 40
                    Height = 50
                    Cursor = crHandPoint
                    Align = alClient
                    Center = True
                    Picture.Data = {
                      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000960000
                      009608060000003C0171E2000000097048597300000B1300000B1301009A9C18
                      000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000005
                      0F4944415478DAEDDD4D4E1C471880E16E7EB616B9C1646745B6C3D28A8C35BE
                      41965144C2DC00FB04E013C43941C68145B639012878E1250A5E64676EE0D913
                      A6529F8225ABE47498E1FB99AE7E1F090DBBAF8A7A5D3DB018B70D60A08D5E00
                      EA445830415830415830415830415830415830415830415830415830415830B1
                      3261DD7FFCDD68737373DCCE9BAD799BB6A2D7A3A16DDBCB8BB3A369F43A42F6
                      1E397C34FE76EBDEFCDE7E939A496AD228FA876121C775F8E71FBFBE8C5E87FB
                      BEA3063F7AFAE37E4AE9307F5BC5EDD46588718584F5E8E9DE4F29CD9F476FDE
                      D3D0E2720FEBEB9DBD5FE6CD7C12BDF108438ACB35ACFCF83BB879FC0DD650E2
                      720BEBFE38FFD677BDF93E7AC3AB600871B985F570E78793FC328EDEF0AAA83D
                      2E97B0B8AD3EAFE6B85CC27AF064F730FF100FA237BB8A6A8DCB25ACDA1F83F3
                      F9FCC5DADA9AFCC359EA6F7235C6E515D687A6E23F84E6DF749FE5B866EBEBEB
                      27CBEEB3B6B8BCC24AD11BB52461BD7B737CFAD537DF6F13D7CD5E3C860C252C
                      F99EB86EF6E13164486109E2222C15655862E871119682CF8525861C176129F8
                      AFB0C450E3222C055D618921C645580AFE2F2C31B4B8084BC16DC212438A8BB0
                      14DC362C3194B8084BC122618921C445580A160D4BD41E17612958262C51735C
                      84A560D9B044AD71119682BB84256A8C8BB014DC352C515B5C84A540232C5153
                      5C84A5402B2C514B5C84A540332C51435C84A5403B2CD1F7B8084B814558A2CF
                      71119602ABB0445FE3222C059661893EC645580AACC3127D8B8BB014788425FA
                      14176129F00A4BF4252EC252E01996B86B5C176747E6E74E580ABCC31277898B
                      B07A22222CB16C5C84D51351618965E222AC9E880C4B2C1A1761F54474586291
                      B808AB27529BCEDBD4CEA2D7918D6EBE3A11164C10164C10164C10164C10164C
                      10164C10164C10164C10164C10164C10164C10164C10164C10164C10164C1016
                      4C10164C10164C10568094D2E9BB37C7CF16DC5FAFFE3375C20A40583A08AB40
                      583A08AB40583A08AB40583A08AB40583A08AB40583A08AB40583A08AB40583A
                      08AB40583A08AB40583A08AB40583AFA16D6653EF8D70B6DB06DF79A5B7CB4CF
                      4784A5A35761791C3A61E920AC8019D108AB40583A08AB40583A08AB40583A08
                      AB40583A08AB40583A08AB40583A08AB40583A08AB40583A08AB40583A08AB40
                      583A08AB504B58D1F11256A19643272C2584E53FA30B61156A3974C2524258FE
                      33BA1056A19643272C2584E53FA30B61156A3974C2524258FE33BA1056A19643
                      272C2584E53FA30B61156A3974C2524258FE33BA1056A19643272C2584E53FA3
                      0B61156A3974C2524258FE33BA1056A19643272C2584E53FA30B61156A3974C2
                      524258FE33BA1056A19643272C2584E53FA30B61156A3974C2524258FE33BA10
                      164CD414D6FB66818FC486A9590EEB0BEB215E61F5EAB30D6AB6CC6378192E61
                      3D78B27BD8B6ED81C72C74CB61BDCC611D5ACFF10A6B9CC33AF198856EEB57EB
                      5F9EBF9D5E5ACF71094BF0388CE7F518146E61716BC5F3BAAD845B5882F75A71
                      BCDE5B7DE41A9678B8B33BCD63F7BCE70E5B7A7D71763CF19CE81E96C837D7AB
                      7C73ED47CC1E9A7C53FD9C6FAAE7DE7343C212F9CDFC24BFC8637114B586CACD
                      F2D78B8BB3A369C4F0B0B0C4F67832BABEBE1E3704A626DF50E7F9E5F78D8D8D
                      57E7A7D359D43A42C3FAD4BF91FDBD9D52B31DBD96BE594BED2CAD35B3ABABAB
                      D3BFDEFE7619BD1EB13261A12E84051384051384051384051384051384051384
                      0513840513840513840513840513FF004B42FBF11069B1E70000000049454E44
                      AE426082}
                    Proportional = True
                    OnClick = OnTithesReportClick
                    ExplicitLeft = 112
                    ExplicitTop = 56
                    ExplicitWidth = 105
                    ExplicitHeight = 105
                  end
                end
                object Panel12: TPanel
                  Left = 40
                  Top = 0
                  Width = 197
                  Height = 50
                  Cursor = crHandPoint
                  Align = alClient
                  BevelEdges = []
                  BevelOuter = bvNone
                  Padding.Left = 8
                  Padding.Right = 23
                  TabOrder = 1
                  OnClick = OnTithesReportClick
                  object Label5: TLabel
                    Left = 8
                    Top = 0
                    Width = 166
                    Height = 13
                    Cursor = crHandPoint
                    Align = alTop
                    Caption = 'D'#237'zimos'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6110509
                    Font.Height = -11
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Layout = tlCenter
                    OnClick = OnTithesReportClick
                    ExplicitTop = 3
                    ExplicitWidth = 41
                  end
                  object Label6: TLabel
                    AlignWithMargins = True
                    Left = 11
                    Top = 16
                    Width = 160
                    Height = 34
                    Cursor = crHandPoint
                    Margins.Bottom = 0
                    Align = alClient
                    AutoSize = False
                    Caption = 'Relat'#243'rio com os dados de d'#237'zimos registrados.'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6110509
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    WordWrap = True
                    OnClick = OnTithesReportClick
                    ExplicitTop = 19
                    ExplicitWidth = 134
                    ExplicitHeight = 28
                  end
                end
              end
            end
            object pnCampaignsReport: TPanel
              AlignWithMargins = True
              Left = 0
              Top = 83
              Width = 245
              Height = 77
              Margins.Left = 0
              Margins.Right = 8
              Margins.Bottom = 0
              Align = alClient
              BevelEdges = []
              BevelOuter = bvNone
              Color = clWhite
              Padding.Left = 8
              Padding.Top = 15
              Padding.Right = 8
              Padding.Bottom = 15
              ParentBackground = False
              TabOrder = 3
              OnClick = OnCampaignsReportClick
              object Panel14: TPanel
                Left = 8
                Top = 15
                Width = 229
                Height = 47
                Align = alClient
                BevelEdges = []
                BevelOuter = bvNone
                TabOrder = 0
                OnClick = OnCampaignsReportClick
                object Panel15: TPanel
                  Left = 0
                  Top = 0
                  Width = 40
                  Height = 47
                  Align = alLeft
                  BevelEdges = []
                  BevelOuter = bvNone
                  TabOrder = 0
                  OnClick = OnCampaignsReportClick
                  object Image4: TImage
                    Left = 0
                    Top = 0
                    Width = 40
                    Height = 47
                    Cursor = crHandPoint
                    Align = alClient
                    Center = True
                    Picture.Data = {
                      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000960000
                      009608060000003C0171E2000000097048597300000B1300000B1301009A9C18
                      000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000005
                      0F4944415478DAEDDD4D4E1C471880E16E7EB616B9C1646745B6C3D28A8C35BE
                      41965144C2DC00FB04E013C43941C68145B639012878E1250A5E64676EE0D913
                      A6529F8225ABE47498E1FB99AE7E1F090DBBAF8A7A5D3DB018B70D60A08D5E00
                      EA445830415830415830415830415830415830415830415830415830415830B1
                      3261DD7FFCDD68737373DCCE9BAD799BB6A2D7A3A16DDBCB8BB3A369F43A42F6
                      1E397C34FE76EBDEFCDE7E939A496AD228FA876121C775F8E71FBFBE8C5E87FB
                      BEA3063F7AFAE37E4AE9307F5BC5EDD46588718584F5E8E9DE4F29CD9F476FDE
                      D3D0E2720FEBEB9DBD5FE6CD7C12BDF108438ACB35ACFCF83BB879FC0DD650E2
                      720BEBFE38FFD677BDF93E7AC3AB600871B985F570E78793FC328EDEF0AAA83D
                      2E97B0B8AD3EAFE6B85CC27AF064F730FF100FA237BB8A6A8DCB25ACDA1F83F3
                      F9FCC5DADA9AFCC359EA6F7235C6E515D687A6E23F84E6DF749FE5B866EBEBEB
                      27CBEEB3B6B8BCC24AD11BB52461BD7B737CFAD537DF6F13D7CD5E3C860C252C
                      F99EB86EF6E13164486109E2222C15655862E871119682CF8525861C176129F8
                      AFB0C450E3222C055D618921C645580AFE2F2C31B4B8084BC16DC212438A8BB0
                      14DC362C3194B8084BC122618921C445580A160D4BD41E17612958262C51735C
                      84A560D9B044AD71119682BB84256A8C8BB014DC352C515B5C84A540232C5153
                      5C84A5402B2C514B5C84A540332C51435C84A5403B2CD1F7B8084B814558A2CF
                      71119602ABB0445FE3222C059661893EC645580AACC3127D8B8BB014788425FA
                      14176129F00A4BF4252EC252E01996B86B5C176747E6E74E580ABCC31277898B
                      B07A22222CB16C5C84D51351618965E222AC9E880C4B2C1A1761F54474586291
                      B808AB27529BCEDBD4CEA2D7918D6EBE3A11164C10164C10164C10164C10164C
                      10164C10164C10164C10164C10164C10164C10164C10164C10164C10164C1016
                      4C10164C10164C10568094D2E9BB37C7CF16DC5FAFFE3375C20A40583A08AB40
                      583A08AB40583A08AB40583A08AB40583A08AB40583A08AB40583A08AB40583A
                      08AB40583A08AB40583A08AB40583AFA16D6653EF8D70B6DB06DF79A5B7CB4CF
                      4784A5A35761791C3A61E920AC8019D108AB40583A08AB40583A08AB40583A08
                      AB40583A08AB40583A08AB40583A08AB40583A08AB40583A08AB40583A08AB40
                      583A08AB504B58D1F11256A19643272C2584E53FA30B61156A3974C2524258FE
                      33BA1056A19643272C2584E53FA30B61156A3974C2524258FE33BA1056A19643
                      272C2584E53FA30B61156A3974C2524258FE33BA1056A19643272C2584E53FA3
                      0B61156A3974C2524258FE33BA1056A19643272C2584E53FA30B61156A3974C2
                      524258FE33BA1056A19643272C2584E53FA30B61156A3974C2524258FE33BA10
                      164CD414D6FB66818FC486A9590EEB0BEB215E61F5EAB30D6AB6CC6378192E61
                      3D78B27BD8B6ED81C72C74CB61BDCC611D5ACFF10A6B9CC33AF198856EEB57EB
                      5F9EBF9D5E5ACF71094BF0388CE7F518146E61716BC5F3BAAD845B5882F75A71
                      BCDE5B7DE41A9678B8B33BCD63F7BCE70E5B7A7D71763CF19CE81E96C837D7AB
                      7C73ED47CC1E9A7C53FD9C6FAAE7DE7343C212F9CDFC24BFC8637114B586CACD
                      F2D78B8BB3A369C4F0B0B0C4F67832BABEBE1E3704A626DF50E7F9E5F78D8D8D
                      57E7A7D359D43A42C3FAD4BF91FDBD9D52B31DBD96BE594BED2CAD35B3ABABAB
                      D3BFDEFE7619BD1EB13261A12E84051384051384051384051384051384051384
                      0513840513840513840513840513FF004B42FBF11069B1E70000000049454E44
                      AE426082}
                    Proportional = True
                    OnClick = OnCampaignsReportClick
                    ExplicitLeft = 112
                    ExplicitTop = 56
                    ExplicitWidth = 105
                    ExplicitHeight = 105
                  end
                end
                object Panel16: TPanel
                  Left = 40
                  Top = 0
                  Width = 189
                  Height = 47
                  Cursor = crHandPoint
                  Align = alClient
                  BevelEdges = []
                  BevelOuter = bvNone
                  Padding.Left = 8
                  TabOrder = 1
                  OnClick = OnCampaignsReportClick
                  object Label7: TLabel
                    Left = 8
                    Top = 0
                    Width = 181
                    Height = 13
                    Cursor = crHandPoint
                    Align = alTop
                    Caption = 'Campanhas'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6110509
                    Font.Height = -11
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Layout = tlCenter
                    OnClick = OnCampaignsReportClick
                    ExplicitTop = 3
                    ExplicitWidth = 61
                  end
                  object Label8: TLabel
                    AlignWithMargins = True
                    Left = 11
                    Top = 16
                    Width = 175
                    Height = 31
                    Cursor = crHandPoint
                    Margins.Bottom = 0
                    Align = alClient
                    AutoSize = False
                    Caption = 'Relat'#243'rio com os dados de campanhas realizadas.'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6110509
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    WordWrap = True
                    OnClick = OnCampaignsReportClick
                    ExplicitLeft = 15
                    ExplicitTop = 22
                    ExplicitWidth = 183
                    ExplicitHeight = 26
                  end
                end
              end
            end
            object pnCashFlowReport: TPanel
              AlignWithMargins = True
              Left = 253
              Top = 83
              Width = 244
              Height = 77
              Margins.Left = 0
              Margins.Right = 8
              Margins.Bottom = 0
              Align = alClient
              BevelEdges = []
              BevelOuter = bvNone
              Color = clWhite
              Padding.Left = 8
              Padding.Top = 15
              Padding.Right = 8
              Padding.Bottom = 15
              ParentBackground = False
              TabOrder = 4
              OnClick = OnCashFlowReportClick
              object Panel18: TPanel
                Left = 8
                Top = 15
                Width = 228
                Height = 47
                Align = alClient
                BevelEdges = []
                BevelOuter = bvNone
                TabOrder = 0
                OnClick = OnCashFlowReportClick
                object Panel19: TPanel
                  Left = 0
                  Top = 0
                  Width = 40
                  Height = 47
                  Align = alLeft
                  BevelEdges = []
                  BevelOuter = bvNone
                  TabOrder = 0
                  OnClick = OnCashFlowReportClick
                  object Image5: TImage
                    Left = 0
                    Top = 0
                    Width = 40
                    Height = 47
                    Cursor = crHandPoint
                    Align = alClient
                    Center = True
                    Picture.Data = {
                      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000960000
                      009608060000003C0171E2000000097048597300000B1300000B1301009A9C18
                      000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000005
                      0F4944415478DAEDDD4D4E1C471880E16E7EB616B9C1646745B6C3D28A8C35BE
                      41965144C2DC00FB04E013C43941C68145B639012878E1250A5E64676EE0D913
                      A6529F8225ABE47498E1FB99AE7E1F090DBBAF8A7A5D3DB018B70D60A08D5E00
                      EA445830415830415830415830415830415830415830415830415830415830B1
                      3261DD7FFCDD68737373DCCE9BAD799BB6A2D7A3A16DDBCB8BB3A369F43A42F6
                      1E397C34FE76EBDEFCDE7E939A496AD228FA876121C775F8E71FBFBE8C5E87FB
                      BEA3063F7AFAE37E4AE9307F5BC5EDD46588718584F5E8E9DE4F29CD9F476FDE
                      D3D0E2720FEBEB9DBD5FE6CD7C12BDF108438ACB35ACFCF83BB879FC0DD650E2
                      720BEBFE38FFD677BDF93E7AC3AB600871B985F570E78793FC328EDEF0AAA83D
                      2E97B0B8AD3EAFE6B85CC27AF064F730FF100FA237BB8A6A8DCB25ACDA1F83F3
                      F9FCC5DADA9AFCC359EA6F7235C6E515D687A6E23F84E6DF749FE5B866EBEBEB
                      27CBEEB3B6B8BCC24AD11BB52461BD7B737CFAD537DF6F13D7CD5E3C860C252C
                      F99EB86EF6E13164486109E2222C15655862E871119682CF8525861C176129F8
                      AFB0C450E3222C055D618921C645580AFE2F2C31B4B8084BC16DC212438A8BB0
                      14DC362C3194B8084BC122618921C445580A160D4BD41E17612958262C51735C
                      84A560D9B044AD71119682BB84256A8C8BB014DC352C515B5C84A540232C5153
                      5C84A5402B2C514B5C84A540332C51435C84A5403B2CD1F7B8084B814558A2CF
                      71119602ABB0445FE3222C059661893EC645580AACC3127D8B8BB014788425FA
                      14176129F00A4BF4252EC252E01996B86B5C176747E6E74E580ABCC31277898B
                      B07A22222CB16C5C84D51351618965E222AC9E880C4B2C1A1761F54474586291
                      B808AB27529BCEDBD4CEA2D7918D6EBE3A11164C10164C10164C10164C10164C
                      10164C10164C10164C10164C10164C10164C10164C10164C10164C10164C1016
                      4C10164C10164C10568094D2E9BB37C7CF16DC5FAFFE3375C20A40583A08AB40
                      583A08AB40583A08AB40583A08AB40583A08AB40583A08AB40583A08AB40583A
                      08AB40583A08AB40583A08AB40583AFA16D6653EF8D70B6DB06DF79A5B7CB4CF
                      4784A5A35761791C3A61E920AC8019D108AB40583A08AB40583A08AB40583A08
                      AB40583A08AB40583A08AB40583A08AB40583A08AB40583A08AB40583A08AB40
                      583A08AB504B58D1F11256A19643272C2584E53FA30B61156A3974C2524258FE
                      33BA1056A19643272C2584E53FA30B61156A3974C2524258FE33BA1056A19643
                      272C2584E53FA30B61156A3974C2524258FE33BA1056A19643272C2584E53FA3
                      0B61156A3974C2524258FE33BA1056A19643272C2584E53FA30B61156A3974C2
                      524258FE33BA1056A19643272C2584E53FA30B61156A3974C2524258FE33BA10
                      164CD414D6FB66818FC486A9590EEB0BEB215E61F5EAB30D6AB6CC6378192E61
                      3D78B27BD8B6ED81C72C74CB61BDCC611D5ACFF10A6B9CC33AF198856EEB57EB
                      5F9EBF9D5E5ACF71094BF0388CE7F518146E61716BC5F3BAAD845B5882F75A71
                      BCDE5B7DE41A9678B8B33BCD63F7BCE70E5B7A7D71763CF19CE81E96C837D7AB
                      7C73ED47CC1E9A7C53FD9C6FAAE7DE7343C212F9CDFC24BFC8637114B586CACD
                      F2D78B8BB3A369C4F0B0B0C4F67832BABEBE1E3704A626DF50E7F9E5F78D8D8D
                      57E7A7D359D43A42C3FAD4BF91FDBD9D52B31DBD96BE594BED2CAD35B3ABABAB
                      D3BFDEFE7619BD1EB13261A12E84051384051384051384051384051384051384
                      0513840513840513840513840513FF004B42FBF11069B1E70000000049454E44
                      AE426082}
                    Proportional = True
                    OnClick = OnCashFlowReportClick
                    ExplicitLeft = 112
                    ExplicitTop = 56
                    ExplicitWidth = 105
                    ExplicitHeight = 105
                  end
                end
                object Panel20: TPanel
                  Left = 40
                  Top = 0
                  Width = 188
                  Height = 47
                  Cursor = crHandPoint
                  Align = alClient
                  BevelEdges = []
                  BevelOuter = bvNone
                  Padding.Left = 8
                  Padding.Right = 23
                  TabOrder = 1
                  OnClick = OnCashFlowReportClick
                  object Label9: TLabel
                    Left = 8
                    Top = 0
                    Width = 157
                    Height = 13
                    Cursor = crHandPoint
                    Align = alTop
                    Caption = 'Fluxo de caixa'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6110509
                    Font.Height = -11
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Layout = tlCenter
                    OnClick = OnCashFlowReportClick
                    ExplicitTop = 3
                    ExplicitWidth = 74
                  end
                  object Label10: TLabel
                    AlignWithMargins = True
                    Left = 11
                    Top = 16
                    Width = 151
                    Height = 31
                    Cursor = crHandPoint
                    Margins.Bottom = 0
                    Align = alClient
                    AutoSize = False
                    Caption = 'Relat'#243'rio com os dados do fluxo de caixa.'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6110509
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    WordWrap = True
                    OnClick = OnCashFlowReportClick
                    ExplicitLeft = 15
                    ExplicitTop = 22
                    ExplicitWidth = 183
                    ExplicitHeight = 26
                  end
                end
              end
            end
          end
        end
      end
    end
    object spvFilters: TSplitView
      AlignWithMargins = True
      Left = 800
      Top = 70
      Width = 0
      Height = 400
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 200
      AnimationDelay = 0
      AnimationStep = 0
      Color = clWhite
      CompactWidth = 0
      DisplayMode = svmOverlay
      Opened = False
      OpenedWidth = 200
      Padding.Left = 20
      Padding.Top = 10
      Padding.Right = 10
      Padding.Bottom = 10
      Placement = svpRight
      TabOrder = 1
      UseAnimation = False
      object pnContentFilters: TPanel
        Left = 20
        Top = 10
        Width = 170
        Height = 380
        Align = alClient
        BevelEdges = []
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object pnTitleFilters: TPanel
          Left = 0
          Top = 0
          Width = 170
          Height = 34
          Align = alTop
          BevelEdges = []
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object lbTitleFilters: TLabel
            Left = 0
            Top = 0
            Width = 170
            Height = 34
            Align = alClient
            Caption = 'Filtros'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6110509
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
            ExplicitWidth = 64
            ExplicitHeight = 32
          end
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 716
    Top = 94
    object btnFirst: TAction
      Caption = 'btnFirst'
    end
    object btnLast: TAction
      Caption = 'btnLast'
    end
    object btnNext: TAction
      Caption = 'btnNext'
    end
    object btnPrevious: TAction
      Caption = 'btnPrevious'
    end
    object btnNew: TAction
      Caption = 'btnNew'
    end
    object IconEnter: TAction
      Caption = 'IconEnter'
    end
    object IconLeave: TAction
      Caption = 'IconLeave'
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
    Left = 586
    Top = 28
  end
end
