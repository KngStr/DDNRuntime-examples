//----------------------------------------------------------------------------
//  System.Diagnostics.DiagnosticSource.dll: System.Diagnostics.DiagnosticSource, Version=4.0.5.0, Culture=neutral, PublicKeyToken=cc7b13ffcd2ddd51
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 3.1.18
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Diagnostics.DiagnosticSource
//  Author: ying32
//----------------------------------------------------------------------------

{$IFNDEF DDNCSYSTEMDIAGNOSTICSDIAGNOSTICSOURCE}
unit DDNC.System.Diagnostics.DiagnosticSource;
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

  //-------------namespace: System.Diagnostics----------------
  [DNTypeName('System.Diagnostics.ActivityIdFormat')]
  DNActivityIdFormat = type Integer;
  DNActivityIdFormatHelper = record helper for DNActivityIdFormat
  public const
    Unknown = 0;
    Hierarchical = 1;
    W3C = 2;
  end;


  //-------------namespace: System.Diagnostics----------------
  [DNTypeName('System.Diagnostics.ActivityTraceFlags')]
  DNActivityTraceFlags = type Integer;
  DNActivityTraceFlagsHelper = record helper for DNActivityTraceFlags
  public const
    None = 0;
    Recorded = 1;
  end;




type


{ declares }

  DNActivity = interface; // type: System.Diagnostics.Activity, namespace: System.Diagnostics
  DNDiagnosticSource = interface; // type: System.Diagnostics.DiagnosticSource, namespace: System.Diagnostics
  DNDiagnosticListener = interface; // type: System.Diagnostics.DiagnosticListener, namespace: System.Diagnostics
  DNActivitySpanId = interface; // type: System.Diagnostics.ActivitySpanId, namespace: System.Diagnostics
  DNActivityTraceId = interface; // type: System.Diagnostics.ActivityTraceId, namespace: System.Diagnostics


