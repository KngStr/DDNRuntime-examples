program ProAspose;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.Math,
  DDN.Runtime,
  uPdf in '..\..\src\uPdf.pas',
  uWords in '..\..\src\uWords.pas',
  uSlides in '..\..\src\uSlides.pas',
  uCells in '..\..\src\uCells.pas';

procedure TestProc;
begin
  TestPdf;
  TestWords;
  TestCells;
  TestSlides;
end;

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
