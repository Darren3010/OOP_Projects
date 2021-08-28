object FrmSoccerOOP: TFrmSoccerOOP
  Left = 0
  Top = 0
  Caption = 'Soccer'
  ClientHeight = 279
  ClientWidth = 516
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Lblteam: TLabel
    Left = 8
    Top = 98
    Width = 33
    Height = 16
    Caption = 'Team:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
  end
  object LblPLayer: TLabel
    Left = 8
    Top = 128
    Width = 36
    Height = 16
    Caption = 'Player:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
  end
  object LblManager: TLabel
    Left = 8
    Top = 160
    Width = 54
    Height = 16
    Caption = 'Manager:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
  end
  object LblStadium: TLabel
    Left = 8
    Top = 192
    Width = 48
    Height = 16
    Caption = 'Stadium:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
  end
  object LblCapacity: TLabel
    Left = 8
    Top = 219
    Width = 55
    Height = 16
    Caption = 'Capacity:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
  end
  object LblSponsor: TLabel
    Left = 8
    Top = 251
    Width = 45
    Height = 16
    Caption = 'Sponsor:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
  end
  object PnlSoccer: TPanel
    Left = 8
    Top = 8
    Width = 498
    Height = 81
    Caption = 'Soccer Info'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object EdtTeam: TEdit
    Left = 64
    Top = 95
    Width = 121
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object EdtPlayer: TEdit
    Left = 64
    Top = 125
    Width = 121
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object EdtManager: TEdit
    Left = 64
    Top = 157
    Width = 121
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object EdtStadium: TEdit
    Left = 64
    Top = 189
    Width = 121
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object EdtCapacity: TEdit
    Left = 64
    Top = 216
    Width = 121
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object EdtSponsor: TEdit
    Left = 64
    Top = 248
    Width = 121
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object BtnCreate: TButton
    Left = 200
    Top = 95
    Width = 105
    Height = 35
    Caption = 'Create Object'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = BtnCreateClick
  end
  object BtnDisplay: TButton
    Left = 200
    Top = 136
    Width = 105
    Height = 30
    Caption = 'Display Details'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = BtnDisplayClick
  end
  object BtnNewTeam: TButton
    Left = 200
    Top = 170
    Width = 105
    Height = 32
    Caption = 'New Team'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = BtnNewTeamClick
  end
  object BtnIncrease: TButton
    Left = 200
    Top = 208
    Width = 105
    Height = 32
    Hint = 'Enter a decimal'
    Caption = 'Increase Capacity'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnClick = BtnIncreaseClick
  end
  object BtnHalf: TButton
    Left = 200
    Top = 246
    Width = 105
    Height = 25
    Caption = 'Half Capacity'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = BtnHalfClick
  end
  object RedDisplay: TRichEdit
    Left = 321
    Top = 100
    Width = 185
    Height = 171
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'RedDisplay')
    ParentFont = False
    TabOrder = 12
  end
end
