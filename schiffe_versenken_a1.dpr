program schiffe_versenken_a1;

uses
  Forms,
  pasSchiffeVersenken in 'pasSchiffeVersenken.pas' {frmSchiffeVersenken},
  pasSpielFEldEinrichten in 'pasSpielFEldEinrichten.pas' {frmSpielFeldEinrichten};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSchiffeVersenken, frmSchiffeVersenken);
  Application.CreateForm(TfrmSpielFeldEinrichten, frmSpielFeldEinrichten);
  Application.CreateForm(TfrmSpielFeldEinrichten, frmSpielFeldEinrichten);
  Application.Run;
end.
