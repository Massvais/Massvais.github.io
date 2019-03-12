object Form3: TForm3
  Left = 153
  Top = 137
  Width = 692
  Height = 299
  Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1077#1083#1100' '#1086#1090#1095#1077#1090#1086#1074
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnCreate = FormCreate
  OnHide = FormHide
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 665
    Height = 57
    Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1076#1072#1090#1077' '#1079#1072#1082#1072#1079#1072
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 7
      Height = 13
      Caption = #1057
    end
    object Label2: TLabel
      Left = 232
      Top = 24
      Width = 12
      Height = 13
      Caption = #1087#1086
    end
    object Button1: TButton
      Left = 472
      Top = 24
      Width = 161
      Height = 17
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 24
      Top = 24
      Width = 201
      Height = 17
      Date = 43207.061169884260000000
      Time = 43207.061169884260000000
      TabOrder = 1
    end
    object DTP2: TDateTimePicker
      Left = 248
      Top = 24
      Width = 185
      Height = 17
      Date = 43207.061949861110000000
      Time = 43207.061949861110000000
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 72
    Width = 665
    Height = 57
    Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1076#1072#1090#1077' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
    TabOrder = 1
    object Label3: TLabel
      Left = 8
      Top = 24
      Width = 7
      Height = 13
      Caption = #1057
    end
    object Label4: TLabel
      Left = 232
      Top = 24
      Width = 12
      Height = 13
      Caption = #1087#1086
    end
    object DTP3: TDateTimePicker
      Left = 24
      Top = 24
      Width = 201
      Height = 17
      Date = 43207.635708541670000000
      Time = 43207.635708541670000000
      TabOrder = 0
    end
    object DTP4: TDateTimePicker
      Left = 248
      Top = 24
      Width = 186
      Height = 17
      Date = 43207.636101157400000000
      Time = 43207.636101157400000000
      TabOrder = 1
    end
    object Button2: TButton
      Left = 472
      Top = 24
      Width = 161
      Height = 17
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 200
    Width = 281
    Height = 57
    Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1086#1087#1083#1072#1095#1077#1085#1085#1099#1084'/'#1085#1077#1086#1087#1083#1072#1095#1077#1085#1085#1099#1084' '#1079#1072#1082#1072#1079#1072#1084
    TabOrder = 2
    object Button3: TButton
      Left = 136
      Top = 24
      Width = 129
      Height = 17
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 0
      OnClick = Button3Click
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 24
      Width = 121
      Height = 17
      Caption = #1086#1087#1083#1072#1095#1077#1085#1085#1099#1077
      TabOrder = 1
    end
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 136
    Width = 665
    Height = 57
    Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1074#1080#1076#1091' '#1088#1072#1073#1086#1090
    TabOrder = 3
    object Button4: TButton
      Left = 480
      Top = 24
      Width = 153
      Height = 17
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 0
      OnClick = Button4Click
    end
    object DBLCB1: TDBLookupComboBox
      Left = 8
      Top = 24
      Width = 433
      Height = 21
      DataField = 'Vid'
      DataSource = DM.DataSource1
      KeyField = 'Vid'
      ListField = 'Vid'
      ListSource = DM.DSQ
      TabOrder = 1
    end
  end
  object GroupBox5: TGroupBox
    Left = 296
    Top = 200
    Width = 209
    Height = 57
    Caption = #1057#1073#1088#1086#1089' '#1092#1080#1083#1100#1090#1088#1086#1074
    TabOrder = 4
    object Button5: TButton
      Left = 24
      Top = 24
      Width = 161
      Height = 17
      Caption = #1057#1073#1088#1086#1089#1080#1090#1100
      TabOrder = 0
      OnClick = Button5Click
    end
  end
  object GroupBox6: TGroupBox
    Left = 512
    Top = 200
    Width = 161
    Height = 57
    Caption = #1042#1089#1077' '#1079#1072#1087#1080#1089#1080
    TabOrder = 5
    object Button6: TButton
      Left = 24
      Top = 24
      Width = 121
      Height = 17
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 0
      OnClick = Button6Click
    end
  end
end
