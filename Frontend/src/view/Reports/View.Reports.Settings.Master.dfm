object FrmReportSettingsMaster: TFrmReportSettingsMaster
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 450
  ClientWidth = 450
  Color = 16447477
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    450
    450)
  PixelsPerInch = 96
  TextHeight = 13
  object pnBackground: TPanel
    Left = 0
    Top = 0
    Width = 450
    Height = 450
    Align = alClient
    BevelEdges = []
    BevelOuter = bvNone
    Color = clWhite
    Padding.Left = 5
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    ParentBackground = False
    TabOrder = 0
    object pnHead: TPanel
      Left = 5
      Top = 10
      Width = 435
      Height = 64
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object lbHeaderTitle: TLabel
        AlignWithMargins = True
        Left = 20
        Top = 20
        Width = 80
        Height = 24
        Margins.Left = 20
        Margins.Top = 20
        Margins.Bottom = 10
        Align = alClient
        Caption = 'Relat'#243'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6110509
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlBottom
      end
      object IconClose: TImage
        Left = 403
        Top = 20
        Width = 24
        Height = 24
        Cursor = crHandPoint
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
          00180806000000E0773DF8000000097048597300000B1300000B1301009A9C18
          000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000001
          174944415478DAEDD44D0EC14014C07133D59D488F60EF23DDFB48DDC0DEF70D
          3841EB043881461DC00D080ED0E0202ED019D34445A69D378FB0F3362C9AFF6F
          329E92DC8F87FC818F8092D3B18AAC383C1FD64B4CA4DAEC8F0CC3D8867BFFA6
          05E27881157684139B10E2096406C56BAD81CB39F7C4B321A5B42D2329203E8D
          F8583D1F009024FE129B9E8FC1427B4595462F3E910B21725C7C9F5D4F1B4F6E
          297F6408C1C64140853C82A8B816C8425E471747012A04134703F29D27D7A55B
          611490157F070181AC6D7984C1154601D02A62FE272080D9732C92026AF5FE84
          D3DC1C8AAB1031E3CB31F041C0764616636C27C23666151384131EE6695EFFB2
          4B90288A3AF2695453AE7727A669FAA8D7F5B7E70F68E70EE080CF19A05E50DD
          0000000049454E44AE426082}
        Proportional = True
        OnClick = btnExecuteCloseClick
      end
      object iconCkbOf: TImage
        Left = 350
        Top = 20
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
        Left = 374
        Top = 20
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
    object pnContent: TPanel
      Left = 5
      Top = 74
      Width = 435
      Height = 278
      Align = alTop
      BevelEdges = []
      BevelOuter = bvNone
      Padding.Left = 20
      Padding.Right = 8
      ParentColor = True
      TabOrder = 1
      object pnDirectoryGroup: TPanel
        Left = 20
        Top = 248
        Width = 407
        Height = 30
        Align = alBottom
        Alignment = taLeftJustify
        BevelEdges = []
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object pnReloadDir: TPanel
          Left = 377
          Top = 0
          Width = 30
          Height = 30
          Align = alRight
          BevelEdges = []
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object Image1: TImage
            Left = 0
            Top = 0
            Width = 30
            Height = 30
            Cursor = crHandPoint
            Align = alClient
            Center = True
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
              00180806000000E0773DF8000000097048597300000B1300000B1301009A9C18
              000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000001
              4E4944415478DA6364A031601CB580680BF4ECE2E2FFFFFF3F01C814C0AA9091
              B1E1D2A1458D645BA06B1B7B1F4829E0554C8625C816FCA752A83C803A6421AD
              2C00810F970F2F16C46A015082A288473767D48281B02026E0FF7F86FC2B4796
              38D2C4027440B1053A36310E4CFF190DFE31FE17F8F7EFDF866BC7965DD07088
              50B87160C5038A2DD0B38BEFFFFFFF5F019AF0022076009AA34891057AD6B105
              FF99188016FC9FC8C2C2D20012FBF3E74F033017E7239B43B605D0B2EB22507D
              00880F0A16D6BFACFB19A0E519360BDE33E0284991014C23C84140D0084C2D0D
              507E0290AF0053071347B6200148D533102851999999052F1C58F001EA830740
              0B1DF1A9273B49C2E20054727E62FA341124C6F78FBF1E14E940430B2F1D5E3C
              81220B4000984427C022150640910E0C1E78CAA23853695945193031310500F3
              C207605EB80034FC005582885800004F87C01958BAECE40000000049454E44AE
              426082}
            OnClick = OnChoseDirectoryClick
            OnMouseEnter = pnMouseEnterExecute
            OnMouseLeave = Image1MouseLeave
            ExplicitLeft = 24
            ExplicitTop = 8
            ExplicitWidth = 105
            ExplicitHeight = 105
          end
        end
        object pnDir: TPanel
          Left = 0
          Top = 0
          Width = 377
          Height = 30
          Align = alClient
          BevelEdges = []
          BevelOuter = bvNone
          Padding.Right = 5
          TabOrder = 1
          object shpFirstName: TShape
            Left = 0
            Top = 0
            Width = 372
            Height = 30
            Align = alClient
            Brush.Color = 16513014
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = 168
            ExplicitTop = 24
            ExplicitWidth = 65
            ExplicitHeight = 65
          end
          object edtDirectory: TEdit
            AlignWithMargins = True
            Left = 5
            Top = 5
            Width = 359
            Height = 19
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 8
            Margins.Bottom = 6
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
          end
        end
      end
    end
    object pnControls: TPanel
      Left = 5
      Top = 352
      Width = 435
      Height = 88
      Align = alClient
      BevelEdges = []
      BevelOuter = bvNone
      Padding.Left = 10
      Padding.Top = 29
      Padding.Bottom = 11
      TabOrder = 2
      inline btnClose: TFrmButton
        Left = 157
        Top = 29
        Width = 121
        Height = 41
        TabOrder = 0
        ExplicitLeft = 157
        ExplicitTop = 29
        ExplicitWidth = 121
        ExplicitHeight = 41
        inherited pnBackground: TPanel
          Width = 121
          Height = 41
          ExplicitWidth = 121
          ExplicitHeight = 41
          inherited pnBtn: TPanel
            Left = 1
            Height = 39
            ExplicitLeft = 1
            ExplicitTop = 2
            ExplicitHeight = 39
            inherited iconBtn: TImage
              Height = 39
              ExplicitLeft = -16
              ExplicitTop = 0
              ExplicitWidth = 120
              ExplicitHeight = 48
            end
            inherited txtBtn: TLabel
              Width = 28
              Caption = 'Gerar'
              OnClick = btnClosetxtBtnClick
              ExplicitWidth = 28
            end
          end
        end
      end
    end
  end
  object spvMessages: TSplitView
    AlignWithMargins = True
    Left = 432
    Top = 80
    Width = 0
    Height = 48
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 200
    AnimationDelay = 0
    AnimationStep = 0
    Color = 16447477
    CompactWidth = 0
    DisplayMode = svmOverlay
    Opened = False
    OpenedWidth = 270
    Placement = svpRight
    TabOrder = 1
    UseAnimation = False
    object cpMessage: TCardPanel
      Left = 0
      Top = 0
      Width = 0
      Height = 48
      Align = alClient
      ActiveCard = CardSucess
      BevelEdges = []
      BevelOuter = bvNone
      Caption = 'cpMessage'
      ParentColor = True
      TabOrder = 0
      object CardSucess: TCard
        Left = 0
        Top = 0
        Width = 0
        Height = 48
        BevelEdges = []
        Caption = 'CardSucess'
        CardIndex = 0
        Color = 13695961
        Padding.Left = 5
        Padding.Top = 3
        Padding.Right = 5
        Padding.Bottom = 3
        ParentBackground = False
        TabOrder = 0
        object pnContainerMsg: TPanel
          Left = 5
          Top = 3
          Width = 260
          Height = 42
          Align = alClient
          BevelEdges = []
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object pnContainerIconSucessMsg: TPanel
            Left = 0
            Top = 0
            Width = 44
            Height = 42
            Align = alLeft
            BevelEdges = []
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 0
            object IconSucessMsg: TImage
              Left = 0
              Top = 0
              Width = 44
              Height = 42
              Align = alClient
              Center = True
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
                00200806000000737A7AF4000000097048597300000B1300000B1301009A9C18
                000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000002
                B94944415478DAD5975D72124110C7BB074CF998DC60398158A5A2BE18DF3581
                13404E603841E004E009B29E6031FA9EBC28A056A927606F907D544B66EC99D9
                8FD96109B31BA8945D4515FB31F3FF754F4F6F0FC21D1BFE9F00DF837DF8054D
                FAE701830838FDEEC30F78D8897607300D3C56AF7705E73D255C6C21225EF1E5
                7208CF3AE17600C85BF61B4702B157CA3344DF05E466806970888C05F46FDFB8
                1B11CC04FE2E7FD2681D7241CF119AF4EE0B2B3A2145EC8420AE4A03D4BE7DEC
                92077E99C962E81E819C9920A256EBC1A357EFDC01B4E797E90482BF85A79DD3
                324B40730C62103D07E72F8BE0B160A0178B7BF140B98E8352E2C51091D8E30D
                7BA7AC00B0D9E43C49B85B8927360BC688EC8D129389F9E4E8643D80F67E115F
                85A275DCA8A229F34708E1F1C7AF874A64FE7E6144B461EE8C1C80E5BD4C38BF
                8A7892BCE4CC4041183965473507609056F2DEDE39A618CD7D0D7A3BE7E6CE00
                A8E0E01F76AD06D25A81B556B71157360D7C8A42573DDBE3074932A2F1421626
                C1FBB4EDC65B1397F63938C51A1BC5CFD32D9901CC833682AA7AABEBFF2968AA
                8F4E41597512D70ECA02756ECF8F9B5E90E25857918962F2B0B4B83DFF9277E0
                7967E2B404F8E5E2926E1CC66F8509442971A725589784FABE046B26105458C6
                04397616076B8B1726A1BC984D1654AE3C15EED6F181056742A4E65A2DD76D71
                BB12A6B57BE5E35100E15CAACDF5B7B678B9526C4094F94E3897E218222D1808
                38E6ADA3BE0D41FD60DBB54CB3AF1FCE487450E47D3180F65212AB2E28ADE715
                CC14076307DD0CA0A3906B48AA40B0F9C54880489B18F78624834813C7F060B8
                31F41A5E8EF30CF1B55F5697A634371924ADB7D594B27AED01F5006DB01B584E
                55AF4A536A4048F1419298AEA612EEDEB2BFE9B052EA601283D8AD77260A2204
                2E64F7EB6FEF605264C9D18C51B8B96E32767F34DB91DD39C03F4B83EF301858
                7EF80000000049454E44AE426082}
              ExplicitLeft = 24
              ExplicitTop = 24
              ExplicitWidth = 105
              ExplicitHeight = 105
            end
          end
          object pnContainerIconDescSucessMsg: TPanel
            Left = 44
            Top = 0
            Width = 189
            Height = 42
            Cursor = crHandPoint
            Align = alClient
            BevelEdges = []
            BevelOuter = bvNone
            Padding.Left = 8
            Padding.Top = 5
            ParentColor = True
            TabOrder = 1
            object lbSucessMsg: TLabel
              Left = 8
              Top = 5
              Width = 45
              Height = 13
              Cursor = crHandPoint
              Align = alTop
              Caption = 'Sucesso!'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6110509
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              Layout = tlCenter
            end
            object lbDescSucessMsg: TLabel
              AlignWithMargins = True
              Left = 11
              Top = 21
              Width = 175
              Height = 18
              Cursor = crHandPoint
              Align = alClient
              AutoSize = False
              Caption = 'Relat'#243'rio gerado com sucesso!'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6110509
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              WordWrap = True
              ExplicitLeft = 15
              ExplicitTop = 22
              ExplicitWidth = 183
              ExplicitHeight = 26
            end
          end
          object pnContainerIconOkSucessMsg: TPanel
            Left = 233
            Top = 0
            Width = 27
            Height = 42
            Align = alRight
            BevelEdges = []
            BevelOuter = bvNone
            Padding.Top = 3
            Padding.Bottom = 13
            ParentColor = True
            TabOrder = 2
            object pnContainerIconOkSucessMsg2: TPanel
              Left = 0
              Top = 3
              Width = 27
              Height = 26
              Align = alClient
              BevelEdges = []
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 0
              object IconOkSucessMsg: TImage
                Left = 0
                Top = 0
                Width = 27
                Height = 26
                Cursor = crHandPoint
                Align = alClient
                Center = True
                Picture.Data = {
                  0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
                  00180806000000E0773DF8000000097048597300000B1300000B1301009A9C18
                  000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000001
                  174944415478DAEDD44D0EC14014C07133D59D488F60EF23DDFB48DDC0DEF70D
                  3841EB043881461DC00D080ED0E0202ED019D34445A69D378FB0F3362C9AFF6F
                  329E92DC8F87FC818F8092D3B18AAC383C1FD64B4CA4DAEC8F0CC3D8867BFFA6
                  05E27881157684139B10E2096406C56BAD81CB39F7C4B321A5B42D2329203E8D
                  F8583D1F009024FE129B9E8FC1427B4595462F3E910B21725C7C9F5D4F1B4F6E
                  297F6408C1C64140853C82A8B816C8425E471747012A04134703F29D27D7A55B
                  611490157F070181AC6D7984C1154601D02A62FE272080D9732C92026AF5FE84
                  D3DC1C8AAB1031E3CB31F041C0764616636C27C23666151384131EE6695EFFB2
                  4B90288A3AF2695453AE7727A669FAA8D7F5B7E70F68E70EE080CF19A05E50DD
                  0000000049454E44AE426082}
                OnClick = IconOkSucessMsgClick
                OnMouseEnter = IconEnterExecute
                OnMouseLeave = IconLeaveExecute
                ExplicitLeft = 24
                ExplicitTop = 24
                ExplicitWidth = 105
                ExplicitHeight = 105
              end
            end
          end
        end
      end
      object CardWarning: TCard
        Left = 0
        Top = 0
        Width = 0
        Height = 48
        Caption = 'CardWarning'
        CardIndex = 1
        Color = 13299711
        ParentBackground = False
        TabOrder = 1
        ExplicitWidth = 185
        ExplicitHeight = 41
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 0
          Height = 48
          Align = alClient
          BevelEdges = []
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          ExplicitLeft = 5
          ExplicitTop = 3
          ExplicitWidth = 260
          ExplicitHeight = 42
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 44
            Height = 48
            Align = alLeft
            BevelEdges = []
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 0
            object Image2: TImage
              Left = 0
              Top = 0
              Width = 44
              Height = 48
              Align = alClient
              Center = True
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
                00200806000000737A7AF4000000097048597300000B1300000B1301009A9C18
                000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000003
                1E4944415478DAD5975D521A411080BB6735222455F868444B4E107382E00DF4
                04E009222F069E8027485E2027104EA037901BC49C004A637C94AA88520233E9
                9D9DC5D9617F58A365A5ABB68A65667BBFFEDD1E845716FC2F017A87E9F45262
                B483606D731403147C301925CEB3ADC1E0C500AE4B896D0096E700057A6C3B60
                5B9FAEEE034C6BD9C6A8FF2C00B6B56F12E326C817C792F62220A10097A5448E
                09EB8476A5677F0A18D0FDA9E0FC2730E6B89CF334FDA690884F8677FA5364C5
                ADFA9FD3D800D7E5549E0B68EBCA38E0C166E3B61B06FDAB942A104845076108
                85F5FAB0B330C045F9DD9E25F8897BCF057EDFFC7A7B18C7FF97A5B755264194
                0EC05D3FF839003BD938B033D7027AB0460F564D2B19405E00E494922E256727
                D318EA1EF342200C1EEE97B366A5CC015C9552C7A012CEEFE5FABA8FB4371AC3
                0303A245109F83D63D008EF5564FDDF66973D6BB9EAC10D40C883CD0554A728F
                AE16047D6740277BAE47A932B27A65A077E3A375A4FC4077A92CC795714F5544
                9F14EDBA8A24B8B07EC8351F57931772E485333F400C209DB35E962458528940
                5ECCD4EF5BDEF524C51B2B2A74730977F52575E3C2EBBA6700AAE1DC04C5CAB6
                720A9674F518A65DB3C138E507B60761CAC5FED6B7BB53EF7AB28D80791986D1
                F29AEBA11940948551A287CF8CB304385A3D44C69AA6876600174754FBCCA97D
                33FE61627B6E65755C1102649F08EA19BA8774FD18B5214C64F221B56A013BEA
                39BB1714FCF60685E89F4210D5336285202A097DAD573D43209C67EAC38F8BC2
                FA26A1B3499521D5F2467DB816A6D093330B782CA8C43D0051B5FC54D1E36F7A
                37562BF6C2CAEE9657B09D30D8855BB1A2A58601523122B4DED787C528ABC2AA
                C6F87E847F8C6C317A3E9095D5F5C65DED2900C6CB3DDF8F4000CDBD67EE7D10
                4498FC2EA79A6E73B28546B37DBFD12C70243312475A4096D6A21A94D34FD8B1
                3E928585287428754A6DDA34074DBABAE6504A4DE603BD69CF1C6039E27E5882
                468EE5EA2B5875133386B4A9E114A30E2BB10E260EC8DCE8AD89A0C999752630
                693FDBC1C44F9CA3D96447704C33C6D302B03F192DBDECD1ECA5E4D501FE029F
                83FA3025BF144B0000000049454E44AE426082}
              ExplicitLeft = 24
              ExplicitTop = 24
              ExplicitWidth = 105
              ExplicitHeight = 105
            end
          end
          object Panel8: TPanel
            Left = 44
            Top = 0
            Width = 199
            Height = 48
            Cursor = crHandPoint
            Align = alClient
            BevelEdges = []
            BevelOuter = bvNone
            Padding.Left = 8
            Padding.Top = 5
            ParentColor = True
            TabOrder = 1
            object Label3: TLabel
              Left = 8
              Top = 5
              Width = 35
              Height = 13
              Cursor = crHandPoint
              Align = alTop
              Caption = 'Alerta!'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6110509
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              Layout = tlCenter
            end
            object Label4: TLabel
              AlignWithMargins = True
              Left = 11
              Top = 19
              Width = 185
              Height = 26
              Cursor = crHandPoint
              Margins.Top = 1
              Align = alClient
              AutoSize = False
              Caption = 'N'#227'o foi poss'#237'vel gerar relat'#243'rio com os par'#226'metros informados!'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6110509
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              WordWrap = True
              ExplicitLeft = 15
              ExplicitTop = 22
              ExplicitWidth = 183
            end
          end
          object Panel9: TPanel
            Left = -27
            Top = 0
            Width = 27
            Height = 48
            Align = alRight
            BevelEdges = []
            BevelOuter = bvNone
            Padding.Top = 3
            Padding.Bottom = 13
            ParentColor = True
            TabOrder = 2
            ExplicitLeft = 243
            object Panel10: TPanel
              Left = 0
              Top = 3
              Width = 27
              Height = 32
              Align = alClient
              BevelEdges = []
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 0
              object Image3: TImage
                Left = 0
                Top = 0
                Width = 27
                Height = 32
                Align = alClient
                Center = True
                Picture.Data = {
                  0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
                  00180806000000E0773DF8000000097048597300000B1300000B1301009A9C18
                  000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000001
                  174944415478DAEDD44D0EC14014C07133D59D488F60EF23DDFB48DDC0DEF70D
                  3841EB043881461DC00D080ED0E0202ED019D34445A69D378FB0F3362C9AFF6F
                  329E92DC8F87FC818F8092D3B18AAC383C1FD64B4CA4DAEC8F0CC3D8867BFFA6
                  05E27881157684139B10E2096406C56BAD81CB39F7C4B321A5B42D2329203E8D
                  F8583D1F009024FE129B9E8FC1427B4595462F3E910B21725C7C9F5D4F1B4F6E
                  297F6408C1C64140853C82A8B816C8425E471747012A04134703F29D27D7A55B
                  611490157F070181AC6D7984C1154601D02A62FE272080D9732C92026AF5FE84
                  D3DC1C8AAB1031E3CB31F041C0764616636C27C23666151384131EE6695EFFB2
                  4B90288A3AF2695453AE7727A669FAA8D7F5B7E70F68E70EE080CF19A05E50DD
                  0000000049454E44AE426082}
                OnClick = IconOkSucessMsgClick
                OnMouseEnter = IconEnterExecute
                OnMouseLeave = IconLeaveExecute
                ExplicitLeft = 24
                ExplicitTop = 24
                ExplicitWidth = 105
                ExplicitHeight = 105
              end
            end
          end
        end
      end
    end
  end
end
