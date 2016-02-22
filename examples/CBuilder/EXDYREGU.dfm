object Form1: TForm1
  Left = 252
  Top = 138
  BorderStyle = bsDialog
  Caption = 'Days Code Example'
  ClientHeight = 287
  ClientWidth = 480
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object StatusLbl: TLabel
    Left = 8
    Top = 262
    Width = 30
    Height = 13
    Caption = 'Status'
  end
  object Label1: TLabel
    Left = 248
    Top = 14
    Width = 64
    Height = 13
    Caption = 'Current code:'
  end
  object CodeLbl: TLabel
    Left = 320
    Top = 14
    Width = 96
    Height = 13
    Caption = '0000000000000000'
  end
  object CodeBtn: TButton
    Left = 8
    Top = 8
    Width = 89
    Height = 25
    Caption = 'Enter Code'
    TabOrder = 0
    OnClick = CodeBtnClick
  end
  object Memo1: TMemo
    Left = 8
    Top = 40
    Width = 465
    Height = 209
    Color = clBtnFace
    Lines.Strings = (
      
        'The label at the bottom of this form indicates the status of the' +
        ' code. An invalid code indicates that '
      
        'the code is either the incorrect type or that none has been ente' +
        'red. '
      ''
      
        'If the proper code has not been entered or the ONGUARD.INI file ' +
        'was deleted, the message will '
      'say that the code is invalid.'
      ''
      
        'Use the "Enter Code" button to enter a code (the CODEGEN program' +
        ' can be used to generate '
      'the proper "Days" code). '
      ''
      
        'The "Remove Code" button can be used to remove the entered code ' +
        'from the INI file. Doing so '
      
        'will cause the TOgDaysCode component to report that the code is ' +
        'invalid.')
    ReadOnly = True
    TabOrder = 1
  end
  object CloseBtn: TBitBtn
    Left = 400
    Top = 256
    Width = 75
    Height = 25
    TabOrder = 2
    Kind = bkClose
  end
  object RemoveBtn: TButton
    Left = 288
    Top = 256
    Width = 97
    Height = 25
    Caption = 'Remove Code'
    TabOrder = 3
    OnClick = RemoveBtnClick
  end
  object OgDaysCode1: TOgDaysCode
    OnChecked = OgDaysCode1Checked
    OnGetKey = OgDaysCode1GetKey
    OnGetCode = OgDaysCode1GetCode
    OnChangeCode = OgDaysCode1ChangeCode
    Left = 16
    Top = 208
  end
end
