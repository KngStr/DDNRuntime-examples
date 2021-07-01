program ProReflection;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  DDN.Runtime,
  DDN.mscorlib,
  uReg in '..\uReg.pas';

procedure TestProc;
var
  LType: DNType;
  LMethods: TArray<DNMethodInfo>;
  LM: DNMethodInfo;
  LParams: TArray<DNParameterInfo>;
  LP: DNParameterInfo;
  I: Integer;
begin
  LType := TDNMemoryStream.typeid;
 // LType := TDNType.DNClass.GetType('System.IO.MemoryStream');
  Writeln('LType ptr=', NativeUint(LType));
  if LType <> nil then
  begin
    LMethods := LType.GetMethods;
    Writeln('Method Length: ', Length(LMethods));
    for LM in Lmethods do
    begin
      Writeln(Format('Method Name: %s', [LM.Name]));
      LParams := LM.GetParameters;
      I := 0;
      for LP in LParams do
      begin
        if I > 0 then
          write('; ');
        Write(Format('%s: %s', [LP.Name, LP.ParameterType.FullName]));
        Inc(I);
      end;
      Writeln('');
    end;
  end;
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
