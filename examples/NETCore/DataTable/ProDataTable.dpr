program ProDataTable;

{$APPTYPE CONSOLE}

{$R *.res}


uses
  System.SysUtils,
  DDN.Runtime,
  DDNC.System.Runtime.InteropServices,
  uDataTable in '..\..\src\uDataTable.pas';


begin
  ReportMemoryLeaksOnShutdown := True;
  try
    SetShowDetailedExceptionMessage(True);
    Writeln('RuntimeDirectory=', TDNRuntimeEnvironment.DNClass.GetRuntimeDirectory);
    TestProc;
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  Readln;
end.
