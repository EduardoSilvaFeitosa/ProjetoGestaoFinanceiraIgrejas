inherited FrmBasePopup: TFrmBasePopup
  Caption = ''
  ClientHeight = 320
  ClientWidth = 295
  Color = clWhite
  ExplicitWidth = 295
  ExplicitHeight = 320
  PixelsPerInch = 96
  TextHeight = 13
  object pnBackGround: TPanel
    Left = 0
    Top = 0
    Width = 295
    Height = 320
    Align = alClient
    BevelEdges = []
    BevelOuter = bvNone
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    TabOrder = 0
    object pnHeaderClose: TPanel
      Left = 10
      Top = 10
      Width = 275
      Height = 24
      Align = alTop
      BevelEdges = []
      BevelOuter = bvNone
      TabOrder = 0
      object IconClose: TImage
        Left = 251
        Top = 0
        Width = 24
        Height = 24
        Cursor = crHandPoint
        Align = alRight
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
          00180806000000E0773DF8000000097048597300000B1300000B1301009A9C18
          000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000000
          D14944415478DA6364A031601CB560705AA0E110A1C0FA9775FEEFDFBF136F9C
          58F1009F0184D462B540D736763F907200E207408D8EB82C811A0E52AB00C407
          2E1F5EEC489405060E090A7FFFFE8569C46A099AE10F987F333B5E38B180381F
          10B28458C3F15A80CB12060E0606620D276801364BA0C244194E9405582C6120
          D670A22D400B73060602A98B240BD02314398888B1849114C341C1028A644249
          98280BF0254562F2095E0B8849E7C45A42B0A8C0975AD02C21ADA8F8F3E7CF7C
          963F2C8984922221B5C3B43E18B5001900008E97DC1950FE03A9000000004945
          4E44AE426082}
        Proportional = True
        OnClick = btnCloseClick
        ExplicitLeft = 172
      end
    end
    object pnContent: TPanel
      Left = 10
      Top = 34
      Width = 275
      Height = 276
      Align = alClient
      BevelEdges = []
      BevelOuter = bvNone
      TabOrder = 1
    end
  end
end
