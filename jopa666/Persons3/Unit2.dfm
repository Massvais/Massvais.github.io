object DM: TDM
  OldCreateOrder = False
  Left = 276
  Top = 147
  Height = 484
  Width = 530
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Base.mdb;Persist Se' +
      'curity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 53
    Top = 31
  end
  object tblPersons: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = 'Persons'
    Left = 53
    Top = 104
  end
  object qryZapros1: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 167
    Top = 46
  end
  object dsPersons: TDataSource
    DataSet = tblPersons
    Left = 240
    Top = 47
  end
  object dsZapros1: TDataSource
    DataSet = qryZapros1
    Left = 221
    Top = 120
  end
end
