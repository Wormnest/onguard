object Form1: TForm1
  Left = 258
  Top = 146
  BorderStyle = bsDialog
  Caption = 'Network Code Example'
  ClientHeight = 150
  ClientWidth = 352
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object StatusLbl: TLabel
    Left = 8
    Top = 126
    Width = 30
    Height = 13
    Caption = 'Status'
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 337
    Height = 105
    Color = clBtnFace
    Lines.Strings = (
      
        'The label at the bottom of this form indicates the status of the' +
        ' EXE file. '
      ''
      
        'If the EXE file has not been stamped, use the StampEXE program t' +
        'o '
      'protect it.'
      ''
      
        'The EXE file will need to be stamped after each compile since th' +
        'is '
      're-writes the EXE file.')
    ReadOnly = True
    TabOrder = 0
  end
  object CloseBtn: TBitBtn
    Left = 272
    Top = 120
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkClose
  end
  object OgProtectExe1: TOgProtectExe
    OnChecked = OgProtectExe1Checked
    Left = 296
    Top = 80
  end
end
