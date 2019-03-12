object DM: TDM
  OldCreateOrder = False
  Left = 178
  Top = 117
  Height = 363
  Width = 447
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=base.mdb;Persist Se' +
      'curity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 24
  end
  object ADOZakaz: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Zakaz'
    Left = 24
    Top = 80
  end
  object ADOVid: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'vid_rab'
    Left = 80
    Top = 80
  end
  object DSZak: TDataSource
    DataSet = ADOZakaz
    Left = 24
    Top = 128
  end
  object DSVid: TDataSource
    DataSet = ADOVid
    Left = 80
    Top = 128
  end
  object QZakaz: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Zakaz')
    Left = 24
    Top = 176
  end
  object DSQ: TDataSource
    DataSet = ADOVid1
    Left = 72
    Top = 176
  end
  object QVid: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DSVid
    Parameters = <>
    SQL.Strings = (
      'select * from vid_rab')
    Left = 112
    Top = 192
  end
  object RvDataSetConnection1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = QZakaz
    Left = 128
    Top = 32
  end
  object RvProject1: TRvProject
    Engine = RvSystem1
    ProjectFile = 'Project1.rav'
    Left = 152
    Top = 112
  end
  object ADOVid1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'vid_rab'
    Left = 120
    Top = 80
  end
  object DS1: TDataSource
    DataSet = QZakaz
    Left = 24
    Top = 256
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'temp'
    Left = 216
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 264
    Top = 208
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 208
    Top = 192
  end
  object DataSource2: TDataSource
    DataSet = ADOVid
    Left = 88
    Top = 264
  end
end
