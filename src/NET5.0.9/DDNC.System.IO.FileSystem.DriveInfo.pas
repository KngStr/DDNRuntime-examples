//----------------------------------------------------------------------------
//  System.IO.FileSystem.DriveInfo.dll: System.IO.FileSystem.DriveInfo, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 5.0.9
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.IO.FileSystem.DriveInfo
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.IO.FileSystem.DriveInfo;

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDNC.System.Private.CoreLib,
  DDNC.System.IO.FileSystem;

type

{ enums }

  //-------------namespace: System.IO----------------
  [DNTypeName('System.IO.DriveType')]
  DNDriveType = type Integer;
  DNDriveTypeHelper = record helper for DNDriveType
  public const
    Unknown = 0;
    NoRootDirectory = 1;
    Removable = 2;
    Fixed = 3;
    Network = 4;
    CDRom = 5;
    Ram = 6;
  end;




type


{ declares }

  DNDriveNotFoundException = interface; // type: System.IO.DriveNotFoundException, namespace: System.IO
  DNDriveInfo = interface; // type: System.IO.DriveInfo, namespace: System.IO


{ objects }

  //-------------namespace: System.IO----------------
  DNDriveNotFoundExceptionClass = interface(DDNC.System.Private.CoreLib.DNIOExceptionClass)
  ['{B8D08A95-68BB-52D5-A9AF-968F153BB0AE}']
  { constructors } 

    {class} function init: DNDriveNotFoundException; overload;
    {class} function init(message: string): DNDriveNotFoundException; overload;
    {class} function init(message: string; innerException: DDNC.System.Private.CoreLib.DNException): DNDriveNotFoundException; overload;

  end;

  [DNTypeName('System.IO.DriveNotFoundException')]
  DNDriveNotFoundException = interface(DDNC.System.Private.CoreLib.DNIOException)
  ['{5B24C2FE-C684-314B-8549-99465A11967B}']
  { getters & setters } 

    function get_TargetSite: DDNC.System.Private.CoreLib.DNMethodBase;
    function get_StackTrace: string;
    function get_Message: string;
    function get_Data: DDNC.System.Private.CoreLib.DNIDictionary;
    function get_InnerException: DDNC.System.Private.CoreLib.DNException;
    function get_HelpLink: string;
    procedure set_HelpLink(value: string);
    function get_Source: string;
    procedure set_Source(value: string);
    function get_HResult: Int32;
    procedure set_HResult(value: Int32);

  { methods } 

    function GetBaseException: DDNC.System.Private.CoreLib.DNException;
    procedure GetObjectData(info: DDNC.System.Private.CoreLib.DNSerializationInfo; context: DDNC.System.Private.CoreLib.DNStreamingContext);
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property TargetSite: DDNC.System.Private.CoreLib.DNMethodBase read get_TargetSite;
    property StackTrace: string read get_StackTrace;
    property Message: string read get_Message;
    property Data: DDNC.System.Private.CoreLib.DNIDictionary read get_Data;
    property InnerException: DDNC.System.Private.CoreLib.DNException read get_InnerException;
    property HelpLink: string read get_HelpLink write set_HelpLink;
    property Source: string read get_Source write set_Source;
    property HResult: Int32 read get_HResult write set_HResult;
  end;

  TDNDriveNotFoundException = class(TDNGenericImport<DNDriveNotFoundExceptionClass, DNDriveNotFoundException>) end;

  //-------------namespace: System.IO----------------
  DNDriveInfoClass = interface(DNObjectClass)
  ['{61CBB038-A1BC-5EEF-904E-9D6BEB5DB252}']
  { constructors } 

    {class} function init(driveName: string): DNDriveInfo;

  { static methods } 

    {class} function GetDrives: TArray<DNDriveInfo>;

  end;

  [DNTypeName('System.IO.DriveInfo')]
  DNDriveInfo = interface(DDNC.System.Private.CoreLib.DNISerializable)
  ['{5EFBEF75-9A48-35BD-BE66-30C185E62756}']
  { getters & setters } 

    function get_Name: string;
    function get_IsReady: Boolean;
    function get_RootDirectory: DDNC.System.IO.FileSystem.DNDirectoryInfo;
    function get_DriveType: DNDriveType;
    function get_DriveFormat: string;
    function get_AvailableFreeSpace: Int64;
    function get_TotalFreeSpace: Int64;
    function get_TotalSize: Int64;
    function get_VolumeLabel: string;
    procedure set_VolumeLabel(value: string);

  { methods } 

    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Name: string read get_Name;
    property IsReady: Boolean read get_IsReady;
    property RootDirectory: DDNC.System.IO.FileSystem.DNDirectoryInfo read get_RootDirectory;
    property DriveType: DNDriveType read get_DriveType;
    property DriveFormat: string read get_DriveFormat;
    property AvailableFreeSpace: Int64 read get_AvailableFreeSpace;
    property TotalFreeSpace: Int64 read get_TotalFreeSpace;
    property TotalSize: Int64 read get_TotalSize;
    property VolumeLabel: string read get_VolumeLabel write set_VolumeLabel;
  end;

  TDNDriveInfo = class(TDNGenericImport<DNDriveInfoClass, DNDriveInfo>) end;


implementation


initialization
  InternalTryLoadAssemblyModule('System.IO.FileSystem.DriveInfo, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
