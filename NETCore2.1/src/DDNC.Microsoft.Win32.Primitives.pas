//----------------------------------------------------------------------------
//  Microsoft.Win32.Primitives.dll: Microsoft.Win32.Primitives, Version=4.1.1.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 2.1
//----------------------------------------------------------------------------
//  UnitName: DDNC.Microsoft.Win32.Primitives
//  Author: ying32
//----------------------------------------------------------------------------

{$IFNDEF DDNCMICROSOFTWIN32PRIMITIVES}
unit DDNC.Microsoft.Win32.Primitives;
{$ENDIF}

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDNC.System.Private.CoreLib;

type


{ declares }

  DNWin32Exception = interface; // type: System.ComponentModel.Win32Exception, namespace: System.ComponentModel


{ objects }

  //-------------namespace: System.ComponentModel----------------
  DNWin32ExceptionClass = interface(DDNC.System.Private.CoreLib.DNExternalExceptionClass)
  ['{1BF3B469-054D-5C9C-8D63-137A226A0035}']
  { constructors } 

    {class} function init: DNWin32Exception; overload;
    {class} function init(error: Int32): DNWin32Exception; overload;
    {class} function init(error: Int32; message: string): DNWin32Exception; overload;
    {class} function init(message: string): DNWin32Exception; overload;
    {class} function init(message: string; innerException: DDNC.System.Private.CoreLib.DNException): DNWin32Exception; overload;

  end;

  [DNTypeName('System.ComponentModel.Win32Exception')]
  DNWin32Exception = interface(DDNC.System.Private.CoreLib.DNExternalException)
  ['{3319DE8C-8C91-3A43-9D67-2BE5FB1BCE58}']
  { getters & setters } 

    function get_NativeErrorCode: Int32;
    function get_ErrorCode: Int32;
    function get_Message: string;
    function get_Data: DDNC.System.Private.CoreLib.DNIDictionary;
    function get_InnerException: DDNC.System.Private.CoreLib.DNException;
    function get_TargetSite: DDNC.System.Private.CoreLib.DNMethodBase;
    function get_StackTrace: string;
    function get_HelpLink: string;
    procedure set_HelpLink(value: string);
    function get_Source: string;
    procedure set_Source(value: string);
    function get_HResult: Int32;

  { methods } 

    procedure GetObjectData(info: DDNC.System.Private.CoreLib.DNSerializationInfo; context: DDNC.System.Private.CoreLib.DNStreamingContext);
    function ToString: string;
    function GetBaseException: DDNC.System.Private.CoreLib.DNException;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property NativeErrorCode: Int32 read get_NativeErrorCode;
    property ErrorCode: Int32 read get_ErrorCode;
    property Message: string read get_Message;
    property Data: DDNC.System.Private.CoreLib.DNIDictionary read get_Data;
    property InnerException: DDNC.System.Private.CoreLib.DNException read get_InnerException;
    property TargetSite: DDNC.System.Private.CoreLib.DNMethodBase read get_TargetSite;
    property StackTrace: string read get_StackTrace;
    property HelpLink: string read get_HelpLink write set_HelpLink;
    property Source: string read get_Source write set_Source;
    property HResult: Int32 read get_HResult;
  end;

  TDNWin32Exception = class(TDNGenericImport<DNWin32ExceptionClass, DNWin32Exception>) end;


implementation


initialization
  LoadAssemblyModule('Microsoft.Win32.Primitives.dll', True);

finalization

end.
