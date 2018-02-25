unit pasSchiffeVersenken;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls,pasSystemVariablen;

type
  TfrmSchiffeVersenken = class(TForm)
    MainMenu1: TMainMenu;
    MenMenue: TMenuItem;
    SpielfeldEinrichten: TMenuItem;
    Schiffekonstruieren2: TMenuItem;
    Spielerbearbeiten1: TMenuItem;
    N1: TMenuItem;
    Losgehts1: TMenuItem;
    N2: TMenuItem;
    Spielbeenden1: TMenuItem;
    MainPanel: TPanel;
    Label1: TLabeledEdit;
    imgMeinGameBoard: TImage;
    imgGegnerGameBoard: TImage;
    procedure FormCreate(Sender: TObject);
    procedure SpielfeldEinrichtenClick(Sender: TObject);
    procedure Schiffekonstruieren2Click(Sender: TObject);
    procedure Spielerbearbeiten1Click(Sender: TObject);
    procedure Losgehts1Click(Sender: TObject);
    procedure Spielbeenden1Click(Sender: TObject);
    procedure imgMeinGameBoardClick(Sender: TObject);
    function  IsMouseOver(Control: TControl): Boolean;
    procedure imgMeinGameBoardMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    function SpielFlaecheZeichnen : boolean;
    procedure imgGegnerGameBoardMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
  private
    { Private-Deklarationen }
    lSpielFeldIstEingerichtet : boolean;
    lTestFlag                 : boolean;
    nWieVielKaestchen         : integer;
    nKaestchenBreite          : integer;
    nKaestchenRahmen          : integer;
    nAbstand                  : integer;


  public
    { Public-Deklarationen }
  end;

var

  frmSchiffeVersenken: TfrmSchiffeVersenken;



implementation

uses
  pasSpielFeldEinrichten;

{$R *.dfm}

//------------------------------------------------------------------------------
// Mit dieser Procedure wird das eigentliche Hauptformular des Programmes
// erzeu8gt = kreirt = created
//------------------------------------------------------------------------------
procedure TfrmSchiffeVersenken.FormCreate(Sender: TObject);
var
  x, y, w, h: Integer;
begin
  lTestFlag  := true;

end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
procedure TfrmSchiffeVersenken.imgGegnerGameBoardMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 Label1.text := Format('%d horizontal | %d vertical', [X,Y]);
end;
//------------------------------------------------------------------------------
// Mit dieser Procedure zeichnen wir ein Teil eines Schiffes in ein Quadrat
//------------------------------------------------------------------------------
procedure TfrmSchiffeVersenken.imgMeinGameBoardClick(Sender: TObject);
var
  CursorPos  : TPoint;
  nBreite,nHoehe : integer;
  nLinks,nOben   : integer;
  nLinkeEcke     : integer;
  nObereEcke     : integer;
begin
  // GetCursorPos(CursorPos);

  CursorPos := ScreenToClient(Mouse.CursorPos);

  nLinkeEcke := abs(CursorPos.x div nKaestchenBreite);
  nLinkeEcke := ( (nLinkeEcke-1) * nKaestchenBreite ) + nKaestchenRahmen;

  nObereEcke := abs(CursorPos.y div nKaestchenBreite);
  nObereEcke := ( (nObereEcke-1) * nKaestchenBreite ) + nKaestchenRahmen;

  nBreite := nKaestchenBreite - ( nKaestchenRahmen * 2 );  // links und rechts
  nHoehe  := nKaestchenBreite - ( nKaestchenRahmen * 2 );
  nLinks  := nLinkeEcke;  // CursorPos.x  - ImgMeinGameBoard.Left - MainPanel.left;
  nOben   := nObereEcke ; // CursorPos.y  - ImgMeinGameBoard.top  - MainPanel.top ;


  imgMeinGameBoard.Canvas.Brush.Color := clSilver;
  imgMeinGameBoard.Canvas.Rectangle( nLinks,
                                     nOben,
                                     nLinks  + nBreite,
                                     nOben   + nHoehe);


  imgMeinGameBoard.Canvas.MoveTo (nLinks,nOben); // wir setzen den Stift links oben an
  imgMeinGameBoard.Canvas.LineTo (nLinks  + nBreite, nOben   + nHoehe ); //Endpunkt der Linee

  imgMeinGameBoard.Canvas.MoveTo (nLinks+nBreite,nOben); // wir setzen den Stift links oben an
  imgMeinGameBoard.Canvas.LineTo (nLinks, nOben+nHoehe ); //Endpunkt der Linee



{*
// zum Zeichnen einer Diagonale as muss con hand gemacht werden
var i,j:word;
begin
  with form4.canvas do
    begin
      i := 1;
      j := 1;
      repeat
        moveto(0,j*2);
        lineto(i*2,0);
        inc(i,2);
        inc(j,2);
      until
        (i > form4.Height) and (j > form4.Width);
    end;
end;
*}

end;
// ------------------------------------------------------------------------------

