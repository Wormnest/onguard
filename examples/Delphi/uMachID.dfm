object frmExMachineID: TfrmExMachineID
  Left = 360
  Top = 234
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'ExMachineID'
  ClientHeight = 128
  ClientWidth = 221
  Color = clBtnFace
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 105
    Height = 113
    Caption = ' Machine Info Set '
    TabOrder = 0
    object chkUser: TCheckBox
      Left = 24
      Top = 16
      Width = 65
      Height = 17
      Caption = 'User'
      TabOrder = 0
    end
    object chkSystem: TCheckBox
      Left = 24
      Top = 40
      Width = 65
      Height = 17
      Caption = 'System'
      TabOrder = 1
    end
    object chkNetwork: TCheckBox
      Left = 24
      Top = 64
      Width = 73
      Height = 17
      Caption = 'Network'
      TabOrder = 2
    end
    object chkDrives: TCheckBox
      Left = 24
      Top = 88
      Width = 57
      Height = 17
      Caption = 'Drives'
      TabOrder = 3
    end
  end
  object btnGenerate: TButton
    Left = 131
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Generate'
    TabOrder = 1
    OnClick = btnGenerateClick
  end
  object edtMachineID: TEdit
    Left = 128
    Top = 72
    Width = 81
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
end
