program ProPowDLL;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  DDN.Runtime,
  DDN.mscorlib,
  DDN.PowDLL,
  uReg in '..\uReg.pas';

procedure TestProc;
var
  LDoc: DNPowderFileTypes;
  LObj: DNObject;
  LType: DNType;
  Y, LStart, LStep, LStop: DNFieldInfo;
  YV: DNArray;
  LStartV, LStepV, LStopV: Single;
//  YV, LStartV, LStepV, LStopV: DNObject;
begin
  Writeln('PowDLL.dll: ', LongWord( LoadAssemblyModule(ExtractFilePath(ParamStr(0)) + 'PowDLL.dll')));
  LDoc := TDNPowderFileTypes.Create;
  LObj := nil;
  Writeln('Result:', LDoc.LoadDataFromFile('1.raw', LObj, DNPowderFileTypes_ShowErrors.ShowErr));
  if LObj <> nil then
    Writeln('LObj <> nil')
  else
    Writeln('LObj = nil');
  if LObj <> nil then
  begin
     Writeln('LObj.ToString: ', LObj.ToString);
     LType := LObj.GetType;
     Y := LType.GetField('y');
     if Y = nil then
        Y := LType.GetField('Y');
      LStart := LType.GetField('LStart');
      LStep := LType.GetField('LStep');
      LStop :=  LType.GetField('LStop');
      Writeln(Format('Y=%p, LStart=%p, LStep=%p, LStop=%p',
       [Pointer(Y), Pointer(LStart), Pointer(LStep), Pointer(LStop)]));


//      YV := Y.GetValue(LObj);
//      LStartV := LStart.GetValue(LObj);
//      LStepV := LStep.GetValue(LObj);
//      LStopV := LStop.GetValue(LObj);

      YV := TDNArray.Wrap(Y.GetValue(LObj));
      LStartV := TDNDecimal.DNClass.ToSingle(TDNDecimal.Wrap(LStart.GetValue(LObj)));
      LStepV := TDNDecimal.DNClass.ToSingle(TDNDecimal.Wrap(LStep.GetValue(LObj)));
      LStopV := TDNDecimal.DNClass.ToSingle(TDNDecimal.Wrap(LStop.GetValue(LObj)));

//       Writeln(Format('YV=%p, LStartV=%s, LStepV=%s, LStopV=%s',
//       [Pointer(YV), Pointer(LStartV), Pointer(LStepV), Pointer(LStopV)]));

       Writeln(Format('YV=%d, LStartV=%f, LStepV=%f, LStopV=%f',
       [YV.Length, LStartV, LStepV, LStopV]));

  end;
//  TDNAssembly.DNClass.LoadFrom()
  //Writeln('Result:', LDoc.DoFileConversion('1.raw', '1.raw.xy', DNShowErrors.DontShowErr));
end;

begin
  // dll : http://users.uoi.gr/nkourkou/powdll/PowDLL_Setup.zip
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