// var
// CursorPos  : TPoint;
// x,y        : integer;
// GetCursorPos(CursorPos);
// x := CursorPos.x - ImgMeineGameBoard.Left;
// y := CursorPos.y - ImgMeineGameBoard.top;
// ------------------------------------------------------------------------------
procedure TfrmSchiffeVersenken.imgMeinGameBoardMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 Label1.text := Format('%d horizontal | %d vertical', [X,Y]);
end;
// ------------------------------------------------------------------------------
// ------------------------------------------------------------------------------
procedure TfrmSchiffeVersenken.Losgehts1Click(Sender: TObject);
begin
  if ( lSPielFeldIstEingerichtet ) then
  begin
  end
  else
  begin
   // Fehlermeldung dass noch kein Spielfeld vorbereitet ist

  end;
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
procedure TfrmSchiffeVersenken.SpielfeldEinrichtenClick(Sender: TObject);
begin
  SpielFlaecheZeichnen;
  {*
  with TfrmSpielFeldEinrichten.Create (Self) do
    try
      ShowModal;
      case ModalResult of
        mrOK        : lSpielFeldIstEingerichtet := true;
        mrCancel    : lSpielFeldIstEingerichtet := false;
      end;
    finally
      Free;
    end;
    }
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
procedure TfrmSchiffeVersenken.Schiffekonstruieren2Click(Sender: TObject);
begin

end;
//------------------------------------------------------------------------------
// Beim Beenden kontrollieren ob die Spielstände gespeichert werden sollen
//------------------------------------------------------------------------------
procedure TfrmSchiffeVersenken.Spielbeenden1Click(Sender: TObject);
begin

  close;
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
procedure TfrmSchiffeVersenken.Spielerbearbeiten1Click(Sender: TObject);
begin

end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
function TfrmSchiffeVersenken.IsMouseOver(Control: TControl): Boolean;
var
  p: TPoint;
begin
  if GetCursorPos(p) then
  begin
    p := Control.ScreenToClient(p);
    Result := (p.X >= 0) and (p.X <= Control.Width) and
              (p.Y >= 0) and (p.Y <= Control.Height) {AND Control.Visible};
  end
  else
    Result := False;
end;
//------------------------------------------------------------------------------
// Mit dieser Funktion zeichnen wir die beiden Gameboards
//------------------------------------------------------------------------------
Function TfrmSchiffeVersenken.SpielFlaecheZeichnen : boolean;
var
  x, y, w, h        : Integer;
begin
    //--------------------------------------------------------------------------
    // Spielflaeche sichtbar machen
    //--------------------------------------------------------------------------
    imgMeinGameBoard.Visible  := true;
    imgGegnerGameBoard.Visible := true;
    //--------------------------------------------------------------------------
    // Wir wollen eine bestimmte Anzahl Kaestchen malen, diese Variable kann
    // dann später verändert werden, damit hat jeder SPieler die Möglichkeit
    // das Spielfeld zu vergrößern oder zu verkleinern
    //--------------------------------------------------------------------------
    nWieVielKaestchen := 12;
    nKaestchenBreite  := 32;
    nAbstand          := 30;
    nKaestchenRahmen  := 2;
    //--------------------------------------------------------------------------
    // ausrechnen wieviele Quadrate passen auf die Spielfaleche
    //--------------------------------------------------------------------------
    imgMeinGameBoard.left := 30;
    imgMeinGameBoard.top  := 30;
    imgMeinGameBoard.Width   := nKaestchenBreite * nWieVielKaestchen;
    imgMeinGameBoard.Height  := nKaestchenBreite * nWieVielKaestchen;
    imgMeinGameBoard.refresh;
    //--------------------------------------------------------------------------
    // Jetzt ermitteln wir die linke Kante des 2. GameBoard
    // ausgehend von: der linken Ecke des ersten Board + die Breite des
    // ersten Boards + ein gewünschter Abstand
    //--------------------------------------------------------------------------
    imgGegnerGameBoard.left  :=     imgMeinGameBoard.left   +
                                    imgMeinGameBoard.Width  +
                                    nAbstand;

    imgGegnerGameBoard.Top    := imgMeinGameBoard.top;
    imgGegnerGameBoard.Width  := imgMeinGameBoard.Width;
    imgGegnerGameBoard.Height := imgMeinGameBoard.Height ;

    w := imgMeinGameBoard.Width   div nWieVielKaestchen;
    h := imgMeinGameBoard.Height  div nWieVielKaestchen;
    //--------------------------------------------------------------------------
    // Farbe und Pinsel bestimmen zum Zeichnen
    //--------------------------------------------------------------------------
    imgMeinGameBoard.canvas.Brush.color   := $00FFC884;
    imgGegnerGameBoard.canvas.Brush.color := $00FFC884;
    imgMeinGameBoard.canvas.pen.Width     := 1;
    imgGegnerGameBoard.canvas.pen.Width   := 1;
    imgMeinGameBoard.canvas.pen.Color     := clNavy;
    imgGegnerGameBoard.canvas.pen.Color   := clNavy;


    //--------------------------------------------------------------------------
    for x := 0 to nWieVielKaestchen-1 do
    begin
      //------------------------------------------------------------------------
      for y := 0 to nWieVielKaestchen-1 do
      begin
        imgMeinGameBoard.Canvas.Rectangle(x * w, y * h, (x * w) + w, (y * h) + h);
        imgGegnerGameBoard.Canvas.Rectangle(x * w, y * h, (x * w) + w, (y * h) + h);
      end;
    end;
  //----------------------------------------------------------------------------
  SpielFlaecheZeichnen := true;

end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
end.

