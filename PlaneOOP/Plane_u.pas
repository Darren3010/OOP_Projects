unit Plane_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ClsPlane_u, math;

type
  TForm2 = class(TForm)
    RichEdit1: TRichEdit;
    BtnCreate: TButton;
    BtnDisplay: TButton;
    BtnMeals: TButton;
    Button4: TButton;
    procedure BtnCreateClick(Sender: TObject);
    procedure BtnDisplayClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BtnMealsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  ObjPlane: TPlane;
  Airline, FlightNum: String;
  NumofPas: Integer;
  TimeofDeparture, DateofFlight: tDatetime;

implementation

{$R *.dfm}

procedure TForm2.BtnCreateClick(Sender: TObject);
begin
  Airline := InputBox('Airline entry', 'Enter an airline', '');
  FlightNum := InputBox('Flight Number', 'Enter your flight number', '');
  NumofPas := StrToInt(InputBox('Passengers', 'Enter the number of passengers',
      ''));
  TimeofDeparture := Now;
  DateofFlight := Date;
  ObjPlane := TPlane.create(Airline, FlightNum, NumofPas, TimeofDeparture,
    DateofFlight);
  ShowMessage('The object has been created.');
end;

procedure TForm2.BtnDisplayClick(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.Add(ObjPlane.ToString);
end;

procedure TForm2.BtnMealsClick(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.Add(ObjPlane.PasMeals);
end;

procedure TForm2.Button4Click(Sender: TObject);
VAR
  Increase: Integer;
begin
  RichEdit1.Lines.Clear;
  ObjPlane.SetDate;
  Increase := random(11);
  ObjPlane.SetPas(Increase);
  RichEdit1.Lines.Add(ObjPlane.ToString);
end;

end.
