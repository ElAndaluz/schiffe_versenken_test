object frmSchiffeVersenken: TfrmSchiffeVersenken
  Left = 0
  Top = 0
  Caption = 'Schiffe versenken a1'
  ClientHeight = 627
  ClientWidth = 1077
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
    Left = 0
    Top = 0
    Width = 1077
    Height = 519
    Align = alTop
    Color = 15269887
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 865
    object imgMeinGameBoard: TImage
      Left = 78
      Top = 172
      Width = 105
      Height = 105
      OnClick = imgMeinGameBoardClick
      OnMouseMove = imgMeinGameBoardMouseMove
    end
    object imgGegnerGameBoard: TImage
      Left = 302
      Top = 172
      Width = 105
      Height = 105
      OnMouseMove = imgGegnerGameBoardMouseMove
    end
    object Label1: TLabeledEdit
      Left = 18
      Top = 448
      Width = 271
      Height = 21
      EditLabel.Width = 31
      EditLabel.Height = 13
      EditLabel.Caption = 'Label1'
      TabOrder = 0
      Text = 'Mausposition'
      Visible = False
    end
  end
  object MainMenu1: TMainMenu
    Left = 18
    Top = 12
    object MenMenue: TMenuItem
      Caption = '&Men'#252
      object SpielfeldEinrichten: TMenuItem
        Caption = '&Spielfeld einrichten'
        OnClick = SpielfeldEinrichtenClick
      end
      object Schiffekonstruieren2: TMenuItem
        Caption = 'Schiffe &konstruieren'
        OnClick = Schiffekonstruieren2Click
      end
      object Spielerbearbeiten1: TMenuItem
        Caption = 'S&pieler bearbeiten'
        OnClick = Spielerbearbeiten1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Losgehts1: TMenuItem
        Caption = '&Los gehts'
        OnClick = Losgehts1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Spielbeenden1: TMenuItem
        Caption = 'Spiel &beenden'
        OnClick = Spielbeenden1Click
      end
    end
  end
end
