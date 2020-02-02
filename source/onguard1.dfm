object KeyGenerateFrm: TKeyGenerateFrm
  Left = 351
  Top = 190
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Key Generation'
  ClientHeight = 235
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 4
    Top = 6
    Width = 455
    Height = 191
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 32
      Width = 57
      Height = 13
      Caption = 'Key &Phrase:'
      FocusControl = KeyStringMe
    end
    object CopyBlockSb: TSpeedButton
      Left = 426
      Top = 131
      Width = 23
      Height = 23
      Hint = 'Copy key to clipboard'
      Glyph.Data = {
        82020000424D8202000000000000420000002800000012000000100000000100
        1000030000004002000000000000000000000000000000000000007C0000E003
        00001F000000F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
        F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E170017001700
        170017001700170017001700F75EF75EF75EF75EF75EF75EF75EF75EF75E1700
        FF7FFF7FFF7FFF7FFF7FFF7FFF7F1700F75EF75EF75EF75EF75EF75EF75EF75E
        F75E1700FF7F00000000000000000000FF7F1700F75EF75EF75E000000000000
        0000000000001700FF7FFF7FFF7FFF7FFF7FFF7FFF7F1700F75EF75EF75E0000
        FF7FFF7FFF7FFF7FFF7F1700FF7F00000000000000000000FF7F1700F75EF75E
        F75E0000FF7F00000000000000001700FF7FFF7FFF7FFF7FFF7FFF7FFF7F1700
        F75EF75EF75E0000FF7FFF7FFF7FFF7FFF7F1700FF7F00000000FF7F17001700
        17001700F75EF75EF75E0000FF7F00000000000000001700FF7FFF7FFF7FFF7F
        1700FF7F1700F75EF75EF75EF75E0000FF7FFF7FFF7FFF7FFF7F1700FF7FFF7F
        FF7FFF7F17001700F75EF75EF75EF75EF75E0000FF7F00000000FF7F00001700
        17001700170017001700F75EF75EF75EF75EF75EF75E0000FF7FFF7FFF7FFF7F
        0000FF7F0000F75EF75EF75EF75EF75EF75EF75EF75EF75EF75E0000FF7FFF7F
        FF7FFF7F00000000F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E0000
        00000000000000000000F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
        F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
        F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
        F75EF75EF75E}
      OnClick = CopyBlockSbClick
    end
    object Label3: TLabel
      Left = 8
      Top = 112
      Width = 21
      Height = 13
      Caption = 'Key:'
    end
    object Label4: TLabel
      Left = 8
      Top = 12
      Width = 48
      Height = 13
      Caption = 'Key &Type:'
      FocusControl = KeyTypeCb
    end
    object CopyByteKeySb: TSpeedButton
      Left = 426
      Top = 159
      Width = 23
      Height = 23
      Hint = 'Copy key to clipboard'
      Glyph.Data = {
        82020000424D8202000000000000420000002800000012000000100000000100
        1000030000004002000000000000000000000000000000000000007C0000E003
        00001F000000F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
        F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E170017001700
        170017001700170017001700F75EF75EF75EF75EF75EF75EF75EF75EF75E1700
        FF7FFF7FFF7FFF7FFF7FFF7FFF7F1700F75EF75EF75EF75EF75EF75EF75EF75E
        F75E1700FF7F00000000000000000000FF7F1700F75EF75EF75E000000000000
        0000000000001700FF7FFF7FFF7FFF7FFF7FFF7FFF7F1700F75EF75EF75E0000
        FF7FFF7FFF7FFF7FFF7F1700FF7F00000000000000000000FF7F1700F75EF75E
        F75E0000FF7F00000000000000001700FF7FFF7FFF7FFF7FFF7FFF7FFF7F1700
        F75EF75EF75E0000FF7FFF7FFF7FFF7FFF7F1700FF7F00000000FF7F17001700
        17001700F75EF75EF75E0000FF7F00000000000000001700FF7FFF7FFF7FFF7F
        1700FF7F1700F75EF75EF75EF75E0000FF7FFF7FFF7FFF7FFF7F1700FF7FFF7F
        FF7FFF7F17001700F75EF75EF75EF75EF75E0000FF7F00000000FF7F00001700
        17001700170017001700F75EF75EF75EF75EF75EF75E0000FF7FFF7FFF7FFF7F
        0000FF7F0000F75EF75EF75EF75EF75EF75EF75EF75EF75EF75E0000FF7FFF7F
        FF7FFF7F00000000F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E0000
        00000000000000000000F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
        F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
        F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
        F75EF75EF75E}
      OnClick = CopyByteKeySbClick
    end
    object KeyStringMe: TMemo
      Left = 8
      Top = 48
      Width = 440
      Height = 49
      ScrollBars = ssVertical
      TabOrder = 1
      OnChange = KeyStringMeChange
    end
    object BlockKeyEd: TEdit
      Left = 8
      Top = 132
      Width = 415
      Height = 21
      Ctl3D = True
      ParentColor = True
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
      OnChange = BlockKeyEdChange
    end
    object GenerateBtn: TButton
      Left = 344
      Top = 9
      Width = 103
      Height = 25
      Hint = 'Generate key'
      Caption = '&Generate key'
      Enabled = False
      TabOrder = 2
      OnClick = GenerateBtnClick
    end
    object KeyTypeCb: TComboBox
      Left = 64
      Top = 8
      Width = 169
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnChange = KeyTypeCbChange
      Items.Strings = (
        'Random'
        'Standard Text'
        'Case-sensitive Text')
    end
    object ByteKeyEd: TEdit
      Left = 8
      Top = 160
      Width = 415
      Height = 21
      Ctl3D = True
      ParentColor = True
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
      OnChange = ByteKeyEdChange
    end
  end
  object CancelBtn: TBitBtn
    Left = 384
    Top = 204
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object OKBtn: TBitBtn
    Left = 305
    Top = 204
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
end
