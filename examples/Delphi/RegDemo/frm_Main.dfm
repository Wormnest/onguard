object frmMain: TfrmMain
  Left = 383
  Top = 289
  AutoScroll = False
  Caption = 'Hello World'
  ClientHeight = 123
  ClientWidth = 369
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 4
    Top = 16
    Width = 359
    Height = 41
    Alignment = taCenter
    AutoSize = False
    Caption = 'Hello World!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 280
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 0
    OnClick = Button1Click
  end
  object btnReadme: TButton
    Left = 16
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Readme...'
    TabOrder = 1
    OnClick = btnReadmeClick
  end
end
