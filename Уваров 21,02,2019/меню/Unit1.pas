unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Cosx1: TMenuItem;
    Sinx1: TMenuItem;
    tgx1: TMenuItem;
    ctgx1: TMenuItem;
    arccosx1: TMenuItem;
    arcsinx1: TMenuItem;
    arctgx1: TMenuItem;
    arcctg1: TMenuItem;
    N5: TMenuItem;
    Edit1: TEdit;
    Label1: TLabel;
    Image1: TImage;
    Bevel1: TBevel;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Cosx1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.N1Click(Sender: TObject);
begin
  ShowMessage('������ ���');
end;

procedure TForm1.N2Click(Sender: TObject);
begin

 label1.Caption:='������� �������� x:';
 edit1.Visible:=true;
 form1.activecontrol:=Edit1;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
 close;

end;
procedure TForm1.Cosx1Click(Sender: TObject);
var

Ed1,Ed2,Y: Real;

begin
Ed1 :=StrToInt(Edit1.text);
Ed2 :=

Y:= Cos( 2*Pi );      {Y:= 1}

end;

end.



