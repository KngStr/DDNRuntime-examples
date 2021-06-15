[中文](README.zh-CN.md)   | English      

-----

# DDNRuntime

 DDNRuntime(Delphi .NET Runtime)  
 
 ----  
 **Reminder: It has not been officially released yet.**    
 ----  
 
 **This is not an open source and free project. Only examples are stored here.**  
 
## Features

* No need for COM support.
* It is very simple to use, just declare the type and method of .NET in Delphi.
* Dedicated translation tool, input a .NET assembly dll, output one or more Delphi import units.
* Support interface types (including generic interface).
* Support dynamic array (one-dimensional array).

 
## Requires

* [.NET Framework v4.0](https://www.microsoft.com/en-us/download/details.aspx?id=17851). 
* [Visual C++ Redistributable for Visual Studio 2015(msvcp140.dll, vcruntime140.dll)](https://www.microsoft.com/en-us/download/details.aspx?id=48145).
* `Delphi Unicode` version, support `System.Rtti`, support `record helper for` syntax, support `inline`.

## Not supported

* Generic type (excluding generic interface).
* Delegate type(not fully supported).

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

procedure TestMemoryStream;
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

procedure TestReflection;
var
  LType: DNType;
  LMethods: TArray<DNMethodInfo>;
  LM: DNMethodInfo;
  LParams: TArray<DNParameterInfo>;
  LP: DNParameterInfo;
  I: Integer;
begin
  LType := TDNType.GetType<DNMemoryStream>();
 // LType := TDNType.DNClass.GetType('System.IO.MemoryStream');
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


end.
  

```