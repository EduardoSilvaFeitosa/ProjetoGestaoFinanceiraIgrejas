inherited FrmReportWithdrawals: TFrmReportWithdrawals
  Caption = 'FrmReportWithdrawals'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBackground: TPanel
    inherited pnHead: TPanel
      inherited lbHeaderTitle: TLabel
        Caption = 'Relat'#243'rio de Sa'#237'das'
        ExplicitWidth = 172
      end
    end
    inherited pnContent: TPanel
      object pnContainerMonthYear: TPanel
        Left = 20
        Top = 0
        Width = 407
        Height = 80
        Align = alTop
        BevelEdges = []
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
        object gpMonthYear: TGridPanel
          Left = 0
          Top = 0
          Width = 407
          Height = 78
          Align = alTop
          BevelEdges = []
          BevelOuter = bvNone
          ColumnCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = Panel2
              Row = 0
            end
            item
              Column = 1
              Control = Panel1
              Row = 0
            end>
          ParentBackground = False
          ParentColor = True
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 0
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 204
            Height = 78
            Align = alClient
            BevelEdges = []
            BevelOuter = bvNone
            Padding.Top = 10
            Padding.Right = 5
            Padding.Bottom = 10
            ParentColor = True
            TabOrder = 0
            object Panel6: TPanel
              Left = 0
              Top = 10
              Width = 199
              Height = 15
              Align = alTop
              BevelEdges = []
              BevelOuter = bvNone
              TabOrder = 0
              object Label1: TLabel
                Left = 0
                Top = 0
                Width = 120
                Height = 15
                Align = alLeft
                AutoSize = False
                Caption = 'M'#234's '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6110509
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
            end
            object Panel16: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 35
              Width = 193
              Height = 33
              Margins.Top = 10
              Margins.Bottom = 0
              Align = alClient
              BevelEdges = []
              BevelOuter = bvNone
              Padding.Right = 4
              Padding.Bottom = 4
              TabOrder = 1
              object Shape2: TShape
                Left = 0
                Top = 0
                Width = 189
                Height = 29
                Align = alClient
                Brush.Color = 16513014
                Pen.Style = psClear
                Shape = stRoundRect
                Visible = False
                ExplicitLeft = 168
                ExplicitTop = 24
                ExplicitWidth = 65
                ExplicitHeight = 65
              end
              object cbMonth: TDBLookupComboBox
                Left = 0
                Top = 0
                Width = 189
                Height = 29
                Align = alClient
                BevelEdges = []
                BevelInner = bvNone
                BevelOuter = bvNone
                Color = clWhite
                Ctl3D = True
                DataField = 'idmonth'
                DataSource = dtsEntries
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 9200741
                Font.Height = -16
                Font.Name = 'Segoe UI'
                Font.Style = []
                KeyField = 'idmonth'
                ListField = 'description'
                ListFieldIndex = 1
                ListSource = dtsMonth
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                StyleElements = [seFont, seClient]
              end
            end
          end
          object Panel1: TPanel
            Left = 204
            Top = 0
            Width = 203
            Height = 78
            Align = alClient
            BevelEdges = []
            BevelOuter = bvNone
            Padding.Left = 5
            Padding.Top = 10
            Padding.Bottom = 10
            ParentColor = True
            TabOrder = 1
            object Panel3: TPanel
              Left = 5
              Top = 10
              Width = 198
              Height = 15
              Align = alTop
              BevelEdges = []
              BevelOuter = bvNone
              TabOrder = 0
              object Label2: TLabel
                Left = 0
                Top = 0
                Width = 120
                Height = 15
                Align = alLeft
                AutoSize = False
                Caption = 'Ano'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6110509
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
            end
            object Panel4: TPanel
              AlignWithMargins = True
              Left = 8
              Top = 35
              Width = 192
              Height = 33
              Margins.Top = 10
              Margins.Bottom = 0
              Align = alClient
              BevelEdges = []
              BevelOuter = bvNone
              Padding.Top = 2
              Padding.Bottom = 2
              TabOrder = 1
              object Shape1: TShape
                Left = 0
                Top = 2
                Width = 192
                Height = 29
                Align = alClient
                Brush.Color = 16513014
                Pen.Style = psClear
                Shape = stRoundRect
                ExplicitLeft = 168
                ExplicitTop = 24
                ExplicitWidth = 65
                ExplicitHeight = 65
              end
              object edtYear: TEdit
                AlignWithMargins = True
                Left = 5
                Top = 9
                Width = 184
                Height = 19
                Margins.Left = 5
                Margins.Top = 7
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
                NumbersOnly = True
                ParentFont = False
                TabOrder = 0
              end
            end
          end
        end
      end
      object pnContainerStatus: TPanel
        Left = 20
        Top = 80
        Width = 407
        Height = 41
        Align = alTop
        BevelEdges = []
        BevelOuter = bvNone
        Padding.Top = 10
        Padding.Right = 25
        ParentColor = True
        TabOrder = 2
        object pnCkbStatus: TPanel
          Left = 0
          Top = 10
          Width = 382
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
          object lbStatus: TLabel
            AlignWithMargins = True
            Left = 23
            Top = 2
            Width = 263
            Height = 21
            Cursor = crHandPoint
            Margins.Left = 0
            Margins.Top = 2
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Caption = ' Somente compet'#234'ncias com movimenta'#231#227'o?'
            FocusControl = pnContainerStatus
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6110509
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = lbStatusClick
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
            OnClick = lbStatusClick
            ExplicitLeft = 5
            ExplicitHeight = 25
          end
        end
      end
    end
  end
  inherited spvMessages: TSplitView
    inherited cpMessage: TCardPanel
      inherited CardWarning: TCard
        ExplicitWidth = 0
        ExplicitHeight = 48
        inherited Panel5: TPanel
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 48
          inherited Panel9: TPanel
            ExplicitLeft = -27
          end
        end
      end
    end
  end
  object mtEntries: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 360
    Top = 81
    object mtEntriesidmonth: TIntegerField
      FieldName = 'idmonth'
      Origin = 'idmonth'
    end
  end
  object mtMonth: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 360
    Top = 25
    object mtMonthidmonth: TIntegerField
      FieldName = 'idmonth'
      Origin = 'idmonth'
    end
    object mtMonthdescription: TWideStringField
      FieldName = 'description'
      Origin = 'description'
      Size = 8190
    end
  end
  object dtsMonth: TDataSource
    DataSet = mtMonth
    Left = 397
    Top = 26
  end
  object dtsEntries: TDataSource
    DataSet = mtEntries
    Left = 405
    Top = 82
  end
end
