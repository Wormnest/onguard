object SNEntryDlg: TSNEntryDlg
  Left = 403
  Top = 282
  Width = 247
  Height = 166
  ActiveControl = SNText
  Caption = 'Serial Number'
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 40
    Width = 15
    Height = 13
    Caption = 'SN'
  end
  object Label2: TLabel
    Left = 8
    Top = 66
    Width = 25
    Height = 13
    Caption = 'Code'
  end
  object Label3: TLabel
    Left = 40
    Top = 7
    Width = 159
    Height = 13
    Caption = 'Call your Vendor NOW to register!'
  end
  object SNText: TEdit
    Left = 44
    Top = 36
    Width = 121
    Height = 20
    TabOrder = 0
  end
  object CodeText: TEdit
    Left = 44
    Top = 62
    Width = 185
    Height = 20
    TabOrder = 1
  end
  object OKBtn: TBitBtn
    Left = 23
    Top = 94
    Width = 89
    Height = 33
    TabOrder = 2
    Kind = bkOK
  end
  object CancelBtn: TBitBtn
    Left = 127
    Top = 94
    Width = 89
    Height = 33
    TabOrder = 3
    OnClick = CancelBtnClick
    Kind = bkCancel
  end
end
