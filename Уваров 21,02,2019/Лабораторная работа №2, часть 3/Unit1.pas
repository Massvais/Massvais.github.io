unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Edit1Change(Sender: TObject);
Var
n,m:LongInt;
k:integer;
Begin
n :=StrToInt(Edit1.Text);
m :=n; k :=0;
while m<>0 do begin
Inc(k);
m :=m div 10;
end;
ShowMessage('кол-во цифр k= '+InttoStr(k));
end;

end.
