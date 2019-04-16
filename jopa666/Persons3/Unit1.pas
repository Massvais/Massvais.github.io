unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Buttons;

type
  TFrmMain = class(TForm)
    dbgrd1: TDBGrid;
    dbnvgr1: TDBNavigator;
    btn1: TBitBtn;
    dbgrd2: TDBGrid;
    dbnvgr2: TDBNavigator;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
  
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TFrmMain.btn1Click(Sender: TObject);
begin
DM.qryZapros1.Active:=False;
DM.qryZapros1.SQL.Clear;
DM.qryZapros1.SQL.Add('Select LastName');
DM.qryZapros1.SQL.Add('from Persons');
DM.qryZapros1.Active:=true;
end;

procedure TFrmMain.btn2Click(Sender: TObject);
begin
DM.qryZapros1.Active:=False;
DM.qryZapros1.SQL.Clear;
DM.qryZapros1.SQL.Add('Select distinct FirstName,LastName');
DM.qryZapros1.SQL.Add('from Persons');
DM.qryZapros1.Active:=true;
end;

procedure TFrmMain.btn3Click(Sender: TObject);
begin
DM.qryZapros1.Active:=False;
DM.qryZapros1.SQL.Clear;
DM.qryZapros1.SQL.Add('Select *');
DM.qryZapros1.SQL.Add('from Persons');
DM.qryZapros1.Active:=true;
end;

procedure TFrmMain.btn4Click(Sender: TObject);
begin
DM.qryZapros1.Active:=False;
DM.qryZapros1.SQL.Clear;
DM.qryZapros1.SQL.Add('Select *');
DM.qryZapros1.SQL.Add('from Persons');
DM.qryZapros1.SQL.Add('where ñity = "sandnes"');
DM.qryZapros1.Active:=true;
end;

procedure TFrmMain.btn5Click(Sender: TObject);
begin
DM.qryZapros1.Active:=False;
DM.qryZapros1.SQL.Clear;
DM.qryZapros1.SQL.Add('Select *');
DM.qryZapros1.SQL.Add('from Persons');
DM.qryZapros1.SQL.Add('where ñity = "sandnes"');
DM.qryZapros1.Active:=true;
end;

end.
