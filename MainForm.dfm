object NotePadFRM: TNotePadFRM
  Left = 0
  Top = 0
  Caption = 'NotePad'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Constraints.MinHeight = 358
  Constraints.MinWidth = 650
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnResize = FrmRes
  OnShow = ShowFrm
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 57
    Align = alTop
    TabOrder = 0
    object UserBtn: TSpeedButton
      Left = 0
      Top = 0
      Width = 23
      Height = 22
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000100000004000000070000000A0000000B0000000D0000000D0000
        000D0000000C0000000A00000007000000020000000000000000000000000000
        0000000000040E38297E134F37B414593DD212583BDB126441FF105D3DFF0D49
        2FDC0A432AD4063521B804251689000000080000000000000000000000000000
        000000000006278A63FF4EBB98FF3CBB90FF2FB586FF2FBF8DFF2DBD8BFF27AE
        7DFF24A878FF209A6CFF0D5535FF0000000C0000000000000000000000000000
        000000000004267B5BD557C09FFF6CDBBCFF65DAB7FF45CBA0FF39C697FF37C4
        95FF3AC396FF36A47EFF0F5136DA000000090000000000000000010101090101
        010E0101011106120E301D5E45A7349875F868CEB1FF6AD1B4FF4BC59EFF42BD
        95FF237F5EFA114732AA040E0A3801010115010101100101010A194737942266
        4ED1286A54D9548F7AF471A392FF679988F93A8870FC40768EFF386E87FF327B
        63FB679988F770A391FF4D8A74F7205E47DB14523BD30D3627983A9275FD6EC6
        ABFF52B795FF46B08DFF47AF8CFF79B5A1FF487591FF7DA4CDFF588BC1FF315F
        81FF7EBAA6FF47AF8CFF3AA17EFF359875FF379878FF1A6B4EFD2F725CBE5EB5
        9AFF84D4BDFF65CBABFF80CFB5FF86BFADFF567EB0FFBDE0F5FF8BC2EBFF345E
        97FF84BAADFF79CBB1FF55BC9BFF5DB89CFF399173FF195540C1010101091838
        2D6339836BD687D0BBFFAEDDD0FF416992FF5C80B0FFCAE8F6FF94C6E9FF375D
        95FF4A6C8BFFACDACDFF78C7AFFF2D745ED7112E25670101010D000000010101
        01060A0C0C2B44708BF67D96B8FF255696FF4F7CB1FF517CAFFF2C5088FF325D
        98FF1E3F79FF7C95B5FF33617CF60A0B0B2E0101010700000001000000000303
        0308273242707097C3FFA7D2F4FF326BAEFF6C9ED1FF5C8CC1FF76A5D3FF5385
        BEFF214784FFA5CEF0FF4676B0FF1822336E0303030A00000000000000000404
        040C354F75C994B8D8FFB4DAF7FF79A2CEFF427BB8F63878BAF13174BBFC3C6D
        A6F885A2C3FFB6DAF6FF5C8FC5FF223A60C20505051100000000000000000404
        040D28528BFA85A7CAFF5D88B5FF7291B8FF6A83A8FC6262636F606060697890
        B5FCA7BFD7FF618BB7FF3A679EFF1F467CFB0606071600000000000000000202
        02072B5996F54778B2FE6197D0FF4E87C6FF275490FF06080B1A020202072B59
        96F54778B2FE6197D0FF4E87C6FF275490FF06080B1A00000000000000000101
        010213263E612C5A93D6326AABF729578DD81529447301010103010101021326
        3E612C5A93D6326AABF729578DD8152944730101010300000000000000000000
        0000000000000000000100000001000000010000000100000000000000000000
        0000000000010000000100000001000000010000000000000000}
      OnClick = UserBtnClick
    end
    object Task: TSpeedButton
      Left = 24
      Top = 0
      Width = 23
      Height = 22
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000714F3AB79B6A4DFF99684BFF976549FF956346FF946044FF925D42FF915B
        3FFF8F5A3DFF8D583CFF8C563AFF643C28B70000000000000000000000000000
        00009F7153FFC19B71FFCCA777FFC9A270FFC69C69FFC39763FFC0945DFFBE8F
        57FFBB8C52FFBA894EFFAC7946FF8D563AFF0000000000000000000000000000
        0000A17356FFD2B285FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFB9884EFF8D573CFF0000000000000000000000000000
        0000A37658FFD6B88CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFBB8C53FF8F5A3DFF0000000000000000000000000000
        0000A6795CFFDABD94FFFFFFFFFFFFFFFFFFFFFFFFFF8B8BD3FFB6B6E4FFFFFF
        FFFFFFFFFFFFFFFFFFFFBE8F57FF915B3FFF0000000000000000000000000000
        0000A97C5EFFDDC29BFFFFFFFFFFFFFFFFFF8B8BD3FF1A1AA9FF3232B2FFF4F4
        FBFFFFFFFFFFFFFFFFFFC1935DFF925E41FF0000000000000000000000000000
        0000AB7F61FFDFC7A2FFFFFFFFFF8B8BD3FF1A1AA9FF1A1AA9FF1A1AA9FF7878
        CAFFF7F7F7FFFFFFFFFFC39863FF936044FF0000000000000000000000000000
        0000AC8263FFE3CCA8FFFFFFFFFF8E8ED5FF5353BEFFC9C9EBFF8585CCFF1C1C
        AAFFC2C2DFFFFFFFFFFFC69D69FF956345FF0000000000000000000000000000
        0000AF8567FFE5D1AEFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4FFD0D0D0FF7A7A
        C0FF3F3FB3FFFCFCFEFFC9A270FF976549FF0000000000000000000000000000
        0000B08869FFE7D5B3FFFFFFFFFFFFFFFFFFDADADAFFBBBBBBFFC2C2C2FFC8C8
        C8FF7676BDFF9999D9FFCCA777FF99684BFF0000000000000000000000000000
        0000B38A6CFFEAD9B8FFFFFFFFFFD3D3D3FFABABABFFB0B0B0FFB5B5B5FFBBBB
        BBFFC2C2C2FF9999D9FFBC9D83FF9C6A4EFF0000000000000000000000000000
        0000B48D6FFFEBDBBDFFBDBDBDFF767474FF6E6D6DFF646764FF5F5E5EFF5858
        58FF535353FFA6A6A6FFAD948CFF9D6E50FF0000000000000000000000000000
        0000B79071FFDFC9ABFF868686FF7D7D7DFFB4B5B4FFAAABAAFFA0A0A0FF9595
        95FF585858FF545353FFC8A57FFFA07053FF0000000000000000000000000000
        0000896C56BDB79071FFB58D6EFFB38B6CFF7D7D7CFFB4B5B4FFAAABAAFF6464
        64FFA87C5EFFA6795BFFA47659FF785540BD0000000000000000000000000000
        0000000000000000000000000000000000005E5B5EB27D7C7DFF747674FF4D4C
        4CB2000000000000000000000000000000000000000000000000}
      OnClick = TaskClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 635
    Height = 242
    Align = alClient
    TabOrder = 1
    DesignSize = (
      635
      242)
    object btnAddDoc: TSpeedButton
      Left = 610
      Top = 0
      Width = 23
      Height = 22
      Anchors = [akLeft, akTop, akRight]
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000100000003000000080000000C0000
        000E0000000D0000000800000003000000010000000000000000000000020000
        000A00000010000000110000001300000018050E0A3F16412DAC216043EC256A
        48FF216141ED163F2BAC050E09390000000900000001000000000000000A7B50
        43C2AB705CFFAB6F5AFFC29A8CFFA2A191FF307554FF2D9D71FF24BA82FF23CB
        8EFF23BA82FF25986BFF2C7050FD0A1E145C00000006000000000000000EAD73
        5FFFFDFBF9FFFAF4F2FFDCE4DEFF388260FF40C397FF28CD92FF40956DFF487E
        5DFF3F946CFF26CD91FF27BA84FF297150F5050F0A2F000000030000000EB077
        62FFFDFBFAFFF6EFEBFF80AD96FF54B593FF36D29CFF2ECE95FF4A8362FFFFFF
        FFFF4A8161FF2CD096FF2CCF95FF31A87AFF1B4833A1000000060000000CB079
        66FFFDFBFBFFF7F2EFFF499371FF6CDBBBFF469D76FF4D8865FF4D8765FFF6F1
        EBFF4D8665FF4D8664FF459B73FF33C892FF2B7453E7000000080000000BB37C
        69FFFEFCFBFFF8F4F1FF3C926DFF81E9CCFF508C6AFFEADBD3FFF8F3EFFFF9F3
        EFFFF8F3EFFFFFFFFFFF4E8968FF3FD5A3FF348662FA000000080000000AB67F
        6CFFFEFDFCFFF8F3F1FF4FA07DFFB1E9D8FF6CA98CFF528F6EFF528F6DFFFAF5
        F3FF528F6CFF518E6BFF5EA583FF76DCBBFF338260E70000000700000009B983
        71FFFEFDFCFFFAF5F2FF8CC2AAFF94CBB5FFE2FAF5FFC5F5E9FF539371FFECDE
        D8FF539270FFABF0DDFFB0F1DEFF84C6ADFF2358419A0000000400000007BC88
        77FFFEFEFDFFFBF4F0FFE4ECE6FF4EAA84FFC8E7DBFFEEFDFAFF7AB095FF5696
        74FF74AF94FFD9F9F2FFBEE5D8FF3E9873F208130E250000000100000006BF8C
        7AFFFEFEFDFFFBF6F1FFFBF6F4FFC9E2D5FF4FAD85FF93CEB7FFD2ECE3FFF3FC
        FBFFD2ECE3FF92CDB6FF4DA881FF122D2251000000020000000000000005C18F
        7FFFFEFEFEFFFAF6F3FFFAF5F3FFFAF7F4FFE5EEE7FF90CAB1FF5BB48FFF46AB
        82FF5BB48EFF8EC9B1FFC9BDB1FF00000008000000000000000000000004C493
        82FFFFFEFEFFFBF7F4FFFBF6F4FFFBF6F4FFFBF6F3FFFCF8F6FFFCF7F6FFFCF9
        F7FFFBF8F5FFFCFBFAFFC49587FF00000005000000000000000000000003C799
        85FFFFFEFEFFFCF8F7FFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6
        F3FFFCF6F2FFFDFCFAFFC28F7FFF00000004000000000000000000000002C99A
        89FFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFEFFFEFEFDFFFEFE
        FDFFFEFDFDFFFEFDFDFFC49382FF000000030000000000000000000000019774
        67BECA9C8BFFCA9C8BFFC99C8AFFC99B89FFC99B8AFFCA9A88FFC89A88FFC999
        87FFC79887FFC89886FF927063BF000000020000000000000000}
      OnClick = btnAddDocClick
    end
    object PageControl: TPageControl
      Left = 1
      Top = 1
      Width = 633
      Height = 240
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Doc 1'
        object _TabSheet1: TRichViewEdit
          Left = 0
          Top = 0
          Width = 625
          Height = 212
          ReadOnly = False
          Align = alClient
          TabOrder = 0
          DoInPaletteMode = rvpaCreateCopies
          RTFReadProperties.TextStyleMode = rvrsAddIfNeeded
          RTFReadProperties.ParaStyleMode = rvrsAddIfNeeded
          RVFOptions = [rvfoSavePicturesBody, rvfoSaveControlsBody, rvfoSaveBinary, rvfoSaveTextStyles, rvfoSaveParaStyles, rvfoSaveDocProperties, rvfoLoadDocProperties, rvfoSaveDocObjects, rvfoLoadDocObjects]
          Style = RVStyle1
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Doc 2'
        ImageIndex = 1
        object _TabSheet2: TRichViewEdit
          Left = 0
          Top = 0
          Width = 625
          Height = 212
          ReadOnly = False
          Align = alClient
          TabOrder = 0
          DoInPaletteMode = rvpaCreateCopies
          RTFReadProperties.TextStyleMode = rvrsAddIfNeeded
          RTFReadProperties.ParaStyleMode = rvrsAddIfNeeded
          RVFOptions = [rvfoSavePicturesBody, rvfoSaveControlsBody, rvfoSaveBinary, rvfoSaveTextStyles, rvfoSaveParaStyles, rvfoSaveDocProperties, rvfoLoadDocProperties, rvfoSaveDocObjects, rvfoLoadDocObjects]
          Style = RVStyle1
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 56
    Top = 248
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1047#1072#1082#1088#1099#1090#1100
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        OnClick = N4Click
      end
    end
    object N5: TMenuItem
      Caption = #1050#1086#1084#1072#1085#1076#1099
      object N6: TMenuItem
        Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
        OnClick = N6Click
      end
    end
  end
  object od: TOpenDialog
    Left = 160
    Top = 248
  end
  object sd: TSaveDialog
    Left = 16
    Top = 248
  end
  object RVStyle1: TRVStyle
    FieldHighlightType = rvfhCurrent
    InvalidPicture.Data = {
      07544269746D617036100000424D361000000000000036000000280000002000
      0000200000000100200000000000001000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFF
      FF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFF
      FF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080008080800080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000}
    StyleTemplates = <>
    TextStyles = <
      item
        StyleName = 'Normal text'
        FontName = 'Arial'
        Unicode = True
        Size = 10
      end
      item
        StyleName = 'Heading'
        Color = clBlue
        FontName = 'Arial'
        Style = [fsBold]
        Unicode = True
        Size = 10
      end
      item
        StyleName = 'Subheading'
        Color = clNavy
        FontName = 'Arial'
        Style = [fsBold]
        Unicode = True
        Size = 10
      end
      item
        StyleName = 'Keywords'
        Color = clMaroon
        FontName = 'Arial'
        Style = [fsItalic]
        Unicode = True
        Size = 10
      end
      item
        StyleName = 'Jump 1'
        Color = clGreen
        FontName = 'Arial'
        Style = [fsUnderline]
        Unicode = True
        Jump = True
        Size = 10
      end
      item
        StyleName = 'Jump 2'
        Color = clGreen
        FontName = 'Arial'
        Style = [fsUnderline]
        Unicode = True
        Jump = True
        Size = 10
      end>
    ParaStyles = <
      item
        Tabs = <>
      end
      item
        StyleName = 'Centered'
        Alignment = rvaCenter
        Tabs = <>
      end>
    ListStyles = <>
    Left = 112
    Top = 248
  end
  object FDCon: TFDConnection
    Params.Strings = (
      'Database=E:\Source\NotePad\Win32\Debug\TaskTrack'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 584
    Top = 248
  end
end
