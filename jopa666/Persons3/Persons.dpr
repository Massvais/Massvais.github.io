program Persons;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FrmMain},
  Unit2 in 'Unit2.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
