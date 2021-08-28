unit CLSShoes_u;

interface

uses
  sysutils, dialogs;

type
  TShoe = Class
  private
    fCode: String;
    fBrand: String;
    fGender: Char;
    fColour: String;
    fStock: Integer;
    fPrice: Real;
  public
    constructor create; overload;
    constructor create(sCode, sBrand: String; cGender: Char; sColour: String;
      iStock: Integer; rPrice: Real); overload;
    function ToString: String;
    function GetCode: String;
    function GetBrand: String;
    function GetGender: String;
    function GetColour: String;
    function GetStock: String;
    function GetPrice: String;
    procedure sold(ShoesSold: Integer);
    function ReturnGender: String;
  End;

implementation

constructor TShoe.create(sCode, sBrand: String; cGender: Char; sColour: String;
  iStock: Integer; rPrice: Real);
begin
  fCode := sCode;
  fBrand := sBrand;
  fGender := cGender;
  fColour := sColour;
  fStock := iStock;
  fPrice := rPrice;
end;

constructor TShoe.create;
begin
  fCode := '';
  fBrand := '';
  fGender := 'L';
  fColour := '';
  fStock := 1;
  fPrice := 1.00;
end;

function TShoe.GetBrand: String;
begin
  Result := fBrand;
end;

function TShoe.GetCode: String;
begin
  Result := fCode;
end;

function TShoe.GetColour: String;
begin
  Result := fColour;
end;

function TShoe.GetGender: String;
begin
  Result := fGender;
end;

function TShoe.GetPrice: String;
begin
  Result := FloatToStr(fPrice);
end;

function TShoe.GetStock: String;
begin
  Result := IntToStr(fStock);
end;

function TShoe.ReturnGender: String;
begin
  if fGender = 'L' then
    Result := 'Ladies.';

end;

procedure TShoe.sold(ShoesSold: Integer);
begin
  fStock := fStock - ShoesSold;
end;

function TShoe.ToString: String;
begin
  Result := 'Code: ' + fCode + #13 + 'Brand: ' + fBrand + #13 + 'Gender: ' +
    fGender + #13 + 'Colour: ' + fColour + #13 + 'Stock: ' + IntToStr(fStock)
    + #13 + 'Price: ' + FloatToStr(fPrice);
end;

end.
