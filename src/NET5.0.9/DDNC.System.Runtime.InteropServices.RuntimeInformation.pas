//----------------------------------------------------------------------------
//  System.Runtime.InteropServices.RuntimeInformation.dll: System.Runtime.InteropServices.RuntimeInformation, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 5.0.9
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Runtime.InteropServices.RuntimeInformation
//  Author: ying32
//----------------------------------------------------------------------------

{$IFNDEF DDNCSYSTEMRUNTIMEINTEROPSERVICESRUNTIMEINFORMATION}
unit DDNC.System.Runtime.InteropServices.RuntimeInformation;
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

{ enums }

  //-------------namespace: System.Runtime.InteropServices----------------
  [DNTypeName('System.Runtime.InteropServices.Architecture')]
  DNArchitecture = type Integer;
  DNArchitectureHelper = record helper for DNArchitecture
  public const
    X86 = 0;
    X64 = 1;
    Arm = 2;
    Arm64 = 3;
    Wasm = 4;
  end;




type


{ declares }

  DNRuntimeInformation = interface; // type: System.Runtime.InteropServices.RuntimeInformation, namespace: System.Runtime.InteropServices
  DNOSPlatform = interface; // type: System.Runtime.InteropServices.OSPlatform, namespace: System.Runtime.InteropServices


{ objects }

  //-------------namespace: System.Runtime.InteropServices----------------
  DNRuntimeInformationClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{0C583597-7DFF-55F7-8B25-91C719886DE5}']
  { static getter & setter } 

    {class} function get_FrameworkDescription: string;
    {class} function get_RuntimeIdentifier: string;
    {class} function get_OSDescription: string;
    {class} function get_OSArchitecture: DNArchitecture;
    {class} function get_ProcessArchitecture: DNArchitecture;

  { static methods } 

    {class} function IsOSPlatform(osPlatform: DNOSPlatform): Boolean;

  { static propertys } 

    {class} property FrameworkDescription: string read get_FrameworkDescription;
    {class} property RuntimeIdentifier: string read get_RuntimeIdentifier;
    {class} property OSDescription: string read get_OSDescription;
    {class} property OSArchitecture: DNArchitecture read get_OSArchitecture;
    {class} property ProcessArchitecture: DNArchitecture read get_ProcessArchitecture;
  end;

  [DNTypeName('System.Runtime.InteropServices.RuntimeInformation')]
  DNRuntimeInformation = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{0AE15A9C-FB0F-324C-B9A2-3626EC8CC975}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNRuntimeInformation = class(TDNGenericImport<DNRuntimeInformationClass, DNRuntimeInformation>) end;

  //-------------namespace: System.Runtime.InteropServices----------------
  DNOSPlatformClass = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{CB6F4BF5-3AB1-55A5-97B0-FCB2EE0FB1B7}']
  { static getter & setter } 

    {class} function get_FreeBSD: DNOSPlatform;
    {class} function get_Linux: DNOSPlatform;
    {class} function get_OSX: DNOSPlatform;
    {class} function get_Windows: DNOSPlatform;

  { static methods } 

    {class} function Create(osPlatform: string): DNOSPlatform;

  { static propertys } 

    {class} property FreeBSD: DNOSPlatform read get_FreeBSD;
    {class} property Linux: DNOSPlatform read get_Linux;
    {class} property OSX: DNOSPlatform read get_OSX;
    {class} property Windows: DNOSPlatform read get_Windows;
  end;

  [DNTypeName('System.Runtime.InteropServices.OSPlatform')]
  DNOSPlatform = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{3CB77FFD-0DAA-38C8-A23E-91F365371E47}']
  { methods } 

    function Equals(other: DNOSPlatform): Boolean; overload;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean; overload;
    function GetHashCode: Int32;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNOSPlatform = class(TDNGenericImport<DNOSPlatformClass, DNOSPlatform>) end;


implementation


initialization
  LoadAssemblyModule('System.Runtime.InteropServices.RuntimeInformation.dll', True, 'System.Runtime.InteropServices.RuntimeInformation, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
