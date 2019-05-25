object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'ch'
  ClientHeight = 372
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Chromium1: TChromium
    Left = 0
    Top = 57
    Width = 600
    Height = 315
    Align = alClient
    TabOrder = 0
    Options.AcceleratedPaintingDisabled = False
    Options.AcceleratedFiltersDisabled = False
    Options.AcceleratedPluginsDisabled = False
    ExplicitTop = 88
    ExplicitHeight = 284
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 600
    Height = 57
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 1
    object Button1: TButton
      Left = 368
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 32
      Top = 19
      Width = 330
      Height = 21
      TabOrder = 1
      Text = 'www.baidu.com'
    end
  end
end
