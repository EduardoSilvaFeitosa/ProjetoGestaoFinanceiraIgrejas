inherited FrmStepDataTransaction: TFrmStepDataTransaction
  Caption = ''
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBackground: TPanel
    object cpBackground: TCardPanel
      Left = 10
      Top = 0
      Width = 400
      Height = 443
      Align = alClient
      ActiveCard = crdMainContent
      BevelEdges = []
      BevelOuter = bvNone
      Caption = 'cpBackground'
      ParentColor = True
      TabOrder = 0
      object crdMainContent: TCard
        Left = 0
        Top = 0
        Width = 400
        Height = 443
        BevelEdges = []
        Caption = 'crdMainContent'
        CardIndex = 0
        ParentColor = True
        TabOrder = 0
        object pnContainerComments: TPanel
          Left = 0
          Top = 314
          Width = 400
          Height = 125
          Align = alTop
          BevelEdges = []
          BevelOuter = bvNone
          Padding.Top = 10
          Padding.Bottom = 10
          ParentColor = True
          TabOrder = 4
          object Panel13: TPanel
            Left = 0
            Top = 25
            Width = 400
            Height = 90
            Align = alClient
            BevelEdges = []
            BevelOuter = bvNone
            Caption = 'Panel15'
            Padding.Left = 3
            Padding.Top = 12
            TabOrder = 0
            object Shape5: TShape
              Left = 3
              Top = 12
              Width = 397
              Height = 78
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
              Height = 67
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
          object Panel14: TPanel
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
        object pnContainerDateNature: TPanel
          Left = 0
          Top = 78
          Width = 400
          Height = 80
          Align = alTop
          BevelEdges = []
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
          object GridPanel1: TGridPanel
            Left = 0
            Top = 0
            Width = 400
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
                Control = Panel5
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
              Width = 200
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
                Width = 195
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
                  Caption = 'Data da movimenta'#231#227'o *'
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
                Width = 189
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
                  Width = 185
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
                object edtEntryDate: TDateTimePicker
                  Left = 0
                  Top = 0
                  Width = 185
                  Height = 29
                  Align = alClient
                  BevelEdges = []
                  BevelOuter = bvNone
                  Date = 45216.000000000000000000
                  Time = 0.564654780093405900
                  Color = 16513014
                  TabOrder = 0
                  OnExit = edtEntryDateExit
                end
              end
            end
            object Panel5: TPanel
              Left = 200
              Top = 0
              Width = 200
              Height = 78
              Align = alClient
              BevelEdges = []
              BevelOuter = bvNone
              Padding.Left = 5
              Padding.Top = 10
              Padding.Bottom = 10
              ParentColor = True
              TabOrder = 1
              object Panel7: TPanel
                Left = 5
                Top = 10
                Width = 195
                Height = 15
                Align = alTop
                BevelEdges = []
                BevelOuter = bvNone
                TabOrder = 0
                object Label2: TLabel
                  Left = 0
                  Top = 0
                  Width = 60
                  Height = 15
                  Align = alLeft
                  AutoSize = False
                  Caption = 'Natureza *'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 6110509
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object lbAlertNature: TLabel
                  Left = 60
                  Top = 0
                  Width = 135
                  Height = 15
                  Align = alClient
                  Caption = 'Obrigat'#243'rio'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Visible = False
                  ExplicitWidth = 54
                  ExplicitHeight = 13
                end
              end
              object Panel8: TPanel
                AlignWithMargins = True
                Left = 8
                Top = 35
                Width = 189
                Height = 33
                Margins.Top = 10
                Margins.Bottom = 0
                Align = alClient
                BevelEdges = []
                BevelOuter = bvNone
                Padding.Right = 4
                Padding.Bottom = 4
                TabOrder = 1
                object Shape3: TShape
                  Left = 0
                  Top = 0
                  Width = 185
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
                object cbNature: TDBLookupComboBox
                  Left = 0
                  Top = 0
                  Width = 185
                  Height = 27
                  Align = alClient
                  BevelEdges = []
                  BevelInner = bvNone
                  BevelOuter = bvNone
                  Color = clWhite
                  DataField = 'natureza'
                  DataSource = dtsMain
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9200741
                  Font.Height = -16
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  KeyField = 'id'
                  ListField = 'description'
                  ListSource = dtsNature
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
          end
        end
        object pnContainerDescription: TPanel
          Left = 0
          Top = 0
          Width = 400
          Height = 78
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
            Height = 43
            Align = alClient
            BevelEdges = []
            BevelOuter = bvNone
            Caption = 'Panel15'
            Padding.Left = 3
            Padding.Top = 10
            TabOrder = 0
            object Shape1: TShape
              Left = 3
              Top = 10
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
              Top = 18
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
              Width = 335
              Height = 15
              Align = alClient
              Caption = 'A descri'#231#227'o deve ter no m'#237'nimo 3 d'#237'gitos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Visible = False
              ExplicitWidth = 192
              ExplicitHeight = 13
            end
          end
        end
        object pnContainerKind: TPanel
          Left = 0
          Top = 158
          Width = 400
          Height = 78
          Align = alTop
          BevelEdges = []
          BevelOuter = bvNone
          Padding.Top = 10
          Padding.Bottom = 10
          ParentColor = True
          TabOrder = 2
          object Panel10: TPanel
            Left = 0
            Top = 25
            Width = 360
            Height = 43
            Align = alClient
            BevelEdges = []
            BevelOuter = bvNone
            Caption = 'Panel15'
            Padding.Left = 3
            Padding.Top = 10
            Padding.Right = 5
            TabOrder = 0
            object Shape4: TShape
              Left = 3
              Top = 10
              Width = 352
              Height = 33
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
            object cbKind: TDBLookupComboBox
              Left = 3
              Top = 10
              Width = 352
              Height = 29
              Align = alClient
              BevelEdges = []
              BevelInner = bvNone
              BevelOuter = bvNone
              Color = clWhite
              Ctl3D = True
              DataField = 'tipo'
              DataSource = dtsMain
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 9200741
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              KeyField = 'id'
              ListField = 'description'
              ListSource = dtsKind
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              StyleElements = [seFont, seClient]
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
            object lbKind: TLabel
              Left = 0
              Top = 0
              Width = 65
              Height = 15
              Align = alLeft
              AutoSize = False
              Caption = 'Tipo *'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6110509
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lbAlertKind: TLabel
              Left = 65
              Top = 0
              Width = 335
              Height = 15
              Align = alClient
              Caption = 'Obrigat'#243'rio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Visible = False
              ExplicitWidth = 54
              ExplicitHeight = 13
            end
          end
          object pnContainerBtnLink: TPanel
            Left = 360
            Top = 25
            Width = 40
            Height = 43
            Align = alRight
            BevelEdges = []
            BevelOuter = bvNone
            Padding.Left = 3
            Padding.Top = 10
            ParentColor = True
            TabOrder = 2
            object Panel12: TPanel
              Left = 3
              Top = 10
              Width = 37
              Height = 33
              Align = alClient
              BevelEdges = []
              BevelOuter = bvNone
              TabOrder = 0
              object Shape7: TShape
                Left = 0
                Top = 0
                Width = 37
                Height = 33
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
              object Image1: TImage
                Left = 0
                Top = 0
                Width = 37
                Height = 33
                Cursor = crHandPoint
                Align = alClient
                Center = True
                Picture.Data = {
                  0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
                  0014080600000097B5FD83000000097048597300000B1300000B1301009A9C18
                  000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000002
                  324944415478DAAD544D6EDA4018F5E721521565E1DCC0DD556D53996D934AE6
                  0425BBAA0D2A3941E104494E5038412C11A1EE4C4E101A2A94A5D54469774C4E
                  50D44A51443C4CDF9831A2834D50E84888F1CC7CEFBDEF97AC1597EB979DF5D1
                  BAABF6D7FD7664DED363819FF9EFDC35B176806D75E67808C480D9EC28EA06C3
                  9508B6DE54CEF0E767DD115164DB7649913C48F07267CF87C15B6C1D29E54D1C
                  C7C1CF8B2FFCD576A5266DEB0067CDF178DC01A043A4BCA18F3A368DCBF3563D
                  97408740A974E7254E8C73043520E893DA33C6366949700EA51C869EF2641189
                  E7575D21C460F22577E921706189FD5B76DBD98837BC42A1C061FC19C7E5C45C
                  CAD2D5B793EED20459E0D7BD7680840EF4D93EDCEE6800959326086A46F29107
                  EB38B117A2484B804F0D14C165AF156CED5442844879718AEF720E06C7DD535A
                  049E28D260926474757E52D42AD3129D1298184CB062D40F22D206611AD759F0
                  2C300D3498F56891409A35404C8F10D3C37F63BA17E8DA1E026CF3C5F6871A6A
                  5E259AB37B56BA7B7267E58127040080720AD3A498F34437DA59F298E810E0CD
                  F1BDA8DA927547D648D57A98073E47100BE1FEE8B76FCCD235C602C7AFA341A7
                  09CE024F0850B70E94FFCA0B515ADB180721EE3D6B7E0D015ECF024F084C8538
                  A8FF667F92C7AAB954DBE3ECEBF75EABA14A16242A1F8EB63F45F335D2C9994B
                  A0BB2F7BEE4C3CEBC2B392F588356D34458249790CC5BEF186A3A677554DAF44
                  90AEE7AFDF7BA80C4F2BE7E6AC5999E07FAFBF014E541EE67C54960000000049
                  454E44AE426082}
                OnClick = OnLinkDetailsClick
                OnMouseEnter = OnIconEnter
                OnMouseLeave = IconLeaveExecute
                ExplicitLeft = 16
                ExplicitTop = 32
                ExplicitWidth = 105
                ExplicitHeight = 105
              end
            end
          end
        end
        object pnContainerValue: TPanel
          Left = 0
          Top = 236
          Width = 400
          Height = 78
          Align = alTop
          BevelEdges = []
          BevelOuter = bvNone
          Padding.Top = 10
          Padding.Bottom = 10
          ParentColor = True
          TabOrder = 3
          object Panel18: TPanel
            Left = 0
            Top = 10
            Width = 400
            Height = 15
            Align = alTop
            BevelEdges = []
            BevelOuter = bvNone
            TabOrder = 0
            object Label6: TLabel
              Left = 0
              Top = 0
              Width = 65
              Height = 15
              Align = alLeft
              AutoSize = False
              Caption = 'Valor *'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6110509
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lbAlertValue: TLabel
              Left = 65
              Top = 0
              Width = 335
              Height = 15
              Align = alClient
              Caption = 'O valor deve ser maior que zero'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Visible = False
              ExplicitWidth = 154
              ExplicitHeight = 13
            end
          end
          object Panel1: TPanel
            Left = 0
            Top = 25
            Width = 400
            Height = 43
            Align = alClient
            BevelEdges = []
            BevelOuter = bvNone
            Caption = 'Panel15'
            Padding.Left = 3
            Padding.Top = 10
            TabOrder = 1
            object Shape6: TShape
              Left = 3
              Top = 10
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
            object edtValue: TDBEdit
              AlignWithMargins = True
              Left = 8
              Top = 18
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
              DataField = 'valor'
              DataSource = dtsMain
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 9200741
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnChange = edtValueChange
            end
          end
        end
      end
      object crdDetails: TCard
        Left = 0
        Top = 0
        Width = 400
        Height = 443
        Caption = 'crdDetails'
        CardIndex = 1
        TabOrder = 1
        object pnEmbedContent: TPanel
          Left = 0
          Top = 0
          Width = 400
          Height = 443
          Align = alClient
          BevelEdges = []
          BevelOuter = bvNone
          TabOrder = 0
        end
      end
    end
  end
  object mtNature: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 379
    Top = 64
    object mtNatureid: TStringField
      FieldName = 'id'
      Size = 1
    end
    object mtNaturedescription: TStringField
      FieldName = 'description'
    end
  end
  object dtsNature: TDataSource
    DataSet = mtNature
    Left = 328
    Top = 64
  end
  object mtKind: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 371
    Top = 168
    object mtKindid: TIntegerField
      FieldName = 'id'
    end
    object mtKinddescription: TStringField
      FieldName = 'description'
    end
  end
  object dtsKind: TDataSource
    DataSet = mtKind
    Left = 320
    Top = 168
  end
end
