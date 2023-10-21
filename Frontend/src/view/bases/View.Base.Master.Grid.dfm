inherited FrmBaseMasterGrid: TFrmBaseMasterGrid
  Caption = ''
  Color = 16447477
  OnShow = FormShow
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
          Width = 180
          Height = 54
          Align = alLeft
          BevelEdges = []
          BevelOuter = bvNone
          TabOrder = 0
          object lbNameForm: TLabel
            Left = 0
            Top = 0
            Width = 180
            Height = 41
            Align = alClient
            Caption = 'Formul'#225'rio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6110509
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitWidth = 126
            ExplicitHeight = 32
          end
          object lbDescForm: TLabel
            Left = 0
            Top = 41
            Width = 180
            Height = 13
            Align = alBottom
            Caption = 'Informa'#231#245'es do Formul'#225'rio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6837074
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ExplicitWidth = 139
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
            OnClick = btnNewExecute
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
                    OnClick = btnNewExecute
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
              OnMouseEnter = IconEnterExecute
              OnMouseLeave = IconLeaveExecute
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
              OnClick = btnLastExecute
              OnMouseEnter = IconEnterExecute
              OnMouseLeave = IconLeaveExecute
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
              OnClick = btnFirstExecute
              OnMouseEnter = IconEnterExecute
              OnMouseLeave = IconLeaveExecute
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
              OnClick = btnPreviousExecute
              OnMouseEnter = IconEnterExecute
              OnMouseLeave = IconLeaveExecute
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
              OnClick = btnNextExecute
              OnMouseEnter = IconEnterExecute
              OnMouseLeave = IconLeaveExecute
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
        end
        object pnGridDetalhes: TPanel
          Left = 0
          Top = 34
          Width = 780
          Height = 431
          Align = alClient
          BevelEdges = []
          BevelOuter = bvNone
          Padding.Top = 5
          ParentColor = True
          TabOrder = 1
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
  object dtsMain: TDataSource
    DataSet = mtMain
    Left = 540
    Top = 28
  end
  object ActionList1: TActionList
    Left = 692
    Top = 158
    object btnFirst: TAction
      Caption = 'btnFirst'
      OnExecute = btnFirstExecute
    end
    object btnLast: TAction
      Caption = 'btnLast'
      OnExecute = btnLastExecute
    end
    object btnNext: TAction
      Caption = 'btnNext'
      OnExecute = btnNextExecute
    end
    object btnPrevious: TAction
      Caption = 'btnPrevious'
      OnExecute = btnPreviousExecute
    end
    object btnNew: TAction
      Caption = 'btnNew'
      OnExecute = btnNewExecute
    end
    object IconEnter: TAction
      Caption = 'IconEnter'
      OnExecute = IconEnterExecute
    end
    object IconLeave: TAction
      Caption = 'IconLeave'
      OnExecute = IconLeaveExecute
    end
  end
end
