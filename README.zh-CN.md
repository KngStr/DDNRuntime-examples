中文   | [English](README.md)    

-----

# DDNRuntime

 DDNRuntime(Delphi .NET/.NET Core Runtime)  

----
 **最新版本：v0.1.24**    
  
 #### 更新日志
 
 [前往查看](NEWS-README.zh-CN.md)
 
----  

 **这不是一个开源和免费的项目。这里只存放一些示例。**  

## 特性

* 不需要COM的支持。
* 使用非常的简单，只需要在Delphi中申明.NET的类型和方法即可。
* 专门的翻译工具，输入一个或者多个.NET的程序集DLL，即可输出一个或者两个Delphi导入单元。
* 支持接口类型。
* 支持动态数组（一维数组）。
* 支持委托类型。
* 支持委事件。
* 泛型类型（有限的支持。暂不支持嵌套的泛型，比如：`DNICollection<DNKeyValuePair<TKey, TValue>>`这类的多层嵌套）。


## 要求

* .NET Framework 4.x  (仅支持Windows)

	* [.NET Framework v4.x](https://dotnet.microsoft.com/download/dotnet-framework)。
	* [VC++ 2015运行库(v140)](https://www.microsoft.com/zh-cn/download/details.aspx?id=48145)。

* .NET Core ( 计划支持跨平台 )

	* [NET Core 2.1](https://dotnet.microsoft.com/download/dotnet/2.1) ，配置运行时版本见 [DDNC.InitNETCore](src/DDNC.InitNETCore.pas)。
	* [NET Core 3.1](https://dotnet.microsoft.com/download/dotnet/3.1) ，配置运行时版本见 [DDNC.InitNETCore](src/DDNC.InitNETCore.pas)。
	* [NET 5.0](https://dotnet.microsoft.com/download/dotnet/5.0) ，配置运行时版本见 [DDNC.InitNETCore](src/DDNC.InitNETCore.pas)。

* 最低要求`Rad Studio XE3`（推荐使用高版本）。

## 暂不支持


## 正在实现中的特性

* 暂无。

## 试用  

获取[DDNRuntime试用文件](https://github.com/ying32/DDNRuntime-examples/releases)，复制你所使用的Delphi版本Duc文件到`DDNRuntime\Win32`或者`DDNRuntime\Win64`。

## 购买

* 联系人：[KngStr](mailto:kngstr@qq.com)
* 价格表：

| 订阅类型 | 价格/一年(人民币)  | 续订价格/1年(人民币) |        说明        |
| :------: | :----------------: | :------------------: | :----------------: |
|  个人版  | ￥???? / 1个开发者 |        ￥????        | 仅DCU和DLL，无源码 |
|  企业版  | ￥???? / 10开发者  |        ￥????        | 仅DCU和DLL，无源码 |

**注：？？？？？？？**

## 导出的公共函数或者类属性和方法

* DDN.Runtime (无源代码)
```pascal

  IID_IDN_Name = '{B130231B-447A-48F5-B476-43FB07E99457}';
  IID_IDN: TGUID = '{B130231B-447A-48F5-B476-43FB07E99457}';

  IID_IDNClass_Name = '{E0CE1E32-5502-4F10-B263-6490F332E340}';
  IID_IDNClass: TGUID = '{E0CE1E32-5502-4F10-B263-6490F332E340}';

  IID_IDNInstance_Name = '{152F4F46-D220-423A-8135-FE6DF52A7932}';
  IID_IDNInstance: TGUID = '{152F4F46-D220-423A-8135-FE6DF52A7932}';

  IID_ILocalObject_Name = '{C4A9BE07-6DF9-448A-856F-9323768D36FE}';
  IID_ILocalObject: TGUID = '{C4A9BE07-6DF9-448A-856F-9323768D36FE}';

  IID_DNObject_Name = '{81C5FE01-027C-3E1C-98D5-DA9C9862AA21}';
  IID_DNObjectClass_Name = '{52839F0D-B981-46B3-8A5C-5C7B1449E1EB}';
  DNObject_FullName = 'System.Object';

  /// <summary>
  ///   DotNet中原生指针，实际定义为一个class，用于防止被GC。
  /// </summary>
  DNNObject = type Pointer;

  IDN = interface
    [IID_IDN_Name]
  end;

  IDNClass = interface(IDN)
    [IID_IDNClass_Name]
  end;

  IDNInstance = interface(IDN)
    [IID_IDNInstance_Name]
  end;

  /// <summary>
  ///   用于获取保存的DotNet实例
  /// </summary>
  ILocalObject = interface(IDN)
    [IID_ILocalObject_Name]
    function GetObjectID: DNNObject;
  end;

  /// <summary>
  ///   加载程序集
  /// </summary>
  /// <param name="AFileName">一个绝对的程序集文件名（全路径）</param>
  /// <param name="AIsSystem">当为True时，AFileName不需要传入绝对路径，默认值为False</param>
  /// <param name="AFullName">对于比对是否已加载的程序集，默认值为空</param>
  function LoadAssemblyModule(const AFileName: string; AIsSystem: Boolean = False; AFullName: string = ''): Boolean;
  
  /// <summary>
  ///   设置是否显示.NET异常的详细信息
  /// </summary>
  procedure SetShowDetailedExceptionMessage(AValue: Boolean);
```

* DDN.mscorlib.TDNGenericImport
```pascal
  /// <summary>
  /// 从DotNet原生对象中返回实例对象
  /// </summary>
  class function Wrap(ADNObjectID: DNNObject): T; overload; static;
  /// <summary>
  /// 从一个接口实例中返回对象
  /// </summary>
  class function Wrap(const AInstance: IDNInstance): T; overload; static;
  /// <summary>
  /// 调用DotNet中构造方法或者静态方法。
  /// </summary>
  class property DNClass: C read GetDNClass;
  /// <summary>
  /// 创建DotNet实例对象，调用默认构造函数
  /// </summary>
  class function Create: T; static;
  /// <summary>
  /// clsID意为DotNet中实例原生指针
  /// </summary>
  class function GetClsID: DNNObject; static;
  /// <summary>
  /// .NET类型信息
  /// </summary>
  class property typeid: DNType read GetTypeId;
```

**注：所有导入的.NET类型以`DN`开头，如`DNType`，非接口类型导入器以`TDN`+.NET类型，如：`TDNType`。如遇.NET中枚举值名与Delphi关键字重名则在名称结尾加上`_`表示。**

## 使用方法：

```pascal

unit DDNTest;

interface

uses
  System.SysUtils,
  DDN.Runtime,
  DDN.mscorlib;
  
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
  LType := TDNMemoryStream.typeid;
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

* 委托 
```pascal
type
  TDelegateClass = class
  public
    // 一个方法，可以是实例方法或者class方法。
    class function CheckValidationResult(sender: DNObject; certificate: DNX509Certificate; chain: DNX509Chain;  errors: DNSslPolicyErrors): Boolean;
  end;
  
class function TDelegateClass.CheckValidationResult(
  sender: DNObject;
  certificate: DNX509Certificate;
  chain: DNX509Chain;
  errors: DNSslPolicyErrors): Boolean;
begin
  Writeln('call TDelegateTest.CheckValidationResult: ');
  Writeln('sender: ', sender.ToString);
  Writeln('certificate: ',  certificate.ToString);
  Writeln('chain: ', chain.ToString);
  Writeln('errors: ', errors);
  Result := True;
end; 
  
TDNServicePointManager.DNClass.ServerCertificateValidationCallback := TDelegateClass.CheckValidationResult;
```

* 事件 
```pascal
type
  // test
  TEventClass = class
  public
    // 一个方法，可以是实例方法或者class方法。
   class procedure OnButtonClick(sender: DNObject; e: DNEventArgs);
  end;
  
class procedure TEventClass.OnButtonClick(sender: DNObject; e: DNEventArgs);
begin
  TDNMessageBox.DNClass.Show('Button.Click: ' + sender.ToString);
//  TDNButton.Wrap(Sender).remove_Click(TDelegateTest.OnButtonClick);
end;
  
function CreateMainForm(): DNForm;
var
  LButton: DNButton;
  LR: DNRectangle;
  //LEdit: DNTextBox;
begin
  LR := TDNScreen.DNClass.PrimaryScreen.Bounds;

  Result := TDNForm.Create;
  Result.Text := 'Delphi .NET Runtime';

  LButton := TDNButton.Create;
  LButton.Text := 'Hello';
  LButton.add_Click(TEventClass.OnButtonClick);
  LButton.Location := TDNPoint.DNClass.init(100, 100);
  Result.Controls.Add(LButton);

  //Result.StartPosition := DNFormStartPosition.Manual;
  Result.StartPosition := DNFormStartPosition.CenterScreen;
  //Result.Location :=  TDNPoint.DNClass.init((LR.Width - Result.Width) div 2, (LR.Height - Result.Height) div 2);
end;

 
begin
  TDNApplication.DNClass.EnableVisualStyles();
  TDNApplication.DNClass.SetCompatibleTextRenderingDefault(False);
  TDNApplication.DNClass.Run(CreateMainForm());
end.
```