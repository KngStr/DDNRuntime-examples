//----------------------------------------------------------------------------
//  System.Reflection.TypeExtensions.dll: System.Reflection.TypeExtensions, Version=4.1.5.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 3.1.18
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Reflection.TypeExtensions
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Reflection.TypeExtensions;

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

  DNAssemblyExtensions = interface; // type: System.Reflection.AssemblyExtensions, namespace: System.Reflection
  DNEventInfoExtensions = interface; // type: System.Reflection.EventInfoExtensions, namespace: System.Reflection
  DNMemberInfoExtensions = interface; // type: System.Reflection.MemberInfoExtensions, namespace: System.Reflection
  DNMethodInfoExtensions = interface; // type: System.Reflection.MethodInfoExtensions, namespace: System.Reflection
  DNModuleExtensions = interface; // type: System.Reflection.ModuleExtensions, namespace: System.Reflection
  DNPropertyInfoExtensions = interface; // type: System.Reflection.PropertyInfoExtensions, namespace: System.Reflection
  DNTypeExtensions = interface; // type: System.Reflection.TypeExtensions, namespace: System.Reflection


{ objects }

  //-------------namespace: System.Reflection----------------
  DNAssemblyExtensionsClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{CB44A9FA-1C90-5F22-A2C9-4C31A0E41064}']
  { static methods } 

    {class} function GetExportedTypes(assembly: DDNC.System.Private.CoreLib.DNAssembly): TArray<DDNC.System.Private.CoreLib.DNType>;
    {class} function GetModules(assembly: DDNC.System.Private.CoreLib.DNAssembly): TArray<DDNC.System.Private.CoreLib.DNModule>;
    {class} function GetTypes(assembly: DDNC.System.Private.CoreLib.DNAssembly): TArray<DDNC.System.Private.CoreLib.DNType>;

  end;

  [DNTypeName('System.Reflection.AssemblyExtensions')]
  DNAssemblyExtensions = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{B19299E7-7533-34C7-9BC6-B01DE835DA91}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNAssemblyExtensions = class(TDNGenericImport<DNAssemblyExtensionsClass, DNAssemblyExtensions>) end;

  //-------------namespace: System.Reflection----------------
  DNEventInfoExtensionsClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{EC49FCB4-6AF1-5225-95CB-551F91DED37F}']
  { static methods } 

    {class} function GetAddMethod(eventInfo: DDNC.System.Private.CoreLib.DNEventInfo): DDNC.System.Private.CoreLib.DNMethodInfo; overload;
    {class} function GetAddMethod(eventInfo: DDNC.System.Private.CoreLib.DNEventInfo; nonPublic: Boolean): DDNC.System.Private.CoreLib.DNMethodInfo; overload;
    {class} function GetRaiseMethod(eventInfo: DDNC.System.Private.CoreLib.DNEventInfo): DDNC.System.Private.CoreLib.DNMethodInfo; overload;
    {class} function GetRaiseMethod(eventInfo: DDNC.System.Private.CoreLib.DNEventInfo; nonPublic: Boolean): DDNC.System.Private.CoreLib.DNMethodInfo; overload;
    {class} function GetRemoveMethod(eventInfo: DDNC.System.Private.CoreLib.DNEventInfo): DDNC.System.Private.CoreLib.DNMethodInfo; overload;
    {class} function GetRemoveMethod(eventInfo: DDNC.System.Private.CoreLib.DNEventInfo; nonPublic: Boolean): DDNC.System.Private.CoreLib.DNMethodInfo; overload;

  end;

  [DNTypeName('System.Reflection.EventInfoExtensions')]
  DNEventInfoExtensions = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{F7C23D3B-1867-30C4-A107-74A55354084F}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNEventInfoExtensions = class(TDNGenericImport<DNEventInfoExtensionsClass, DNEventInfoExtensions>) end;

  //-------------namespace: System.Reflection----------------
  DNMemberInfoExtensionsClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{72B5D316-8251-56C1-949A-953E2F0153B0}']
  { static methods } 

    {class} function HasMetadataToken(member: DDNC.System.Private.CoreLib.DNMemberInfo): Boolean;
    {class} function GetMetadataToken(member: DDNC.System.Private.CoreLib.DNMemberInfo): Int32;

  end;

  [DNTypeName('System.Reflection.MemberInfoExtensions')]
  DNMemberInfoExtensions = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{2A97FA2D-E733-33DA-92C7-2704831BD763}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNMemberInfoExtensions = class(TDNGenericImport<DNMemberInfoExtensionsClass, DNMemberInfoExtensions>) end;

  //-------------namespace: System.Reflection----------------
  DNMethodInfoExtensionsClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{F0332306-4ECE-5BAF-9BC7-215D9A0EBA97}']
  { static methods } 

    {class} function GetBaseDefinition(method: DDNC.System.Private.CoreLib.DNMethodInfo): DDNC.System.Private.CoreLib.DNMethodInfo;

  end;

  [DNTypeName('System.Reflection.MethodInfoExtensions')]
  DNMethodInfoExtensions = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{77CCEAB9-DDA5-38A0-9FA3-FD76BE764F85}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNMethodInfoExtensions = class(TDNGenericImport<DNMethodInfoExtensionsClass, DNMethodInfoExtensions>) end;

  //-------------namespace: System.Reflection----------------
  DNModuleExtensionsClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{083A298F-9D46-55F4-837E-60A51BEB3E3F}']
  { static methods } 

    {class} function HasModuleVersionId(module: DDNC.System.Private.CoreLib.DNModule): Boolean;
    {class} function GetModuleVersionId(module: DDNC.System.Private.CoreLib.DNModule): DDNC.System.Private.CoreLib.DNGuid;

  end;

  [DNTypeName('System.Reflection.ModuleExtensions')]
  DNModuleExtensions = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{14B92475-A0E1-30A5-82EB-35071E6DBA5A}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNModuleExtensions = class(TDNGenericImport<DNModuleExtensionsClass, DNModuleExtensions>) end;

  //-------------namespace: System.Reflection----------------
  DNPropertyInfoExtensionsClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{B58F7B95-774B-5511-AF93-79025812EC67}']
  { static methods } 

    {class} function GetAccessors(&property: DDNC.System.Private.CoreLib.DNPropertyInfo): TArray<DDNC.System.Private.CoreLib.DNMethodInfo>; overload;
    {class} function GetAccessors(&property: DDNC.System.Private.CoreLib.DNPropertyInfo; nonPublic: Boolean): TArray<DDNC.System.Private.CoreLib.DNMethodInfo>; overload;
    {class} function GetGetMethod(&property: DDNC.System.Private.CoreLib.DNPropertyInfo): DDNC.System.Private.CoreLib.DNMethodInfo; overload;
    {class} function GetGetMethod(&property: DDNC.System.Private.CoreLib.DNPropertyInfo; nonPublic: Boolean): DDNC.System.Private.CoreLib.DNMethodInfo; overload;
    {class} function GetSetMethod(&property: DDNC.System.Private.CoreLib.DNPropertyInfo): DDNC.System.Private.CoreLib.DNMethodInfo; overload;
    {class} function GetSetMethod(&property: DDNC.System.Private.CoreLib.DNPropertyInfo; nonPublic: Boolean): DDNC.System.Private.CoreLib.DNMethodInfo; overload;

  end;

  [DNTypeName('System.Reflection.PropertyInfoExtensions')]
  DNPropertyInfoExtensions = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{D8021199-BF97-3DB3-8A47-91D59BC12667}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNPropertyInfoExtensions = class(TDNGenericImport<DNPropertyInfoExtensionsClass, DNPropertyInfoExtensions>) end;

  //-------------namespace: System.Reflection----------------
  DNTypeExtensionsClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{19858312-9132-5553-B3F5-3D1693C6AAAA}']
  { static methods } 

    {class} function GetConstructor(&type: DDNC.System.Private.CoreLib.DNType; types: TArray<DDNC.System.Private.CoreLib.DNType>): DDNC.System.Private.CoreLib.DNConstructorInfo;
    {class} function GetConstructors(&type: DDNC.System.Private.CoreLib.DNType): TArray<DDNC.System.Private.CoreLib.DNConstructorInfo>; overload;
    {class} function GetConstructors(&type: DDNC.System.Private.CoreLib.DNType; bindingAttr: DDNC.System.Private.CoreLib.DNBindingFlags): TArray<DDNC.System.Private.CoreLib.DNConstructorInfo>; overload;
    {class} function GetDefaultMembers(&type: DDNC.System.Private.CoreLib.DNType): TArray<DDNC.System.Private.CoreLib.DNMemberInfo>;
    {class} function GetEvent(&type: DDNC.System.Private.CoreLib.DNType; name: string): DDNC.System.Private.CoreLib.DNEventInfo; overload;
    {class} function GetEvent(&type: DDNC.System.Private.CoreLib.DNType; name: string; bindingAttr: DDNC.System.Private.CoreLib.DNBindingFlags): DDNC.System.Private.CoreLib.DNEventInfo; overload;
    {class} function GetEvents(&type: DDNC.System.Private.CoreLib.DNType): TArray<DDNC.System.Private.CoreLib.DNEventInfo>; overload;
    {class} function GetEvents(&type: DDNC.System.Private.CoreLib.DNType; bindingAttr: DDNC.System.Private.CoreLib.DNBindingFlags): TArray<DDNC.System.Private.CoreLib.DNEventInfo>; overload;
    {class} function GetField(&type: DDNC.System.Private.CoreLib.DNType; name: string): DDNC.System.Private.CoreLib.DNFieldInfo; overload;
    {class} function GetField(&type: DDNC.System.Private.CoreLib.DNType; name: string; bindingAttr: DDNC.System.Private.CoreLib.DNBindingFlags): DDNC.System.Private.CoreLib.DNFieldInfo; overload;
    {class} function GetFields(&type: DDNC.System.Private.CoreLib.DNType): TArray<DDNC.System.Private.CoreLib.DNFieldInfo>; overload;
    {class} function GetFields(&type: DDNC.System.Private.CoreLib.DNType; bindingAttr: DDNC.System.Private.CoreLib.DNBindingFlags): TArray<DDNC.System.Private.CoreLib.DNFieldInfo>; overload;
    {class} function GetGenericArguments(&type: DDNC.System.Private.CoreLib.DNType): TArray<DDNC.System.Private.CoreLib.DNType>;
    {class} function GetInterfaces(&type: DDNC.System.Private.CoreLib.DNType): TArray<DDNC.System.Private.CoreLib.DNType>;
    {class} function GetMember(&type: DDNC.System.Private.CoreLib.DNType; name: string): TArray<DDNC.System.Private.CoreLib.DNMemberInfo>; overload;
    {class} function GetMember(&type: DDNC.System.Private.CoreLib.DNType; name: string; bindingAttr: DDNC.System.Private.CoreLib.DNBindingFlags): TArray<DDNC.System.Private.CoreLib.DNMemberInfo>; overload;
    {class} function GetMembers(&type: DDNC.System.Private.CoreLib.DNType): TArray<DDNC.System.Private.CoreLib.DNMemberInfo>; overload;
    {class} function GetMembers(&type: DDNC.System.Private.CoreLib.DNType; bindingAttr: DDNC.System.Private.CoreLib.DNBindingFlags): TArray<DDNC.System.Private.CoreLib.DNMemberInfo>; overload;
    {class} function GetMethod(&type: DDNC.System.Private.CoreLib.DNType; name: string): DDNC.System.Private.CoreLib.DNMethodInfo; overload;
    {class} function GetMethod(&type: DDNC.System.Private.CoreLib.DNType; name: string; bindingAttr: DDNC.System.Private.CoreLib.DNBindingFlags): DDNC.System.Private.CoreLib.DNMethodInfo; overload;
    {class} function GetMethod(&type: DDNC.System.Private.CoreLib.DNType; name: string; types: TArray<DDNC.System.Private.CoreLib.DNType>): DDNC.System.Private.CoreLib.DNMethodInfo; overload;
    {class} function GetMethods(&type: DDNC.System.Private.CoreLib.DNType): TArray<DDNC.System.Private.CoreLib.DNMethodInfo>; overload;
    {class} function GetMethods(&type: DDNC.System.Private.CoreLib.DNType; bindingAttr: DDNC.System.Private.CoreLib.DNBindingFlags): TArray<DDNC.System.Private.CoreLib.DNMethodInfo>; overload;
    {class} function GetNestedType(&type: DDNC.System.Private.CoreLib.DNType; name: string; bindingAttr: DDNC.System.Private.CoreLib.DNBindingFlags): DDNC.System.Private.CoreLib.DNType;
    {class} function GetNestedTypes(&type: DDNC.System.Private.CoreLib.DNType; bindingAttr: DDNC.System.Private.CoreLib.DNBindingFlags): TArray<DDNC.System.Private.CoreLib.DNType>;
    {class} function GetProperties(&type: DDNC.System.Private.CoreLib.DNType): TArray<DDNC.System.Private.CoreLib.DNPropertyInfo>; overload;
    {class} function GetProperties(&type: DDNC.System.Private.CoreLib.DNType; bindingAttr: DDNC.System.Private.CoreLib.DNBindingFlags): TArray<DDNC.System.Private.CoreLib.DNPropertyInfo>; overload;
    {class} function GetProperty(&type: DDNC.System.Private.CoreLib.DNType; name: string): DDNC.System.Private.CoreLib.DNPropertyInfo; overload;
    {class} function GetProperty(&type: DDNC.System.Private.CoreLib.DNType; name: string; bindingAttr: DDNC.System.Private.CoreLib.DNBindingFlags): DDNC.System.Private.CoreLib.DNPropertyInfo; overload;
    {class} function GetProperty(&type: DDNC.System.Private.CoreLib.DNType; name: string; returnType: DDNC.System.Private.CoreLib.DNType): DDNC.System.Private.CoreLib.DNPropertyInfo; overload;
    {class} function GetProperty(&type: DDNC.System.Private.CoreLib.DNType; name: string; returnType: DDNC.System.Private.CoreLib.DNType; types: TArray<DDNC.System.Private.CoreLib.DNType>): DDNC.System.Private.CoreLib.DNPropertyInfo; overload;
    {class} function IsAssignableFrom(&type: DDNC.System.Private.CoreLib.DNType; c: DDNC.System.Private.CoreLib.DNType): Boolean;
    {class} function IsInstanceOfType(&type: DDNC.System.Private.CoreLib.DNType; o: DDNC.System.Private.CoreLib.DNObject): Boolean;

  end;

  [DNTypeName('System.Reflection.TypeExtensions')]
  DNTypeExtensions = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{6ED1DF15-14A5-3ED0-92BA-2E2500BDBB7F}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNTypeExtensions = class(TDNGenericImport<DNTypeExtensionsClass, DNTypeExtensions>) end;


implementation


initialization
  InternalTryLoadAssemblyModule('System.Reflection.TypeExtensions, Version=4.1.5.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
