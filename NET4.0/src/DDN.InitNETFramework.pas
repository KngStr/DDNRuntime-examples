//-----------------------------------------------------------//
//                                                           //
//     DDN.InitNETFramework                                  //
//     Author: ying32                                        //
//    .NET Core                                              //
//-----------------------------------------------------------//
//     ���ܣ���ʼ��.NET Framework���л���                    //
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
