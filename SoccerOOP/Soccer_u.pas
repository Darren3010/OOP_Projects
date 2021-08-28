unit Soccer_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CLSSoccer_u, StdCtrls, ExtCtrls, ComCtrls; // name of the unit file must be declared here in order to use it;

type
  TFrmSoccerOOP = class(TForm)
    PnlSoccer: TPanel;
    Lblteam: TLabel;
    LblPLayer: TLabel;
    LblManager: TLabel;
    LblStadium: TLabel;
    LblCapacity: TLabel;
    LblSponsor: TLabel;
    EdtTeam: TEdit;
    EdtPlayer: TEdit;
    EdtManager: TEdit;
    EdtStadium: TEdit;
    EdtCapacity: TEdit;
    EdtSponsor: TEdit;
    BtnCreate: TButton;
    BtnDisplay: TButton;
    BtnNewTeam: TButton;
    BtnIncrease: TButton;
    BtnHalf: TButton;
    RedDisplay: TRichEdit;
    procedure BtnCreateClick(Sender: TObject);
    procedure BtnDisplayClick(Sender: TObject);
    procedure BtnNewTeamClick(Sender: TObject);
    procedure BtnIncreaseClick(Sender: TObject);
    procedure BtnHalfClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSoccerOOP: TFrmSoccerOOP;
  ObjSoccer: TSoccer; // Object variable declared globally of type TSoccer.
  Team, Player, Manager, Stadium, Sponsor: String;
  Capacity: Integer;

implementation

{$R *.dfm}

procedure TFrmSoccerOOP.BtnCreateClick(Sender: TObject);
begin
  // Instantiate the object
  { Call the constructor from the object class, we want to then store the created object
    in the object variable }
  Team := EdtTeam.Text; // Parameter order is very important.
  Player := EdtPlayer.Text;
  Manager := EdtManager.Text;
  Stadium := EdtStadium.Text;
  Capacity := StrToInt(EdtCapacity.Text);
  Sponsor := EdtSponsor.Text;

  ObjSoccer := TSoccer.create(Team, Player, Manager, Stadium, Capacity,
    Sponsor); // Instantiate the object.
  ShowMessage('The Object has been created.');
end;

procedure TFrmSoccerOOP.BtnDisplayClick(Sender: TObject);
begin
  RedDisplay.lines.Clear;
  RedDisplay.lines.Add(ObjSoccer.toString);
end;

procedure TFrmSoccerOOP.BtnHalfClick(Sender: TObject);
begin
  RedDisplay.lines.Clear;
  RedDisplay.lines.Add(floatToStr(ObjSoccer.HalfCapacity));
end;

procedure TFrmSoccerOOP.BtnIncreaseClick(Sender: TObject);
VAR
  NewCapacity: Real;
begin
  RedDisplay.lines.Clear;
  // Parameters.
  NewCapacity := StrToFloat(InputBox('New Capacity', 'Percentage increase',
      ''));
  ObjSoccer.IncreaseCapacity(NewCapacity);
  RedDisplay.lines.Add(floatToStr(ObjSoccer.IncreaseCapacity(NewCapacity)));
end;

procedure TFrmSoccerOOP.BtnNewTeamClick(Sender: TObject);
VAR
  NewTeam: String;
begin
  NewTeam := InputBox('New Team', 'Enter a New Team Name', '');
  ObjSoccer.setTeam(NewTeam);

  ShowMessage('The new Team Name is: ' + ObjSoccer.GetTeam);
end;

end.
