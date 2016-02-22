object frmExReg: TfrmExReg
  Left = 192
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Registration Code Example'
  ClientHeight = 291
  ClientWidth = 385
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
    Width = 369
    Height = 129
    Caption = ' Registration Code Generator (vendor site) '
    TabOrder = 0
    object Label1: TLabel
      Left = 55
      Top = 28
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'User Name:'
    end
    object Label2: TLabel
      Left = 36
      Top = 60
      Width = 75
      Height = 13
      Alignment = taRightJustify
      Caption = 'Expiration Date:'
    end
    object Label3: TLabel
      Left = 24
      Top = 92
      Width = 87
      Height = 13
      Alignment = taRightJustify
      Caption = 'Registration Code:'
    end
    object btnGenerate: TSpeedButton
      Left = 328
      Top = 88
      Width = 23
      Height = 22
      Hint = 'Generate Registration Code'
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888800000008888888888888888800000008888880000088888800000008888
        0088808008888000000088808088888800888000000088088880008888088000
        0000880088000008880880000000808880098900808080000000808880089800
        8880800000008008800898008800800000008088800989008880800000008808
        8800000888088000000088080880008808088000000088808808888880888000
        0000888800888080088880000000888888000008888880000000888888888888
        888880000000}
      ParentShowHint = False
      ShowHint = True
      OnClick = btnGenerateClick
    end
    object edtUserName1: TEdit
      Left = 120
      Top = 24
      Width = 233
      Height = 21
      TabOrder = 0
    end
    object pickExpirationDate: TDateTimePicker
      Left = 120
      Top = 56
      Width = 129
      Height = 21
      CalAlignment = dtaLeft
      Date = 37369.5880088542
      Time = 37369.5880088542
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 1
    end
    object edtRegCode1: TEdit
      Left = 120
      Top = 88
      Width = 201
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 152
    Width = 369
    Height = 129
    Caption = ' Registration Code Verification (client site) '
    TabOrder = 1
    object Label4: TLabel
      Left = 55
      Top = 60
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'User Name:'
    end
    object Label5: TLabel
      Left = 24
      Top = 28
      Width = 87
      Height = 13
      Alignment = taRightJustify
      Caption = 'Registration Code:'
    end
    object Label6: TLabel
      Left = 78
      Top = 92
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Status:'
    end
    object btnVerify: TSpeedButton
      Left = 224
      Top = 88
      Width = 23
      Height = 22
      Hint = 'Verify Registration Code'
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888800000008888888888888888800000008888888888888888800000008888
        8888888888888000000088888888888888888000000088880008888888888000
        0000888000008808888080000000880098900808008080000000880089800000
        0000800000008800898000000000800000008800989008888888800000008880
        0000888888888000000088880008888888888000000088888888888888888000
        0000888888888888888880000000888888888888888880000000888888888888
        888880000000}
      ParentShowHint = False
      ShowHint = True
      OnClick = btnVerifyClick
    end
    object edtUserName2: TEdit
      Left = 120
      Top = 56
      Width = 233
      Height = 21
      TabOrder = 0
    end
    object edtRegCode2: TEdit
      Left = 120
      Top = 24
      Width = 233
      Height = 21
      TabOrder = 1
    end
    object edtStatus: TEdit
      Left = 120
      Top = 88
      Width = 97
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 2
    end
  end
end
