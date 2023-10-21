inherited FrmStepDataMemberTransaction: TFrmStepDataMemberTransaction
  Caption = ''
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBackground: TPanel
    object pnNote: TPanel
      Left = 10
      Top = 0
      Width = 400
      Height = 64
      Align = alTop
      BevelEdges = []
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        400
        64)
      object Panel6: TPanel
        Left = 10
        Top = 13
        Width = 369
        Height = 50
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelEdges = []
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          369
          50)
        object Shape1: TShape
          Left = 0
          Top = 0
          Width = 369
          Height = 50
          Anchors = [akLeft, akTop, akRight, akBottom]
          Brush.Color = 16447477
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitWidth = 243
        end
        object Panel7: TPanel
          Left = 41
          Top = 0
          Width = 328
          Height = 50
          Cursor = crHandPoint
          Align = alClient
          BevelEdges = []
          BevelOuter = bvNone
          Padding.Top = 3
          TabOrder = 0
          object Label2: TLabel
            Left = 0
            Top = 3
            Width = 328
            Height = 13
            Cursor = crHandPoint
            Align = alTop
            Caption = 'Nota!'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6110509
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitWidth = 30
          end
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 19
            Width = 322
            Height = 28
            Cursor = crHandPoint
            Align = alClient
            Caption = 'Somente pode ser vinculado 1 membro por d'#237'zimo.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6110509
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            WordWrap = True
            ExplicitWidth = 240
            ExplicitHeight = 13
          end
        end
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 41
          Height = 50
          Align = alLeft
          BevelEdges = []
          BevelOuter = bvNone
          TabOrder = 1
          object Image3: TImage
            Left = 0
            Top = 6
            Width = 41
            Height = 30
            Center = True
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000220000
              002208060000003A470BC2000000097048597300000B1300000B1301009A9C18
              000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000002
              4B4944415478DAED974D4EDB401480FD134BDD80C20DA63B247E94250282CC09
              801D12293827004E807302E004989FA2EE801360418B585A055A76981390A525
              673CBC490CD8C99899710CCDA24FB2624FFCDE7CF3FEF4AC2A0322EABF062804
              64746A19BDDC075F82A6EF9E363F0504998BE5E170C8229AB2008F15B8CA5DAF
              50100FAEFD300CDDFBEB1F7EA1206D8068789D10B2C1D8FC3D7100A82102C405
              99A8D616E1B53D4980A45088C6CDE5A1931B64726E750BBC60E704486FA4AAF6
              EF8B83863448911022304C9089EA370B7EF68A847813B274737974CA05193597
              91818D73B8451C8B7EC63A4FAFA9EBFA57CF7552A5DE0302DEA09EB078E76A61
              8CFE5E1D3F26D72AA68530C60F5C9F10D2B8FD79646782C4DEE01AEA1784E595
              14885C6E90258C23FFCFD5B1D73E047459C3304C51FD288A36EF7E7DDFC902A1
              B9618A81B4C581FE50EFE8D61C30B726A1EB82EE7C16C89322D939FB006982EE
              480F08C4B70CF17D9230D42F482ACF9220A289F61FE4C340A084475E4A78F092
              3506F9B4F285EEEA42776597EFD8CCCA86A669DB82B6EAE05A175CEBD387CAB4
              55C17A0B81C91351FDE48C9202894B98E609373C7DB678450FA1C55F770ED103
              42657CB666C3DCB0F5C120AF21CD0411F58AAAA83E6B9D280471207CF0C67CD2
              1B4C102AF19C2A1A6B59A9B3E6D7CC5151344432C29A43B82045C3BC07C105A1
              12CF281406E56480CE49EAAC39550A844AA71A5AB66CE7042FEC964AA59DEEF9
              3437481A089BB0C11A848CF9C909FF791A51CF3443774400728130C0CA4110BC
              C2C87CEB160A52A40C0CC833A44D6432853FC15A0000000049454E44AE426082}
          end
        end
      end
    end
    object pnBack: TPanel
      Left = 10
      Top = 433
      Width = 400
      Height = 10
      Align = alBottom
      BevelEdges = []
      BevelOuter = bvNone
      TabOrder = 1
    end
    object pnGrid: TPanel
      Left = 10
      Top = 64
      Width = 400
      Height = 369
      Align = alClient
      BevelEdges = []
      BevelOuter = bvNone
      Padding.Top = 5
      TabOrder = 2
      object grdMain: TDBCtrlGrid
        Left = 0
        Top = 25
        Width = 400
        Height = 344
        Align = alClient
        Color = clWhite
        DataSource = dtsMain
        PanelBorder = gbNone
        PanelHeight = 34
        PanelWidth = 383
        ParentColor = False
        TabOrder = 0
        RowCount = 10
        object pnRow: TPanel
          Left = 0
          Top = 0
          Width = 383
          Height = 34
          Align = alClient
          BevelEdges = []
          BevelOuter = bvNone
          Color = clWhite
          Padding.Left = 5
          Padding.Top = 2
          Padding.Bottom = 2
          ParentBackground = False
          TabOrder = 0
          object Shape2: TShape
            Left = 5
            Top = 30
            Width = 378
            Height = 2
            Align = alBottom
            Brush.Color = 16447477
            Pen.Color = 16447477
            ExplicitTop = -33
          end
          object Panel4: TPanel
            Left = 5
            Top = 2
            Width = 30
            Height = 28
            Align = alLeft
            Anchors = []
            BevelEdges = []
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 0
            object Image2: TImage
              Left = 0
              Top = 0
              Width = 30
              Height = 28
              Align = alClient
              Center = True
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D494844520000001E0000
                001E08060000003B30AEA2000000097048597300000B1300000B1301009A9C18
                000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000002
                AE4944415478DAD5574B6E1A4110ED6A08789144AC13130D37805DC08ACCC8C6
                5276E604C627303E41E0042627809C00BCB214DB1A4B11909DE7068C024EB62C
                B28809D395EA1138CC303D1FDB52E2B700C450FDAAAAAB5F3F80FD23C09320EE
                5E8F32CF7F26F39C8326186AF23B8E30158866E55DF6EAD189CFBF8CCB3C9138
                620CCB149109F86947CCC5A7284904129F0D7F6829C41306B81FB3939D199B35
                DF1773566CE2CFFD493EC1A14B1FB598A44B58B6C0EADED6A61999D821053054
                6D45141FE9F50A01A68050038003455953DB46DD8F7C8DD8692F1386AA522EB0
                A07B165A74E75A5539DF9815F4426E1A487C39BC69D35B4DB14867A7F8FAD0EF
                C1C560DC02E047FE95436FE7EDABAA92F87C48D3CBB8A1206534B1BA6A622F06
                DFF60112DDA8B12EE2906A696FEDEA6EE94DCFEF5958D2DEAABDC4C80220876A
                B794ADFB3D0B4B5A0E1A4FCF72CBBDBE230ECD78013A2285BD78C3E5DBEEBFC4
                83499D039C84052FE028142430039C6F33847A94204AFA9092EEB889FBE306E7
                FC4344E27B4108D1AC6C651BFF07F1657F52631CDACA286453043401D9293261
                FD06DBD9E7244B6A7443E569A96D5A2D50D3E9163BAE94365BEE8A03864B30D1
                4C6ECC5B5EF5F1C220D59BB3798DD6F1ED9CEF7019C62823D2A991579FFD2432
                0C2AAD27D5BBE3739FE3AF375D6AE96ABB941219061F0975AD152699BE021F06
                E9545EFE4AC973ADF9B5798DD8A97AF0BDBB7AF1033013D2333D2AB9247D719B
                326808F3419D5B23960322D6AF458B1C851EE4289C8E498B94E46D6F2CA758DD
                131BCF0890D093FC9CDA8C994BD93C1B8EB494785626053B40E9C95641479023
                EA7A1423E0227FA0F5A11351D5E3589FD5B6DB683794D64605841E87DB63FD3E
                666F1572DA03BD954346CAC6D995BC3A2BC507DA5B5512522249FE9CFDE70C2C
                C1D1226533E31CBBA7F117E631F107322C652E561465DF0000000049454E44AE
                426082}
              ExplicitHeight = 30
            end
          end
          object Panel5: TPanel
            Left = 35
            Top = 2
            Width = 348
            Height = 28
            Align = alClient
            BevelEdges = []
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 1
            object Panel8: TPanel
              Left = 0
              Top = 0
              Width = 328
              Height = 28
              Align = alClient
              BevelEdges = []
              BevelOuter = bvNone
              TabOrder = 0
              DesignSize = (
                328
                28)
              object dbName: TDBText
                AlignWithMargins = True
                Left = 7
                Top = 6
                Width = 381
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
                ExplicitTop = 7
                ExplicitWidth = 200
              end
            end
            object Panel9: TPanel
              Left = 328
              Top = 0
              Width = 20
              Height = 28
              Align = alRight
              BevelEdges = []
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 1
              object ckbLink: TDBCheckBox
                Left = 0
                Top = 0
                Width = 20
                Height = 28
                Align = alRight
                DataField = 'flag'
                DataSource = dtsMain
                TabOrder = 0
                ValueChecked = '1'
                ValueUnchecked = '0'
                OnClick = OnCkbLinkClick
              end
            end
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 5
        Width = 400
        Height = 20
        Align = alTop
        BevelEdges = []
        BevelOuter = bvNone
        TabOrder = 1
        object lbAlert: TLabel
          AlignWithMargins = True
          Left = 15
          Top = 3
          Width = 382
          Height = 14
          Cursor = crHandPoint
          Margins.Left = 15
          Align = alClient
          Caption = 'Nenhum registro de membro encontrado!'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
          WordWrap = True
          ExplicitWidth = 197
          ExplicitHeight = 13
        end
      end
    end
  end
  inherited dtsMain: TDataSource
    DataSet = mtMain
  end
  object mtMain: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 322
    Top = 16
    object mtMainid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object mtMainflag: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'flag'
      Origin = 'flag'
    end
    object mtMainnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object mtMainAmountChecked: TAggregateField
      FieldName = 'AmountChecked'
      Active = True
      DisplayName = ''
      Expression = 'SUM(FLAG)'
    end
  end
end
