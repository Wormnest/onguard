object CodeGenerateFrm: TCodeGenerateFrm
  Left = 334
  Top = 148
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Code Generation'
  ClientHeight = 419
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
  object GenerateGb: TGroupBox
    Left = 4
    Top = 332
    Width = 457
    Height = 49
    Caption = 'Generate Code'
    TabOrder = 1
    TabStop = True
    object RegCodeCopySb: TSpeedButton
      Left = 422
      Top = 17
      Width = 23
      Height = 23
      Hint = 'Copy code to clipboard'
      Glyph.Data = {
        76050000424D7605000000000000360400002800000012000000100000000100
        0800000000004001000000000000000000000001000000010000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00740400000000
        0000000000000000000000000000505200001200000010000000120000000100
        0800000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00007400000067000000286003000000000000000000247DE9002C9FEC00B0A2
        EC0000000000000000002000CC00F0740300F479E900E8740300F479E9000000
        000000000000000000000000000000000000000000000000000000000000F479
        E900AA05000000000000147CE900147CE900980000001000000077000000F8FD
        0200000000000000000000000000000000000000000000000000120000001000
        0000040000000100010000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000507AE9006071E90014000000600000007001
        000077000000F8FD020000000000000000000000000000000000000000005052
        0000120000001000000012000000010008000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000207DE900207DE9009002
        0000B47BE9003812DF00E87BE900080000006000000000000000447DE900447D
        E9006C02000000000000AC7DE900D07DE90084A7EC0000000000000000002000
        CC00F0740300247AE900E8740300247AE9000000000000000000000000000000
        000000000000000000000000000000000000247AE900AA05000000000000A87D
        E900A87DE90008020000487DE9003812DF007C7DE90008000000600000002400
        00001F0000003CF50200D4270300487DE9001C17DF007C7DE90004000000E87D
        E900E87DE900C8010000A8000000F50300000000000000000000000000000000
        000000000000000000000000000000000000000000000000000064760600A058
        E400000000000000000000000000DC0C000093000000C89E0500000000000000
        0000000000000000000000000000000000000000000008010000000000000000
        00000001000001000000FFFFFF0000000000000000000000000080010000F503
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000647606002C5BE4000000000000000000000000000000
        0000904FE600B8A7DF00E40000003613000000000000AD260D00E47EE900E47E
        E900CC00000036130000007FE900F70A0200FC7EE900FC7EE900080808080808
        0808080808080808080808080300080808080808080804040404040404040408
        00040808080808080808040F0F0F0F0F0F0F040802000808080808080808040F
        00000000000F0408E1020808000000000000040F0F0F0F0F0F0F0408AE810808
        000F0F0F0F0F040F00000000000F04082A000808000F00000000040F0F0F0F0F
        0F0F040801000808000F0F0F0F0F040F00000F040404040840020808000F0000
        0000040F0F0F0F040F04080802000808000F0F0F0F0F040F0F0F0F0404080808
        FA030808000F00000F000404040404040808080800A00808000F0F0F0F000F00
        0808080808080808AE810808000F0F0F0F000008080808080808080800040808
        0000000000000808080808080808080881000808080808080808080808080808
        0808080800A0080808080808080808080808080808080808AE81}
      OnClick = RegCodeCopySbClick
    end
    object GenerateBtn: TButton
      Left = 8
      Top = 16
      Width = 77
      Height = 25
      Hint = 'Generate code'
      Caption = '&Generate'
      Default = True
      TabOrder = 0
      OnClick = GenerateBtnClick
    end
    object RegCodeEd: TEdit
      Left = 96
      Top = 18
      Width = 323
      Height = 21
      ParentColor = True
      ReadOnly = True
      TabOrder = 1
      OnChange = InfoChanged
    end
  end
  object OKBtn: TBitBtn
    Left = 307
    Top = 389
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 2
    OnClick = ParametersChanged
  end
  object CancelBtn: TBitBtn
    Left = 386
    Top = 389
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 136
    Width = 457
    Height = 193
    Caption = '&Key used to encode'
    TabOrder = 0
    object Label5: TLabel
      Left = 12
      Top = 148
      Width = 21
      Height = 13
      Caption = 'Key:'
      Color = clBtnFace
      ParentColor = False
    end
    object GenerateKeySb: TSpeedButton
      Left = 426
      Top = 163
      Width = 23
      Height = 23
      Hint = 'Generate key'
      Glyph.Data = {
        76050000424D7605000000000000360400002800000012000000100000000100
        0800000000004001000000000000000000000001000000010000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00740400000000
        0000000000000000000000000000505200001200000010000000120000000100
        0800000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00007400000067000000286003000000000000000000247DE9002C9FEC00D031
        E80000000000000000002000CC00F0740300F479E900E8740300F479E9000000
        000000000000000000000000000000000000000000000000000000000000F479
        E900AA05000000000000147CE900147CE900980000001000000077000000F8FD
        0200000000000000000000000000000000000000000000000000120000001000
        0000040000000100010000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000507AE900589FEC0014000000600000007001
        000077000000F8FD020000000000000000000000000000000000000000005052
        0000120000001000000012000000010008000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000207DE900207DE9009002
        0000B47BE9003812DF00E87BE900080000006000000000000000447DE900447D
        E9006C02000000000000AC7DE900D07DE90084A7EC0000000000000000002000
        CC00F0740300247AE900E8740300247AE9000000000000000000000000000000
        000000000000000000000000000000000000247AE900AA05000000000000A87D
        E900A87DE90008020000487DE9003812DF007C7DE90008000000600000002400
        00001F0000003CF50200D4270300487DE9001C17DF007C7DE90004000000E87D
        E900E87DE900C8010000A8000000F50300000000000000000000000000000000
        000000000000000000000000000000000000000000000000000064760600A058
        E400000000000000000000000000DC0C000093000000C89E0500000000000000
        0000000000000000000000000000000000000000000008010000000000000000
        00000001000001000000FFFFFF0000000000000000000000000080010000F503
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000647606002C5BE4000000000000000000000000000000
        0000904FE600B8A7DF00E40000003613000000000000AD260D00E47EE900E47E
        E900CC00000036130000007FE900F70A0200FC7EE900FC7EE900080808080808
        0808080808080808080808080100080808080808080808080808080808080808
        0100080808080808080808080808080808080808FFFF08080808080808080808
        0808080808080808020008080808000000080808080808080808080808020808
        080000000000080800080808080008083A010808000009080900000800080000
        08000808BB00080800000809080000000000000000000808D202080800000809
        080000000000000000000808D202080800000908090000080808080808080808
        0200080808000000000008080808080808080808340108080808000000080808
        0808080808080808060008080808080808080808080808080808080808000808
        08080808080808080808080808080808D2020808080808080808080808080808
        08080808D2020808080808080808080808080808080808080200}
      OnClick = GenerateKeySbClick
    end
    object Label1: TLabel
      Left = 8
      Top = 107
      Width = 40
      Height = 13
      Caption = 'Modifier:'
      Color = clBtnFace
      ParentColor = False
    end
    object UniqueModifierCb: TCheckBox
      Left = 304
      Top = 16
      Width = 93
      Height = 19
      Caption = 'Unique modifier'
      TabOrder = 3
      OnClick = ModifierClick
    end
    object MachineModifierCb: TCheckBox
      Left = 152
      Top = 16
      Width = 100
      Height = 19
      Caption = 'Machine modifier'
      TabOrder = 1
      OnClick = ModifierClick
    end
    object DateModifierCb: TCheckBox
      Left = 16
      Top = 48
      Width = 82
      Height = 19
      Caption = 'Date modifier'
      TabOrder = 2
      OnClick = ModifierClick
    end
    object NoModifierCb: TCheckBox
      Left = 16
      Top = 16
      Width = 73
      Height = 19
      Caption = 'No modifier'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = ModifierClick
    end
    object ModifierEd: TEdit
      Left = 8
      Top = 124
      Width = 169
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 5
      OnChange = ParametersChanged
      OnKeyPress = ModifierEdKeyPress
    end
    object ModDateEd: TEdit
      Left = 111
      Top = 45
      Width = 77
      Height = 21
      Hint = 'Code is invalid after this date'
      Color = clBtnFace
      Enabled = False
      MaxLength = 10
      TabOrder = 4
      OnChange = ModifierClick
      OnKeyPress = DateEdKeyPress
    end
    object BlockKeyEd: TEdit
      Left = 8
      Top = 164
      Width = 415
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 6
      OnChange = InfoChanged
    end
    object StringModifierCb: TCheckBox
      Left = 16
      Top = 72
      Width = 87
      Height = 19
      Caption = 'String Modifier'
      TabOrder = 7
      OnClick = ModifierClick
    end
    object ModStringEd: TEdit
      Left = 111
      Top = 69
      Width = 312
      Height = 21
      Hint = 'Code is invalid after this date'
      Color = clBtnFace
      Enabled = False
      TabOrder = 8
      OnChange = ModifierClick
    end
  end
  object CodesNbk: TPageControl
    Left = 0
    Top = 0
    Width = 465
    Height = 129
    ActivePage = TabSheet1
    TabOrder = 4
    OnChange = CodesNbkChange
    object TabSheet1: TTabSheet
      Caption = 'Date'
      object Label9: TLabel
        Left = 4
        Top = 12
        Width = 49
        Height = 13
        Caption = 'Start date:'
        Color = clBtnFace
        ParentColor = False
      end
      object Label11: TLabel
        Left = 204
        Top = 12
        Width = 46
        Height = 13
        Caption = 'End date:'
        Color = clBtnFace
        ParentColor = False
      end
      object StartDateEd: TEdit
        Left = 60
        Top = 8
        Width = 77
        Height = 21
        Hint = 'Code is invalid prior to this date'
        MaxLength = 10
        TabOrder = 0
      end
      object EndDateEd: TEdit
        Left = 260
        Top = 8
        Width = 77
        Height = 21
        Hint = 'Code is invalid after this date'
        MaxLength = 10
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Days'
      ImageIndex = 1
      object Label13: TLabel
        Left = 4
        Top = 12
        Width = 52
        Height = 13
        Caption = 'Day count:'
        Color = clBtnFace
        ParentColor = False
      end
      object Label2: TLabel
        Left = 228
        Top = 12
        Width = 37
        Height = 13
        Caption = 'Expires:'
        Color = clBtnFace
        ParentColor = False
      end
      object DaysCountEd: TEdit
        Left = 64
        Top = 8
        Width = 113
        Height = 21
        TabOrder = 0
        Text = '0'
      end
      object DaysExpiresEd: TEdit
        Left = 272
        Top = 8
        Width = 77
        Height = 21
        Hint = 'Code is invalid prior to this date'
        MaxLength = 10
        TabOrder = 1
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Reg'
      ImageIndex = 2
      object Label6: TLabel
        Left = 8
        Top = 12
        Width = 30
        Height = 13
        Caption = 'String:'
        Color = clBtnFace
        ParentColor = False
      end
      object RegStrCopySb: TSpeedButton
        Left = 410
        Top = 7
        Width = 23
        Height = 23
        Hint = 'Copy to clipboard'
        Glyph.Data = {
          76050000424D7605000000000000360400002800000012000000100000000100
          0800000000004001000000000000000000000001000000010000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00740400000000
          0000000000000000000000000000505200001200000010000000120000000100
          0800000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00007400000067000000286003000000000000000000247DE900542CE800A826
          EC0000000000000000002000CC00F0740300F479E900E8740300F479E9000000
          000000000000000000000000000000000000000000000000000000000000F479
          E900AA05000000000000147CE900147CE900980000001000000077000000F8FD
          0200000000000000000000000000000000000000000000000000120000001000
          0000040000000100010000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000507AE900589FEC0014000000600000007001
          000077000000F8FD020000000000000000000000000000000000000000005052
          0000120000001000000012000000010008000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000207DE900207DE9009002
          0000B47BE9003812DF00E87BE900080000006000000000000000447DE900447D
          E9006C02000000000000AC7DE900D07DE90084A7EC0000000000000000002000
          CC00F0740300247AE900E8740300247AE9000000000000000000000000000000
          000000000000000000000000000000000000247AE900AA05000000000000A87D
          E900A87DE90008020000487DE9003812DF007C7DE90008000000600000002400
          00001F0000003CF50200D4270300487DE9001C17DF007C7DE90004000000E87D
          E900E87DE900C8010000A8000000F50300000000000000000000000000000000
          000000000000000000000000000000000000000000000000000064760600A058
          E400000000000000000000000000DC0C000093000000C89E0500000000000000
          0000000000000000000000000000000000000000000008010000000000000000
          00000001000001000000FFFFFF0000000000000000000000000080010000F503
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000647606002C5BE4000000000000000000000000000000
          0000904FE600B8A7DF00E40000003613000000000000AD260D00E47EE900E47E
          E900CC00000036130000007FE900F70A0200FC7EE900FC7EE900080808080808
          080808080808080808080808E000080808080808080804040404040404040408
          00000808080808080808040F0F0F0F0F0F0F040800000808080808080808040F
          00000000000F040800000808000000000000040F0F0F0F0F0F0F040880010808
          000F0F0F0F0F040F00000000000F040800000808000F00000000040F0F0F0F0F
          0F0F0408F0010808000F0F0F0F0F040F00000F0404040408F8FF0808000F0000
          0000040F0F0F0F040F04080800030808000F0F0F0F0F040F0F0F0F0404080808
          C0030808000F00000F0004040404040408080808E0010808000F0F0F0F000F00
          0808080808080808FFFF0808000F0F0F0F0000080808080808080808FFFF0808
          00000000000008080808080808080808F7810808080808080808080808080808
          08080808C00708080808080808080808080808080808080898C3}
      end
      object Label4: TLabel
        Left = 228
        Top = 40
        Width = 37
        Height = 13
        Caption = 'Expires:'
        Color = clBtnFace
        ParentColor = False
      end
      object RegStrEd: TEdit
        Left = 44
        Top = 8
        Width = 365
        Height = 21
        TabOrder = 0
      end
      object RegRandomBtn: TButton
        Left = 48
        Top = 36
        Width = 109
        Height = 25
        Caption = '&Random Number'
        TabOrder = 1
      end
      object RegExpiresEd: TEdit
        Left = 269
        Top = 36
        Width = 77
        Height = 21
        Hint = 'Code is invalid prior to this date'
        MaxLength = 10
        TabOrder = 2
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'S/N'
      ImageIndex = 3
      object Label7: TLabel
        Left = 8
        Top = 12
        Width = 69
        Height = 13
        Caption = '&Serial Number:'
        Color = clBtnFace
        ParentColor = False
      end
      object Label15: TLabel
        Left = 228
        Top = 12
        Width = 37
        Height = 13
        Caption = 'Expires:'
        Color = clBtnFace
        ParentColor = False
      end
      object SerialNumberEd: TEdit
        Left = 84
        Top = 8
        Width = 105
        Height = 21
        TabOrder = 0
        Text = '0'
      end
      object SerialExpiresEd: TEdit
        Left = 272
        Top = 8
        Width = 77
        Height = 21
        Hint = 'Code is invalid prior to this date'
        MaxLength = 10
        TabOrder = 1
      end
      object SerRandomBtn: TButton
        Left = 8
        Top = 36
        Width = 109
        Height = 25
        Caption = '&Random Number'
        TabOrder = 2
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Usage'
      ImageIndex = 4
      object Label14: TLabel
        Left = 4
        Top = 12
        Width = 64
        Height = 13
        Caption = 'Usage count:'
        Color = clBtnFace
        ParentColor = False
      end
      object Label17: TLabel
        Left = 228
        Top = 12
        Width = 37
        Height = 13
        Caption = 'Expires:'
        Color = clBtnFace
        ParentColor = False
      end
      object UsageCountEd: TEdit
        Left = 76
        Top = 8
        Width = 113
        Height = 21
        TabOrder = 0
        Text = '0'
      end
      object UsageExpiresEd: TEdit
        Left = 272
        Top = 8
        Width = 77
        Height = 21
        Hint = 'Code is invalid prior to this date'
        MaxLength = 10
        TabOrder = 1
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Network'
      ImageIndex = 5
      object Label10: TLabel
        Left = 4
        Top = 12
        Width = 64
        Height = 13
        Caption = 'Access Slots:'
        Color = clBtnFace
        ParentColor = False
      end
      object NetworkSlotsEd: TEdit
        Left = 76
        Top = 8
        Width = 113
        Height = 21
        TabOrder = 0
        Text = '2'
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Special'
      ImageIndex = 6
      object Label12: TLabel
        Left = 4
        Top = 12
        Width = 62
        Height = 13
        Caption = 'Special data:'
        Color = clBtnFace
        ParentColor = False
      end
      object Label19: TLabel
        Left = 228
        Top = 12
        Width = 37
        Height = 13
        Caption = 'Expires:'
        Color = clBtnFace
        ParentColor = False
      end
      object SpecialDataEd: TEdit
        Left = 72
        Top = 8
        Width = 113
        Height = 21
        TabOrder = 0
        Text = '0'
      end
      object SpecialExpiresEd: TEdit
        Left = 272
        Top = 8
        Width = 77
        Height = 21
        Hint = 'Code is invalid prior to this date'
        MaxLength = 10
        TabOrder = 1
      end
    end
  end
end
