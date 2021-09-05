program ProJScript;

{$R *.res}

uses
  System.SysUtils,
  Winapi.ActiveX,
  DDN.Runtime,
  DDN.mscorlib,
  DDN.Microsoft.JScript,
  uReg in '..\uReg.pas';


const
  TestJSCode =
     'var a = 1;' + sLineBreak +
     'var b = "C# object";' + sLineBreak +
     'function test() {' + sLineBreak +
     '   return a + "-" + b;'  + sLineBreak +
     '}' + sLineBreak +
     '// call test' + sLineBreak +
     'test();';

procedure TestProc;
var
  LEngine: DNVsaEngine;
  LRet: DNObject;
begin
  try
    LEngine := TDNVsaEngine.DNClass.CreateEngine();
    LRet := TDNEval.DNClass.JScriptEvaluate(TDNString.DNClass.init(TestJSCode), LEngine);
    if LRet <> nil then
      Writeln(LRet.ToString);
    Writeln('done.');
    LEngine.Close;
  except
    on E: Exception do
      Writeln('exception: ', e.Message);

  end;
end;


begin
  ReportMemoryLeaksOnShutdown := True;
  try
    SetShowDetailedExceptionMessage(True);
    TestProc;
  except
    on E: Exception do
    begin
      Writeln(E.ClassName, ': ', E.Message);
      Readln;
    end;
  end;
  Readln;
end.
