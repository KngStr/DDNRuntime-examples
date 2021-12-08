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
