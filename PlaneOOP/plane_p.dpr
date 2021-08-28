program plane_p;

uses
  Forms,
  Plane_u in 'Plane_u.pas' {Form2},
  ClsPlane_u in 'ClsPlane_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
