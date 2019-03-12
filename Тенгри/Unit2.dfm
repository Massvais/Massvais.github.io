object Form2: TForm2
  Left = 119
  Top = 66
  BorderStyle = bsSingle
  Caption = #1040#1057#1059'_'#1058#1077#1085#1075#1088#1080
  ClientHeight = 539
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 784
    Height = 193
    Align = alTop
    BorderStyle = bsNone
    DataSource = DM.DSZak
    ReadOnly = True
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
        FieldName = 'client'
        Title.Caption = #1047#1072#1082#1072#1079#1095#1080#1082
        Width = 235
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vid_rab'
        Title.Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099
        Width = 285
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kol-vo'
        Title.Caption = #1050#1086#1083'-'#1074#1086
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DataV'
        Title.Caption = #1044#1072#1090#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fakt_opl'
        Title.Caption = #1054#1087#1083#1072#1095#1077#1085#1086
        Visible = True
      end>
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 520
    Width = 784
    Height = 19
    Panels = <
      item
        Width = 554
      end
      item
        Width = 120
      end
      item
        Width = 110
      end>
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 193
    Width = 769
    Height = 240
    Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1079#1072#1082#1072#1079#1077':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 25
      Width = 66
      Height = 16
      Caption = #1047#1072#1082#1072#1079#1095#1080#1082':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 57
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
    object Label3: TLabel
      Left = 592
      Top = 20
      Width = 118
      Height = 16
      Caption = #1044#1072#1090#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 89
      Width = 81
      Height = 16
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 96
      Top = 52
      Width = 409
      Height = 24
      DataField = 'vid_rab'
      DataSource = DM.DSZak
      KeyField = 'Vid'
      ListField = 'Vid'
      ListSource = DM.DataSource2
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 96
      Top = 20
      Width = 409
      Height = 24
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 96
      Top = 84
      Width = 65
      Height = 24
      TabOrder = 2
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 120
      Width = 97
      Height = 17
      Alignment = taLeftJustify
      Caption = #1054#1087#1083#1072#1095#1077#1085#1086':'
      TabOrder = 3
    end
    object MonthCalendar1: TMonthCalendar
      Left = 560
      Top = 40
      Width = 176
      Height = 183
      Date = 43206.426511319440000000
      TabOrder = 4
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 440
    Width = 769
    Height = 73
    TabOrder = 3
    object DBNavigator1: TDBNavigator
      Left = 160
      Top = 16
      Width = 448
      Height = 18
      DataSource = DM.DSZak
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object Button1: TButton
      Left = 616
      Top = 40
      Width = 145
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 8
      Top = 40
      Width = 145
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 416
      Top = 40
      Width = 145
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 3
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 200
      Top = 40
      Width = 145
      Height = 25
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      TabOrder = 4
      OnClick = Button4Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 192
    Width = 769
    Height = 241
    Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1079#1072#1082#1072#1079#1077':'
    TabOrder = 4
    object Label5: TLabel
      Left = 8
      Top = 24
      Width = 51
      Height = 13
      Caption = #1047#1072#1082#1072#1079#1095#1080#1082':'
    end
    object Label6: TLabel
      Left = 16
      Top = 96
      Width = 54
      Height = 13
      Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090':'
    end
    object Label7: TLabel
      Left = 8
      Top = 160
      Width = 37
      Height = 13
      Caption = #1050#1086#1083'-'#1074#1086':'
    end
    object Label8: TLabel
      Left = 160
      Top = 160
      Width = 94
      Height = 13
      Caption = #1044#1072#1090#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103':'
    end
    object DBEdit1: TDBEdit
      Left = 88
      Top = 24
      Width = 657
      Height = 24
      DataField = 'client'
      DataSource = DM.DSZak
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 88
      Top = 152
      Width = 41
      Height = 24
      DataField = 'Kol-vo'
      DataSource = DM.DSZak
      TabOrder = 1
    end
    object DateTimePicker1: TDateTimePicker
      Left = 280
      Top = 152
      Width = 186
      Height = 24
      Date = 43212.446051250000000000
      Time = 43212.446051250000000000
      TabOrder = 2
    end
    object DBCheckBox1: TDBCheckBox
      Left = 488
      Top = 160
      Width = 121
      Height = 17
      Alignment = taLeftJustify
      Caption = #1054#1087#1083#1072#1095#1077#1085#1086':'
      DataField = 'Fakt_opl'
      DataSource = DM.DSZak
      TabOrder = 3
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 80
      Top = 88
      Width = 665
      Height = 21
      DataField = 'vid_rab'
      DataSource = DM.DSZak
      KeyField = 'Vid'
      ListField = 'Vid'
      ListSource = DM.DSQ
      TabOrder = 4
    end
  end
  object MainMenu1: TMainMenu
    Left = 120
    Top = 16
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N7: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N7Click
      end
    end
    object N2: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082
      object N4: TMenuItem
        Caption = #1042#1080#1076#1099' '#1088#1072#1073#1086#1090
        OnClick = N4Click
      end
    end
    object N3: TMenuItem
      Caption = #1054#1090#1095#1077#1090#1099
      OnClick = N3Click
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 120
    Top = 392
  end
end
