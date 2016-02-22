object NafFrm: TNafFrm
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
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000000000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888800000008888888888888888800000008888880000088888800000008888
        0088808008888000000088808088888800888000000088088880008888088000
        0000880088000008880880000000808880098900808080000000808880089800
        8880800000008008800898008800800000008088800989008880800000008808
        8800000888088000000088080880008808088000000088808808888880888000
        0000888800888080088880000000888888000008888880000000888888888888
        888880000000}
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
  object UpdateBt: TButton
    Left = 8
    Top = 152
    Width = 75
    Height = 25
    Hint = 'Update the selected NAF using the specified code'
    Caption = '&Update'
    Enabled = False
    TabOrder = 2
    OnClick = UpdateBtClick
  end
  object CreateBt: TButton
    Left = 88
    Top = 152
    Width = 75
    Height = 25
    Hint = 'Create teh NAF using the specified code'
    Caption = '&Create'
    Enabled = False
    TabOrder = 3
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
    TabOrder = 4
    OnClick = ResetBtClick
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 96
    Width = 317
    Height = 41
    Caption = 'Access Slots'
    TabOrder = 1
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
    TabOrder = 5
    OnClick = DeleteBtClick
  end
  object OpenDg: TOpenDialog
    DefaultExt = '*.n'
    FileEditStyle = fsEdit
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
