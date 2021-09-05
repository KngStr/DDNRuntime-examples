//-----------------------------------------------------------//
//                                                           //
//     DDN.InitNETCore                                       //
//     Author: ying32                                        //
//    .NET Core                                              //
//-----------------------------------------------------------//
//     功能：初始化.NET Core运行环境                         //
//-----------------------------------------------------------//
unit DDNC.InitNETCore;

interface

uses
  DDN.Runtime;

implementation

const
{$IF Defined(MSWINDOWS) or Defined(WINDOWS)}
  {$IFDEF CPUX64}
     DotNetCoreDefaultPath = 'C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.1.13';
  {$ELSE}
     DotNetCoreDefaultPath = 'C:\Program Files (x86)\dotnet\shared\Microsoft.NETCore.App\2.1.13';
  {$ENDIF}
{$ELSEIF Defined(LINUX)}
   DotNetCoreDefaultPath = '/usr/share/dotnet/shared/Microsoft.NETCore.App/2.1.30';
{$ELSEIF Defined(MACOS)}
   DotNetCoreDefaultPath = '';
{$ENDIF}

initialization
  /// <summary>
  ///   Init it
  /// </summary>
  InitNETCore(DotNetCoreDefaultPath, [{附加的搜索目录，默认为.NET核心目录和当前运行路径}]);

finalization



end.
