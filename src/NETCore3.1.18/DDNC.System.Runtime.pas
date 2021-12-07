//----------------------------------------------------------------------------
//  System.Runtime.dll: System.Runtime, Version=4.2.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 3.1.18
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Runtime
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Runtime;

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

  //-------------namespace: System.IO----------------
  [DNTypeName('System.IO.FileAttributes')]
  DNFileAttributes = type Integer;
  DNFileAttributesHelper = record helper for DNFileAttributes
  public const
    ReadOnly = 1;
    Hidden = 2;
    System = 4;
    Directory = 16;
    Archive = 32;
    Device = 64;
    Normal = 128;
    Temporary = 256;
    SparseFile = 512;
    ReparsePoint = 1024;
    Compressed = 2048;
    Offline = 4096;
    NotContentIndexed = 8192;
    Encrypted = 16384;
    IntegrityStream = 32768;
    NoScrubData = 131072;
  end;


  //-------------namespace: System.IO----------------
  [DNTypeName('System.IO.HandleInheritability')]
  DNHandleInheritability = type Integer;
  DNHandleInheritabilityHelper = record helper for DNHandleInheritability
  public const
    None = 0;
    Inheritable = 1;
  end;




type


{ declares }

  DNISet<T> = interface; // type: System.Collections.Generic.ISet`1, namespace: System.Collections.Generic
  DNAssemblyTargetedPatchBandAttribute = interface; // type: System.Runtime.AssemblyTargetedPatchBandAttribute, namespace: System.Runtime
  DNEnumeratorCancellationAttribute = interface; // type: System.Runtime.CompilerServices.EnumeratorCancellationAttribute, namespace: System.Runtime.CompilerServices
  DNPrePrepareMethodAttribute = interface; // type: System.Runtime.ConstrainedExecution.PrePrepareMethodAttribute, namespace: System.Runtime.ConstrainedExecution
  DNTargetedPatchingOptOutAttribute = interface; // type: System.Runtime.TargetedPatchingOptOutAttribute, namespace: System.Runtime
  DNLazy<T, TMetadata> = interface; // type: System.Lazy`2, namespace: System
  DNRuntimeReflectionExtensions = interface; // type: System.Reflection.RuntimeReflectionExtensions, namespace: System.Reflection
  DNWaitHandleExtensions = interface; // type: System.Threading.WaitHandleExtensions, namespace: System.Threading

