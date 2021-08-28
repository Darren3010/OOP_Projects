unit Shoes_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, jpeg, ExtCtrls, CLSShoes_u;

type
  TFrmShoes = class(TForm)
    BtnCreate: TButton;
    BtnDisplay: TButton;
    BtnStock: TButton;
    BtnLadiesMen: TButton;
    RedOutput: TRichEdit;
    ImgShoes: TImage;
    procedure BtnCreateClick(Sender: TObject);
    procedure BtnStockClick(Sender: TObject);
    procedure BtnDisplayClick(Sender: TObject);
    procedure BtnLadiesMenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmShoes: TFrmShoes;
  ObjShoes: TShoe;
  Code: String;
  Brand: String;
  Gender: Char;
  Colour: String;
  Stock: Integer;
  Price: Real;

implementation

{$R *.dfm}

procedure TFrmShoes.BtnCreateClick(Sender: TObject);
begin
  Code := 'G68323';
  Brand := 'Pumps';
  Gender := 'L';
  Colour := 'Pink';
  Stock := 156;
  Price := 249.99;
  ObjShoes := TShoe.create(Code, Brand, Gender, Colour, Stock, Price);
  showmessage('The object has been created.');
end;

procedure TFrmShoes.BtnDisplayClick(Sender: TObject);
begin
  RedOutput.Lines.Clear;
  RedOutput.Lines.Add(ObjShoes.ToString);
end;

procedure TFrmShoes.BtnLadiesMenClick(Sender: TObject);
begin
  RedOutput.Lines.Clear;
  RedOutput.Lines.Add('Code: ' + ObjShoes.GetCode + '.' + #13 + 'Brand: ' +
      ObjShoes.GetBrand + '.');
  showmessage(ObjShoes.ReturnGender);
end;

procedure TFrmShoes.BtnStockClick(Sender: TObject);
VAR
  NumberSold: Integer;
begin
  RedOutput.Lines.Clear;
  NumberSold := StrToInt(InputBox('Stock sold',
      'Enter the amount of shoes sold', ''));
  ObjShoes.sold(NumberSold);
  RedOutput.Lines.Add(ObjShoes.GetStock);
end;

end.
