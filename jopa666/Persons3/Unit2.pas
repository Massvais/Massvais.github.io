unit Unit2;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    con1: TADOConnection;
    tblPersons: TADOTable;
    qryZapros1: TADOQuery;
    dsPersons: TDataSource;
    dsZapros1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
