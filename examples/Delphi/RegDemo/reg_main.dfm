object regMain: TregMain
  Left = 468
  Top = 153
  BorderStyle = bsDialog
  Caption = 'Registration Tools'
  ClientHeight = 250
  ClientWidth = 288
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  Scaled = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 10
    Top = 67
    Width = 222
    Height = 16
    Caption = 'Enter your serial number from your CD'
  end
  object Label2: TLabel
    Left = 10
    Top = 115
    Width = 101
    Height = 16
    Caption = 'Machine Identifier'
  end
  object Label3: TLabel
    Left = 10
    Top = 163
    Width = 256
    Height = 16
    Caption = 'Enter the release code you were given by us'
  end
  object edtSerial: TEdit
    Left = 10
    Top = 83
    Width = 268
    Height = 24
    MaxLength = 10
    TabOrder = 1
  end
  object Memo1: TMemo
    Left = 10
    Top = 8
    Width = 268
    Height = 49
    TabStop = False
    BorderStyle = bsNone
    Color = clBtnFace
    Lines.Strings = (
      'Thank you for registering HelloWorld.  To '
      'complete your registration, please contact us '
      'at (800) 555-1212.')
    ReadOnly = True
    TabOrder = 0
    OnEnter = Memo1Enter
  end
  object edtMachine: TEdit
    Left = 10
    Top = 131
    Width = 268
    Height = 24
    TabStop = False
    ReadOnly = True
    TabOrder = 2
  end
  object edtRelease: TEdit
    Left = 10
    Top = 179
    Width = 268
    Height = 24
    MaxLength = 19
    TabOrder = 3
  end
  object btnSave: TButton
    Left = 203
    Top = 215
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 4
    OnClick = btnSaveClick
  end
  object btnReadme: TButton
    Left = 10
    Top = 215
    Width = 75
    Height = 25
    Caption = 'Readme...'
    TabOrder = 5
    OnClick = btnReadmeClick
  end
end
