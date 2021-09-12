//----------------------------------------------------------------------------
//  System.Diagnostics.TraceSource.dll: System.Diagnostics.TraceSource, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 5.0.9
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Diagnostics.TraceSource
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Diagnostics.TraceSource;

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDNC.System.Private.CoreLib,
  DDNC.System.Collections.NonGeneric,
  DDNC.System.Collections.Specialized;

type

{ enums }

  //-------------namespace: System.Diagnostics----------------
  [DNTypeName('System.Diagnostics.SourceLevels')]
  DNSourceLevels = type Integer;
  DNSourceLevelsHelper = record helper for DNSourceLevels
  public const
    Off = 0;
    Critical = 1;
    Error = 3;
    Warning = 7;
    Information = 15;
    Verbose = 31;
    ActivityTracing = 65280;
    All = -1;
  end;


  //-------------namespace: System.Diagnostics----------------
  [DNTypeName('System.Diagnostics.TraceEventType')]
  DNTraceEventType = type Integer;
  DNTraceEventTypeHelper = record helper for DNTraceEventType
  public const
    Critical = 1;
    Error = 2;
    Warning = 4;
    Information = 8;
    Verbose = 16;
    Start = 256;
    Stop = 512;
    Suspend = 1024;
    Resume = 2048;
    Transfer = 4096;
  end;


  //-------------namespace: System.Diagnostics----------------
  [DNTypeName('System.Diagnostics.TraceLevel')]
  DNTraceLevel = type Integer;
  DNTraceLevelHelper = record helper for DNTraceLevel
  public const
    Off = 0;
    Error = 1;
    Warning = 2;
    Info = 3;
    Verbose = 4;
  end;


  //-------------namespace: System.Diagnostics----------------
  [DNTypeName('System.Diagnostics.TraceOptions')]
  DNTraceOptions = type Integer;
  DNTraceOptionsHelper = record helper for DNTraceOptions
  public const
    None = 0;
    LogicalOperationStack = 1;
    DateTime = 2;
    Timestamp = 4;
    ProcessId = 8;
    ThreadId = 16;
    Callstack = 32;
  end;




type


{ declares }

  DNSwitchAttribute = interface; // type: System.Diagnostics.SwitchAttribute, namespace: System.Diagnostics
  DNSwitchLevelAttribute = interface; // type: System.Diagnostics.SwitchLevelAttribute, namespace: System.Diagnostics
  DNCorrelationManager = interface; // type: System.Diagnostics.CorrelationManager, namespace: System.Diagnostics
  DNSwitch = interface; // type: System.Diagnostics.Switch, namespace: System.Diagnostics
  DNBooleanSwitch = interface; // type: System.Diagnostics.BooleanSwitch, namespace: System.Diagnostics
  DNSourceSwitch = interface; // type: System.Diagnostics.SourceSwitch, namespace: System.Diagnostics
  DNTraceSwitch = interface; // type: System.Diagnostics.TraceSwitch, namespace: System.Diagnostics
  DNTrace = interface; // type: System.Diagnostics.Trace, namespace: System.Diagnostics
  DNTraceEventCache = interface; // type: System.Diagnostics.TraceEventCache, namespace: System.Diagnostics
  DNTraceFilter = interface; // type: System.Diagnostics.TraceFilter, namespace: System.Diagnostics
  DNEventTypeFilter = interface; // type: System.Diagnostics.EventTypeFilter, namespace: System.Diagnostics
  DNSourceFilter = interface; // type: System.Diagnostics.SourceFilter, namespace: System.Diagnostics
  DNTraceListenerCollection = interface; // type: System.Diagnostics.TraceListenerCollection, namespace: System.Diagnostics
  DNTraceSource = interface; // type: System.Diagnostics.TraceSource, namespace: System.Diagnostics
  DNTraceListener = interface; // type: System.Diagnostics.TraceListener, namespace: System.Diagnostics
  DNDefaultTraceListener = interface; // type: System.Diagnostics.DefaultTraceListener, namespace: System.Diagnostics


