inherited FrmStepPasswordUser: TFrmStepPasswordUser
  Caption = 'FrmStepPasswordUser'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBackground: TPanel
    object pnContainerPassword: TPanel
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
        ExplicitTop = 23
        ExplicitHeight = 47
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
          OnClick = ToggleViewPasswordClick
        end
        object edtPassword: TEdit
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
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9200741
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          PasswordChar = '*'
          TabOrder = 0
          OnChange = edtPasswordChange
          OnExit = edtPasswordExit
          ExplicitHeight = 24
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
        ExplicitTop = 18
        object Label1: TLabel
          Left = 0
          Top = 0
          Width = 81
          Height = 15
          Align = alLeft
          AutoSize = False
          Caption = 'Nova Senha *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6110509
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbAlertPassword: TLabel
          Left = 81
          Top = 0
          Width = 319
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
          ExplicitLeft = 65
          ExplicitWidth = 176
          ExplicitHeight = 13
        end
      end
    end
    object pnContainerPassword2: TPanel
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
      object pnInptPassword2: TPanel
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
        ExplicitTop = 23
        ExplicitHeight = 47
        DesignSize = (
          400
          45)
        object shpRepeatPassword: TShape
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
        object iconRepeatPassword: TImage
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
          OnClick = ToggleViewRepeatePasswordClick
        end
        object edtRepeatePassword: TEdit
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
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9200741
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          PasswordChar = '*'
          TabOrder = 0
          OnChange = edtRepeatePasswordChange
          ExplicitHeight = 24
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
        ExplicitTop = 18
        object lbRepeatePassword: TLabel
          Left = 0
          Top = 0
          Width = 81
          Height = 15
          Align = alLeft
          AutoSize = False
          Caption = 'Repetir Senha *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6110509
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 81
          Top = 0
          Width = 319
          Height = 15
          Align = alClient
          Caption = 'As senhas n'#227'o coincidem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
          ExplicitWidth = 119
          ExplicitHeight = 13
        end
      end
    end
  end
end
