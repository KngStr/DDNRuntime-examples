[中文](README.zh-CN.md)   | English      

-----

# DDNRuntime

 DDNRuntime(Delphi .NET Runtime)  

----
 **Reminder: alpha test.**    
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
* The minimum requirement is `Rad Studio XE3`.
* `DDNRuntimex86.dll` or `DDNRuntimex64.dll`。

## Not supported

* Generic type (excluding generic interface).

## Buy

* Contact: [KngStr](https://github.com/KngStr)
* Price List:

| Subscription type  |  Price(US dollar)   |             explain              |
| :----------------: | :-----------------: | :------------------------------: |
|  Personal Edition  | $???? / 1 developer | Only DCU and DLL, no source code |
| Enterprise Edition | $???? / ? developer | Only DCU and DLL, no source code |

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