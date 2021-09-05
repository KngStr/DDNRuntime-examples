//----------------------------------------------------------------------------
//  System.Resources.Writer.dll: System.Resources.Writer, Version=4.1.1.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 2.1
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Resources.Writer
//  Author: ying32
//----------------------------------------------------------------------------

{$IFNDEF DDNCSYSTEMRESOURCESWRITER}
unit DDNC.System.Resources.Writer;
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

  DNIResourceWriter = interface; // type: System.Resources.IResourceWriter, namespace: System.Resources
  DNResourceWriter = interface; // type: System.Resources.ResourceWriter, namespace: System.Resources


{ objects }

  //-------------namespace: System.Resources----------------
  [DNTypeName('System.Resources.IResourceWriter')]
  DNIResourceWriter = interface(DDNC.System.Private.CoreLib.DNIDisposable)
  ['{E97AA6E5-595E-31C3-82F0-688FB91954C6}']
  { methods } 

    procedure AddResource(name: string; value: string); overload;
    procedure AddResource(name: string; value: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure AddResource(name: string; value: TArray<Byte>); overload;
    procedure Close;
    procedure Generate;

  end;

  //-------------namespace: System.Resources----------------
  DNResourceWriterClass = interface(DNObjectClass)
  ['{2A3ED099-5DCD-5F65-A0F9-FBFF54EA79B9}']
  { constructors } 

    {class} function init(fileName: string): DNResourceWriter; overload;
    {class} function init(stream: DDNC.System.Private.CoreLib.DNStream): DNResourceWriter; overload;

  end;

  [DNTypeName('System.Resources.ResourceWriter')]
  DNResourceWriter = interface(DNIResourceWriter)
  ['{C4CD21AB-7BBF-364E-8AA7-CCA5948470F6}']
  { getters & setters } 

    function get_TypeNameConverter: DDNC.System.Private.CoreLib.DNFunc<DDNC.System.Private.CoreLib.DNType, string>;
    procedure set_TypeNameConverter(value: DDNC.System.Private.CoreLib.DNFunc<DDNC.System.Private.CoreLib.DNType, string>);

  { methods } 

    procedure AddResource(name: string; value: string); overload;
    procedure AddResource(name: string; value: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure AddResource(name: string; value: DDNC.System.Private.CoreLib.DNStream); overload;
    procedure AddResource(name: string; value: DDNC.System.Private.CoreLib.DNStream; closeAfterWrite: Boolean); overload;
    procedure AddResource(name: string; value: TArray<Byte>); overload;
    procedure AddResourceData(name: string; typeName: string; serializedData: TArray<Byte>);
    procedure Close;
    procedure Dispose;
    procedure Generate;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property TypeNameConverter: DDNC.System.Private.CoreLib.DNFunc<DDNC.System.Private.CoreLib.DNType, string> read get_TypeNameConverter write set_TypeNameConverter;
  end;

  TDNResourceWriter = class(TDNGenericImport<DNResourceWriterClass, DNResourceWriter>) end;


implementation


initialization
  LoadAssemblyModule('System.Resources.Writer.dll', True);

finalization

end.