{ delegates }

  [DNTypeName('System.Action`10')]
  DNAction<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> = procedure(arg1: T1; arg2: T2; arg3: T3; arg4: T4; arg5: T5; arg6: T6; arg7: T7; arg8: T8; arg9: T9; arg10: T10) of object;

  [DNTypeName('System.Action`11')]
  DNAction<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11> = procedure(arg1: T1; arg2: T2; arg3: T3; arg4: T4; arg5: T5; arg6: T6; arg7: T7; arg8: T8; arg9: T9; arg10: T10; arg11: T11) of object;

  [DNTypeName('System.Action`12')]
  DNAction<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12> = procedure(arg1: T1; arg2: T2; arg3: T3; arg4: T4; arg5: T5; arg6: T6; arg7: T7; arg8: T8; arg9: T9; arg10: T10; arg11: T11; arg12: T12) of object;

  [DNTypeName('System.Action`13')]
  DNAction<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13> = procedure(arg1: T1; arg2: T2; arg3: T3; arg4: T4; arg5: T5; arg6: T6; arg7: T7; arg8: T8; arg9: T9; arg10: T10; arg11: T11; arg12: T12; arg13: T13) of object;

  [DNTypeName('System.Action`14')]
  DNAction<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14> = procedure(arg1: T1; arg2: T2; arg3: T3; arg4: T4; arg5: T5; arg6: T6; arg7: T7; arg8: T8; arg9: T9; arg10: T10; arg11: T11; arg12: T12; arg13: T13; arg14: T14) of object;

  [DNTypeName('System.Action`15')]
  DNAction<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15> = procedure(arg1: T1; arg2: T2; arg3: T3; arg4: T4; arg5: T5; arg6: T6; arg7: T7; arg8: T8; arg9: T9; arg10: T10; arg11: T11; arg12: T12; arg13: T13; arg14: T14; arg15: T15) of object;

  [DNTypeName('System.Action`16')]
  DNAction<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16> = procedure(arg1: T1; arg2: T2; arg3: T3; arg4: T4; arg5: T5; arg6: T6; arg7: T7; arg8: T8; arg9: T9; arg10: T10; arg11: T11; arg12: T12; arg13: T13; arg14: T14; arg15: T15; arg16: T16) of object;

  [DNTypeName('System.Action`9')]
  DNAction<T1, T2, T3, T4, T5, T6, T7, T8, T9> = procedure(arg1: T1; arg2: T2; arg3: T3; arg4: T4; arg5: T5; arg6: T6; arg7: T7; arg8: T8; arg9: T9) of object;

  [DNTypeName('System.Func`10')]
  DNFunc<T1, T2, T3, T4, T5, T6, T7, T8, T9, TResult> = function(arg1: T1; arg2: T2; arg3: T3; arg4: T4; arg5: T5; arg6: T6; arg7: T7; arg8: T8; arg9: T9): TResult of object;

  [DNTypeName('System.Func`11')]
  DNFunc<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, TResult> = function(arg1: T1; arg2: T2; arg3: T3; arg4: T4; arg5: T5; arg6: T6; arg7: T7; arg8: T8; arg9: T9; arg10: T10): TResult of object;

  [DNTypeName('System.Func`12')]
  DNFunc<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, TResult> = function(arg1: T1; arg2: T2; arg3: T3; arg4: T4; arg5: T5; arg6: T6; arg7: T7; arg8: T8; arg9: T9; arg10: T10; arg11: T11): TResult of object;

  [DNTypeName('System.Func`13')]
  DNFunc<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, TResult> = function(arg1: T1; arg2: T2; arg3: T3; arg4: T4; arg5: T5; arg6: T6; arg7: T7; arg8: T8; arg9: T9; arg10: T10; arg11: T11; arg12: T12): TResult of object;

  [DNTypeName('System.Func`14')]
  DNFunc<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, TResult> = function(arg1: T1; arg2: T2; arg3: T3; arg4: T4; arg5: T5; arg6: T6; arg7: T7; arg8: T8; arg9: T9; arg10: T10; arg11: T11; arg12: T12; arg13: T13): TResult of object;

  [DNTypeName('System.Func`15')]
  DNFunc<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, TResult> = function(arg1: T1; arg2: T2; arg3: T3; arg4: T4; arg5: T5; arg6: T6; arg7: T7; arg8: T8; arg9: T9; arg10: T10; arg11: T11; arg12: T12; arg13: T13; arg14: T14): TResult of object;

  [DNTypeName('System.Func`16')]
  DNFunc<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, TResult> = function(arg1: T1; arg2: T2; arg3: T3; arg4: T4; arg5: T5; arg6: T6; arg7: T7; arg8: T8; arg9: T9; arg10: T10; arg11: T11; arg12: T12; arg13: T13; arg14: T14; arg15: T15): TResult of object;

  [DNTypeName('System.Func`17')]
  DNFunc<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, TResult> = function(arg1: T1; arg2: T2; arg3: T3; arg4: T4; arg5: T5; arg6: T6; arg7: T7; arg8: T8; arg9: T9; arg10: T10; arg11: T11; arg12: T12; arg13: T13; arg14: T14; arg15: T15; arg16: T16): TResult of object;




