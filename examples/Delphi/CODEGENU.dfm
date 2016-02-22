object CodeGenFrm: TCodeGenFrm
  Left = 256
  Top = 146
  BorderStyle = bsDialog
  Caption = 'Example Code Generator'
  ClientHeight = 85
  ClientWidth = 273
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 3
    Width = 25
    Height = 13
    Caption = 'Code'
    FocusControl = CodeEd
  end
  object CopySb: TSpeedButton
    Left = 244
    Top = 18
    Width = 23
    Height = 22
    Hint = 'Copy code to clipboard'
    Glyph.Data = {
      42010000424D4201000000000000760000002800000011000000110000000100
      040000000000CC00000000000000000000000000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888800000008888888888888888800000008888888444444444800000008888
      8884FFFFFFF48000000088888884F00000F48000000080000004FFFFFFF48000
      000080FFFFF4F00000F48000000080F00004FFFFFFF48000000080FFFFF4F00F
      44448000000080F00004FFFF4F488000000080FFFFF4FFFF44888000000080F0
      0F04444448888000000080FFFF0F088888888000000080FFFF00888888888000
      0000800000088888888880000000888888888888888880000000888888888888
      888880000000}
    OnClick = CopySbClick
  end
  object GenerateBtn: TButton
    Left = 8
    Top = 51
    Width = 105
    Height = 25
    Hint = 'Display code generation dialog'
    Caption = 'Generate Code'
    TabOrder = 0
    OnClick = GenerateBtnClick
  end
  object CodeEd: TEdit
    Left = 8
    Top = 19
    Width = 233
    Height = 21
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 1
  end
  object CloseBtn: TBitBtn
    Left = 192
    Top = 51
    Width = 75
    Height = 25
    TabOrder = 2
    Kind = bkClose
  end
  object OgMakeCodes1: TOgMakeCodes
    KeyFileName = 'ONGUARD.INI'
    ShowHints = True
    Left = 136
    Top = 48
  end
end
