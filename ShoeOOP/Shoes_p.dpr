program Shoes_p;

uses
  Forms,
  Shoes_u in 'Shoes_u.pas' {FrmShoes},
  CLSShoes_u in 'CLSShoes_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmShoes, FrmShoes);
  Application.Run;
end.
