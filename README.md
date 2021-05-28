# DDNRuntime-examples
 Delphi .NET Runtime example
 
## Requires

* .NETFramework v4.0 
* vs2017 runtime library(msvcp140.dll, vcruntime140.dll).
* Delphi Unicode version and support System.Rtti. 

## Usage:

```pascal

unit DDNTest;

interface

uses
  System.SysUtils,
  DDN.Runtime,
  DDN.mscorlib,
  DDN.PowDLL;
  
implementation

procedure TestSystemMemoryStream;
var
  LMem: DNMemoryStream;
  LBytes: TArray<Byte>;
  B: Byte;
  LReadLen: Integer;
begin
  LMem := TDNMemoryStream.Create;
  
  LMem.Write([1,2,3,4,5], 0, 5);
  LMem.WriteByte(121);
  LMem.Flush;
  LMem.Position := 0;

  Writeln('data Length: ', LMem.Length);
  SetLength(LBytes, LMem.Length);
  LReadLen :=  LMem.Read(LBytes, 0, Length(LBytes));
  Writeln('len: ', LReadLen);
  for b in LBytes do
    Write(b, ' ');
  Writeln;
end;

procedure TestSystemType;
var
  LType: DNType;
  LMethods: TArray<DNMethodInfo>;
  LM: DNMethodInfo;
  LParams: TArray<DNParameterInfo>;
  LP: DNParameterInfo;
  I: Integer;
begin
  LType := TDNType.DNClass.GetType('System.IO.MemoryStream');
  Writeln('LType ptr=', NativeUint(LType));
  if LType <> nil then
  begin
    LMethods := LType.GetMethods;
    Writeln('method Count: ', Length(LMethods));
    for LM in Lmethods do
    begin
      Writeln(Format('method Name：%s', [LM.Name]));
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


procedure TestPowDLLCode;
var
  LDoc: DNPowderFileTypes;
  LObj: DNObject;
  LType: DNType;
  Y, LStart, LStep, LStop: DNFieldInfo;
  YV: DNArray;
  LStartV, LStepV, LStopV: Single;
//  YV, LStartV, LStepV, LStopV: DNObject;
begin
  Writeln('PowDLL.dll: ', LongWord( TBridge.LoadAssemblyModule(ExtractFilePath(ParamStr(0)) + 'PowDLL.dll')));
  LDoc := TDNPowderFileTypes.Create;
  LObj := nil;
  Writeln('Result:', LDoc.LoadDataFromFile('1.raw', LObj, DNPowderFileTypes_ShowErrors.ShowErr));
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
  //Writeln('Result:', LDoc.DoFileConversion('1.raw', '1.raw.xy', DNShowErrors.DontShowErr));
end;

end.
  

```