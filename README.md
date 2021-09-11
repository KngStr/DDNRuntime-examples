[中文](README.zh-CN.md)   | English      

-----

# DDNRuntime

 DDNRuntime(Delphi .NET Runtime)  

----
 **Latest version: v0.1.24**    
 
 #### What's news 
 
 [Go to view](NEWS-README.md)
 
 ----  

 **This is not an open source and free project. Only examples are stored here.**  

## Features

* No need for COM support.
* It is very simple to use, just declare the type and method of .NET in Delphi.
* Dedicated translation tool, input one or more .NET assembly DLL, output one or two Delphi import units.
* Support interface types.
* Support dynamic array (one-dimensional array).
* Support Delegate type.
* Support Event.
* Generic type (Limited support.Currently does not support nested generics, such as: `DNICollection<DNKeyValuePair<TKey, TValue>>` such multi-level nesting).

## Requires

* .NET Framework 4.x  ( Only supports Windows )

	* [.NET Framework v4.x](https://dotnet.microsoft.com/download/dotnet-framework) . 
	* [Visual C++ Redistributable for Visual Studio 2015(v140)](https://www.microsoft.com/en-us/download/details.aspx?id=48145).

* .NET Core  ( Plan to support cross-platform )

	* [NET Core 2.1](https://dotnet.microsoft.com/download/dotnet/2.1), Please refer to [DDNC.InitNETCore](src/DDNC.InitNETCore.pas) to configure the runtime version.. 
	* [NET Core 3.1](https://dotnet.microsoft.com/download/dotnet/3.1), Please refer to [DDNC.InitNETCore](src/DDNC.InitNETCore.pas) to configure the runtime version.. 
	* [NET 5.0](https://dotnet.microsoft.com/download/dotnet/5.0), Please refer to [DDNC.InitNETCore](src/DDNC.InitNETCore.pas) to configure the runtime version.. 

* The minimum requirement is `Rad Studio XE3`(High version is recommended).

## Not supported


## Implementing features

* Nothing.

## Trial

Get [DDNRuntime trial file](https://github.com/ying32/DDNRuntime-examples/releases), copy the Duc file of the Delphi version you are using to `DDNRuntime\Win32` or `DDNRuntime\Win64`.

## Buy

* Contact: [KngStr](mailto:kngstr@qq.com)
* Price List:

| Subscription type  | Price / 1 Year(US dollar) | Renewal price/1 year |             explain              |
| :----------------: | :-----------------------: | :------------------: | :------------------------------: |
|  Personal Edition  |    $???? / 1 developer    |        $????         | Only DCU and DLL, no source code |
| Enterprise Edition |   $???? / 10 developers   |        $????         | Only DCU and DLL, no source code |

**Note: ??????? **

## Exported public functions or class attributes and methods

* DDN.Runtime (No source code)
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
  ///   The native pointer in DotNet is actually defined as a class to prevent being GC.
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
  ///   Used to get the saved DotNet instance
  /// </summary>
  ILocalObject = interface(IDN)
    [IID_ILocalObject_Name]
    function GetObjectID: DNNObject;
  end;

  /// <summary>
  ///   Load assembly
  /// </summary>
  /// <param name="AFileName">An absolute assembly file name (full path)</param>
  /// <param name="AIsSystem">When True, AFileName does not need to pass in an absolute path, the default value is False</param>
  /// <param name="AFullName">For the assembly that has been loaded, the default value is empty</param>
  function LoadAssemblyModule(const AFileName: string; AIsSystem: Boolean = False; AFullName: string = ''): Boolean;
  
  /// <summary>
  ///   Set whether to display the detailed information of .NET exceptions
  /// </summary>
  procedure SetShowDetailedExceptionMessage(AValue: Boolean);
```
* DDN.mscorlib.TDNGenericImport
```pascal
  /// <summary>
  /// Return instance objects from DotNet native objects
  /// </summary>
  class function Wrap(ADNObjectID: DNNObject): T; overload; static;
  /// <summary>
  /// Return an object from an interface instance
  /// </summary>
  class function Wrap(const AInstance: IDNInstance): T; overload; static;
  /// <summary>
  /// Call the constructor or static method in DotNet.
  /// </summary>
  class property DNClass: C read GetDNClass;
  /// <summary>
  /// Create a DotNet instance object, call the default constructor
  /// </summary>
  class function Create: T; static;
  /// <summary>
  /// clsID means the native pointer of the instance in DotNet
  /// </summary>
  class function GetClsID: DNNObject; static;
  /// <summary>
  /// .NET type information
  /// </summary>
  class property typeid: DNType read GetTypeId;
```

**Note: All imported .NET types start with `DN`, such as `DNType`, and non-interface type importers start with `TDN`+.NET type, such as: `TDNType`. If the enumeration value name in .NET has the same name as the Delphi keyword, add `_` at the end of the name.**

## Usage:

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

* Delegate 
```pascal
type
  TDelegateClass = class
  public
    // A method can be an instance method or a class method.
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

* Event 
```pascal
type
  // test
  TEventClass = class
  public
    // A method can be an instance method or a class method.
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