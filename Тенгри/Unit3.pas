unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, data, Grids, DBGrids, DBCtrls, Mask;

type
  TForm3 = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    DTP1: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    DTP2: TDateTimePicker;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    DTP3: TDateTimePicker;
    Label4: TLabel;
    DTP4: TDateTimePicker;
    Button2: TButton;
    GroupBox3: TGroupBox;
    Button3: TButton;
    CheckBox1: TCheckBox;
    GroupBox4: TGroupBox;
    Button4: TButton;
    DBLCB1: TDBLookupComboBox;
    GroupBox5: TGroupBox;
    Button5: TButton;
    GroupBox6: TGroupBox;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  FS : TFormatSettings;
implementation

uses Unit2;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
 with dm.QZakaz do
  begin
    Active:=false;
    SQL.Text:= 'Select * from Zakaz order by DataZ';
    Active:=true;
    Filtered:=False;
    Filter:='[DataZ]>='+QuotedStr(DateToStr(DTP1.DateTime))+'and [DataZ]<='+QuotedStr(DateToStr(DTP2.DateTime))+'';
    Filtered :=True;
    dm.QZakaz.Requery();
    dm.RvProject1.ExecuteReport('Report1');
    Active:=false;
    SQL.Text:= 'Select * from Zakaz';
    Active:=true;
        dm.QZakaz.Requery();
  end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  with dm.QZakaz do
  begin
    Active:=false;
    SQL.Text:= 'Select * from Zakaz order by DataV';
    Active:=true;
    Filtered:=False;
    Filter:='[DataV]>='+QuotedStr(DateToStr(DTP3.DateTime))+'and [DataV]<='+QuotedStr(DateToStr(DTP4.DateTime))+'';
    Filtered :=True;
    dm.QZakaz.Requery();
    dm.RvProject1.ExecuteReport('Report5');
    Active:=false;
    SQL.Text:= 'Select * from Zakaz';
    Active:=true;
    dm.QZakaz.Requery();

  end;
end;

procedure TForm3.FormHide(Sender: TObject);
begin
form2.Show;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
form3.Visible:=false;
dm.ADOVid1.Sort:='Vid';
end;

procedure TForm3.Button3Click(Sender: TObject);
var chb: string;
begin
 with dm.QZakaz do
  begin
    Filtered:=False;
    If checkbox1.Checked then chb:= 'true'
    else
    begin
    chb := 'false';
    Active:=false;
    SQL.Text:= 'Select * from Zakaz order by client';
    Active:=true;
    Filter:='[fakt_opl] LIKE ' +  chb;
    Filtered :=True;
    dm.QZakaz.Requery();
    dm.RvProject1.ExecuteReport('Report3');
    Active:=false;
    SQL.Text:= 'Select * from Zakaz';
    Active:=true;
    dm.QZakaz.Requery();
  end;
  end;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
with dm.QZakaz do
  begin
    Filtered:=False;
    Active:=false;
    SQL.Text:= 'Select * from Zakaz order by vid_rab';
    Active:=true;
    if DBLCB1.Field.AsString<>'' then begin
        Filter:='[vid_rab] LIKE ' +  QuotedStr(DBLCB1.Field.AsString) +'';
        Filtered :=True;
        Requery();
        dm.RvProject1.ExecuteReport('Report2');
        Active:=false;
        SQL.Text:= 'Select * from Zakaz';
        Active:=true;
        dm.QZakaz.Requery();
    end
    else begin
        Showmessage('Не выбран вид работы');
        Filtered:=False;
        Active:=false;
        SQL.Text:= 'Select * from Zakaz order by vid_rab';
        Active:=true;
         Requery();
        dm.RvProject1.ExecuteReport('Report2');
        Active:=false;
        SQL.Text:= 'Select * from Zakaz';
        Active:=true;
        dm.QZakaz.Requery();
    end;


  end;

end;

procedure TForm3.Button5Click(Sender: TObject);
begin
  with dm.QZakaz do
    begin
      Filtered :=False;
      Active:=false;
      SQL.Text:= 'Select * from Zakaz';
      Active:=true;
      Requery();
    end;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
  with dm.QZakaz do
    begin
      Filtered :=False;
      Active:=false;
      SQL.Text:= 'Select * from Zakaz order by DataZ';
      Active:=true;
      Requery();
      dm.RvProject1.ExecuteReport('Report4');
    end;
end;

end.
