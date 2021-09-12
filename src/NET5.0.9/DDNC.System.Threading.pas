//----------------------------------------------------------------------------
//  System.Threading.dll: System.Threading, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 5.0.9
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Threading
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Threading;

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

  DNBarrierPostPhaseException = interface; // type: System.Threading.BarrierPostPhaseException, namespace: System.Threading
  DNReaderWriterLock = interface; // type: System.Threading.ReaderWriterLock, namespace: System.Threading
  DNBarrier = interface; // type: System.Threading.Barrier, namespace: System.Threading
  DNCountdownEvent = interface; // type: System.Threading.CountdownEvent, namespace: System.Threading
  DNHostExecutionContext = interface; // type: System.Threading.HostExecutionContext, namespace: System.Threading
  DNHostExecutionContextManager = interface; // type: System.Threading.HostExecutionContextManager, namespace: System.Threading
  DNLockCookie = interface; // type: System.Threading.LockCookie, namespace: System.Threading


{ objects }

  //-------------namespace: System.Threading----------------
  DNBarrierPostPhaseExceptionClass = interface(DDNC.System.Private.CoreLib.DNExceptionClass)
  ['{D1F5CD4F-1956-5806-8D40-D6A770A46AAA}']
  { constructors } 

    {class} function init: DNBarrierPostPhaseException; overload;
    {class} function init(innerException: DDNC.System.Private.CoreLib.DNException): DNBarrierPostPhaseException; overload;
    {class} function init(message: string): DNBarrierPostPhaseException; overload;
    {class} function init(message: string; innerException: DDNC.System.Private.CoreLib.DNException): DNBarrierPostPhaseException; overload;

  end;

  [DNTypeName('System.Threading.BarrierPostPhaseException')]
  DNBarrierPostPhaseException = interface(DDNC.System.Private.CoreLib.DNException)
  ['{0A293D64-A9E1-3176-8D03-93BE2DEF79F2}']
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

  TDNBarrierPostPhaseException = class(TDNGenericImport<DNBarrierPostPhaseExceptionClass, DNBarrierPostPhaseException>) end;

  //-------------namespace: System.Threading----------------
  DNReaderWriterLockClass = interface(DDNC.System.Private.CoreLib.DNCriticalFinalizerObjectClass)
  ['{6E049C7E-7EA8-543E-83B6-BFBE01FB9E81}']
  { constructors } 

    {class} function init: DNReaderWriterLock;

  end;

  [DNTypeName('System.Threading.ReaderWriterLock')]
  DNReaderWriterLock = interface(DDNC.System.Private.CoreLib.DNCriticalFinalizerObject)
  ['{0F815665-E614-3860-AC15-8963A5BE4139}']
  { getters & setters } 

    function get_IsReaderLockHeld: Boolean;
    function get_IsWriterLockHeld: Boolean;
    function get_WriterSeqNum: Int32;

  { methods } 

    function AnyWritersSince(seqNum: Int32): Boolean;
    procedure AcquireReaderLock(millisecondsTimeout: Int32); overload;
    procedure AcquireReaderLock(timeout: DDNC.System.Private.CoreLib.DNTimeSpan); overload;
    procedure AcquireWriterLock(millisecondsTimeout: Int32); overload;
    procedure AcquireWriterLock(timeout: DDNC.System.Private.CoreLib.DNTimeSpan); overload;
    procedure ReleaseReaderLock;
    procedure ReleaseWriterLock;
    function UpgradeToWriterLock(millisecondsTimeout: Int32): DNLockCookie; overload;
    function UpgradeToWriterLock(timeout: DDNC.System.Private.CoreLib.DNTimeSpan): DNLockCookie; overload;
    procedure DowngradeFromWriterLock(out lockCookie: DNLockCookie);
    function ReleaseLock: DNLockCookie;
    procedure RestoreLock(out lockCookie: DNLockCookie);
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property IsReaderLockHeld: Boolean read get_IsReaderLockHeld;
    property IsWriterLockHeld: Boolean read get_IsWriterLockHeld;
    property WriterSeqNum: Int32 read get_WriterSeqNum;
  end;

  TDNReaderWriterLock = class(TDNGenericImport<DNReaderWriterLockClass, DNReaderWriterLock>) end;

  //-------------namespace: System.Threading----------------
  DNBarrierClass = interface(DNObjectClass)
  ['{6C389A9C-63F6-586A-BDA2-F15B8F7C9F99}']
  { constructors } 

    {class} function init(participantCount: Int32): DNBarrier; overload;
    {class} function init(participantCount: Int32; postPhaseAction: DDNC.System.Private.CoreLib.DNAction<DNBarrier>): DNBarrier; overload;

  end;

  [DNTypeName('System.Threading.Barrier')]
  DNBarrier = interface(DDNC.System.Private.CoreLib.DNIDisposable)
  ['{CF88DFBF-699C-3E60-AACF-5DF0DAEDCD10}']
  { getters & setters } 

    function get_ParticipantsRemaining: Int32;
    function get_ParticipantCount: Int32;
    function get_CurrentPhaseNumber: Int64;

  { methods } 

    function AddParticipant: Int64;
    function AddParticipants(participantCount: Int32): Int64;
    procedure RemoveParticipant;
    procedure RemoveParticipants(participantCount: Int32);
    procedure SignalAndWait; overload;
    procedure SignalAndWait(cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken); overload;
    function SignalAndWait(timeout: DDNC.System.Private.CoreLib.DNTimeSpan): Boolean; overload;
    function SignalAndWait(timeout: DDNC.System.Private.CoreLib.DNTimeSpan; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): Boolean; overload;
    function SignalAndWait(millisecondsTimeout: Int32): Boolean; overload;
    function SignalAndWait(millisecondsTimeout: Int32; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): Boolean; overload;
    procedure Dispose;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property ParticipantsRemaining: Int32 read get_ParticipantsRemaining;
    property ParticipantCount: Int32 read get_ParticipantCount;
    property CurrentPhaseNumber: Int64 read get_CurrentPhaseNumber;
  end;

  TDNBarrier = class(TDNGenericImport<DNBarrierClass, DNBarrier>) end;

  //-------------namespace: System.Threading----------------
  DNCountdownEventClass = interface(DNObjectClass)
  ['{00AB28C5-ADB3-59FD-8884-BB74518E8C86}']
  { constructors } 

    {class} function init(initialCount: Int32): DNCountdownEvent;

  end;

  [DNTypeName('System.Threading.CountdownEvent')]
  DNCountdownEvent = interface(DDNC.System.Private.CoreLib.DNIDisposable)
  ['{5282B60A-0496-3C60-BE99-F9F267B7D47F}']
  { getters & setters } 

    function get_CurrentCount: Int32;
    function get_InitialCount: Int32;
    function get_IsSet: Boolean;
    function get_WaitHandle: DDNC.System.Private.CoreLib.DNWaitHandle;

  { methods } 

    procedure Dispose;
    function Signal: Boolean; overload;
    function Signal(signalCount: Int32): Boolean; overload;
    procedure AddCount; overload;
    function TryAddCount: Boolean; overload;
    procedure AddCount(signalCount: Int32); overload;
    function TryAddCount(signalCount: Int32): Boolean; overload;
    procedure Reset; overload;
    procedure Reset(count: Int32); overload;
    procedure Wait; overload;
    procedure Wait(cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken); overload;
    function Wait(timeout: DDNC.System.Private.CoreLib.DNTimeSpan): Boolean; overload;
    function Wait(timeout: DDNC.System.Private.CoreLib.DNTimeSpan; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): Boolean; overload;
    function Wait(millisecondsTimeout: Int32): Boolean; overload;
    function Wait(millisecondsTimeout: Int32; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): Boolean; overload;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property CurrentCount: Int32 read get_CurrentCount;
    property InitialCount: Int32 read get_InitialCount;
    property IsSet: Boolean read get_IsSet;
    property WaitHandle: DDNC.System.Private.CoreLib.DNWaitHandle read get_WaitHandle;
  end;

  TDNCountdownEvent = class(TDNGenericImport<DNCountdownEventClass, DNCountdownEvent>) end;

  //-------------namespace: System.Threading----------------
  DNHostExecutionContextClass = interface(DNObjectClass)
  ['{6125C240-2F76-539A-BE09-CA9ED41732E1}']
  { constructors } 

    {class} function init: DNHostExecutionContext; overload;
    {class} function init(state: DDNC.System.Private.CoreLib.DNObject): DNHostExecutionContext; overload;

  end;

  [DNTypeName('System.Threading.HostExecutionContext')]
  DNHostExecutionContext = interface(DDNC.System.Private.CoreLib.DNIDisposable)
  ['{077E5565-EFB1-3D32-8948-F78C02B63BA2}']
  { methods } 

    function CreateCopy: DNHostExecutionContext;
    procedure Dispose; overload;
    procedure Dispose(disposing: Boolean); overload;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNHostExecutionContext = class(TDNGenericImport<DNHostExecutionContextClass, DNHostExecutionContext>) end;

  //-------------namespace: System.Threading----------------
  DNHostExecutionContextManagerClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{67711C3C-6634-5602-99A6-1227C528CB09}']
  { constructors } 

    {class} function init: DNHostExecutionContextManager;

  end;

  [DNTypeName('System.Threading.HostExecutionContextManager')]
  DNHostExecutionContextManager = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{F1E0FB81-BF44-32E7-8E14-CB84889ED9D4}']
  { methods } 

    function Capture: DNHostExecutionContext;
    function SetHostExecutionContext(hostExecutionContext: DNHostExecutionContext): DDNC.System.Private.CoreLib.DNObject;
    procedure Revert(previousState: DDNC.System.Private.CoreLib.DNObject);
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNHostExecutionContextManager = class(TDNGenericImport<DNHostExecutionContextManagerClass, DNHostExecutionContextManager>) end;

  //-------------namespace: System.Threading----------------
  DNLockCookieClass = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{1854B393-5A5C-58D3-B664-30E4E834FAC8}']
  end;

  [DNTypeName('System.Threading.LockCookie')]
  DNLockCookie = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{24D377EA-B80D-3E07-8CDA-EEBD3442E4D9}']
  { methods } 

    function GetHashCode: Int32;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean; overload;
    function Equals(obj: DNLockCookie): Boolean; overload;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNLockCookie = class(TDNGenericImport<DNLockCookieClass, DNLockCookie>) end;


implementation


initialization
  LoadAssemblyModule('System.Threading, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
