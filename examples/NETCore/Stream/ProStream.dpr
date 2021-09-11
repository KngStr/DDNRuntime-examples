program ProStream;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uStream in '..\..\src\uStream.pas';

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
