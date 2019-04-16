object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 165
  Top = 133
  Height = 273
  Width = 279
  object con1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Persons.mdb;Persist' +
      ' Security Info=False'
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 16
  end
  object qry1: TADOQuery
    Parameters = <>
    Left = 96
    Top = 16
  end
  object ds1: TDataSource
    Left = 40
    Top = 72
  end
end
