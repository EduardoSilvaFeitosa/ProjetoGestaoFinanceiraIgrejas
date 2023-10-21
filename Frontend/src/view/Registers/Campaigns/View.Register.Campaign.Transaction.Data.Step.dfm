inherited FrmStepDataCampaignTransaction: TFrmStepDataCampaignTransaction
  Caption = ''
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBackground: TPanel
    object pnBack: TPanel
      Left = 10
      Top = 433
      Width = 400
      Height = 10
      Align = alBottom
      BevelEdges = []
      BevelOuter = bvNone
      TabOrder = 0
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
      TabOrder = 1
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
                000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000003
                2F4944415478DAD557CD6ED34010F6DA4E4E0D0A6FE0DE2AA0606E085A643F41
                931B8294264FD0E6099A3C41DA27A8A125E296F4091211887AABD542E156F304
                F8EED866C6ECA6EBF53A381512EA4856FCBBDFCC37DFCC4E88F29F8CDC0960C3
                AA5557662B2621C488E3D8C07B6A4CFC88C4EED7CF2763F1FD07CF5F9B57D3BE
                7B6BE0471B0D0BC076E1D482A32A5D8810575555DB1D3B3E5E3F7EF976278AA2
                2638642F0DBC66BD324A61A907A7B5BFF8E6698166BB678EC7408111078EF1D2
                C04893A669036498DEF223251AAA0A390D8299FBE3ECA3C7DE2B97CB1E1F2982
                E2F9D2C01474C4D13A84EB165B3CCF7850E62C1C2CC73EBF460698D23B629142
                9EDADFBE7C3860CF516095B052437141341DC1D9F31C9F7C2D84544C9DB9D032
                C0EB9BDB47F0D3A45475D9E214B0C79EA15D4E8EE7DF53018E8A806680858F1D
                58B8256341060C34EF83A39D22A019603E5A50E92AAA540445C1C04F57D77597
                13D452A032E0588C368FFABC48511358D3E0182ADD638CE9913ED055DDCE882B
                4D735CBF9C9C0C69B4D7A23398EF7B41A519ABCA133EE7A112B6AE267D87778C
                670C1CB459879B033F7CF1660F3A4F2F59200C9F62AB5BDF6C40E320031A6DF2
                515EBE65A068A6D53460BD6BBA6E0BD675C4883B10F13E2F1AD93DDE4166E0D4
                2138B5A7E4184B219FAAC2C050A3F7313F3260BED665200B81E121E60A85A4CC
                C2D0F83EEDFFE4EF31AA81BA2A5076CE513DEFD3329DF08D857770A1B828C82F
                FACA1898B059DEA2204C360EB5A4394CA9B27294E924054C4150045525554E0D
                1003D9495E26A473F1E97D579647A1ACA4E5C8379C741D6F6C0FE00E46820D7D
                152391508BDBDD3BF49C1B0C500796487D5E3966808596398417EB5C49644A48
                62A97D59683E363FA5C83609CC478D3E6C5F4C8E0F6EC0671D46BBC41C60A99D
                D34653D14A81C5E8C4BC5207CC38564CFADC03C021BF5703E82E80B2AD34C542
                2E309A6410708220E8B2A923CFE8D679A4DC8C4AC5762709383FFA240E40B64E
                C330F2D8F4B8F60C0454D2217AB2450199B31E80D60BED4E72DA17E635CF8640
                6F5BA4B73030B33F6A47752E74C0A77BF5A16CC6BE15B0E8040CF1260CF109A5
                282E00F4F8C1A088DD8DBF30FFD27E039CE6673D5D68FFF40000000049454E44
                AE426082}
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
              object dbDescription: TDBText
                AlignWithMargins = True
                Left = 7
                Top = 6
                Width = 381
                Height = 15
                Margins.Bottom = 0
                Anchors = [akLeft, akRight]
                DataField = 'descricao'
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
          Caption = 'Nenhum registro de campanha encontrado!'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
          WordWrap = True
          ExplicitWidth = 208
          ExplicitHeight = 13
        end
      end
    end
    object pnNote: TPanel
      Left = 10
      Top = 0
      Width = 400
      Height = 64
      Align = alTop
      BevelEdges = []
      BevelOuter = bvNone
      TabOrder = 2
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
            Caption = 'Somente pode ser vinculado 1 campanha por movimenta'#231#227'o.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6110509
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            WordWrap = True
            ExplicitWidth = 291
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
    object mtMaindescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
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
