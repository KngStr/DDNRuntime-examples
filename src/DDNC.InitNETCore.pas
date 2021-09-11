//-----------------------------------------------------------//
//                                                           //
//     DDNC.InitNETCore                                       //
//     Author: ying32                                        //
//    .NET Core                                              //
//-----------------------------------------------------------//
//     ���ܣ���ʼ��.NET Core���л���                         //
//-----------------------------------------------------------//
unit DDNC.InitNETCore;

interface

uses
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

initialization
  /// <summary>
  ///   Init it
  /// </summary>
  InitNETCore(DotNetCoreDefaultPath, [{���ӵ�����Ŀ¼��Ĭ��Ϊ.NET����Ŀ¼�͵�ǰ����·��}]);

finalization



end.
