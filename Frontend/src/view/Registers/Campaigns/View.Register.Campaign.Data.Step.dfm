inherited FrmStepDataCampaign: TFrmStepDataCampaign
  Caption = 'FrmStepDataCampaign'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBackground: TPanel
    object pnContainerDescription: TPanel
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
      object Panel3: TPanel
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
        object edtDescription: TDBEdit
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
          DataField = 'descricao'
          DataSource = dtsMain
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9200741
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = edtDescriptionChange
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 10
        Width = 400
        Height = 15
        Align = alTop
        BevelEdges = []
        BevelOuter = bvNone
        TabOrder = 1
        object lbDescription: TLabel
          Left = 0
          Top = 0
          Width = 65
          Height = 15
          Align = alLeft
          AutoSize = False
          Caption = 'Descri'#231#227'o *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6110509
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbAlertDescription: TLabel
          Left = 65
          Top = 0
          Width = 192
          Height = 13
          Align = alClient
          Caption = 'A descri'#231#227'o deve ter no m'#237'nimo 3 d'#237'gitos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
      end
    end
    object Panel1: TPanel
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
      object Panel2: TPanel
        Left = 0
        Top = 25
        Width = 400
        Height = 45
        Align = alClient
        BevelEdges = []
        BevelOuter = bvNone
        Padding.Left = 3
        Padding.Top = 12
        TabOrder = 0
        object gpPeriod: TGridPanel
          Left = 3
          Top = 12
          Width = 397
          Height = 33
          Align = alClient
          BevelEdges = []
          BevelOuter = bvNone
          ColumnCollection = <
            item
              SizeStyle = ssAbsolute
              Value = 30.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 30.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          ControlCollection = <
            item
              Column = -1
              Row = -1
            end
            item
              Column = -1
              Row = -1
            end
            item
              Column = 0
              Control = Panel15
              Row = 0
            end
            item
              Column = 1
              Control = Panel16
              Row = 0
            end
            item
              Column = 2
              Control = Panel17
              Row = 0
            end
            item
              Column = 3
              Control = Panel18
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 0
          object Panel15: TPanel
            Left = 0
            Top = 0
            Width = 30
            Height = 33
            Align = alClient
            BevelEdges = []
            BevelOuter = bvNone
            TabOrder = 0
            object Label9: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 0
              Width = 24
              Height = 30
              Margins.Top = 0
              Align = alClient
              Alignment = taCenter
              AutoSize = False
              Caption = 'De'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6110509
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
              ExplicitLeft = -35
              ExplicitWidth = 65
              ExplicitHeight = 42
            end
          end
          object Panel16: TPanel
            Left = 30
            Top = 0
            Width = 168
            Height = 33
            Align = alClient
            BevelEdges = []
            BevelOuter = bvNone
            Padding.Right = 4
            Padding.Bottom = 4
            TabOrder = 1
            object Shape2: TShape
              Left = 0
              Top = 0
              Width = 164
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
            object edtStartDate: TDateTimePicker
              Left = 0
              Top = 0
              Width = 164
              Height = 29
              Align = alClient
              BevelEdges = []
              BevelOuter = bvNone
              Date = 45180.000000000000000000
              Time = 0.564654780093405900
              Color = 16513014
              TabOrder = 0
              OnChange = edtEndDateChange
              OnExit = edtStartDateExit
            end
          end
          object Panel17: TPanel
            Left = 198
            Top = 0
            Width = 30
            Height = 33
            Align = alClient
            BevelEdges = []
            BevelOuter = bvNone
            TabOrder = 2
            object Label10: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 0
              Width = 24
              Height = 30
              Margins.Top = 0
              Align = alClient
              Alignment = taCenter
              AutoSize = False
              Caption = 'At'#233
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6110509
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
              ExplicitLeft = -35
              ExplicitWidth = 65
              ExplicitHeight = 42
            end
          end
          object Panel18: TPanel
            Left = 228
            Top = 0
            Width = 169
            Height = 33
            Align = alClient
            BevelEdges = []
            BevelOuter = bvNone
            Padding.Right = 4
            Padding.Bottom = 4
            TabOrder = 3
            object Shape6: TShape
              Left = 0
              Top = 0
              Width = 165
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
            object edtEndDate: TDateTimePicker
              Left = 0
              Top = 0
              Width = 165
              Height = 29
              Align = alClient
              BevelEdges = []
              BevelOuter = bvNone
              Date = 45180.000000000000000000
              Time = 0.564654780093405900
              Color = 16513014
              TabOrder = 0
              OnChange = edtEndDateChange
              OnExit = edtEndDateExit
            end
          end
        end
      end
      object Panel5: TPanel
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
          Caption = 'Per'#237'odo *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6110509
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbAlertPeriod: TLabel
          Left = 65
          Top = 0
          Width = 181
          Height = 13
          Align = alClient
          Caption = 'O '#237'nicio deve ser menor que o t'#233'rmino'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
      end
    end
    object Panel6: TPanel
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
      object Panel7: TPanel
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
        object edtTargetValue: TDBEdit
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
          DataField = 'vlralvo'
          DataSource = dtsMain
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9200741
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 10
        Width = 400
        Height = 15
        Align = alTop
        BevelEdges = []
        BevelOuter = bvNone
        TabOrder = 1
        object Label3: TLabel
          Left = 0
          Top = 0
          Width = 65
          Height = 15
          Align = alLeft
          AutoSize = False
          Caption = 'Valor alvo *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6110509
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbAlertTargetValue: TLabel
          Left = 65
          Top = 0
          Width = 154
          Height = 13
          Align = alClient
          Caption = 'O valor deve ser maior que zero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
      end
    end
    object Panel9: TPanel
      Left = 10
      Top = 281
      Width = 400
      Height = 150
      Align = alTop
      BevelEdges = []
      BevelOuter = bvNone
      Padding.Top = 10
      Padding.Bottom = 10
      ParentColor = True
      TabOrder = 3
      object Panel10: TPanel
        Left = 0
        Top = 25
        Width = 400
        Height = 115
        Align = alClient
        BevelEdges = []
        BevelOuter = bvNone
        Caption = 'Panel15'
        Padding.Left = 3
        Padding.Top = 12
        TabOrder = 0
        object Shape4: TShape
          Left = 3
          Top = 12
          Width = 397
          Height = 103
          Align = alClient
          Brush.Color = 16513014
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitLeft = 168
          ExplicitTop = 24
          ExplicitWidth = 65
          ExplicitHeight = 65
        end
        object dbComments: TDBMemo
          AlignWithMargins = True
          Left = 8
          Top = 20
          Width = 389
          Height = 92
          Margins.Left = 5
          Margins.Top = 8
          Align = alClient
          BevelEdges = []
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = 16513014
          DataField = 'observacao'
          DataSource = dtsMain
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9200741
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object Panel11: TPanel
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
          Width = 68
          Height = 15
          Align = alLeft
          AutoSize = False
          Caption = 'Observa'#231#245'es'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6110509
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object pnContainerStatus: TPanel
      Left = 10
      Top = 240
      Width = 400
      Height = 41
      Align = alTop
      BevelEdges = []
      BevelOuter = bvNone
      Padding.Top = 10
      Padding.Right = 25
      ParentColor = True
      TabOrder = 4
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
        object lbStatusMember: TLabel
          AlignWithMargins = True
          Left = 25
          Top = 2
          Width = 63
          Height = 17
          Cursor = crHandPoint
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Conclu'#237'da?'
          FocusControl = pnContainerStatus
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6110509
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnDoneClick
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
          OnClick = btnDoneClick
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
  end
end
