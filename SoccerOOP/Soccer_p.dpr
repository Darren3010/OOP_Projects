program Soccer_p;

uses
  Forms,
  Soccer_u in 'Soccer_u.pas' {FrmSoccerOOP},
  CLSSoccer_u in 'CLSSoccer_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmSoccerOOP, FrmSoccerOOP);
  Application.Run;
end.