{ objects }

  //-------------namespace: System.Diagnostics----------------
  DNSwitchAttributeClass = interface(DDNC.System.Private.CoreLib.DNAttributeClass)
  ['{F602B3B4-6739-57A1-AD20-6A078DF8E559}']
  { constructors } 

    {class} function init(switchName: string; switchType: DDNC.System.Private.CoreLib.DNType): DNSwitchAttribute;

  { static methods } 

    {class} function GetAll(assembly: DDNC.System.Private.CoreLib.DNAssembly): TArray<DNSwitchAttribute>;

  end;

  [DNTypeName('System.Diagnostics.SwitchAttribute')]
  DNSwitchAttribute = interface(DDNC.System.Private.CoreLib.DNAttribute)
  ['{C54AA1F7-626D-3BD6-BAC3-B1B4176F6EE6}']
  { getters & setters } 

    function get_SwitchName: string;
    procedure set_SwitchName(value: string);
    function get_SwitchType: DDNC.System.Private.CoreLib.DNType;
    procedure set_SwitchType(value: DDNC.System.Private.CoreLib.DNType);
    function get_SwitchDescription: string;
    procedure set_SwitchDescription(value: string);
    function get_TypeId: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;

  { propertys } 

    property SwitchName: string read get_SwitchName write set_SwitchName;
    property SwitchType: DDNC.System.Private.CoreLib.DNType read get_SwitchType write set_SwitchType;
    property SwitchDescription: string read get_SwitchDescription write set_SwitchDescription;
    property TypeId: DDNC.System.Private.CoreLib.DNObject read get_TypeId;
  end;

  TDNSwitchAttribute = class(TDNGenericImport<DNSwitchAttributeClass, DNSwitchAttribute>) end;

  //-------------namespace: System.Diagnostics----------------
  DNSwitchLevelAttributeClass = interface(DDNC.System.Private.CoreLib.DNAttributeClass)
  ['{F0B7F3DF-462F-54D9-9F21-1B5C673FC9E2}']
  { constructors } 

    {class} function init(switchLevelType: DDNC.System.Private.CoreLib.DNType): DNSwitchLevelAttribute;

  end;

  [DNTypeName('System.Diagnostics.SwitchLevelAttribute')]
  DNSwitchLevelAttribute = interface(DDNC.System.Private.CoreLib.DNAttribute)
  ['{21A305D0-963F-37B9-AE75-392347B30CFB}']
  { getters & setters } 

    function get_SwitchLevelType: DDNC.System.Private.CoreLib.DNType;
    procedure set_SwitchLevelType(value: DDNC.System.Private.CoreLib.DNType);
    function get_TypeId: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;

  { propertys } 

    property SwitchLevelType: DDNC.System.Private.CoreLib.DNType read get_SwitchLevelType write set_SwitchLevelType;
    property TypeId: DDNC.System.Private.CoreLib.DNObject read get_TypeId;
  end;

  TDNSwitchLevelAttribute = class(TDNGenericImport<DNSwitchLevelAttributeClass, DNSwitchLevelAttribute>) end;

  //-------------namespace: System.Diagnostics----------------
  DNCorrelationManagerClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{3034E245-924F-56C3-9EED-E40F58C5DF67}']
  end;

  [DNTypeName('System.Diagnostics.CorrelationManager')]
  DNCorrelationManager = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{0A31EC1F-B103-3AA0-9653-487A20B0FEBA}']
  { getters & setters } 

    function get_LogicalOperationStack: DDNC.System.Collections.NonGeneric.DNStack;
    function get_ActivityId: DDNC.System.Private.CoreLib.DNGuid;
    procedure set_ActivityId(value: DDNC.System.Private.CoreLib.DNGuid);

  { methods } 

    procedure StartLogicalOperation; overload;
    procedure StopLogicalOperation;
    procedure StartLogicalOperation(operationId: DDNC.System.Private.CoreLib.DNObject); overload;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property LogicalOperationStack: DDNC.System.Collections.NonGeneric.DNStack read get_LogicalOperationStack;
    property ActivityId: DDNC.System.Private.CoreLib.DNGuid read get_ActivityId write set_ActivityId;
  end;

  TDNCorrelationManager = class(TDNGenericImport<DNCorrelationManagerClass, DNCorrelationManager>) end;

  //-------------namespace: System.Diagnostics----------------
  DNSwitchClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{1AC7F0D1-40B2-5962-BFC8-94394191C07F}']
  end;

  [DNTypeName('System.Diagnostics.Switch')]
  DNSwitch = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{60E74C26-E535-3919-8A9D-D1D9586FFADE}']
  { getters & setters } 

    function get_DisplayName: string;
    function get_Description: string;
    function get_Attributes: DDNC.System.Collections.Specialized.DNStringDictionary;

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property DisplayName: string read get_DisplayName;
    property Description: string read get_Description;
    property Attributes: DDNC.System.Collections.Specialized.DNStringDictionary read get_Attributes;
  end;

  TDNSwitch = class(TDNGenericImport<DNSwitchClass, DNSwitch>) end;

  //-------------namespace: System.Diagnostics----------------
  DNBooleanSwitchClass = interface(DNSwitchClass)
  ['{0122E1B4-8793-5320-8492-9F090565390B}']
  { constructors } 

    {class} function init(displayName: string; description: string): DNBooleanSwitch; overload;
    {class} function init(displayName: string; description: string; defaultSwitchValue: string): DNBooleanSwitch; overload;

  end;

  [DNTypeName('System.Diagnostics.BooleanSwitch')]
  DNBooleanSwitch = interface(DNSwitch)
  ['{A7461840-0BE3-3F08-A163-A702CD050AC0}']
  { getters & setters } 

    function get_Enabled: Boolean;
    procedure set_Enabled(value: Boolean);
    function get_DisplayName: string;
    function get_Description: string;
    function get_Attributes: DDNC.System.Collections.Specialized.DNStringDictionary;

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Enabled: Boolean read get_Enabled write set_Enabled;
    property DisplayName: string read get_DisplayName;
    property Description: string read get_Description;
    property Attributes: DDNC.System.Collections.Specialized.DNStringDictionary read get_Attributes;
  end;

  TDNBooleanSwitch = class(TDNGenericImport<DNBooleanSwitchClass, DNBooleanSwitch>) end;

  //-------------namespace: System.Diagnostics----------------
  DNSourceSwitchClass = interface(DNSwitchClass)
  ['{4B8D3BBB-2169-5454-9A2C-262735F81CF4}']
  { constructors } 

    {class} function init(name: string): DNSourceSwitch; overload;
    {class} function init(displayName: string; defaultSwitchValue: string): DNSourceSwitch; overload;

  end;

  [DNTypeName('System.Diagnostics.SourceSwitch')]
  DNSourceSwitch = interface(DNSwitch)
  ['{0E000E63-A5EA-3DD9-9B0A-1CDCED6B4129}']
  { getters & setters } 

    function get_Level: DNSourceLevels;
    procedure set_Level(value: DNSourceLevels);
    function get_DisplayName: string;
    function get_Description: string;
    function get_Attributes: DDNC.System.Collections.Specialized.DNStringDictionary;

  { methods } 

    function ShouldTrace(eventType: DNTraceEventType): Boolean;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Level: DNSourceLevels read get_Level write set_Level;
    property DisplayName: string read get_DisplayName;
    property Description: string read get_Description;
    property Attributes: DDNC.System.Collections.Specialized.DNStringDictionary read get_Attributes;
  end;

  TDNSourceSwitch = class(TDNGenericImport<DNSourceSwitchClass, DNSourceSwitch>) end;

  //-------------namespace: System.Diagnostics----------------
  DNTraceSwitchClass = interface(DNSwitchClass)
  ['{CA950F75-3FA1-5973-AB82-A3C1923655FF}']
  { constructors } 

    {class} function init(displayName: string; description: string): DNTraceSwitch; overload;
    {class} function init(displayName: string; description: string; defaultSwitchValue: string): DNTraceSwitch; overload;

  end;

  [DNTypeName('System.Diagnostics.TraceSwitch')]
  DNTraceSwitch = interface(DNSwitch)
  ['{35998666-61B4-3052-A006-5ADDACFFFCC0}']
  { getters & setters } 

    function get_Level: DNTraceLevel;
    procedure set_Level(value: DNTraceLevel);
    function get_TraceError: Boolean;
    function get_TraceWarning: Boolean;
    function get_TraceInfo: Boolean;
    function get_TraceVerbose: Boolean;
    function get_DisplayName: string;
    function get_Description: string;
    function get_Attributes: DDNC.System.Collections.Specialized.DNStringDictionary;

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Level: DNTraceLevel read get_Level write set_Level;
    property TraceError: Boolean read get_TraceError;
    property TraceWarning: Boolean read get_TraceWarning;
    property TraceInfo: Boolean read get_TraceInfo;
    property TraceVerbose: Boolean read get_TraceVerbose;
    property DisplayName: string read get_DisplayName;
    property Description: string read get_Description;
    property Attributes: DDNC.System.Collections.Specialized.DNStringDictionary read get_Attributes;
  end;

  TDNTraceSwitch = class(TDNGenericImport<DNTraceSwitchClass, DNTraceSwitch>) end;

  //-------------namespace: System.Diagnostics----------------
  DNTraceClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{85C72B46-BBA2-5CF5-805D-C83E533AB2EE}']
  { static getter & setter } 

    {class} function get_CorrelationManager: DNCorrelationManager;
    {class} function get_Listeners: DNTraceListenerCollection;
    {class} function get_AutoFlush: Boolean;
    {class} procedure set_AutoFlush(value: Boolean);
    {class} function get_UseGlobalLock: Boolean;
    {class} procedure set_UseGlobalLock(value: Boolean);
    {class} function get_IndentLevel: Int32;
    {class} procedure set_IndentLevel(value: Int32);
    {class} function get_IndentSize: Int32;
    {class} procedure set_IndentSize(value: Int32);

  { static methods } 

    {class} procedure Flush;
    {class} procedure Close;
    {class} procedure Assert(condition: Boolean); overload;
    {class} procedure Assert(condition: Boolean; message: string); overload;
    {class} procedure Assert(condition: Boolean; message: string; detailMessage: string); overload;
    {class} procedure Fail(message: string); overload;
    {class} procedure Fail(message: string; detailMessage: string); overload;
    {class} procedure Refresh;
    {class} procedure TraceInformation(message: string); overload;
    {class} procedure TraceInformation(format: string; args: TArray<DDNC.System.Private.CoreLib.DNObject>); overload;
    {class} procedure TraceWarning(message: string); overload;
    {class} procedure TraceWarning(format: string; args: TArray<DDNC.System.Private.CoreLib.DNObject>); overload;
    {class} procedure TraceError(message: string); overload;
    {class} procedure TraceError(format: string; args: TArray<DDNC.System.Private.CoreLib.DNObject>); overload;
    {class} procedure Write(message: string); overload;
    {class} procedure Write(value: DDNC.System.Private.CoreLib.DNObject); overload;
    {class} procedure Write(message: string; category: string); overload;
    {class} procedure Write(value: DDNC.System.Private.CoreLib.DNObject; category: string); overload;
    {class} procedure WriteLine(message: string); overload;
    {class} procedure WriteLine(value: DDNC.System.Private.CoreLib.DNObject); overload;
    {class} procedure WriteLine(message: string; category: string); overload;
    {class} procedure WriteLine(value: DDNC.System.Private.CoreLib.DNObject; category: string); overload;
    {class} procedure WriteIf(condition: Boolean; message: string); overload;
    {class} procedure WriteIf(condition: Boolean; value: DDNC.System.Private.CoreLib.DNObject); overload;
    {class} procedure WriteIf(condition: Boolean; message: string; category: string); overload;
    {class} procedure WriteIf(condition: Boolean; value: DDNC.System.Private.CoreLib.DNObject; category: string); overload;
    {class} procedure WriteLineIf(condition: Boolean; message: string); overload;
    {class} procedure WriteLineIf(condition: Boolean; value: DDNC.System.Private.CoreLib.DNObject); overload;
    {class} procedure WriteLineIf(condition: Boolean; message: string; category: string); overload;
    {class} procedure WriteLineIf(condition: Boolean; value: DDNC.System.Private.CoreLib.DNObject; category: string); overload;
    {class} procedure Indent;
    {class} procedure Unindent;

  { static propertys } 

    {class} property CorrelationManager: DNCorrelationManager read get_CorrelationManager;
    {class} property Listeners: DNTraceListenerCollection read get_Listeners;
    {class} property AutoFlush: Boolean read get_AutoFlush write set_AutoFlush;
    {class} property UseGlobalLock: Boolean read get_UseGlobalLock write set_UseGlobalLock;
    {class} property IndentLevel: Int32 read get_IndentLevel write set_IndentLevel;
    {class} property IndentSize: Int32 read get_IndentSize write set_IndentSize;
  end;

  [DNTypeName('System.Diagnostics.Trace')]
  DNTrace = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{49CA64AD-7E91-383C-AD73-55CCAA683F3E}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNTrace = class(TDNGenericImport<DNTraceClass, DNTrace>) end;

  //-------------namespace: System.Diagnostics----------------
  DNTraceEventCacheClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{6B7A0B76-F0C2-5931-8965-3C5953147A1A}']
  { constructors } 

    {class} function init: DNTraceEventCache;

  end;

  [DNTypeName('System.Diagnostics.TraceEventCache')]
  DNTraceEventCache = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{68A69ED4-5908-3000-8CDE-4AA065CE1A7C}']
  { getters & setters } 

    function get_DateTime: DDNC.System.Private.CoreLib.DNDateTime;
    function get_ProcessId: Int32;
    function get_ThreadId: string;
    function get_Timestamp: Int64;
    function get_Callstack: string;
    function get_LogicalOperationStack: DDNC.System.Collections.NonGeneric.DNStack;

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property DateTime: DDNC.System.Private.CoreLib.DNDateTime read get_DateTime;
    property ProcessId: Int32 read get_ProcessId;
    property ThreadId: string read get_ThreadId;
    property Timestamp: Int64 read get_Timestamp;
    property Callstack: string read get_Callstack;
    property LogicalOperationStack: DDNC.System.Collections.NonGeneric.DNStack read get_LogicalOperationStack;
  end;

  TDNTraceEventCache = class(TDNGenericImport<DNTraceEventCacheClass, DNTraceEventCache>) end;

  //-------------namespace: System.Diagnostics----------------
  DNTraceFilterClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{C50D7927-952C-5700-AD3D-F6F6F769DBAB}']
  end;

  [DNTypeName('System.Diagnostics.TraceFilter')]
  DNTraceFilter = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{E23255EE-7CAC-37DE-927F-BD699D357534}']
  { methods } 

    function ShouldTrace(cache: DNTraceEventCache; source: string; eventType: DNTraceEventType; id: Int32; formatOrMessage: string; args: TArray<DDNC.System.Private.CoreLib.DNObject>; data1: DDNC.System.Private.CoreLib.DNObject; data: TArray<DDNC.System.Private.CoreLib.DNObject>): Boolean;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNTraceFilter = class(TDNGenericImport<DNTraceFilterClass, DNTraceFilter>) end;

  //-------------namespace: System.Diagnostics----------------
  DNEventTypeFilterClass = interface(DNTraceFilterClass)
  ['{E3C91128-8623-5FC3-85DE-707CE806F200}']
  { constructors } 

    {class} function init(level: DNSourceLevels): DNEventTypeFilter;

  end;

  [DNTypeName('System.Diagnostics.EventTypeFilter')]
  DNEventTypeFilter = interface(DNTraceFilter)
  ['{16EE1F49-92E3-33E9-B1CB-15AE0F4B6B17}']
  { getters & setters } 

    function get_EventType: DNSourceLevels;
    procedure set_EventType(value: DNSourceLevels);

  { methods } 

    function ShouldTrace(cache: DNTraceEventCache; source: string; eventType: DNTraceEventType; id: Int32; formatOrMessage: string; args: TArray<DDNC.System.Private.CoreLib.DNObject>; data1: DDNC.System.Private.CoreLib.DNObject; data: TArray<DDNC.System.Private.CoreLib.DNObject>): Boolean;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property EventType: DNSourceLevels read get_EventType write set_EventType;
  end;

  TDNEventTypeFilter = class(TDNGenericImport<DNEventTypeFilterClass, DNEventTypeFilter>) end;

  //-------------namespace: System.Diagnostics----------------
  DNSourceFilterClass = interface(DNTraceFilterClass)
  ['{A4F9586E-720C-5996-88B6-B098EF2B077A}']
  { constructors } 

    {class} function init(source: string): DNSourceFilter;

  end;

  [DNTypeName('System.Diagnostics.SourceFilter')]
  DNSourceFilter = interface(DNTraceFilter)
  ['{0FA75F22-4BD3-33E4-9F04-20EE0EBFBC7F}']
  { getters & setters } 

    function get_Source: string;
    procedure set_Source(value: string);

  { methods } 

    function ShouldTrace(cache: DNTraceEventCache; source: string; eventType: DNTraceEventType; id: Int32; formatOrMessage: string; args: TArray<DDNC.System.Private.CoreLib.DNObject>; data1: DDNC.System.Private.CoreLib.DNObject; data: TArray<DDNC.System.Private.CoreLib.DNObject>): Boolean;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Source: string read get_Source write set_Source;
  end;

  TDNSourceFilter = class(TDNGenericImport<DNSourceFilterClass, DNSourceFilter>) end;

  //-------------namespace: System.Diagnostics----------------
  DNTraceListenerCollectionClass = interface(DNObjectClass)
  ['{AE1009DF-537F-5AD5-8331-5A93D3863F83}']
  end;

  [DNTypeName('System.Diagnostics.TraceListenerCollection')]
  DNTraceListenerCollection = interface(DDNC.System.Private.CoreLib.DNIList)
  ['{4B58982C-80D9-3795-9C75-F7DE050CDE6E}']
  { getters & setters } 

    function get_Item(i: Int32): DNTraceListener; overload;
    procedure set_Item(i: Int32; value: DNTraceListener);
    function get_Item(name: string): DNTraceListener; overload;
    function get_Count: Int32;

  { methods } 

    function Add(listener: DNTraceListener): Int32;
    procedure AddRange(value: TArray<DNTraceListener>); overload;
    procedure AddRange(value: DNTraceListenerCollection); overload;
    function &Contains(listener: DNTraceListener): Boolean;
    procedure CopyTo(listeners: TArray<DNTraceListener>; index: Int32);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator;
    function IndexOf(listener: DNTraceListener): Int32;
    procedure Insert(index: Int32; listener: DNTraceListener);
    procedure Remove(listener: DNTraceListener); overload;
    procedure Remove(name: string); overload;
    procedure RemoveAt(index: Int32);
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Item[i: Int32]: DNTraceListener read get_Item write set_Item; default;
    property Item[name: string]: DNTraceListener read get_Item; default;
    property Count: Int32 read get_Count;
  end;

  TDNTraceListenerCollection = class(TDNGenericImport<DNTraceListenerCollectionClass, DNTraceListenerCollection>) end;

  //-------------namespace: System.Diagnostics----------------
  DNTraceSourceClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{8A6621FA-7FEA-53DC-BE53-10EB5E9509A8}']
  { constructors } 

    {class} function init(name: string): DNTraceSource; overload;
    {class} function init(name: string; defaultLevel: DNSourceLevels): DNTraceSource; overload;

  end;

  [DNTypeName('System.Diagnostics.TraceSource')]
  DNTraceSource = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{7DFA1199-42A2-3B27-A24B-9946299A3176}']
  { getters & setters } 

    function get_Attributes: DDNC.System.Collections.Specialized.DNStringDictionary;
    function get_Name: string;
    function get_Listeners: DNTraceListenerCollection;
    function get_Switch: DNSourceSwitch;
    procedure set_Switch(value: DNSourceSwitch);

  { methods } 

    procedure Close;
    procedure Flush;
    procedure TraceEvent(eventType: DNTraceEventType; id: Int32); overload;
    procedure TraceEvent(eventType: DNTraceEventType; id: Int32; message: string); overload;
    procedure TraceEvent(eventType: DNTraceEventType; id: Int32; format: string; args: TArray<DDNC.System.Private.CoreLib.DNObject>); overload;
    procedure TraceData(eventType: DNTraceEventType; id: Int32; data: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure TraceData(eventType: DNTraceEventType; id: Int32; data: TArray<DDNC.System.Private.CoreLib.DNObject>); overload;
    procedure TraceInformation(message: string); overload;
    procedure TraceInformation(format: string; args: TArray<DDNC.System.Private.CoreLib.DNObject>); overload;
    procedure TraceTransfer(id: Int32; message: string; relatedActivityId: DDNC.System.Private.CoreLib.DNGuid);
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Attributes: DDNC.System.Collections.Specialized.DNStringDictionary read get_Attributes;
    property Name: string read get_Name;
    property Listeners: DNTraceListenerCollection read get_Listeners;
    property Switch: DNSourceSwitch read get_Switch write set_Switch;
  end;

  TDNTraceSource = class(TDNGenericImport<DNTraceSourceClass, DNTraceSource>) end;

  //-------------namespace: System.Diagnostics----------------
  DNTraceListenerClass = interface(DDNC.System.Private.CoreLib.DNMarshalByRefObjectClass)
  ['{45BD5285-B12C-51A8-9D5C-0BF39E42B38F}']
  end;

  [DNTypeName('System.Diagnostics.TraceListener')]
  DNTraceListener = interface(DDNC.System.Private.CoreLib.DNMarshalByRefObject)
  ['{6FA91C48-66FA-3CC0-BAB9-80E09947C162}']
  { getters & setters } 

    function get_Attributes: DDNC.System.Collections.Specialized.DNStringDictionary;
    function get_Name: string;
    procedure set_Name(value: string);
    function get_IsThreadSafe: Boolean;
    function get_IndentLevel: Int32;
    procedure set_IndentLevel(value: Int32);
    function get_IndentSize: Int32;
    procedure set_IndentSize(value: Int32);
    function get_Filter: DNTraceFilter;
    procedure set_Filter(value: DNTraceFilter);
    function get_TraceOutputOptions: DNTraceOptions;
    procedure set_TraceOutputOptions(value: DNTraceOptions);

  { methods } 

    procedure Dispose;
    procedure Flush;
    procedure Close;
    procedure TraceTransfer(eventCache: DNTraceEventCache; source: string; id: Int32; message: string; relatedActivityId: DDNC.System.Private.CoreLib.DNGuid);
    procedure Fail(message: string); overload;
    procedure Fail(message: string; detailMessage: string); overload;
    procedure Write(message: string); overload;
    procedure Write(o: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure Write(message: string; category: string); overload;
    procedure Write(o: DDNC.System.Private.CoreLib.DNObject; category: string); overload;
    procedure WriteLine(message: string); overload;
    procedure WriteLine(o: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure WriteLine(message: string; category: string); overload;
    procedure WriteLine(o: DDNC.System.Private.CoreLib.DNObject; category: string); overload;
    procedure TraceData(eventCache: DNTraceEventCache; source: string; eventType: DNTraceEventType; id: Int32; data: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure TraceData(eventCache: DNTraceEventCache; source: string; eventType: DNTraceEventType; id: Int32; data: TArray<DDNC.System.Private.CoreLib.DNObject>); overload;
    procedure TraceEvent(eventCache: DNTraceEventCache; source: string; eventType: DNTraceEventType; id: Int32); overload;
    procedure TraceEvent(eventCache: DNTraceEventCache; source: string; eventType: DNTraceEventType; id: Int32; message: string); overload;
    procedure TraceEvent(eventCache: DNTraceEventCache; source: string; eventType: DNTraceEventType; id: Int32; format: string; args: TArray<DDNC.System.Private.CoreLib.DNObject>); overload;
    function GetLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function InitializeLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Attributes: DDNC.System.Collections.Specialized.DNStringDictionary read get_Attributes;
    property Name: string read get_Name write set_Name;
    property IsThreadSafe: Boolean read get_IsThreadSafe;
    property IndentLevel: Int32 read get_IndentLevel write set_IndentLevel;
    property IndentSize: Int32 read get_IndentSize write set_IndentSize;
    property Filter: DNTraceFilter read get_Filter write set_Filter;
    property TraceOutputOptions: DNTraceOptions read get_TraceOutputOptions write set_TraceOutputOptions;
  end;

  TDNTraceListener = class(TDNGenericImport<DNTraceListenerClass, DNTraceListener>) end;

  //-------------namespace: System.Diagnostics----------------
  DNDefaultTraceListenerClass = interface(DNTraceListenerClass)
  ['{25895051-8031-5852-992B-700BBC6EA8F0}']
  { constructors } 

    {class} function init: DNDefaultTraceListener;

  end;

  [DNTypeName('System.Diagnostics.DefaultTraceListener')]
  DNDefaultTraceListener = interface(DNTraceListener)
  ['{BB2393F8-4957-35B3-8D75-A22B634976A4}']
  { getters & setters } 

    function get_AssertUiEnabled: Boolean;
    procedure set_AssertUiEnabled(value: Boolean);
    function get_LogFileName: string;
    procedure set_LogFileName(value: string);
    function get_Attributes: DDNC.System.Collections.Specialized.DNStringDictionary;
    function get_Name: string;
    procedure set_Name(value: string);
    function get_IsThreadSafe: Boolean;
    function get_IndentLevel: Int32;
    procedure set_IndentLevel(value: Int32);
    function get_IndentSize: Int32;
    procedure set_IndentSize(value: Int32);
    function get_Filter: DNTraceFilter;
    procedure set_Filter(value: DNTraceFilter);
    function get_TraceOutputOptions: DNTraceOptions;
    procedure set_TraceOutputOptions(value: DNTraceOptions);

  { methods } 

    procedure Fail(message: string); overload;
    procedure Fail(message: string; detailMessage: string); overload;
    procedure Write(message: string); overload;
    procedure WriteLine(message: string); overload;
    procedure Dispose;
    procedure Flush;
    procedure Close;
    procedure TraceTransfer(eventCache: DNTraceEventCache; source: string; id: Int32; message: string; relatedActivityId: DDNC.System.Private.CoreLib.DNGuid);
    procedure Write(o: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure Write(message: string; category: string); overload;
    procedure Write(o: DDNC.System.Private.CoreLib.DNObject; category: string); overload;
    procedure WriteLine(o: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure WriteLine(message: string; category: string); overload;
    procedure WriteLine(o: DDNC.System.Private.CoreLib.DNObject; category: string); overload;
    procedure TraceData(eventCache: DNTraceEventCache; source: string; eventType: DNTraceEventType; id: Int32; data: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure TraceData(eventCache: DNTraceEventCache; source: string; eventType: DNTraceEventType; id: Int32; data: TArray<DDNC.System.Private.CoreLib.DNObject>); overload;
    procedure TraceEvent(eventCache: DNTraceEventCache; source: string; eventType: DNTraceEventType; id: Int32); overload;
    procedure TraceEvent(eventCache: DNTraceEventCache; source: string; eventType: DNTraceEventType; id: Int32; message: string); overload;
    procedure TraceEvent(eventCache: DNTraceEventCache; source: string; eventType: DNTraceEventType; id: Int32; format: string; args: TArray<DDNC.System.Private.CoreLib.DNObject>); overload;
    function GetLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function InitializeLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property AssertUiEnabled: Boolean read get_AssertUiEnabled write set_AssertUiEnabled;
    property LogFileName: string read get_LogFileName write set_LogFileName;
    property Attributes: DDNC.System.Collections.Specialized.DNStringDictionary read get_Attributes;
    property Name: string read get_Name write set_Name;
    property IsThreadSafe: Boolean read get_IsThreadSafe;
    property IndentLevel: Int32 read get_IndentLevel write set_IndentLevel;
    property IndentSize: Int32 read get_IndentSize write set_IndentSize;
    property Filter: DNTraceFilter read get_Filter write set_Filter;
    property TraceOutputOptions: DNTraceOptions read get_TraceOutputOptions write set_TraceOutputOptions;
  end;

  TDNDefaultTraceListener = class(TDNGenericImport<DNDefaultTraceListenerClass, DNDefaultTraceListener>) end;


implementation


initialization
  LoadAssemblyModule('System.Diagnostics.TraceSource, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
