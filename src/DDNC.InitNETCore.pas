//-----------------------------------------------------------//
//                                                           //
//     DDNC.InitNETCore                                       //
//     Author: ying32                                        //
//    .NET Core                                              //
//-----------------------------------------------------------//
//     Initialize the .NET Core runtime environment          //
//-----------------------------------------------------------//
unit DDNC.InitNETCore;

{$IF RTLVersion < 29.0}
  {$IFNDEF ZH_HANS}
    {$MESSAGE WARN 'Currently, due to compiler restrictions, generics are not supported. If you need to use generics, please use XE8 or above'}
  {$ELSE}
    {$MESSAGE WARN '��ǰ����������ƣ���֧�ַ��ͣ�����Ҫʹ�÷��ͣ���ʹ��XE8�������ϰ汾'}
  {$ENDIF ZH_HANS}
{$ENDIF}

interface

uses
{$IFDEF MSWINDOWS}
  Winapi.Windows,
{$ENDIF}
  System.SysUtils,
  DDN.Runtime;

implementation

const
{$IF Defined(MSWINDOWS) or Defined(WINDOWS)}
  {$IFDEF CPUX64}
     DotNetCoreDefaultPath = 'C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.1.30';
//     DotNetCoreDefaultPath = 'C:\Program Files\dotnet\shared\Microsoft.NETCore.App\3.1.18';
//     DotNetCoreDefaultPath = 'C:\Program Files\dotnet\shared\Microsoft.NETCore.App\5.0.9';
  {$ELSE}
     DotNetCoreDefaultPath = 'C:\Program Files (x86)\dotnet\shared\Microsoft.NETCore.App\2.1.30';
//     DotNetCoreDefaultPath = 'C:\Program Files (x86)\dotnet\shared\Microsoft.NETCore.App\3.1.18';
//     DotNetCoreDefaultPath = 'C:\Program Files (x86)\dotnet\shared\Microsoft.NETCore.App\5.0.9';
  {$ENDIF}
{$ELSEIF Defined(LINUX)}
   DotNetCoreDefaultPath = '/usr/share/dotnet/shared/Microsoft.NETCore.App/2.1.30';
//   DotNetCoreDefaultPath = '/usr/share/dotnet/shared/Microsoft.NETCore.App/3.1.18';
//   DotNetCoreDefaultPath = '/usr/share/dotnet/shared/Microsoft.NETCore.App/5.0.9';
{$ELSEIF Defined(MACOS)}
   DotNetCoreDefaultPath = '';
{$ENDIF}

procedure DoInternalLoadAssemblyException(AException: Exception);
begin
{$IFDEF MSWINDOWS}
  {$IFDEF not Defined(CONSOLE)}
    OutputDebugString(PWideChar(AException.Message));
  {$ELSE}
    Writeln(AException.Message);
  {$ENDIF}
{$ELSE}
    Writeln(AException.Message);
{$ENDIF}
end;

initialization
  InternalLoadAssemblyExceptionProc := @DoInternalLoadAssemblyException;
  /// <summary>
  ///   Init it
  /// </summary>
  InitNETCore(DotNetCoreDefaultPath, [{���ӵ�����Ŀ¼��Ĭ��Ϊ.NET����Ŀ¼�͵�ǰ����·��(Additional search directory, the default is the .NET core directory and the current running path)}]);

finalization



end.
