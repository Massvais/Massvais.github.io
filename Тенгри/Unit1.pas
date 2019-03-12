unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, data, ExtCtrls;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
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
begin
dbgrid1.Options := dbgrid1.Options + [dgEditing];
dm.ADOVid1.Insert;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
with dm.ADOVid1 do
    begin
      // заполнение полей
      if dbedit1.Text<>'' then Fields[1].AsString := dbedit1.Text
      else begin
        Showmessage('Пустое поле "Вид работы"');
        dm.ADOVid1.Cancel;
        dm.ADOVid1.Requery();
        exit;
      end;
      if dbedit2.Text<>'' then Fields[2].AsInteger := StrToInt(dbedit2.Text)
      else begin
        Showmessage('Пустое поле "Стоимость"');
        dm.ADOVid1.Cancel;
        dm.ADOVid1.Requery();
        exit;
      end;
      Post; // Сохранение данных в таблице
      dm.ADOVid1.Sort:='vid';
      Requery();
  end;
 dbgrid1.Options := dbgrid1.Options - [dgEditing];
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
dbgrid1.Options := dbgrid1.Options - [dgEditing];
  dm.ADOVid1.Cancel;
  dm.ADOVid1.Requery();
end;

procedure TForm1.DBGrid1TitleClick(Column: TColumn);
var ss : string;
begin
  with dm.ADOVid1 do
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
  dm.ADOVid1.Sort:=Column.FieldName + ss;

end;

end.
