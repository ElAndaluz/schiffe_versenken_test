object frmSchiffeVersenken: TfrmSchiffeVersenken
  Left = 0
  Top = 0
  Caption = 'Schiffe versenken a1'
  ClientHeight = 428
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MainPanel: TPanel
    Left = 116
    Top = 35
    Width = 627
    Height = 385
    Color = 15269887
    ParentBackground = False
    TabOrder = 0
    object imgMeineFlotte: TImage
      Left = 24
      Top = 23
      Width = 271
      Height = 238
    end
    object imgGegnerFlotte: TImage
      Left = 362
      Top = 23
      Width = 243
      Height = 238
    end
  end
  object MainMenu1: TMainMenu
    Left = 54
    Top = 18
    object MenMenue: TMenuItem
      Caption = '&Men'#252
      object Schiffekonstruieren1: TMenuItem
        Caption = '&Spielfeld einrichten'
      end
      object Schiffekonstruieren2: TMenuItem
        Caption = 'Schiffe &konstruieren'
      end
      object Spielerbearbeiten1: TMenuItem
        Caption = 'S&pieler bearbeiten'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Losgehts1: TMenuItem
        Caption = '&Los gehts'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Spielbeenden1: TMenuItem
        Caption = 'Spiel &beenden'
      end
    end
  end
end
