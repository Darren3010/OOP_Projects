unit ClsPlane_u;

interface

Uses
  sysutils, dialogs, dateutils, math;

type
  TPlane = Class(TObject)

  private
    fAirline: String;
    fFlightnum: String;
    fNumOfPas: Integer;
    fTimeOfDeparture: tdate;
    fDateofFlight: tdate;
  public
    constructor create(sAirline, sFlightnum: String; iNumOfPas: Integer;
      dTimeOfDeparture, dDateofFlight: tdatetime);
    function ToString: String;
    function PasMeals: String;
    procedure SetDate;
    procedure SetPas(Increase: Integer);
  End;

implementation

{ TPlane }

constructor TPlane.create(sAirline, sFlightnum: String; iNumOfPas: Integer;
  dTimeOfDeparture, dDateofFlight: tdatetime);
begin
  fAirline := sAirline;
  fFlightnum := sFlightnum;
  fNumOfPas := iNumOfPas;
  fTimeOfDeparture := dTimeOfDeparture;
  fDateofFlight := dDateofFlight;
end;

function TPlane.PasMeals: String;
VAR
  TotalMeals, VegMeals, NonVeg: Integer;
begin
  TotalMeals := fNumOfPas + 20;
  VegMeals := round(TotalMeals * 0.2);
  NonVeg := TotalMeals - VegMeals;
  Result := 'The total number of meals is: ' + IntToStr(TotalMeals)
    + ', the number of veg meals is: ' + IntToStr(VegMeals) +
    ' and the number of non veg meals is: ' + IntToStr(NonVeg);
end;

procedure TPlane.SetDate;

begin

  fDateofFlight := Tomorrow;

end;

procedure TPlane.SetPas(Increase: Integer);

begin
  fNumOfPas := fNumOfPas + Increase;
end;

function TPlane.ToString: String;
VAR
  sDisplay: String;
begin
  sDisplay := 'Welcome to ' + fAirline + ' your flight number is: ' +
    fFlightnum + #13#13 + 'The number of passengers is: ' + IntToStr
    (fNumOfPas) + #13#13 + 'The flight is expected to depart on ' + DateToStr
    (fDateofFlight) + ' at ' + DateToStr(fTimeOfDeparture);
  Result := sDisplay;
end;

end.
