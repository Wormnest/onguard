object SNEntryDlg: TSNEntryDlg
  Left = 406
  Top = 376
  Width = 247
  Height = 195
  ActiveControl = SNText
  Caption = 'Serial Number w/Modifer'
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  PixelsPerInch = 96
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 64
    Width = 15
    Height = 13
    Caption = 'SN'
  end
  object Label2: TLabel
    Left = 8
    Top = 90
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
  object Label4: TLabel
    Left = 8
    Top = 37
    Width = 37
    Height = 13
    Caption = 'Modifier'
  end
  object SNText: TEdit
    Left = 52
    Top = 60
    Width = 121
    Height = 20
    TabOrder = 1
  end
  object CodeText: TEdit
    Left = 52
    Top = 86
    Width = 175
    Height = 20
    TabOrder = 2
  end
  object OKBtn: TBitBtn
    Left = 23
    Top = 118
    Width = 89
    Height = 33
    TabOrder = 3
    Kind = bkOK
  end
  object CancelBtn: TBitBtn
    Left = 127
    Top = 118
    Width = 89
    Height = 33
    TabOrder = 4
    OnClick = CancelBtnClick
    Kind = bkCancel
  end
  object ModString: TEdit
    Left = 52
    Top = 33
    Width = 121
    Height = 20
    TabStop = False
    ReadOnly = True
    TabOrder = 0
  end
end
