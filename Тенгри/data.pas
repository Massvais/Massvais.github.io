unit data;

interface

uses
  SysUtils, Classes, DB, ADODB, RpBase, RpSystem, RpRave, RpDefine, RpCon,
  RpConDS;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOZakaz: TADOTable;
    ADOVid: TADOTable;
    DSZak: TDataSource;
    DSVid: TDataSource;
    QZakaz: TADOQuery;
    DSQ: TDataSource;
    QVid: TADOQuery;
    RvDataSetConnection1: TRvDataSetConnection;
    RvProject1: TRvProject;
    ADOVid1: TADOTable;
    DS1: TDataSource;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    RvSystem1: TRvSystem;
    DataSource2: TDataSource;
    procedure RvDataSetConnection1GetCols(Connection: TRvCustomConnection);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

procedure TDM.RvDataSetConnection1GetCols(Connection: TRvCustomConnection);
begin
//dm.RvDataSetConnection1.WriteField('vid_rab',dtString,50,'vid_rab','');
end;

end.
