object Form1: TForm1
  Left = 300
  Top = 204
  Width = 368
  Height = 266
  Caption = 'ExSelect:'
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 16
    Top = 8
    Width = 329
    Height = 145
    Color = clAqua
    Lines.Strings = (
      '   This example uses the TOgUsageCode and the TOgSpecialCode'
      '   components to implement a limited use "demo" application'
      '   which allows only the required features.  The program can be '
      '   run 3 times and then a special code  must be obtained to '
      '   register the program and to enable various features.  A'
      
        '   machine modifier is used to prevent the application from bein' +
        'g '
      '   copied and run on another machine.  To obtain the release '
      '   release code you need to run the companion example '
      '   EXSLCODE.  The release codes will be stored in a data file '
      '   called EXSELECT.DAT')
    ReadOnly = True
    TabOrder = 0
  end
  object ModifyBtn: TButton
    Left = 120
    Top = 176
    Width = 113
    Height = 25
    Caption = 'Modify Features'
    Enabled = False
    TabOrder = 1
    OnClick = ModifyBtnClick
  end
  object MainMenu1: TMainMenu
    Left = 32
    Top = 168
    object FeaturesMenu: TMenuItem
      Caption = 'Features'
      object FeaturesRequired: TMenuItem
        Caption = 'Required'
        Checked = True
      end
      object FeaturesHelp: TMenuItem
        Caption = 'Help'
        Enabled = False
      end
      object FeaturesExamples: TMenuItem
        Caption = 'Examples'
        Enabled = False
      end
      object FeaturesDatabase: TMenuItem
        Caption = 'Database'
        Enabled = False
      end
      object FeaturesFax: TMenuItem
        Caption = 'Fax'
        Enabled = False
      end
      object FeaturesGoodies: TMenuItem
        Caption = 'Goodies'
        Enabled = False
      end
    end
  end
  object OgUsageCode1: TOgUsageCode
    AutoCheck = False
    OnChecked = OgUsageCode1Checked
    OnGetKey = OgUsageCode1GetKey
    OnGetCode = OgUsageCode1GetCode
    AutoDecrease = False
    OnChangeCode = OgUsageCode1ChangeCode
    Left = 256
    Top = 176
  end
  object OgSpecialCode1: TOgSpecialCode
    AutoCheck = False
    OnChecked = OgSpecialCode1Checked
    OnGetKey = OgSpecialCode1GetKey
    OnGetCode = OgSpecialCode1GetCode
    OnGetModifier = OgSpecialCode1GetModifier
    Left = 288
    Top = 176
  end
end
