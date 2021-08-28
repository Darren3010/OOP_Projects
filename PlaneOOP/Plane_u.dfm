object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 163
  ClientWidth = 471
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RichEdit1: TRichEdit
    Left = 150
    Top = 8
    Width = 313
    Height = 145
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object BtnCreate: TButton
    Left = 8
    Top = 8
    Width = 136
    Height = 25
    Caption = 'Create Object'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Century Gothic'
    Font.Style = [fsUnderline]
    ParentFont = False
    TabOrder = 1
    OnClick = BtnCreateClick
  end
  object BtnDisplay: TButton
    Left = 8
    Top = 39
    Width = 136
    Height = 25
    Caption = 'Display'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Century Gothic'
    Font.Style = [fsUnderline]
    ParentFont = False
    TabOrder = 2
    OnClick = BtnDisplayClick
  end
  object BtnMeals: TButton
    Left = 8
    Top = 101
    Width = 136
    Height = 25
    Caption = 'Meals'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Century Gothic'
    Font.Style = [fsUnderline]
    ParentFont = False
    TabOrder = 3
    OnClick = BtnMealsClick
  end
  object Button4: TButton
    Left = 8
    Top = 70
    Width = 136
    Height = 25
    Caption = 'Change Pas/Date'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Century Gothic'
    Font.Style = [fsUnderline]
    ParentFont = False
    TabOrder = 4
    OnClick = Button4Click
  end
end
