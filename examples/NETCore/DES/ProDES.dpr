program ProDES;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uDES in '..\..\src\uDES.pas';

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
