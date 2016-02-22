object ModifierFrm: TModifierFrm
  Left = 244
  Top = 174
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Generate Modifier'
  ClientHeight = 107
  ClientWidth = 464
  Color = clBtnFace
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object OKBtn: TBitBtn
    Left = 306
    Top = 79
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object CancelBtn: TBitBtn
    Left = 386
    Top = 79
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 8
    Width = 457
    Height = 65
    Caption = '&Modifiers'
    TabOrder = 0
    object UniqueModifierCb: TCheckBox
      Left = 184
      Top = 40
      Width = 105
      Height = 17
      Caption = 'Unique modifier'
      TabOrder = 3
      OnClick = ModifierClick
    end
    object MachineModifierCb: TCheckBox
      Left = 184
      Top = 16
      Width = 105
      Height = 17
      Caption = 'Machine modifier'
      TabOrder = 1
      OnClick = ModifierClick
    end
    object DateModifierCb: TCheckBox
      Left = 328
      Top = 16
      Width = 105
      Height = 17
      Caption = 'Date modifier'
      TabOrder = 2
      OnClick = ModifierClick
    end
    object NoModifierCb: TCheckBox
      Left = 16
      Top = 16
      Width = 105
      Height = 17
      Caption = 'No modifier'
      TabOrder = 0
      OnClick = ModifierClick
    end
    object ModifierEd: TEdit
      Left = 16
      Top = 36
      Width = 145
      Height = 21
      TabOrder = 4
      OnChange = InfoChanged
      OnKeyPress = ModifierEdKeyPress
    end
    object ModDateEd: TEdit
      Left = 327
      Top = 37
      Width = 77
      Height = 21
      Hint = 'Code is invalid after this date'
      Color = clBtnFace
      Enabled = False
      MaxLength = 10
      TabOrder = 5
      OnChange = ModifierClick
      OnKeyPress = DateEdKeyPress
    end
  end
end
