object DM: TDM
  OldCreateOrder = False
  Height = 150
  Width = 215
  object FDCon: TFDConnection
    Left = 96
    Top = 88
  end
  object FDQ: TFDQuery
    Connection = FDCon
    Left = 48
    Top = 80
  end
  object OD: TOpenDialog
    Left = 144
    Top = 64
  end
end
