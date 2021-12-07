//-----------------------------------------------------------//
//                                                           //
//     DDN.InitNETFramework                                  //
//     Author: ying32                                        //
//    .NET Framework 4.x                                     //
//-----------------------------------------------------------//
//    Initialize the .NET Framework runtime environment      //
//-----------------------------------------------------------//
unit DDN.InitNETFramework;

{$IFNDEF MSWINDOWS}
  {$MESSAGE FATAL '.NET Framework only supports Windows.'}
{$ENDIF}

interface

uses
{$IFDEF MSWINDOWS}
  Winapi.Windows,
{$ENDIF}
  System.SysUtils,
  DDN.Runtime;

implementation


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
  InitNETFramework;

finalization



end.
