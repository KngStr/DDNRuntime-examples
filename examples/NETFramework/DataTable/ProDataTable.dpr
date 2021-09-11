program ProDataTable;

{$APPTYPE CONSOLE}

{$R *.res}


uses
  System.SysUtils,
  DDN.Runtime,
  uDataTable in '..\..\src\uDataTable.pas';


begin
  ReportMemoryLeaksOnShutdown := True;
  try
    SetShowDetailedExceptionMessage(True);
    TestProc;
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  Readln;
end.
