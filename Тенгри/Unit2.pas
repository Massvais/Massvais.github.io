unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Menus, data, ExtCtrls, ComCtrls, Unit3,
  DBCtrls, StdCtrls, Unit1, Mask;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    N3: TMenuItem;
    N7: TMenuItem;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    MonthCalendar1: TMonthCalendar;
    GroupBox2: TGroupBox;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DateTimePicker1: TDateTimePicker;
    DBCheckBox1: TDBCheckBox;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure N7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button2Click(Sender: TObject);
begin
dbgrid1.Options := dbgrid1.Options + [dgEditing];
dm.ADOZakaz.Insert;
edit1.Text:= '';
edit2.Text:= '1';
Monthcalendar1.Date:=Date;
Groupbox1.Visible:=true;
groupbox3.Visible:=false;
dbgrid1.Height:= 193;
 button2.Visible:=false;
 button4.Visible:=false;

end;


procedure TForm2.N7Click(Sender: TObject);
begin
   Halt; //завершаем программу
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  timer1.Enabled:=true;
  dbgrid1.Options := dbgrid1.Options - [dgEditing];
  edit1.Text:= '';
  edit2.Text:= '1';
  Groupbox1.Visible:=false;
  groupbox3.Visible:=false;
  dbgrid1.Height:=440;

end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels.Items [2].Text := DateToStr(Date) + ' ' + TimeToStr(Time);
end;

procedure TForm2.N3Click(Sender: TObject);
begin
Form3.Show;
end;



procedure TForm2.FormDestroy(Sender: TObject);
begin
timer1.Enabled:=False;
end;

procedure TForm2.Button1Click(Sender: TObject);
var sum: integer;
begin
    with dm.ADOZakaz do
    begin
      Edit;
      // заполнение полей
      if groupbox1.Visible=true then
      begin
        if edit1.Text<>'' then Fields[1].AsString := edit1.Text
        else begin
          Showmessage('Пустое поле "Заказчик"');
          dm.ADOZakaz.Cancel;
          dm.ADOZakaz.Requery();
          exit;
        end;
        if Dblookupcombobox1.Field.AsString<>'' then Fields[2].AsString := Dblookupcombobox1.Field.AsString
        else begin
          Showmessage('Не выбран вид работы');
          dm.ADOZakaz.Cancel;
          dm.ADOZakaz.Requery();
          exit;
        end;
        Fields[3].AsInteger := StrToInt(edit2.Text);
        Fields[4].AsDateTime := Date;
        Fields[5].AsDateTime := Monthcalendar1.Date;
        Fields[6].AsBoolean := checkbox1.Checked;
        Fields[7].AsInteger:= dm.DSVid.DataSet.FieldByName('Cost').AsInteger;
        Sum:= StrToInt(edit2.Text) * dm.DSVid.DataSet.FieldByName('Cost').AsInteger;
        Fields[8].AsInteger:= Sum;
      end
      else
      begin
        if dbedit1.Text<>'' then Fields[1].AsString := dbedit1.Text
        else begin
            Showmessage('Пустое поле "Заказчик"');
            dm.ADOZakaz.Cancel;
            dm.ADOZakaz.Requery();
            exit;
          end;
        if Dblookupcombobox1.Field.AsString<>'' then Fields[2].AsString := Dblookupcombobox1.Field.AsString
        else begin
          Showmessage('Не выбран вид работы');
          dm.ADOZakaz.Cancel;
          dm.ADOZakaz.Requery();
          exit;
        end;
        DateTimePicker1.Time := 0;
        Fields[3].AsInteger := StrToInt(dbedit2.Text);
        Fields[5].AsDateTime := datetimepicker1.Date;
        Fields[6].AsBoolean := dbcheckbox1.Checked;
        Fields[7].AsInteger:= dm.DSVid.DataSet.FieldByName('Cost').AsInteger;
        Sum:= StrToInt(edit2.Text) * dm.DSVid.DataSet.FieldByName('Cost').AsInteger;
        Fields[8].AsInteger:= Sum;
        end;
      dm.ADOZakaz.Post; // Сохранение данных в таблице
      dm.ADOZakaz.Requery();
  end;
 dbgrid1.Options := dbgrid1.Options - [dgEditing];
 groupbox1.Visible:=false;
 groupbox3.Visible:=false;
 dbgrid1.Height:=440;
  button2.Visible:=true;
  button4.Visible:=true;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
 dbgrid1.Options := dbgrid1.Options - [dgEditing];
 groupbox1.Visible:=false;
 groupbox3.Visible:=false;
 dbgrid1.Height:=440;
 dm.ADOZakaz.Cancel;
 dm.ADOZakaz.Requery();
  button2.Visible:=true;
  button4.Visible:=true;
end;

procedure TForm2.N4Click(Sender: TObject);
begin
form1.ShowModal;
end;

procedure TForm2.DBGrid1TitleClick(Column: TColumn);
var ss : string;
begin
  with dm.ADOZakaz do
  if FieldByName(Column.FieldName).Tag=0 then
   begin
    ss := ' ASC';
    FieldByName(Column.FieldName).Tag := 1;
   end
  else
   begin
    ss := ' DESC';
    FieldByName(Column.FieldName).Tag := 0;
   end;
  dm.ADOZakaz.Sort:=Column.FieldName + ss;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  dbgrid1.Options := dbgrid1.Options + [dgEditing];
  DateTimePicker1.Date:=dm.ADOZakaz.Fields[5].AsDateTime;
  dbgrid1.Height:= 193;
  groupbox1.Visible:=false;
  groupbox3.Visible:=true;
  button2.Visible:=false;
  button4.Visible:=false;
end;

end.