{ objects }

  //-------------namespace: System.Diagnostics----------------
  DNActivityClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{923C4775-323C-5DBB-8800-9078E50A2C8A}']
  { static getter & setter } 

    {class} function get_ForceDefaultIdFormat: Boolean;
    {class} procedure set_ForceDefaultIdFormat(value: Boolean);
    {class} function get_DefaultIdFormat: DNActivityIdFormat;
    {class} procedure set_DefaultIdFormat(value: DNActivityIdFormat);
    {class} function get_Current: DNActivity;
    {class} procedure set_Current(value: DNActivity);

  { constructors } 

    {class} function init(operationName: string): DNActivity;

  { static propertys } 

    {class} property ForceDefaultIdFormat: Boolean read get_ForceDefaultIdFormat write set_ForceDefaultIdFormat;
    {class} property DefaultIdFormat: DNActivityIdFormat read get_DefaultIdFormat write set_DefaultIdFormat;
    {class} property Current: DNActivity read get_Current write set_Current;
  end;

  [DNTypeName('System.Diagnostics.Activity')]
  DNActivity = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{E7353B55-5DED-37C4-946C-7F52380491CF}']
  { getters & setters } 

    function get_OperationName: string;
    function get_Parent: DNActivity;
    function get_Duration: DDNC.System.Private.CoreLib.DNTimeSpan;
    function get_StartTimeUtc: DDNC.System.Private.CoreLib.DNDateTime;
    function get_Id: string;
    function get_ParentId: string;
    function get_RootId: string;
    function get_Tags: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNKeyValuePair<string, string>>;
    function get_Baggage: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNKeyValuePair<string, string>>;
    function get_TraceStateString: string;
    procedure set_TraceStateString(value: string);
    function get_SpanId: DNActivitySpanId;
    function get_TraceId: DNActivityTraceId;
    function get_Recorded: Boolean;
    function get_ActivityTraceFlags: DNActivityTraceFlags;
    procedure set_ActivityTraceFlags(value: DNActivityTraceFlags);
    function get_ParentSpanId: DNActivitySpanId;
    function get_IdFormat: DNActivityIdFormat;

  { methods } 

    function GetBaggageItem(key: string): string;
    function AddTag(key: string; value: string): DNActivity;
    function AddBaggage(key: string; value: string): DNActivity;
    function SetParentId(parentId: string): DNActivity; overload;
    function SetParentId(traceId: DNActivityTraceId; spanId: DNActivitySpanId; activityTraceFlags: DNActivityTraceFlags): DNActivity; overload;
    function SetStartTime(startTimeUtc: DDNC.System.Private.CoreLib.DNDateTime): DNActivity;
    function SetEndTime(endTimeUtc: DDNC.System.Private.CoreLib.DNDateTime): DNActivity;
    function Start: DNActivity;
    procedure Stop;
    function SetIdFormat(format: DNActivityIdFormat): DNActivity;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property OperationName: string read get_OperationName;
    property Parent: DNActivity read get_Parent;
    property Duration: DDNC.System.Private.CoreLib.DNTimeSpan read get_Duration;
    property StartTimeUtc: DDNC.System.Private.CoreLib.DNDateTime read get_StartTimeUtc;
    property Id: string read get_Id;
    property ParentId: string read get_ParentId;
    property RootId: string read get_RootId;
    property Tags: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNKeyValuePair<string, string>> read get_Tags;
    property Baggage: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNKeyValuePair<string, string>> read get_Baggage;
    property TraceStateString: string read get_TraceStateString write set_TraceStateString;
    property SpanId: DNActivitySpanId read get_SpanId;
    property TraceId: DNActivityTraceId read get_TraceId;
    property Recorded: Boolean read get_Recorded;
    property ActivityTraceFlags: DNActivityTraceFlags read get_ActivityTraceFlags write set_ActivityTraceFlags;
    property ParentSpanId: DNActivitySpanId read get_ParentSpanId;
    property IdFormat: DNActivityIdFormat read get_IdFormat;
  end;

  TDNActivity = class(TDNGenericImport<DNActivityClass, DNActivity>) end;

  //-------------namespace: System.Diagnostics----------------
  DNDiagnosticSourceClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{56653834-C5CB-5876-8148-321609A7C606}']
  end;

  [DNTypeName('System.Diagnostics.DiagnosticSource')]
  DNDiagnosticSource = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{7B593B44-FFB3-310F-9353-DB8B1C944039}']
  { methods } 

    procedure Write(name: string; value: DDNC.System.Private.CoreLib.DNObject);
    function IsEnabled(name: string): Boolean; overload;
    function IsEnabled(name: string; arg1: DDNC.System.Private.CoreLib.DNObject; arg2: DDNC.System.Private.CoreLib.DNObject): Boolean; overload;
    function StartActivity(activity: DNActivity; args: DDNC.System.Private.CoreLib.DNObject): DNActivity;
    procedure StopActivity(activity: DNActivity; args: DDNC.System.Private.CoreLib.DNObject);
    procedure OnActivityImport(activity: DNActivity; payload: DDNC.System.Private.CoreLib.DNObject);
    procedure OnActivityExport(activity: DNActivity; payload: DDNC.System.Private.CoreLib.DNObject);
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNDiagnosticSource = class(TDNGenericImport<DNDiagnosticSourceClass, DNDiagnosticSource>) end;

  //-------------namespace: System.Diagnostics----------------
  DNDiagnosticListenerClass = interface(DNDiagnosticSourceClass)
  ['{F66FBB76-08B1-5723-8223-24180906963D}']
  { static getter & setter } 

    {class} function get_AllListeners: DDNC.System.Private.CoreLib.DNIObservable<DNDiagnosticListener>;

  { constructors } 

    {class} function init(name: string): DNDiagnosticListener;

  { static propertys } 

    {class} property AllListeners: DDNC.System.Private.CoreLib.DNIObservable<DNDiagnosticListener> read get_AllListeners;
  end;

  [DNTypeName('System.Diagnostics.DiagnosticListener')]
  DNDiagnosticListener = interface(DNDiagnosticSource)
  ['{4EA824DF-B86D-3C4C-8418-F2F924584ACD}']
  { getters & setters } 

    function get_Name: string;

  { methods } 

    function Subscribe(observer: DDNC.System.Private.CoreLib.DNIObserver<DDNC.System.Private.CoreLib.DNKeyValuePair<string, DDNC.System.Private.CoreLib.DNObject>>; isEnabled: DDNC.System.Private.CoreLib.DNPredicate<string>): DDNC.System.Private.CoreLib.DNIDisposable; overload;
    function Subscribe(observer: DDNC.System.Private.CoreLib.DNIObserver<DDNC.System.Private.CoreLib.DNKeyValuePair<string, DDNC.System.Private.CoreLib.DNObject>>; isEnabled: DDNC.System.Private.CoreLib.DNFunc<string, DDNC.System.Private.CoreLib.DNObject, DDNC.System.Private.CoreLib.DNObject, Boolean>): DDNC.System.Private.CoreLib.DNIDisposable; overload;
    function Subscribe(observer: DDNC.System.Private.CoreLib.DNIObserver<DDNC.System.Private.CoreLib.DNKeyValuePair<string, DDNC.System.Private.CoreLib.DNObject>>): DDNC.System.Private.CoreLib.DNIDisposable; overload;
    procedure Dispose;
    function ToString: string;
    function IsEnabled: Boolean; overload;
    function IsEnabled(name: string): Boolean; overload;
    function IsEnabled(name: string; arg1: DDNC.System.Private.CoreLib.DNObject; arg2: DDNC.System.Private.CoreLib.DNObject): Boolean; overload;
    procedure Write(name: string; value: DDNC.System.Private.CoreLib.DNObject);
    procedure OnActivityImport(activity: DNActivity; payload: DDNC.System.Private.CoreLib.DNObject);
    procedure OnActivityExport(activity: DNActivity; payload: DDNC.System.Private.CoreLib.DNObject);
    function Subscribe(observer: DDNC.System.Private.CoreLib.DNIObserver<DDNC.System.Private.CoreLib.DNKeyValuePair<string, DDNC.System.Private.CoreLib.DNObject>>; isEnabled: DDNC.System.Private.CoreLib.DNFunc<string, DDNC.System.Private.CoreLib.DNObject, DDNC.System.Private.CoreLib.DNObject, Boolean>; onActivityImport: DDNC.System.Private.CoreLib.DNAction<DNActivity, DDNC.System.Private.CoreLib.DNObject>; onActivityExport: DDNC.System.Private.CoreLib.DNAction<DNActivity, DDNC.System.Private.CoreLib.DNObject>): DDNC.System.Private.CoreLib.DNIDisposable; overload;
    function StartActivity(activity: DNActivity; args: DDNC.System.Private.CoreLib.DNObject): DNActivity;
    procedure StopActivity(activity: DNActivity; args: DDNC.System.Private.CoreLib.DNObject);
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Name: string read get_Name;
  end;

  TDNDiagnosticListener = class(TDNGenericImport<DNDiagnosticListenerClass, DNDiagnosticListener>) end;

  //-------------namespace: System.Diagnostics----------------
  DNActivitySpanIdClass = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{866DF5E6-671F-5081-BC7F-C9B6B401F570}']
  { static methods } 

    {class} function CreateRandom: DNActivitySpanId;
    {class} function CreateFromBytes(idData: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>): DNActivitySpanId;
    {class} function CreateFromUtf8String(idData: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>): DNActivitySpanId;
    {class} function CreateFromString(idData: DDNC.System.Private.CoreLib.DNReadOnlySpan<Char>): DNActivitySpanId;

  end;

  [DNTypeName('System.Diagnostics.ActivitySpanId')]
  DNActivitySpanId = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{CCDCD12C-93CC-3D13-8612-9B6DC0BA7C60}']
  { methods } 

    function ToHexString: string;
    function ToString: string;
    function Equals(spanId: DNActivitySpanId): Boolean; overload;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean; overload;
    function GetHashCode: Int32;
    procedure CopyTo(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>);
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNActivitySpanId = class(TDNGenericImport<DNActivitySpanIdClass, DNActivitySpanId>) end;

  //-------------namespace: System.Diagnostics----------------
  DNActivityTraceIdClass = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{C8562EE2-B504-50FC-BE56-96F1F077E413}']
  { static methods } 

    {class} function CreateRandom: DNActivityTraceId;
    {class} function CreateFromBytes(idData: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>): DNActivityTraceId;
    {class} function CreateFromUtf8String(idData: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>): DNActivityTraceId;
    {class} function CreateFromString(idData: DDNC.System.Private.CoreLib.DNReadOnlySpan<Char>): DNActivityTraceId;

  end;

  [DNTypeName('System.Diagnostics.ActivityTraceId')]
  DNActivityTraceId = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{BD44A7FE-E40E-385E-80AC-45EF3F74750F}']
  { methods } 

    function ToHexString: string;
    function ToString: string;
    function Equals(traceId: DNActivityTraceId): Boolean; overload;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean; overload;
    function GetHashCode: Int32;
    procedure CopyTo(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>);
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNActivityTraceId = class(TDNGenericImport<DNActivityTraceIdClass, DNActivityTraceId>) end;


implementation


initialization
  LoadAssemblyModule('System.Diagnostics.DiagnosticSource.dll', True, 'System.Diagnostics.DiagnosticSource, Version=4.0.5.0, Culture=neutral, PublicKeyToken=cc7b13ffcd2ddd51');

finalization

end.
