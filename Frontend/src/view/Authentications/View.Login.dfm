inherited FrmLogin: TFrmLogin
  BorderStyle = bsDialog
  Caption = ''
  ClientHeight = 571
  ClientWidth = 794
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnBackGround: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 571
    Align = alClient
    BevelEdges = []
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object pnLeft: TPanel
      AlignWithMargins = True
      Left = 0
      Top = 0
      Width = 200
      Height = 571
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      BevelEdges = []
      BevelOuter = bvNone
      Padding.Left = 15
      Padding.Top = 15
      Padding.Bottom = 15
      ParentBackground = False
      ParentColor = True
      TabOrder = 0
    end
    object pnLoginGroup: TPanel
      Left = 200
      Top = 0
      Width = 394
      Height = 571
      Align = alClient
      BevelEdges = []
      BevelOuter = bvNone
      Padding.Left = 20
      Padding.Top = 20
      Padding.Right = 20
      Padding.Bottom = 20
      ParentColor = True
      TabOrder = 1
      ExplicitLeft = 417
      ExplicitWidth = 377
      object pnContentLogin: TPanel
        Left = 20
        Top = 20
        Width = 354
        Height = 531
        Align = alClient
        BevelEdges = []
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        ExplicitWidth = 337
        object pnMain: TPanel
          Left = 0
          Top = 0
          Width = 354
          Height = 531
          Align = alClient
          BevelEdges = []
          BevelOuter = bvNone
          Color = clWhite
          Padding.Left = 5
          Padding.Top = 3
          Padding.Right = 5
          Padding.Bottom = 3
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 337
          object pnHeader: TPanel
            Left = 5
            Top = 63
            Width = 344
            Height = 84
            Align = alTop
            BevelEdges = []
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitWidth = 327
            object pnTitulo: TPanel
              Left = 0
              Top = 0
              Width = 344
              Height = 62
              Align = alClient
              BevelEdges = []
              BevelOuter = bvNone
              Caption = 'Bem Vindo!'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6110509
              Font.Height = -27
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              ExplicitWidth = 327
            end
            object pnDescricao: TPanel
              Left = 0
              Top = 62
              Width = 344
              Height = 22
              Align = alBottom
              BevelEdges = []
              BevelOuter = bvNone
              Caption = 'Fa'#231'a login inserindo as informa'#231#245'es abaixo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6110509
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              ExplicitWidth = 327
            end
          end
          object Panel4: TPanel
            Left = 5
            Top = 487
            Width = 344
            Height = 41
            Align = alBottom
            BevelEdges = []
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitWidth = 327
            object iconKeepConnOf: TImage
              Left = 8
              Top = 0
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
            object iconKeepConnOn: TImage
              Left = 32
              Top = 0
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
          object pnGpInput: TPanel
            Left = 5
            Top = 147
            Width = 344
            Height = 340
            Align = alClient
            BevelEdges = []
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 2
            ExplicitWidth = 327
            object inptEmail: TPanel
              Left = 0
              Top = 0
              Width = 344
              Height = 80
              Cursor = crHandPoint
              Align = alTop
              BevelEdges = []
              BevelOuter = bvNone
              Padding.Left = 10
              Padding.Top = 10
              Padding.Right = 25
              ParentColor = True
              TabOrder = 0
              ExplicitWidth = 327
              object pnUser: TPanel
                Left = 10
                Top = 10
                Width = 309
                Height = 70
                Margins.Left = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alClient
                BevelEdges = []
                BevelOuter = bvNone
                Padding.Top = 5
                ParentBackground = False
                ParentColor = True
                TabOrder = 0
                ExplicitWidth = 292
                object lbUser: TLabel
                  Left = 0
                  Top = 5
                  Width = 309
                  Height = 17
                  Align = alTop
                  Caption = 'Usu'#225'rio'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 6110509
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitWidth = 47
                end
                object pnInptUser: TPanel
                  AlignWithMargins = True
                  Left = 0
                  Top = 27
                  Width = 309
                  Height = 26
                  Margins.Left = 0
                  Margins.Top = 5
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alTop
                  Anchors = [akTop, akRight]
                  BevelEdges = []
                  BevelOuter = bvNone
                  TabOrder = 0
                  ExplicitWidth = 292
                  object Shape1: TShape
                    Left = 0
                    Top = 25
                    Width = 309
                    Height = 1
                    Align = alBottom
                    Pen.Color = 9200741
                    ExplicitTop = 29
                    ExplicitWidth = 245
                  end
                  object edtUser: TEdit
                    Left = 0
                    Top = 3
                    Width = 309
                    Height = 22
                    Align = alBottom
                    BorderStyle = bsNone
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 9200741
                    Font.Height = -16
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    ExplicitWidth = 292
                  end
                end
              end
            end
            object inptSenha: TPanel
              Left = 0
              Top = 80
              Width = 344
              Height = 80
              Align = alTop
              BevelEdges = []
              BevelOuter = bvNone
              Padding.Left = 10
              Padding.Top = 10
              Padding.Right = 25
              ParentColor = True
              TabOrder = 1
              ExplicitWidth = 327
              object pnSenha: TPanel
                Left = 10
                Top = 10
                Width = 309
                Height = 70
                Margins.Left = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alClient
                BevelEdges = []
                BevelOuter = bvNone
                ParentBackground = False
                ParentColor = True
                TabOrder = 0
                ExplicitWidth = 292
                object lbSenha: TLabel
                  Left = 0
                  Top = 0
                  Width = 309
                  Height = 17
                  Align = alTop
                  Caption = 'Senha'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 6110509
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitWidth = 37
                end
                object pnInptSenha: TPanel
                  AlignWithMargins = True
                  Left = 0
                  Top = 22
                  Width = 309
                  Height = 26
                  Margins.Left = 0
                  Margins.Top = 5
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alTop
                  Anchors = [akTop, akRight]
                  BevelEdges = []
                  BevelOuter = bvNone
                  TabOrder = 0
                  ExplicitWidth = 292
                  object Shape4: TShape
                    Left = 0
                    Top = 25
                    Width = 309
                    Height = 1
                    Align = alBottom
                    Pen.Color = 9200741
                    ExplicitTop = 29
                    ExplicitWidth = 245
                  end
                  object iconEye: TImage
                    Left = 288
                    Top = 0
                    Width = 21
                    Height = 25
                    Cursor = crHandPoint
                    Align = alRight
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
                    OnClick = iconEyeClick
                    ExplicitLeft = 278
                  end
                  object edtSenha: TEdit
                    Left = 0
                    Top = 0
                    Width = 288
                    Height = 25
                    Align = alClient
                    BorderStyle = bsNone
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 9200741
                    Font.Height = -16
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentFont = False
                    PasswordChar = '*'
                    TabOrder = 0
                    ExplicitWidth = 271
                  end
                end
              end
            end
            object inptTermos: TPanel
              Left = 0
              Top = 160
              Width = 344
              Height = 41
              Align = alTop
              BevelEdges = []
              BevelOuter = bvNone
              Padding.Left = 10
              Padding.Top = 10
              Padding.Right = 25
              ParentColor = True
              TabOrder = 2
              ExplicitWidth = 327
              object Panel6: TPanel
                Left = 10
                Top = 10
                Width = 309
                Height = 23
                Margins.Left = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alTop
                BevelEdges = []
                BevelOuter = bvNone
                Padding.Left = 3
                ParentBackground = False
                ParentColor = True
                TabOrder = 0
                ExplicitWidth = 292
                object lbRememberMe: TLabel
                  AlignWithMargins = True
                  Left = 28
                  Top = 2
                  Width = 72
                  Height = 21
                  Cursor = crHandPoint
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alLeft
                  Caption = 'Lembrar-me'
                  FocusControl = inptTermos
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 6110509
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                  OnClick = lbRememberMeClick
                  ExplicitHeight = 17
                end
                object iconKeepConn: TImage
                  Left = 3
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
                  ExplicitLeft = 5
                  ExplicitHeight = 25
                end
                object lbForgotPassword: TLabel
                  AlignWithMargins = True
                  Left = 198
                  Top = 2
                  Width = 111
                  Height = 21
                  Cursor = crHandPoint
                  Margins.Left = 0
                  Margins.Top = 2
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alRight
                  Caption = 'Esqueceu a Senha?'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 11651328
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                  Visible = False
                  ExplicitLeft = 181
                  ExplicitHeight = 17
                end
              end
            end
            object pnCtrlContinue: TPanel
              Left = 0
              Top = 201
              Width = 344
              Height = 72
              Align = alTop
              BevelEdges = []
              BevelOuter = bvNone
              Padding.Left = 10
              Padding.Top = 10
              Padding.Right = 25
              ParentColor = True
              TabOrder = 3
              ExplicitWidth = 327
              object pnBtnContinual: TPanel
                Left = 10
                Top = 10
                Width = 309
                Height = 62
                Margins.Left = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alClient
                BevelEdges = []
                BevelOuter = bvNone
                Padding.Left = 5
                Padding.Top = 10
                Padding.Right = 10
                Padding.Bottom = 10
                ParentBackground = False
                ParentColor = True
                TabOrder = 0
                ExplicitWidth = 292
                object Shape5: TShape
                  Left = 5
                  Top = 10
                  Width = 294
                  Height = 42
                  Align = alClient
                  Brush.Color = 8662824
                  Pen.Style = psClear
                  Shape = stRoundRect
                  ExplicitLeft = 48
                  ExplicitTop = 56
                  ExplicitWidth = 65
                  ExplicitHeight = 65
                end
                object lbNameForm: TLabel
                  Left = 5
                  Top = 10
                  Width = 294
                  Height = 42
                  Cursor = crHandPoint
                  Margins.Bottom = 8
                  Align = alClient
                  Alignment = taCenter
                  Caption = 'Sing In'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -16
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Layout = tlCenter
                  OnClick = lbNameFormClick
                  ExplicitWidth = 53
                  ExplicitHeight = 21
                end
              end
            end
            object Panel1: TPanel
              Left = 0
              Top = 273
              Width = 344
              Height = 41
              Align = alTop
              BevelEdges = []
              BevelOuter = bvNone
              Padding.Left = 10
              Padding.Top = 10
              Padding.Right = 25
              ParentColor = True
              TabOrder = 4
              ExplicitWidth = 327
              object Panel2: TPanel
                Left = 10
                Top = 10
                Width = 309
                Height = 23
                Margins.Left = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alTop
                Anchors = [akTop, akBottom]
                BevelEdges = []
                BevelOuter = bvNone
                Padding.Left = 3
                ParentBackground = False
                ParentColor = True
                TabOrder = 0
                ExplicitWidth = 292
                DesignSize = (
                  309
                  23)
                object Label1: TLabel
                  AlignWithMargins = True
                  Left = 61
                  Top = 2
                  Width = 126
                  Height = 21
                  Cursor = crHandPoint
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Alignment = taRightJustify
                  Anchors = [akTop, akBottom]
                  AutoSize = False
                  Caption = 'N'#227'o tem uma conta? '
                  FocusControl = Panel1
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 6110509
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                  Visible = False
                  ExplicitLeft = 49
                end
                object Label2: TLabel
                  AlignWithMargins = True
                  Left = 200
                  Top = 2
                  Width = 54
                  Height = 21
                  Cursor = crHandPoint
                  Margins.Left = 0
                  Margins.Top = 2
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Anchors = [akTop, akBottom]
                  AutoSize = False
                  Caption = 'Sign up'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 11651328
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                  Visible = False
                  ExplicitLeft = 177
                end
              end
            end
          end
          object panel13: TPanel
            Left = 5
            Top = 3
            Width = 344
            Height = 60
            Align = alTop
            BevelEdges = []
            BevelOuter = bvNone
            Padding.Left = 40
            Padding.Top = 10
            Padding.Right = 25
            ParentColor = True
            TabOrder = 3
            ExplicitWidth = 327
          end
        end
      end
    end
    object Panel10: TPanel
      AlignWithMargins = True
      Left = 594
      Top = 0
      Width = 200
      Height = 571
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      BevelEdges = []
      BevelOuter = bvNone
      Padding.Left = 15
      Padding.Top = 15
      Padding.Bottom = 15
      ParentBackground = False
      ParentColor = True
      TabOrder = 2
      ExplicitLeft = 583
    end
  end
end
