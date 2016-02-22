object frmStamp: TfrmStamp
  Left = 278
  Top = 172
  Width = 428
  Height = 160
  Caption = 'Stamp EXE'
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  ShowHint = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object TLabel
    Left = 8
    Top = 8
    Width = 80
    Height = 13
    Caption = '&EXE file to stamp'
    FocusControl = FileEd
  end
  object StatusLbl: TLabel
    Left = 8
    Top = 112
    Width = 30
    Height = 13
    Caption = 'Status'
  end
  object FileEd: TEdit
    Left = 8
    Top = 32
    Width = 305
    Height = 21
    Hint = 'Enter EXE file name'
    TabOrder = 0
    OnChange = FileEdChange
  end
  object BrowseBtn: TBitBtn
    Left = 320
    Top = 29
    Width = 89
    Height = 25
    Hint = 'Search for EXE file'
    Caption = '&Browse'
    TabOrder = 1
    OnClick = BrowseBtnClick
  end
  object StampBtn: TBitBtn
    Left = 8
    Top = 72
    Width = 89
    Height = 25
    Hint = 'Stamp EXE wiht signature record'
    Caption = '&Stamp'
    TabOrder = 2
    OnClick = StampBtnClick
  end
  object CloseBtn: TBitBtn
    Left = 320
    Top = 104
    Width = 89
    Height = 25
    TabOrder = 3
    Kind = bkClose
  end
  object ClearBtn: TBitBtn
    Left = 104
    Top = 72
    Width = 89
    Height = 25
    Hint = 'Reset EXE'#39's stamped signature'
    Caption = '&Clear'
    TabOrder = 4
    OnClick = ClearBtnClick
  end
  object EraseMarkerCb: TCheckBox
    Left = 184
    Top = 8
    Width = 113
    Height = 17
    Hint = 'Erase marker used to locate signature record'
    Caption = 'Erase &Marker'
    TabOrder = 5
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'exe'
    FileEditStyle = fsEdit
    Filter = 'EXE files (*.exe)|*.exe|All files (*.*)|*.*'
    FilterIndex = 0
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist]
    Title = 'Select EXE File to Stamp'
    Left = 320
  end
end
