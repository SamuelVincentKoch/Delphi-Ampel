﻿object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 462
  ClientWidth = 636
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Ampelkörper: TShape
    Left = 24
    Top = 40
    Width = 97
    Height = 225
    Brush.Color = clBlack
  end
  object AmpelRot: TShape
    Left = 40
    Top = 49
    Width = 65
    Height = 65
    Brush.Color = clRed
    Shape = stCircle
  end
  object AmpelGelb: TShape
    Left = 40
    Top = 120
    Width = 65
    Height = 65
    Brush.Color = clYellow
    Shape = stCircle
  end
  object AmpelGruen: TShape
    Left = 40
    Top = 191
    Width = 65
    Height = 65
    Brush.Color = clGreen
    Shape = stCircle
  end
  object Ampelfuß: TShape
    Left = 64
    Top = 262
    Width = 17
    Height = 195
    Brush.Color = clBlack
  end
  object HintergrundAufgabe1: TShape
    Left = 175
    Top = 40
    Width = 106
    Height = 225
    Brush.Color = clSilver
  end
  object BezeichnungAufgabe1: TLabel
    Left = 200
    Top = 50
    Width = 50
    Height = 13
    Caption = 'Aufgabe 1'
  end
  object HintergrundAufgabe2: TShape
    Left = 335
    Top = 40
    Width = 106
    Height = 225
    Brush.Color = clSilver
  end
  object HintergrundAufgabe3: TShape
    Left = 495
    Top = 40
    Width = 106
    Height = 225
    Brush.Color = clSilver
  end
  object BezeichnungAufgabe2: TLabel
    Left = 360
    Top = 50
    Width = 50
    Height = 13
    Caption = 'Aufgabe 2'
  end
  object BezeichnungAufgabe3: TLabel
    Left = 522
    Top = 50
    Width = 50
    Height = 13
    Caption = 'Aufgabe 3'
  end
  object btnRot: TButton
    Left = 191
    Top = 90
    Width = 75
    Height = 25
    Caption = 'Rot'
    TabOrder = 0
    OnClick = btnRotClick
  end
  object btnRotGelb: TButton
    Left = 191
    Top = 130
    Width = 75
    Height = 25
    Caption = 'Rot-Gelb'
    TabOrder = 1
    OnClick = btnRotGelbClick
  end
  object btnGruen: TButton
    Left = 191
    Top = 170
    Width = 75
    Height = 25
    Caption = 'Gr'#252'n'
    TabOrder = 2
    OnClick = btnGruenClick
  end
  object btnGelb: TButton
    Left = 191
    Top = 210
    Width = 75
    Height = 25
    Caption = 'Gelb'
    TabOrder = 3
    OnClick = btnGelbClick
  end
  object btnAutomatisch: TButton
    Left = 352
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Schalten'
    TabOrder = 4
    OnClick = btnAutomatischClick
  end
  object btnZeitzyklus: TButton
    Left = 512
    Top = 130
    Width = 75
    Height = 25
    Caption = 'Zyklus starten'
    TabOrder = 5
    OnClick = btnZeitzyklusClick
  end
  object btnZeitzyklusAbbruch: TButton
    Left = 512
    Top = 170
    Width = 75
    Height = 25
    Caption = 'Abbruch'
    TabOrder = 6
    OnClick = btnZeitzyklusAbbruchClick
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = Timer1Timer
    Left = 416
    Top = 328
  end
end
