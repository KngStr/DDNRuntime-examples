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
    {$MESSAGE WARN '当前因编译器限制，不支持泛型，如需要使用泛型，请使用XE8或者以上版本'}
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
  InitNETCore(DotNetCoreDefaultPath, [{附加的搜索目录，默认为.NET核心目录和当前运行路径(Additional search directory, the default is the .NET core directory and the current running path)}]);

finalization



end.
