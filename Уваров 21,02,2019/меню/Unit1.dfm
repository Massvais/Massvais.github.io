object Form1: TForm1
  Left = 532
  Top = 255
  Width = 1305
  Height = 675
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 248
    Top = 240
    Width = 121
    Height = 25
    Caption = 'Label1'
  end
  object Image1: TImage
    Left = 120
    Top = 208
    Width = 105
    Height = 105
  end
  object Bevel1: TBevel
    Left = 232
    Top = 232
    Width = 153
    Height = 81
  end
  object Edit1: TEdit
    Left = 248
    Top = 280
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
    object N1: TMenuItem
      Caption = #1055#1088#1080#1074#1077#1090'!'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1040#1088#1075#1091#1084#1077#1085#1090
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1060#1091#1085#1082#1094#1080#1103' '
      object Cosx1: TMenuItem
        Caption = 'Cos(x)'
        OnClick = Cosx1Click
      end
      object Sinx1: TMenuItem
        Caption = 'Sin(x)'
      end
      object tgx1: TMenuItem
        Caption = 'Tg(x)'
      end
      object ctgx1: TMenuItem
        Caption = 'Ctg(x)'
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object arccosx1: TMenuItem
        Caption = 'Arccos(x)'#39
      end
      object arcsinx1: TMenuItem
        Caption = 'Arcsin(x)'#39
      end
      object arctgx1: TMenuItem
        Caption = 'Arctg(x)'#39
      end
      object arcctg1: TMenuItem
        Caption = 'Arcctg(x)'#39
      end
    end
    object N4: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N4Click
    end
  end
end
