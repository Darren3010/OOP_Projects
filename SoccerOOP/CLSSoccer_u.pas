unit CLSSoccer_u;

interface

uses
  sysutils, dialogs;

type
  TSoccer = Class // Declaring the name of the object class. No semicolon.

  private
    { Private declarations }
    // declaring states/attributes - the attributes for the object must be used only by this class
    fTeam: String;
    fPlayer: String;
    fManager: String;
    fStadium: String;
    fCapacity: Integer;
    fSponsor: String;
  public // The order in which you recieve data is how you declare it
    { Public declarations }
    // declaring methods - these methods will be called externally therefore they are declared publicly
    // constructor create; // Default constructor (has no parameters not creating anything)
    constructor create(sTeam, sPlayer, sManager, sStadium: String;
      // Constructor declaration
      iCapacity: Integer; sSponsor: String); // Parameterized Constructor
    { Constructor is a subroutine used to create an object }
    function GetTeam: String; // Accessor method.
    procedure setTeam(NewTeam: String); // Mutator method.
    function toString: String; // A type of auxilliary method used to format and display.
    function HalfCapacity: Real; // Auxilliary method using values from attributes to manipulate data.
    function IncreaseCapacity(rNewCapacity: Real): Real;
    // Auxilliary method to increase capacity.
  end;

implementation

constructor TSoccer.create(sTeam: string; sPlayer: string; sManager: string;
  // Constructor header
  sStadium: string; iCapacity: Integer; sSponsor: string);
begin
  // Constructor creates the object, parameters are assigned to attributes.
  // Initializing the attributes.
  fTeam := sTeam;
  fPlayer := sPlayer;
  fManager := sManager;
  fStadium := sStadium;
  fCapacity := iCapacity;
  fSponsor := sSponsor;
end;

// After you type out the constructor with the begin and end, type shift+ctrl+C
function TSoccer.GetTeam: String;
begin
  Result := fTeam; // Returns current state of Attribute for the object.
end;

function TSoccer.HalfCapacity: Real;
begin
  Result := fCapacity / 2;
end;

function TSoccer.IncreaseCapacity(rNewCapacity: Real): Real;
begin
  Result := (fCapacity) + (fCapacity * rNewCapacity);
end;

procedure TSoccer.setTeam(NewTeam: String);
begin
  // Change current state of Attribute for the object.
  fTeam := NewTeam;
end;

function TSoccer.toString: String; // Format and display Data.
VAR
  sDisplay: String;
begin
  sDisplay := 'Team Name: ' + #9 + fTeam + #13#13 + 'Player Name: ' + #9 +
    fPlayer + #13#13;
  sDisplay := sDisplay + 'Team Manager: ' + #9 + fManager + #13#13;
  sDisplay := sDisplay + 'Stadium: ' + #9 + fStadium + #13#13;
  sDisplay := sDisplay + 'Capacity: ' + #9 + IntToStr(fCapacity) + #13#13;
  sDisplay := sDisplay + 'Sponsor: ' + #9 + fSponsor + #13#13;
  Result := sDisplay;

end;

end.
