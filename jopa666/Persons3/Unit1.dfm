object FrmMain: TFrmMain
  Left = 234
  Top = 192
  Width = 1220
  Height = 563
  Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1041#1072#1079#1072#1084#1080' '#1076#1072#1085#1085#1099#1093
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrd1: TDBGrid
    Left = 36
    Top = 26
    Width = 613
    Height = 282
    DataSource = DM.dsPersons
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbnvgr1: TDBNavigator
    Left = 37
    Top = 323
    Width = 610
    Height = 25
    DataSource = DM.dsPersons
    TabOrder = 1
  end
  object btn1: TBitBtn
    Left = 684
    Top = 43
    Width = 75
    Height = 25
    Caption = #1053#1072#1081#1090#1080
    TabOrder = 2
    OnClick = btn1Click
  end
  object dbgrd2: TDBGrid
    Left = 802
    Top = 37
    Width = 377
    Height = 269
    DataSource = DM.dsZapros1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbnvgr2: TDBNavigator
    Left = 801
    Top = 323
    Width = 370
    Height = 25
    DataSource = DM.dsZapros1
    TabOrder = 4
  end
  object btn2: TButton
    Left = 688
    Top = 120
    Width = 75
    Height = 25
    Caption = #1053#1040#1049#1058#1048
    TabOrder = 5
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 688
    Top = 80
    Width = 75
    Height = 25
    Caption = #1085#1040#1049#1058#1048
    TabOrder = 6
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 688
    Top = 168
    Width = 75
    Height = 25
    Caption = #1053#1040#1049'-'#1058#1048
    TabOrder = 7
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 696
    Top = 208
    Width = 75
    Height = 25
    Caption = 'btn5'
    TabOrder = 8
    OnClick = btn5Click
  end
end
