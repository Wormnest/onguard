object Form1: TForm1
  Left = 369
  Top = 215
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Network Access File Manager'
  ClientHeight = 185
  ClientWidth = 332
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  ShowHint = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 317
    Height = 81
    Caption = 'File Settings'
    TabOrder = 0
    object Label4: TLabel
      Left = 8
      Top = 24
      Width = 28
      Height = 13
      Caption = 'C&ode:'
    end
    object Label5: TLabel
      Left = 8
      Top = 52
      Width = 45
      Height = 13
      Caption = '&Filename:'
    end
    object GenerateCodeSb: TSpeedButton
      Left = 288
      Top = 19
      Width = 23
      Height = 23
      Hint = 'Generate code'
      Glyph.Data = {
        76020000424D7602000000000000360000002800000012000000100000000100
        1000000000004002000000000000000000000000000000000000F75EF75EF75E
        F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
        F75EF75EF75EF75EF75EF75E00000000000000000000F75EF75EF75EF75EF75E
        F75EF75EF75EF75EF75EF75E00000000F75EF75EF75E0000F75E00000000F75E
        F75EF75EF75EF75EF75EF75EF75E0000F75E0000F75EF75EF75EF75EF75EF75E
        00000000F75EF75EF75EF75EF75EF75E0000F75EF75EF75EF75E000000000000
        F75EF75EF75EF75E0000F75EF75EF75EF75EF75E00000000F75EF75E00000000
        000000000000F75EF75EF75E0000F75EF75EF75EF75E0000F75EF75EF75E0000
        0000007CF75E007C00000000F75E0000F75E0000F75EF75EF75E0000F75EF75E
        F75E00000000F75E007CF75E00000000F75EF75EF75E0000F75EF75EF75E0000
        0000F75EF75E00000000F75E007CF75E00000000F75EF75E00000000F75EF75E
        F75E0000F75EF75EF75E00000000007CF75E007C00000000F75EF75EF75E0000
        F75EF75EF75EF75E0000F75EF75EF75E00000000000000000000F75EF75EF75E
        0000F75EF75EF75EF75EF75E0000F75E0000F75EF75E000000000000F75EF75E
        0000F75E0000F75EF75EF75EF75EF75EF75E0000F75EF75E0000F75EF75EF75E
        F75EF75EF75E0000F75EF75EF75EF75EF75EF75EF75EF75E00000000F75EF75E
        F75E0000F75E00000000F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
        00000000000000000000F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
        F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E}
      OnClick = GenerateCodeSbClick
    end
    object FileNameEd: TEdit
      Left = 64
      Top = 48
      Width = 185
      Height = 21
      TabOrder = 1
      OnChange = FileNameEdChange
    end
    object BrowseBt: TButton
      Left = 253
      Top = 46
      Width = 59
      Height = 25
      Hint = 'Browse for network access file'
      Caption = '&Browse...'
      TabOrder = 2
      OnClick = BrowseBtClick
    end
    object AccessCodeEd: TEdit
      Left = 64
      Top = 20
      Width = 221
      Height = 21
      TabOrder = 0
      OnChange = AccessCodeEdChange
    end
  end
  object CreateBt: TButton
    Left = 88
    Top = 152
    Width = 75
    Height = 25
    Hint = 'Create teh NAF using the specified code'
    Caption = '&Create'
    Enabled = False
    TabOrder = 1
    OnClick = CreateBtClick
  end
  object ResetBt: TButton
    Left = 168
    Top = 152
    Width = 75
    Height = 25
    Hint = 'Reset the specified NAF, removing invalid slots'
    Caption = '&Reset'
    Enabled = False
    TabOrder = 2
    OnClick = ResetBtClick
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 96
    Width = 317
    Height = 41
    Caption = 'Access Slots'
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Top = 20
      Width = 27
      Height = 13
      Caption = 'Total:'
    end
    object Label2: TLabel
      Left = 96
      Top = 20
      Width = 39
      Height = 13
      Caption = 'Locked:'
    end
    object Label3: TLabel
      Left = 196
      Top = 20
      Width = 34
      Height = 13
      Caption = 'Invalid:'
    end
    object TotalSlotsLb: TLabel
      Left = 44
      Top = 20
      Width = 6
      Height = 13
      Caption = '0'
    end
    object LockedSlotsLb: TLabel
      Left = 148
      Top = 20
      Width = 6
      Height = 13
      Caption = '0'
    end
    object InvalidSlotsLb: TLabel
      Left = 240
      Top = 20
      Width = 6
      Height = 13
      Caption = '0'
    end
  end
  object DeleteBt: TButton
    Left = 248
    Top = 152
    Width = 75
    Height = 25
    Hint = 'Delete teh selected NAF'
    Caption = '&Delete'
    Enabled = False
    TabOrder = 4
    OnClick = DeleteBtClick
  end
  object UpdateBt: TButton
    Left = 8
    Top = 152
    Width = 75
    Height = 25
    Hint = 'Update the selected NAF using the specified code'
    Caption = '&Update'
    Enabled = False
    TabOrder = 5
    OnClick = UpdateBtClick
  end
  object OpenDg: TOpenDialog
    DefaultExt = '*.n'
    Filter = 'Network Access Files (*.naf)|*.naf|All Files (*.*)|*.*'
    Options = [ofHideReadOnly, ofPathMustExist, ofNoReadOnlyReturn]
    Left = 288
    Top = 80
  end
  object OgMakeCodes1: TOgMakeCodes
    Left = 256
    Top = 80
  end
end
