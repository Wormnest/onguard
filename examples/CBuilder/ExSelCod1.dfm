object Form1: TForm1
  Left = 328
  Top = 185
  Width = 288
  Height = 243
  Caption = 'Special Code Generator'
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 35
    Top = 20
    Width = 55
    Height = 13
    Caption = 'Machine ID'
  end
  object GenBtn: TButton
    Left = 18
    Top = 176
    Width = 89
    Height = 25
    Caption = 'Generate Code'
    TabOrder = 0
    OnClick = GenBtnClick
  end
  object MachineID: TEdit
    Left = 123
    Top = 16
    Width = 89
    Height = 21
    MaxLength = 8
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 56
    Width = 225
    Height = 97
    Caption = 'Features'
    TabOrder = 2
    object ReqFeat: TCheckBox
      Left = 16
      Top = 24
      Width = 81
      Height = 17
      Caption = 'Required'
      Enabled = False
      State = cbChecked
      TabOrder = 0
    end
    object HelpFeat: TCheckBox
      Left = 16
      Top = 40
      Width = 81
      Height = 17
      Caption = 'Help'
      TabOrder = 1
    end
    object ExamplesFeat: TCheckBox
      Left = 16
      Top = 56
      Width = 81
      Height = 17
      Caption = 'Examples'
      TabOrder = 2
    end
    object DBFeat: TCheckBox
      Left = 120
      Top = 24
      Width = 81
      Height = 17
      Caption = 'Database'
      TabOrder = 3
    end
    object FaxFeat: TCheckBox
      Left = 120
      Top = 40
      Width = 81
      Height = 17
      Caption = 'Fax'
      TabOrder = 4
    end
    object GoodiesFeat: TCheckBox
      Left = 120
      Top = 56
      Width = 81
      Height = 17
      Caption = 'Goodies'
      TabOrder = 5
    end
  end
  object CodeDisplay: TEdit
    Left = 123
    Top = 178
    Width = 126
    Height = 21
    Color = clAqua
    TabOrder = 3
  end
end
