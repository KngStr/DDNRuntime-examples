中文   | [English](README.md)    

-----

# DDNRuntime

 DDNRuntime(Delphi .NET Runtime)  
 
----  
 **温馨提示：当前还未对外正式发布。**    
----  
 
 **这不是一个开源和免费的项目。这里只存放一些示例。**  
 
## 特性

* 不需要COM的支持。
* 使用非常的简单，只需要在Delphi中申明.NET的类型和方法即可。
* 专门的翻译工具，输入一个.NET的程序集dll，即可输出一个或者多个Delphi导入单元。
* 支持接口类型（含泛型接口）。
* 支持动态数组（一维数组）。

 
## 要求

* [.NET Framework v4.0](https://www.microsoft.com/zh-cn/download/details.aspx?id=17851)。
* [VC++ 2015运行库(msvcp140.dll, vcruntime140.dll)](https://www.microsoft.com/zh-cn/download/details.aspx?id=48145)。
* 最低要求`Rad Studio XE3`。

## 暂不支持

* 泛型类型（不含泛型接口）。
* 委托类型（不完全支持）。

## 使用方法：

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