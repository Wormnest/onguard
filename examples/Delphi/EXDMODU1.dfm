object Form1: TForm1
  Left = 372
  Top = 223
  Width = 240
  Height = 186
  ActiveControl = Memo1
  Caption = 'Serial Number Example'
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  PixelsPerInch = 96
  Position = poScreenCenter
  TextHeight = 13
  object Label1: TLabel
    Left = 38
    Top = 96
    Width = 42
    Height = 13
    Alignment = taCenter
    Caption = 'Serial #: '
  end
  object Memo1: TMemo
    Left = 3
    Top = 4
    Width = 223
    Height = 79
    Lines.Strings = (
      'If you can edit this, then your program was '
      'allowed to run')
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object CloseBtn: TBitBtn
    Left = 72
    Top = 114
    Width = 89
    Height = 33
    TabOrder = 1
    Kind = bkClose
  end
  object OgSerialNumberCode1: TOgSerialNumberCode
    OnChecked = OgSerialNumberCode1Checked
    OnGetKey = OgSerialNumberCode1GetKey
    OnGetCode = OgSerialNumberCode1GetCode
    OnGetModifier = OgSerialNumberCode1GetModifier
    Left = 172
    Top = 88
  end
end
