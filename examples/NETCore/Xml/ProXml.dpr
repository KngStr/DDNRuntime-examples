program ProXml;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uXml in '..\..\src\uXml.pas';

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
