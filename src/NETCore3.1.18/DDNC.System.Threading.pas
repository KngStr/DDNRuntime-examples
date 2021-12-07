//----------------------------------------------------------------------------
//  System.Threading.dll: System.Threading, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 3.1.18
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
  ['{1AFAF0AD-18FA-51F4-8A3F-0FDEAEB850CE}']
  { constructors } 

    {class} function init: DNBarrierPostPhaseException; overload;
    {class} function init(innerException: DDNC.System.Private.CoreLib.DNException): DNBarrierPostPhaseException; overload;
    {class} function init(message: string): DNBarrierPostPhaseException; overload;
    {class} function init(message: string; innerException: DDNC.System.Private.CoreLib.DNException): DNBarrierPostPhaseException; overload;

  end;

  [DNTypeName('System.Threading.BarrierPostPhaseException')]
  DNBarrierPostPhaseException = interface(DDNC.System.Private.CoreLib.DNException)
  ['{9D4BF6A5-1751-38D8-8EC3-EA5D841747F1}']
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
  ['{0F9D2E42-5547-574E-9C0D-4FEB858FD8A6}']
  { constructors } 

    {class} function init: DNReaderWriterLock;

  end;

  [DNTypeName('System.Threading.ReaderWriterLock')]
  DNReaderWriterLock = interface(DDNC.System.Private.CoreLib.DNCriticalFinalizerObject)
  ['{6DC06E6A-490E-3D08-B479-534B6319CC5D}']
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
  ['{A7F373AE-93C3-52AA-A7DB-477E2305BD99}']
  { constructors } 

    {class} function init(participantCount: Int32): DNBarrier; overload;
    {class} function init(participantCount: Int32; postPhaseAction: DDNC.System.Private.CoreLib.DNAction<DNBarrier>): DNBarrier; overload;

  end;

  [DNTypeName('System.Threading.Barrier')]
  DNBarrier = interface(DDNC.System.Private.CoreLib.DNIDisposable)
  ['{61E5ED1A-63E8-38E2-A91C-AB1A5ED8A890}']
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
  ['{A32237E3-CF6E-5FDE-BCC9-2413D9E3A692}']
  { constructors } 

    {class} function init(initialCount: Int32): DNCountdownEvent;

  end;

  [DNTypeName('System.Threading.CountdownEvent')]
  DNCountdownEvent = interface(DDNC.System.Private.CoreLib.DNIDisposable)
  ['{5F6D1F7C-3663-3AFC-8926-3CBD000BE387}']
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
  ['{5C22BFDA-4A61-5A3B-BFC6-B66AC4B09F28}']
  { constructors } 

    {class} function init: DNHostExecutionContext; overload;
    {class} function init(state: DDNC.System.Private.CoreLib.DNObject): DNHostExecutionContext; overload;

  end;

  [DNTypeName('System.Threading.HostExecutionContext')]
  DNHostExecutionContext = interface(DDNC.System.Private.CoreLib.DNIDisposable)
  ['{BD36FCDE-2F3F-3168-9B29-6E3C75D2C043}']
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
  ['{591ACF76-4F3B-5386-8078-52B809FD3E7E}']
  { constructors } 

    {class} function init: DNHostExecutionContextManager;

  end;

  [DNTypeName('System.Threading.HostExecutionContextManager')]
  DNHostExecutionContextManager = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{52014794-BDAF-3783-B3AD-A71A08B40865}']
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
  ['{817B3BF5-3893-539D-B521-FC67313024D7}']
  end;

  [DNTypeName('System.Threading.LockCookie')]
  DNLockCookie = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{BC2BE938-4BA5-3E5F-B6EC-30372E261AB3}']
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
  InternalTryLoadAssemblyModule('System.Threading, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
