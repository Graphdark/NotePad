object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 57
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 635
    Height = 242
    Align = alClient
    TabOrder = 1
    ExplicitTop = 8
    ExplicitHeight = 57
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 633
      Height = 240
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 176
      ExplicitTop = 24
      ExplicitWidth = 289
      ExplicitHeight = 193
    end
    object DBRichEdit1: TDBRichEdit
      Left = 1
      Top = 1
      Width = 633
      Height = 240
      Align = alClient
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TabOrder = 1
      Zoom = 100
      ExplicitLeft = 432
      ExplicitTop = 56
      ExplicitWidth = 185
      ExplicitHeight = 89
    end
  end
  object MainMenu1: TMainMenu
    Left = 240
    Top = 168
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
      end
      object N3: TMenuItem
        Caption = #1047#1072#1082#1088#1099#1090#1100
      end
      object N4: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      end
    end
  end
end
