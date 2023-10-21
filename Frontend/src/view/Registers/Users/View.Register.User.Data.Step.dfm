inherited FrmStepDataUser: TFrmStepDataUser
  Caption = 'FrmStepDataUser'
  ClientHeight = 442
  OnShow = FormShow
  ExplicitHeight = 442
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBackground: TPanel
    Height = 442
    ParentColor = False
    ExplicitHeight = 442
    object pnContainerStatus: TPanel
      Left = 10
      Top = 400
      Width = 400
      Height = 41
      Align = alTop
      BevelEdges = []
      BevelOuter = bvNone
      Padding.Top = 10
      Padding.Right = 25
      ParentColor = True
      TabOrder = 5
      object pnCkbStatus: TPanel
        Left = 0
        Top = 10
        Width = 375
        Height = 23
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        BevelEdges = []
        BevelOuter = bvNone
        ParentBackground = False
        ParentColor = True
        TabOrder = 0
        OnEnter = btnStatusClick
        object lbRememberMe: TLabel
          AlignWithMargins = True
          Left = 25
          Top = 2
          Width = 83
          Height = 21
          Cursor = crHandPoint
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Usu'#225'rio ativo?'
          FocusControl = pnContainerStatus
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6110509
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnStatusClick
          ExplicitHeight = 17
        end
        object iconCkb: TImage
          Left = 0
          Top = 0
          Width = 23
          Height = 23
          Cursor = crHandPoint
          Align = alLeft
          Center = True
          Picture.Data = {
            07544269746D6170D6020000424DD60200000000000036000000280000000F00
            00000E0000000100180000000000A00200000000000000000000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FAEDE6EDB0E3ECA8F0F4D2
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFF7F9
            E8B7CD17A6C200AAC400ABC400A9C300ABC400E0E99EFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFEFF3CCA5C100AEC700B1C900B1C900B1C900B1C900
            B0C800A7C200CCDB5CFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFA8C200B0C8
            00B1C900AEC700AAC400AFC700B1C900B1C900B1C900A7C200E4EDADFFFFFF00
            0000FFFFFFFFFFFFD2E06FABC500B1C900ACC600BED133F2F2F6B6CC16ADC600
            B1C900B1C900AFC800AFC700FFFFFF000000FFFFFFFFFFFFB4CB10AFC700ACC6
            00BDD02DFBF7FFF8F6FFF8F6FFB5CB11ADC600B1C900B1C900A7C200F8FAEC00
            0000FFFFFFFFFFFFA9C300AEC700BCD02CFCF8FFF6F5FFC4D44BFAF7FFF8F6FF
            B4CB0FADC700B1C900AAC400ECF1C6000000FFFFFFFFFFFFACC600AEC700C2D3
            42F6F4FFB5CB12A9C400BCD02FFBF8FFF8F6FFB6CC14AFC800A9C300F0F4D100
            0000FFFFFFFFFFFFC0D437AEC700AEC700AAC400AFC800B1C900ACC600BDD031
            FEF9FFEDEEE3AAC500A6C100FFFFFF000000FFFFFFFFFFFFE9F0BCA7C200B1C9
            00B1C900B1C900B1C900B1C900ADC600BACF26B8CD1DABC500C6D748FFFFFF00
            0000FFFFFFFFFFFFFFFFFFC0D438ABC400B1C900B1C900B1C900B1C900B1C900
            AFC800ADC600A9C400FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFC2D4
            3AA7C200ADC600AFC800B0C800AEC700AAC400ADC600FAFBF2FFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECF1C4C3D641B0C903AEC700BBD025
            DBE68DFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000}
          OnClick = btnStatusClick
          ExplicitLeft = 5
          ExplicitHeight = 25
        end
        object iconCkbOf: TImage
          Left = 328
          Top = -4
          Width = 23
          Height = 23
          Cursor = crHandPoint
          Center = True
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D494844520000000D0000
            000D080600000072EBE47C000000097048597300000B1300000B1301009A9C18
            000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000001
            194944415478DA636440031A16110A6CCCAC01FF18FF0B30FD67FCF0EBEFEF0D
            374EAC7880AC8611AED8214281F52FEB7C20D38101132CF8FDFB77234C332392
            86FD40A602036EF000A8D111A411AC49D736166443022ED5FFFFFF3FC0C8C808
            72C181CB87173B32426DB98F4743E395234B1AF4ECE2CE03D9067FFEFE5560D4
            B68E2E606262EA873901D989300DFAB6F1F3FF31FC03BBE4DFBF7F858C3A3631
            0D40ABEB419E6566666EFCFBF72FD86FD834C00C42B109A83901C83E08F470C0
            D5A34B27A06B80DB64E090A000341DEE2790C64B87162DC4A60104987F332BC2
            426F3F5AFC1CC0155FC0D04B046B82DA46309E80B6385E38B1E0013C454034FE
            69003A301E5B3CB1FC61490469404946C89AFFFDFE8B37ED0100C379A7787913
            14350000000049454E44AE426082}
          Visible = False
        end
        object iconCkbOn: TImage
          Left = 352
          Top = -4
          Width = 23
          Height = 23
          Cursor = crHandPoint
          Center = True
          Picture.Data = {
            07544269746D6170D6020000424DD60200000000000036000000280000000F00
            00000E0000000100180000000000A00200000000000000000000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FAEDE6EDB0E3ECA8F0F4D2
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFF7F9
            E8B7CD17A6C200AAC400ABC400A9C300ABC400E0E99EFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFEFF3CCA5C100AEC700B1C900B1C900B1C900B1C900
            B0C800A7C200CCDB5CFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFA8C200B0C8
            00B1C900AEC700AAC400AFC700B1C900B1C900B1C900A7C200E4EDADFFFFFF00
            0000FFFFFFFFFFFFD2E06FABC500B1C900ACC600BED133F2F2F6B6CC16ADC600
            B1C900B1C900AFC800AFC700FFFFFF000000FFFFFFFFFFFFB4CB10AFC700ACC6
            00BDD02DFBF7FFF8F6FFF8F6FFB5CB11ADC600B1C900B1C900A7C200F8FAEC00
            0000FFFFFFFFFFFFA9C300AEC700BCD02CFCF8FFF6F5FFC4D44BFAF7FFF8F6FF
            B4CB0FADC700B1C900AAC400ECF1C6000000FFFFFFFFFFFFACC600AEC700C2D3
            42F6F4FFB5CB12A9C400BCD02FFBF8FFF8F6FFB6CC14AFC800A9C300F0F4D100
            0000FFFFFFFFFFFFC0D437AEC700AEC700AAC400AFC800B1C900ACC600BDD031
            FEF9FFEDEEE3AAC500A6C100FFFFFF000000FFFFFFFFFFFFE9F0BCA7C200B1C9
            00B1C900B1C900B1C900B1C900ADC600BACF26B8CD1DABC500C6D748FFFFFF00
            0000FFFFFFFFFFFFFFFFFFC0D438ABC400B1C900B1C900B1C900B1C900B1C900
            AFC800ADC600A9C400FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFC2D4
            3AA7C200ADC600AFC800B0C800AEC700AAC400ADC600FAFBF2FFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECF1C4C3D641B0C903AEC700BBD025
            DBE68DFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000}
          Visible = False
        end
      end
    end
    object pnContainerEmail: TPanel
      Left = 10
      Top = 160
      Width = 400
      Height = 80
      Align = alTop
      BevelEdges = []
      BevelOuter = bvNone
      Padding.Top = 10
      Padding.Bottom = 10
      ParentColor = True
      TabOrder = 2
      object pnInptEmail: TPanel
        Left = 0
        Top = 25
        Width = 400
        Height = 45
        Align = alClient
        BevelEdges = []
        BevelOuter = bvNone
        Caption = 'Panel15'
        Padding.Left = 3
        Padding.Top = 12
        TabOrder = 0
        object Shape1: TShape
          Left = 3
          Top = 12
          Width = 397
          Height = 33
          Align = alClient
          Brush.Color = 16513014
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitLeft = 168
          ExplicitTop = 24
          ExplicitWidth = 65
          ExplicitHeight = 65
        end
        object edtEmail: TDBEdit
          AlignWithMargins = True
          Left = 8
          Top = 20
          Width = 389
          Height = 22
          Margins.Left = 5
          Margins.Top = 8
          Align = alClient
          BevelEdges = []
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = 16513014
          DataField = 'email'
          DataSource = dtsMain
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9200741
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = edtEmailChange
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 10
        Width = 400
        Height = 15
        Align = alTop
        BevelEdges = []
        BevelOuter = bvNone
        TabOrder = 1
        object Label2: TLabel
          Left = 0
          Top = 0
          Width = 65
          Height = 15
          Align = alLeft
          AutoSize = False
          Caption = 'Email *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6110509
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbAlertEmail: TLabel
          Left = 65
          Top = 0
          Width = 335
          Height = 15
          Align = alClient
          Caption = 'O email informado '#233' inv'#225'lido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
          ExplicitWidth = 134
          ExplicitHeight = 13
        end
      end
    end
    object pnContainerUsername: TPanel
      Left = 10
      Top = 80
      Width = 400
      Height = 80
      Align = alTop
      BevelEdges = []
      BevelOuter = bvNone
      Padding.Top = 10
      Padding.Bottom = 10
      ParentColor = True
      TabOrder = 1
      object Panel4: TPanel
        Left = 0
        Top = 25
        Width = 400
        Height = 45
        Align = alClient
        BevelEdges = []
        BevelOuter = bvNone
        Caption = 'Panel15'
        Padding.Left = 3
        Padding.Top = 12
        TabOrder = 0
        object Shape2: TShape
          Left = 3
          Top = 12
          Width = 397
          Height = 33
          Align = alClient
          Brush.Color = 16513014
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitLeft = 168
          ExplicitTop = 24
          ExplicitWidth = 65
          ExplicitHeight = 65
        end
        object edtUserName: TDBEdit
          AlignWithMargins = True
          Left = 8
          Top = 20
          Width = 389
          Height = 22
          Margins.Left = 5
          Margins.Top = 8
          Align = alClient
          BevelEdges = []
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = 16513014
          DataField = 'username'
          DataSource = dtsMain
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9200741
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = edtUserNameChange
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 10
        Width = 400
        Height = 15
        Align = alTop
        BevelEdges = []
        BevelOuter = bvNone
        TabOrder = 1
        object Label5: TLabel
          Left = 0
          Top = 0
          Width = 65
          Height = 15
          Align = alLeft
          AutoSize = False
          Caption = 'Usu'#225'rio *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6110509
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbAlertUsername: TLabel
          Left = 65
          Top = 0
          Width = 335
          Height = 15
          Align = alClient
          Caption = 'O usu'#225'rio deve ter no m'#237'nimo 3 d'#237'gitos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
          ExplicitWidth = 183
          ExplicitHeight = 13
        end
      end
    end
    object pnContainerPassword: TPanel
      Left = 10
      Top = 320
      Width = 400
      Height = 80
      Align = alTop
      BevelEdges = []
      BevelOuter = bvNone
      Padding.Top = 10
      Padding.Bottom = 10
      ParentColor = True
      TabOrder = 4
      object pnInptPassword: TPanel
        Left = 0
        Top = 25
        Width = 400
        Height = 45
        Align = alClient
        BevelEdges = []
        BevelOuter = bvNone
        Caption = 'Panel15'
        Padding.Left = 3
        Padding.Top = 12
        TabOrder = 0
        DesignSize = (
          400
          45)
        object Shape3: TShape
          Left = 3
          Top = 12
          Width = 397
          Height = 33
          Align = alClient
          Brush.Color = 16513014
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitLeft = 168
          ExplicitTop = 24
          ExplicitWidth = 65
          ExplicitHeight = 65
        end
        object iconEye: TImage
          Left = 373
          Top = 12
          Width = 21
          Height = 35
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Center = True
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000140000
            001408060000008D891D0D000000097048597300000B1300000B1301009A9C18
            000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000001
            B74944415478DAD554CD4EC24010EEB625F10006DFA0DC8C3F046F46FC8137C0
            9B5109F0049637D027A03E0135A8F1266F001124DE6C448D37FA0672246EB7EB
            4C0364BB3421180F3AC9A6DB74E69BF9E69B29517ED9C8FF075CDD3E32745D37
            F0EEFBFEF0BD77EB2C0CB8B6739CD134AD04D7329CA4F4D985D3A6945E7C3CDD
            B97301D3FBA51AE7BE1901826648D156FFA1518D0434728564DC8FB7082719E1
            7B132AAD386D7B882F995CD960CC3B87B0D21480104755D5FCC4670AB8B957BC
            87474100B3FB9D4605132DD3045257BE186D22CD08DF36F8E6A780E0800175B1
            748D6AA9D1D24889B1584BA0EA42C55B78618C7D4A54AB2F9D8635011C48FD71
            21636A3D7B62029D9A18084A57DF1E6FAC889821244B11E84B12B20D24357F02
            18C40415A6B34593AB4A2810B2AD8CA93D8728532D3F6EC5409A840A00DAA228
            D8AB9CA830381CA2B23E6581006A4CB3514DF0C57E9765DF90CA481DE8B438E7
            E2D8D8E200A3E20996A88B0A73C21D5DD567C766621BBBA716CCD65958411200
            72858B3D5320F9E56BF7DA0CFB469830C0078ABC1DA026005DE9BE6E3B3D7B66
            AFE7FE1C70AF41E960023CCF73A3F67721C045EDEF037E03694CCDF558C15BD8
            0000000049454E44AE426082}
          OnClick = btnShowHidePasswordClick
        end
        object edtPassword: TDBEdit
          AlignWithMargins = True
          Left = 8
          Top = 20
          Width = 362
          Height = 22
          Margins.Left = 5
          Margins.Top = 8
          Margins.Right = 30
          Align = alClient
          BevelEdges = []
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = 16513014
          DataField = 'password'
          DataSource = dtsMain
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9200741
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          PasswordChar = '*'
          TabOrder = 0
          OnChange = edtPasswordChange
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 10
        Width = 400
        Height = 15
        Align = alTop
        BevelEdges = []
        BevelOuter = bvNone
        TabOrder = 1
        object Label1: TLabel
          Left = 0
          Top = 0
          Width = 65
          Height = 15
          Align = alLeft
          AutoSize = False
          Caption = 'Senha *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6110509
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbAlertPassword: TLabel
          Left = 65
          Top = 0
          Width = 335
          Height = 15
          Align = alClient
          Caption = 'A senha deve ter no m'#237'nimo 8 d'#237'gitos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
          ExplicitWidth = 176
          ExplicitHeight = 13
        end
      end
    end
    object pnContainerName: TPanel
      Left = 10
      Top = 0
      Width = 400
      Height = 80
      Align = alTop
      BevelEdges = []
      BevelOuter = bvNone
      Padding.Top = 10
      Padding.Bottom = 10
      ParentColor = True
      TabOrder = 0
      object pnInptFirstName: TPanel
        Left = 0
        Top = 25
        Width = 400
        Height = 45
        Align = alClient
        BevelEdges = []
        BevelOuter = bvNone
        Caption = 'Panel15'
        Padding.Left = 3
        Padding.Top = 12
        TabOrder = 0
        object shpFirstName: TShape
          Left = 3
          Top = 12
          Width = 397
          Height = 33
          Align = alClient
          Brush.Color = 16513014
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitLeft = 168
          ExplicitTop = 24
          ExplicitWidth = 65
          ExplicitHeight = 65
        end
        object edtName: TDBEdit
          AlignWithMargins = True
          Left = 8
          Top = 20
          Width = 389
          Height = 22
          Margins.Left = 5
          Margins.Top = 8
          Align = alClient
          BevelEdges = []
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = 16513014
          DataField = 'name'
          DataSource = dtsMain
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9200741
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = edtNameChange
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 10
        Width = 400
        Height = 15
        Align = alTop
        BevelEdges = []
        BevelOuter = bvNone
        TabOrder = 1
        object Label4: TLabel
          Left = 0
          Top = 0
          Width = 65
          Height = 15
          Align = alLeft
          AutoSize = False
          Caption = 'Nome *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6110509
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbAlertName: TLabel
          Left = 65
          Top = 0
          Width = 335
          Height = 15
          Align = alClient
          Caption = 'O nome deve ter no m'#237'nimo 3 d'#237'gitos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
          ExplicitWidth = 174
          ExplicitHeight = 13
        end
      end
    end
    object pnContainerAccessGroup: TPanel
      Left = 10
      Top = 240
      Width = 400
      Height = 80
      Align = alTop
      BevelEdges = []
      BevelOuter = bvNone
      Padding.Top = 10
      Padding.Bottom = 10
      ParentColor = True
      TabOrder = 3
      object lbAccessGroup: TLabel
        Left = 0
        Top = 10
        Width = 400
        Height = 13
        Align = alTop
        Caption = 'Grupo de Acesso *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6110509
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 90
      end
      object pnInptAccessGroup: TPanel
        Left = 0
        Top = 23
        Width = 400
        Height = 47
        Align = alClient
        BevelEdges = []
        BevelOuter = bvNone
        Padding.Left = 3
        Padding.Top = 12
        ParentColor = True
        TabOrder = 0
        object shpAccessGroup: TShape
          Left = 3
          Top = 12
          Width = 397
          Height = 35
          Align = alClient
          Brush.Color = 16513014
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitLeft = 168
          ExplicitTop = 24
          ExplicitWidth = 65
          ExplicitHeight = 65
        end
        object edtAccessGroup: TEdit
          AlignWithMargins = True
          Left = 8
          Top = 18
          Width = 389
          Height = 26
          Margins.Left = 5
          Margins.Top = 6
          Align = alClient
          BevelEdges = []
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = 16513014
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9200741
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Text = 'Usu'#225'rio do sistema '
        end
      end
    end
  end
end
