object Form1: TForm1
  Left = 394
  Top = 257
  Width = 234
  Height = 161
  Caption = 'Form1'
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  PixelsPerInch = 96
  Position = poScreenCenter
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 74
    Width = 83
    Height = 13
    Alignment = taCenter
    Caption = 'Days Remaining: '
  end
  object Memo1: TMemo
    Left = 6
    Top = 14
    Width = 213
    Height = 45
    Lines.Strings = (
      'If you can edit this, then your program '
      'was allowed to run')
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object CloseBtn: TBitBtn
    Left = 64
    Top = 92
    Width = 89
    Height = 33
    TabOrder = 1
    Kind = bkClose
  end
  object OgDaysCode1: TOgDaysCode
    OnChecked = OgDaysCode1Checked
    OnGetKey = OgDaysCode1GetKey
    OnGetCode = OgDaysCode1GetCode
    OnChangeCode = OgDaysCode1ChangeCode
    Left = 167
    Top = 92
  end
end
