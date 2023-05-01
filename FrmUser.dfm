object UserFrm: TUserFrm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
  ClientHeight = 309
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = showFrm
  PixelsPerInch = 96
  TextHeight = 13
  object Пользователь: TLabel
    Left = 14
    Top = 16
    Width = 72
    Height = 13
    Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
  end
  object Label1: TLabel
    Left = 14
    Top = 57
    Width = 31
    Height = 13
    Caption = #1055#1086#1095#1090#1072
  end
  object GridUser: TDBGrid
    Left = 323
    Top = 8
    Width = 320
    Height = 299
    DataSource = ds
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = GridUserCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'author'
        Title.Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
        Width = 145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mail'
        Title.Caption = #1055#1086#1095#1090#1072
        Width = 157
        Visible = True
      end>
  end
  object EdUser: TEdit
    Left = 136
    Top = 8
    Width = 153
    Height = 21
    TabOrder = 1
  end
  object EdMail: TEdit
    Left = 136
    Top = 49
    Width = 153
    Height = 21
    TabOrder = 2
  end
  object AddBtn: TButton
    Left = 184
    Top = 235
    Width = 105
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 3
    OnClick = AddBtnClick
  end
  object EdBtn: TButton
    Left = 73
    Top = 266
    Width = 105
    Height = 25
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 4
    OnClick = EdBtnClick
  end
  object DelBtn: TButton
    Left = 184
    Top = 266
    Width = 105
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 5
    OnClick = DelBtnClick
  end
  object FDCon: TFDConnection
    Params.Strings = (
      'Database=E:\Source\NotePad\TaskTrack'
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 8
    Top = 240
  end
  object FDQ: TFDQuery
    Connection = FDCon
    SQL.Strings = (
      'select * from AuthorTable')
    Left = 8
    Top = 184
  end
  object ds: TDataSource
    DataSet = FDQ
    Left = 8
    Top = 136
  end
end
