program ProWeb_HTTP;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uWeb_HTTP in '..\..\src\uWeb_HTTP.pas';

begin
  ReportMemoryLeaksOnShutdown := True;
  try
    TestProc;
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  Readln;
end.
