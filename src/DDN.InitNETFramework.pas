//-----------------------------------------------------------//
//                                                           //
//     DDN.InitNETFramework                                  //
//     Author: ying32                                        //
//    .NET Core                                              //
//-----------------------------------------------------------//
//     功能：初始化.NET Framework运行环境                    //
//-----------------------------------------------------------//
unit DDN.InitNETFramework;

{$IFNDEF MSWINDOWS}
  {$MESSAGE FATAL '.NET Framework only supports Windows.'}
{$ENDIF}

interface

uses
  DDN.Runtime;

implementation


initialization
  /// <summary>
  ///   Init it
  /// </summary>
  InitNETFramework;

finalization



end.
