[中文](README.zh-CN.md)   | English      

-----

# DDNRuntime

 DDNRuntime(Delphi .NET Runtime)  

----
 **Reminder: Preparing to be officially released. . .**    
 ----  

 **This is not an open source and free project. Only examples are stored here.**  

## Features

* No need for COM support.
* It is very simple to use, just declare the type and method of .NET in Delphi.
* Dedicated translation tool, input one or more .NET assembly DLL, output one or two Delphi import units.
* Support interface types (including generic interface).
* Support dynamic array (one-dimensional array).
* Support Delegate type.
* Support Event.

## Requires

* [.NET Framework v4.0](https://www.microsoft.com/en-us/download/details.aspx?id=17851) . 
* [Visual C++ Redistributable for Visual Studio 2015(v140)](https://www.microsoft.com/en-us/download/details.aspx?id=48145).
* The minimum requirement is `Rad Studio XE3`(High version is recommended).
* `DDNRuntimex86.dll` or `DDNRuntimex64.dll`.

## Not supported

* Generic type (excluding generic interface).

## Trial

Get [DDNRuntime trial file](trial), copy the Duc file of the Delphi version you are using to `DDNRuntime\Win32` or `DDNRuntime\Win64`, copy `DDNRuntimex86.dll` to `examples\bin-Win32` or copy `DDNRuntimex64.dll` to `examples\bin-Win64`.

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
  /// <summary>
  ///   Load assembly
  /// </summary>
  /// <param name="AFileName">An absolute assembly file name (full path)</param>
  /// <param name="AIsSystem">When True, AFileName does not need to pass in an absolute path, the default value is False</param>
  function LoadAssemblyModule(const AFileName: string; AIsSystem: Boolean = False): Boolean;
  
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

**Note: All imported .NET types start with `DN`, such as `DNType`, and non-interface type importers start with `TDN`+.NET type, such as: `TDNType`. If the enumeration value name in .NET has the same name as the Delphi keyword, add `_` at the end of the name. **

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
  LR: DDN.Forms.Common.DNRectangle;
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