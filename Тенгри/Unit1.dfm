object Form1: TForm1
  Left = 198
  Top = 120
  Width = 696
  Height = 480
  Caption = #1042#1080#1076#1099' '#1088#1072#1073#1086#1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 673
    Height = 281
    DataSource = DM.DSQ
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Vid'
        Title.Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099
        Width = 574
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cost'
        Title.Caption = #1062#1077#1085#1072
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 296
    Width = 673
    Height = 137
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 79
      Height = 16
      Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 536
      Top = 24
      Width = 36
      Height = 16
      Caption = #1062#1077#1085#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 8
      Top = 96
      Width = 121
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 544
      Top = 96
      Width = 121
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 280
      Top = 96
      Width = 121
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 2
      OnClick = Button3Click
    end
    object DBEdit1: TDBEdit
      Left = 88
      Top = 16
      Width = 433
      Height = 21
      DataField = 'Vid'
      DataSource = DM.DSQ
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 576
      Top = 16
      Width = 65
      Height = 21
      DataField = 'Cost'
      DataSource = DM.DSQ
      TabOrder = 4
    end
    object DBNavigator1: TDBNavigator
      Left = 88
      Top = 56
      Width = 468
      Height = 25
      DataSource = DM.DSQ
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 5
    end
  end
end
