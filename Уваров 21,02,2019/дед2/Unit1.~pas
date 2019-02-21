unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
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
var n,n1,m:integer;
begin
 if (not TryStrToInt(Edit1.Text, n)) or (n < 100) or (n > 999) then
  begin
    ShowMessage('Неверно задано целое трехзначное число');
    Exit;
  end;
 n1 := abs(n);
 m := (n1 mod 10) * 100 + (n1 div 10 mod 10) * 10 + (n1 div 100);
 if n < 0 then m := -1 * m;
 Edit2.Text := IntToStr(m);
end;
end.
