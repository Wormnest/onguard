object Form1: TForm1
  Left = 354
  Top = 279
  Width = 228
  Height = 155
  Caption = 'Form1'
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 50
    Top = 70
    Width = 98
    Height = 13
    Caption = 'Expires: 00/00/0000'
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 197
    Height = 59
    Lines.Strings = (
      'If you can edit this, your program was '
      'allowed to run')
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object CloseBtn: TBitBtn
    Left = 56
    Top = 89
    Width = 89
    Height = 33
    TabOrder = 1
    Kind = bkClose
  end
  object OgDateCode1: TOgDateCode
    OnChecked = OgDateCode1Checked
    OnGetKey = OgDateCode1GetKey
    OnGetCode = OgDateCode1GetCode
    Left = 158
    Top = 87
  end
end
