program ProAspose;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.Math,
  DDN.Runtime,
  DDN.mscorlib,
  uReg in '..\uReg.pas',
  uPdf in 'uPdf.pas',
  uWords in 'uWords.pas',
  uSlides in 'uSlides.pas',
  uCells in 'uCells.pas';

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
    TestProc;
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  Readln;
end.
