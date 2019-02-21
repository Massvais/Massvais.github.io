unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var x,y,z: real; 
begin
  x:=StrToFloat (edit1.Text); 
  y:=StrToFloat (edit2.Text);
  z:=StrToFloat (edit3.Text);
  if ((x+y+z)<1) then
  begin
    if ((x<y) and (x<z)) then 
      x:=(y+z)/2
    else      // ????
      begin
        if ((y<x) and (y<z)) then 
                                            y:=(x+z)/2
        else       // ????
          z:=(y+x)/2;
      end;
  end
else
  begin
    if (x<y) then
      x:=(y+z)/2
    else
      y:=(x+z)/2;
    
  end;
  Memo1.Lines.Add ('x=' + FloatToStr(x) + #13 + 'y=' +FloatToStr(y)+ #13 +'z=' +FloatToStr(Z));
end;


procedure TForm1.Button2Click(Sender: TObject);
begin
 Memo1.Clear;
end;

end.
