object Form1: TForm1
  Left = 331
  Top = 225
  Width = 218
  Height = 155
  ActiveControl = Memo1
  Caption = 'Usage Code Example'
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  PixelsPerInch = 96
  Position = poScreenCenter
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 72
    Width = 83
    Height = 13
    Caption = 'Available Runs: 0'
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
  object OgUsageCode2: TOgUsageCode
    OnChecked = OgUsageCode2Checked
    OnGetKey = OgUsageCode2GetKey
    OnGetCode = OgUsageCode2GetCode
    OnChangeCode = OgUsageCode2ChangeCode
    Left = 156
    Top = 90
  end
end
