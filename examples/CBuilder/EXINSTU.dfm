object FirstInstFrm: TFirstInstFrm
  Left = 329
  Top = 198
  Width = 320
  Height = 161
  Caption = 'Single Instance Example'
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 297
    Height = 89
    Color = clBtnFace
    Lines.Strings = (
      'Attempts to execute this application a second time result in '
      'the first instance to be activated and the second instance '
      'terminated.')
    ReadOnly = True
    TabOrder = 0
  end
  object BitBtn2: TBitBtn
    Left = 232
    Top = 104
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkClose
  end
end
