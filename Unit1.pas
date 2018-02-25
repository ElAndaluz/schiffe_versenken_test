unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls;

type
  TfrmSchiffeVersenken = class(TForm)
    MainMenu1: TMainMenu;
    MenMenue: TMenuItem;
    Schiffekonstruieren1: TMenuItem;
    Schiffekonstruieren2: TMenuItem;
    Spielerbearbeiten1: TMenuItem;
    N1: TMenuItem;
    Losgehts1: TMenuItem;
    N2: TMenuItem;
    Spielbeenden1: TMenuItem;
    MainPanel: TPanel;
    imgMeineFlotte: TImage;
    imgGegnerFlotte: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  frmSchiffeVersenken: TfrmSchiffeVersenken;

implementation

{$R *.dfm}

//------------------------------------------------------------------------------
procedure TfrmSchiffeVersenken.FormCreate(Sender: TObject);
var
  x, y, w, h: Integer;
begin
  with imgMeineFlotte do //Felder zeichnen
  begin
    w := Width div 10;
    h := Height div 10;
    canvas.Brush.color := $00FFC884;
    canvas.pen.Width := 0.2;
    for x := 0 to 9 do
      for y := 0 to 9 do

        Canvas.Rectangle(x * w, y * h, (x * w) + w, (y * h) + h);
  end;
  with imgGegnerFlotte do //Felder zeichnen
  begin
    canvas.Brush.color := $00FFC884;
    canvas.pen.Width := 1;
    w := Width div 10;
    h := Height div 10;

    for x := 0 to 9 do
      for y := 0 to 9 do
        Canvas.Rectangle(x * w, y * h, (x * w) + w, (y * h) + h);
  end;
end;
//------------------------------------------------------------------------------

end.
