object Form1: TForm1
  Left = 301
  Top = 218
  Width = 259
  Height = 183
  Caption = 'Form1'
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  PixelsPerInch = 96
  Position = poScreenCenter
  TextHeight = 13
  object Label1: TLabel
    Left = 69
    Top = 98
    Width = 66
    Height = 13
    Alignment = taCenter
    Caption = 'Registered to:'
  end
  object Memo1: TMemo
    Left = 13
    Top = 10
    Width = 223
    Height = 79
    Lines.Strings = (
      'If you can edit this, then your program was '
      'allowed to run')
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object CloseBtn: TBitBtn
    Left = 75
    Top = 116
    Width = 89
    Height = 33
    TabOrder = 1
    Kind = bkClose
  end
  object OgRegistrationCode1: TOgRegistrationCode
    OnChecked = OgRegistrationCode1Checked
    OnGetKey = OgRegistrationCode1GetKey
    OnGetCode = OgRegistrationCode1GetCode
    Left = 195
    Top = 118
  end
end
