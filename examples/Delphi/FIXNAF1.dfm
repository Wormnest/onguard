object MainFrm: TMainFrm
  Left = 369
  Top = 215
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Fix Network Access File'
  ClientHeight = 177
  ClientWidth = 332
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 317
    Height = 73
    Caption = 'File Settings'
    TabOrder = 0
    object Label4: TLabel
      Left = 8
      Top = 48
      Width = 28
      Height = 13
      Caption = 'C&ode:'
    end
    object Label5: TLabel
      Left = 8
      Top = 20
      Width = 45
      Height = 13
      Caption = '&Filename:'
    end
    object AccessCodeEd: TEdit
      Left = 64
      Top = 44
      Width = 245
      Height = 21
      TabOrder = 1
      OnChange = AccessCodeEdChange
    end
    object FileNamePn: TPanel
      Left = 64
      Top = 16
      Width = 245
      Height = 21
      Alignment = taLeftJustify
      BevelOuter = bvLowered
      BorderWidth = 2
      TabOrder = 0
    end
  end
  object UpdateBt: TButton
    Left = 8
    Top = 144
    Width = 75
    Height = 25
    Caption = '&Update'
    TabOrder = 2
    OnClick = UpdateBtClick
  end
  object CreateBt: TButton
    Left = 88
    Top = 144
    Width = 75
    Height = 25
    Caption = '&Create'
    Enabled = False
    TabOrder = 3
    OnClick = CreateBtClick
  end
  object ResetBt: TButton
    Left = 168
    Top = 144
    Width = 75
    Height = 25
    Caption = '&Reset'
    TabOrder = 4
    OnClick = ResetBtClick
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 88
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
      Left = 104
      Top = 20
      Width = 39
      Height = 13
      Caption = 'Locked:'
    end
    object Label3: TLabel
      Left = 204
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
      Left = 156
      Top = 20
      Width = 6
      Height = 13
      Caption = '0'
    end
    object InvalidSlotsLb: TLabel
      Left = 248
      Top = 20
      Width = 6
      Height = 13
      Caption = '0'
    end
  end
  object DeleteBt: TButton
    Left = 248
    Top = 144
    Width = 75
    Height = 25
    Caption = '&Delete'
    TabOrder = 5
    OnClick = DeleteBtClick
  end
end