{ objects }

  //-------------namespace: System.Collections.Generic----------------
  [DNTypeName('System.Collections.Generic.ISet`1')]
  DNISet<T> = interface(DDNC.System.Private.CoreLib.DNICollection<T>)
  ['{17A06585-6615-3D19-8DFF-5443FB19804F}']
  { methods } 

    function Add(item: T): Boolean;
    procedure UnionWith(other: DDNC.System.Private.CoreLib.DNIEnumerable<T>);
    procedure IntersectWith(other: DDNC.System.Private.CoreLib.DNIEnumerable<T>);
    procedure ExceptWith(other: DDNC.System.Private.CoreLib.DNIEnumerable<T>);
    procedure SymmetricExceptWith(other: DDNC.System.Private.CoreLib.DNIEnumerable<T>);
    function IsSubsetOf(other: DDNC.System.Private.CoreLib.DNIEnumerable<T>): Boolean;
    function IsSupersetOf(other: DDNC.System.Private.CoreLib.DNIEnumerable<T>): Boolean;
    function IsProperSupersetOf(other: DDNC.System.Private.CoreLib.DNIEnumerable<T>): Boolean;
    function IsProperSubsetOf(other: DDNC.System.Private.CoreLib.DNIEnumerable<T>): Boolean;
    function Overlaps(other: DDNC.System.Private.CoreLib.DNIEnumerable<T>): Boolean;
    function SetEquals(other: DDNC.System.Private.CoreLib.DNIEnumerable<T>): Boolean;

  end;

  //-------------namespace: System.Runtime----------------
  DNAssemblyTargetedPatchBandAttributeClass = interface(DDNC.System.Private.CoreLib.DNAttributeClass)
  ['{7A3B226E-076D-5F04-9436-9B19233DE7A7}']
  { constructors } 

    {class} function init(targetedPatchBand: string): DNAssemblyTargetedPatchBandAttribute;

  end;

  [DNTypeName('System.Runtime.AssemblyTargetedPatchBandAttribute')]
  DNAssemblyTargetedPatchBandAttribute = interface(DDNC.System.Private.CoreLib.DNAttribute)
  ['{4DB01C14-E5F8-3853-9EB4-DAAFE53A5615}']
  { getters & setters } 

    function get_TargetedPatchBand: string;
    function get_TypeId: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;

  { propertys } 

    property TargetedPatchBand: string read get_TargetedPatchBand;
    property TypeId: DDNC.System.Private.CoreLib.DNObject read get_TypeId;
  end;

  TDNAssemblyTargetedPatchBandAttribute = class(TDNGenericImport<DNAssemblyTargetedPatchBandAttributeClass, DNAssemblyTargetedPatchBandAttribute>) end;

  //-------------namespace: System.Runtime.CompilerServices----------------
  DNEnumeratorCancellationAttributeClass = interface(DDNC.System.Private.CoreLib.DNAttributeClass)
  ['{E86878C2-1794-58ED-B589-012B5E63767E}']
  { constructors } 

    {class} function init: DNEnumeratorCancellationAttribute;

  end;

  [DNTypeName('System.Runtime.CompilerServices.EnumeratorCancellationAttribute')]
  DNEnumeratorCancellationAttribute = interface(DDNC.System.Private.CoreLib.DNAttribute)
  ['{E5734F35-DB73-3E62-9430-5F8C70272D92}']
  { getters & setters } 

    function get_TypeId: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;

  { propertys } 

    property TypeId: DDNC.System.Private.CoreLib.DNObject read get_TypeId;
  end;

  TDNEnumeratorCancellationAttribute = class(TDNGenericImport<DNEnumeratorCancellationAttributeClass, DNEnumeratorCancellationAttribute>) end;

  //-------------namespace: System.Runtime.ConstrainedExecution----------------
  DNPrePrepareMethodAttributeClass = interface(DDNC.System.Private.CoreLib.DNAttributeClass)
  ['{1741901C-CA1D-548E-A0E4-176E2B2DC3C6}']
  { constructors } 

    {class} function init: DNPrePrepareMethodAttribute;

  end;

  [DNTypeName('System.Runtime.ConstrainedExecution.PrePrepareMethodAttribute')]
  DNPrePrepareMethodAttribute = interface(DDNC.System.Private.CoreLib.DNAttribute)
  ['{499DC9F3-7DA4-30CF-AAD3-737922893A9B}']
  { getters & setters } 

    function get_TypeId: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;

  { propertys } 

    property TypeId: DDNC.System.Private.CoreLib.DNObject read get_TypeId;
  end;

  TDNPrePrepareMethodAttribute = class(TDNGenericImport<DNPrePrepareMethodAttributeClass, DNPrePrepareMethodAttribute>) end;

  //-------------namespace: System.Runtime----------------
  DNTargetedPatchingOptOutAttributeClass = interface(DDNC.System.Private.CoreLib.DNAttributeClass)
  ['{3C4691FE-B44C-58E2-9F29-4AF793659548}']
  { constructors } 

    {class} function init(reason: string): DNTargetedPatchingOptOutAttribute;

  end;

  [DNTypeName('System.Runtime.TargetedPatchingOptOutAttribute')]
  DNTargetedPatchingOptOutAttribute = interface(DDNC.System.Private.CoreLib.DNAttribute)
  ['{294400FD-83B8-3DCF-BF17-74F49D8737D8}']
  { getters & setters } 

    function get_Reason: string;
    function get_TypeId: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;

  { propertys } 

    property Reason: string read get_Reason;
    property TypeId: DDNC.System.Private.CoreLib.DNObject read get_TypeId;
  end;

  TDNTargetedPatchingOptOutAttribute = class(TDNGenericImport<DNTargetedPatchingOptOutAttributeClass, DNTargetedPatchingOptOutAttribute>) end;

  //-------------namespace: System----------------
  DNLazyClass<T, TMetadata> = interface(DDNC.System.Private.CoreLib.DNLazyClass<T>)
  ['{99128FF6-8009-532A-9DD3-531500652031}']
  { constructors } 

    {class} function init(valueFactory: DDNC.System.Private.CoreLib.DNFunc<T>; metadata: TMetadata): DNLazy<T, TMetadata>; overload;
    {class} function init(metadata: TMetadata): DNLazy<T, TMetadata>; overload;
    {class} function init(metadata: TMetadata; isThreadSafe: Boolean): DNLazy<T, TMetadata>; overload;
    {class} function init(valueFactory: DDNC.System.Private.CoreLib.DNFunc<T>; metadata: TMetadata; isThreadSafe: Boolean): DNLazy<T, TMetadata>; overload;
    {class} function init(metadata: TMetadata; mode: DDNC.System.Private.CoreLib.DNLazyThreadSafetyMode): DNLazy<T, TMetadata>; overload;
    {class} function init(valueFactory: DDNC.System.Private.CoreLib.DNFunc<T>; metadata: TMetadata; mode: DDNC.System.Private.CoreLib.DNLazyThreadSafetyMode): DNLazy<T, TMetadata>; overload;

  end;

  [DNTypeName('System.Lazy`2')]
  DNLazy<T, TMetadata> = interface(DDNC.System.Private.CoreLib.DNLazy<T>)
  ['{3219757B-7765-30E7-89F8-31013068CE1C}']
  { getters & setters } 

    function get_Metadata: TMetadata;
    function get_IsValueCreated: Boolean;
    function get_Value: T;

  { methods } 

    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Metadata: TMetadata read get_Metadata;
    property IsValueCreated: Boolean read get_IsValueCreated;
    property Value: T read get_Value;
  end;

  TDNLazy<T, TMetadata> = class(TDNGenericImport<DNLazyClass<T, TMetadata>, DNLazy<T, TMetadata>>) end;

  //-------------namespace: System.Reflection----------------
  DNRuntimeReflectionExtensionsClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{C0A3C574-457E-5015-95F1-A0E21C01391B}']
  { static methods } 

    {class} function GetRuntimeFields(&type: DDNC.System.Private.CoreLib.DNType): DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNFieldInfo>;
    {class} function GetRuntimeMethods(&type: DDNC.System.Private.CoreLib.DNType): DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNMethodInfo>;
    {class} function GetRuntimeProperties(&type: DDNC.System.Private.CoreLib.DNType): DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNPropertyInfo>;
    {class} function GetRuntimeEvents(&type: DDNC.System.Private.CoreLib.DNType): DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNEventInfo>;
    {class} function GetRuntimeField(&type: DDNC.System.Private.CoreLib.DNType; name: string): DDNC.System.Private.CoreLib.DNFieldInfo;
    {class} function GetRuntimeMethod(&type: DDNC.System.Private.CoreLib.DNType; name: string; parameters: TArray<DDNC.System.Private.CoreLib.DNType>): DDNC.System.Private.CoreLib.DNMethodInfo;
    {class} function GetRuntimeProperty(&type: DDNC.System.Private.CoreLib.DNType; name: string): DDNC.System.Private.CoreLib.DNPropertyInfo;
    {class} function GetRuntimeEvent(&type: DDNC.System.Private.CoreLib.DNType; name: string): DDNC.System.Private.CoreLib.DNEventInfo;
    {class} function GetRuntimeBaseDefinition(method: DDNC.System.Private.CoreLib.DNMethodInfo): DDNC.System.Private.CoreLib.DNMethodInfo;
    {class} function GetRuntimeInterfaceMap(typeInfo: DDNC.System.Private.CoreLib.DNTypeInfo; interfaceType: DDNC.System.Private.CoreLib.DNType): DDNC.System.Private.CoreLib.DNInterfaceMapping;
    {class} function GetMethodInfo(del: DDNC.System.Private.CoreLib.DNDelegate): DDNC.System.Private.CoreLib.DNMethodInfo;

  end;

  [DNTypeName('System.Reflection.RuntimeReflectionExtensions')]
  DNRuntimeReflectionExtensions = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{25762A6B-1CA9-3AE1-B39C-B2FAAECF5CA8}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNRuntimeReflectionExtensions = class(TDNGenericImport<DNRuntimeReflectionExtensionsClass, DNRuntimeReflectionExtensions>) end;

  //-------------namespace: System.Threading----------------
  DNWaitHandleExtensionsClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{6F0C7E6C-981E-5AF9-AE95-AB3D0848F7C3}']
  { static methods } 

    {class} function GetSafeWaitHandle(waitHandle: DDNC.System.Private.CoreLib.DNWaitHandle): DDNC.System.Private.CoreLib.DNSafeWaitHandle;
    {class} procedure SetSafeWaitHandle(waitHandle: DDNC.System.Private.CoreLib.DNWaitHandle; value: DDNC.System.Private.CoreLib.DNSafeWaitHandle);

  end;

  [DNTypeName('System.Threading.WaitHandleExtensions')]
  DNWaitHandleExtensions = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{EAD84A8F-01BE-3696-AF50-84D94A5D728C}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNWaitHandleExtensions = class(TDNGenericImport<DNWaitHandleExtensionsClass, DNWaitHandleExtensions>) end;


implementation


initialization
  InternalTryLoadAssemblyModule('System.Runtime, Version=4.2.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
