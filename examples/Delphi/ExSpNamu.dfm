object Form1: TForm1
  Left = 200
  Top = 108
  Width = 372
  Height = 295
  Caption = 'Build/Check Special Code with Name string'
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 337
    Height = 97
    Caption = ' Generate the Code '
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 28
      Width = 53
      Height = 13
      Caption = 'User Name'
    end
    object edtUserName1: TEdit
      Left = 104
      Top = 24
      Width = 217
      Height = 21
      TabOrder = 0
    end
    object btnGenCode: TButton
      Left = 16
      Top = 54
      Width = 75
      Height = 25
      Caption = 'Gen Code'
      TabOrder = 1
      OnClick = btnGenCodeClick
    end
    object edtCode1: TEdit
      Left = 104
      Top = 56
      Width = 217
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 128
    Width = 337
    Height = 129
    Caption = ' Check the Code '
    TabOrder = 1
    object Label2: TLabel
      Left = 24
      Top = 28
      Width = 53
      Height = 13
      Caption = 'User Name'
    end
    object Label3: TLabel
      Left = 24
      Top = 60
      Width = 25
      Height = 13
      Caption = 'Code'
    end
    object lblCheckResult: TLabel
      Left = 104
      Top = 96
      Width = 71
      Height = 13
      Caption = 'lblCheckResult'
    end
    object edtUserName2: TEdit
      Left = 104
      Top = 24
      Width = 217
      Height = 21
      TabOrder = 0
    end
    object edtCode2: TEdit
      Left = 104
      Top = 56
      Width = 217
      Height = 21
      TabOrder = 1
    end
    object btnCheckCode: TButton
      Left = 16
      Top = 88
      Width = 75
      Height = 25
      Caption = 'Check Code'
      TabOrder = 2
      OnClick = btnCheckCodeClick
    end
  end
end
