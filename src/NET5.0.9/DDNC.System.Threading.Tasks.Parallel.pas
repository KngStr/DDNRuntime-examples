//----------------------------------------------------------------------------
//  System.Threading.Tasks.Parallel.dll: System.Threading.Tasks.Parallel, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 5.0.9
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Threading.Tasks.Parallel
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Threading.Tasks.Parallel;

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

  DNParallel = interface; // type: System.Threading.Tasks.Parallel, namespace: System.Threading.Tasks
  DNParallelLoopState = interface; // type: System.Threading.Tasks.ParallelLoopState, namespace: System.Threading.Tasks
  DNParallelOptions = interface; // type: System.Threading.Tasks.ParallelOptions, namespace: System.Threading.Tasks
  DNParallelLoopResult = interface; // type: System.Threading.Tasks.ParallelLoopResult, namespace: System.Threading.Tasks


{ objects }

  //-------------namespace: System.Threading.Tasks----------------
  DNParallelClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{206DB29F-BB67-5A54-8AC1-40A4B5C3991B}']
  { static methods } 

    {class} procedure Invoke(actions: TArray<DDNC.System.Private.CoreLib.DNAction>); overload;
    {class} procedure Invoke(parallelOptions: DNParallelOptions; actions: TArray<DDNC.System.Private.CoreLib.DNAction>); overload;
    {class} function &For(fromInclusive: Int32; toExclusive: Int32; body: DDNC.System.Private.CoreLib.DNAction<Int32>): DNParallelLoopResult; overload;
    {class} function &For(fromInclusive: Int64; toExclusive: Int64; body: DDNC.System.Private.CoreLib.DNAction<Int64>): DNParallelLoopResult; overload;
    {class} function &For(fromInclusive: Int32; toExclusive: Int32; parallelOptions: DNParallelOptions; body: DDNC.System.Private.CoreLib.DNAction<Int32>): DNParallelLoopResult; overload;
    {class} function &For(fromInclusive: Int64; toExclusive: Int64; parallelOptions: DNParallelOptions; body: DDNC.System.Private.CoreLib.DNAction<Int64>): DNParallelLoopResult; overload;
    {class} function &For(fromInclusive: Int32; toExclusive: Int32; body: DDNC.System.Private.CoreLib.DNAction<Int32, DNParallelLoopState>): DNParallelLoopResult; overload;
    {class} function &For(fromInclusive: Int64; toExclusive: Int64; body: DDNC.System.Private.CoreLib.DNAction<Int64, DNParallelLoopState>): DNParallelLoopResult; overload;
    {class} function &For(fromInclusive: Int32; toExclusive: Int32; parallelOptions: DNParallelOptions; body: DDNC.System.Private.CoreLib.DNAction<Int32, DNParallelLoopState>): DNParallelLoopResult; overload;
    {class} function &For(fromInclusive: Int64; toExclusive: Int64; parallelOptions: DNParallelOptions; body: DDNC.System.Private.CoreLib.DNAction<Int64, DNParallelLoopState>): DNParallelLoopResult; overload;

  end;

  [DNTypeName('System.Threading.Tasks.Parallel')]
  DNParallel = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{D47AD48A-0EFB-3600-A068-EB8B07C9A86C}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNParallel = class(TDNGenericImport<DNParallelClass, DNParallel>) end;

  //-------------namespace: System.Threading.Tasks----------------
  DNParallelLoopStateClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{E8B3CE4C-E233-5F8A-9122-CF24299D63F5}']
  end;

  [DNTypeName('System.Threading.Tasks.ParallelLoopState')]
  DNParallelLoopState = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{72DF7385-91A5-3BBD-A690-D39722CFC946}']
  { getters & setters } 

    function get_ShouldExitCurrentIteration: Boolean;
    function get_IsStopped: Boolean;
    function get_IsExceptional: Boolean;
    function get_LowestBreakIteration: DDNC.System.Private.CoreLib.DNNullable<Int64>;

  { methods } 

    procedure Stop;
    procedure Break;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property ShouldExitCurrentIteration: Boolean read get_ShouldExitCurrentIteration;
    property IsStopped: Boolean read get_IsStopped;
    property IsExceptional: Boolean read get_IsExceptional;
    property LowestBreakIteration: DDNC.System.Private.CoreLib.DNNullable<Int64> read get_LowestBreakIteration;
  end;

  TDNParallelLoopState = class(TDNGenericImport<DNParallelLoopStateClass, DNParallelLoopState>) end;

  //-------------namespace: System.Threading.Tasks----------------
  DNParallelOptionsClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{2E6068A3-DA05-530C-9C56-A25534FE744C}']
  { constructors } 

    {class} function init: DNParallelOptions;

  end;

  [DNTypeName('System.Threading.Tasks.ParallelOptions')]
  DNParallelOptions = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{11E55ADC-6207-3B19-9E12-BBBCFF839C66}']
  { getters & setters } 

    function get_TaskScheduler: DDNC.System.Private.CoreLib.DNTaskScheduler;
    procedure set_TaskScheduler(value: DDNC.System.Private.CoreLib.DNTaskScheduler);
    function get_MaxDegreeOfParallelism: Int32;
    procedure set_MaxDegreeOfParallelism(value: Int32);
    function get_CancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken;
    procedure set_CancellationToken(value: DDNC.System.Private.CoreLib.DNCancellationToken);

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property TaskScheduler: DDNC.System.Private.CoreLib.DNTaskScheduler read get_TaskScheduler write set_TaskScheduler;
    property MaxDegreeOfParallelism: Int32 read get_MaxDegreeOfParallelism write set_MaxDegreeOfParallelism;
    property CancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken read get_CancellationToken write set_CancellationToken;
  end;

  TDNParallelOptions = class(TDNGenericImport<DNParallelOptionsClass, DNParallelOptions>) end;

  //-------------namespace: System.Threading.Tasks----------------
  DNParallelLoopResultClass = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{D35D4319-801C-582A-B86E-BA59D353C9C5}']
  end;

  [DNTypeName('System.Threading.Tasks.ParallelLoopResult')]
  DNParallelLoopResult = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{B4BD5D7C-DB40-333D-B79B-A27B6D52B3E1}']
  { getters & setters } 

    function get_IsCompleted: Boolean;
    function get_LowestBreakIteration: DDNC.System.Private.CoreLib.DNNullable<Int64>;

  { methods } 

    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property IsCompleted: Boolean read get_IsCompleted;
    property LowestBreakIteration: DDNC.System.Private.CoreLib.DNNullable<Int64> read get_LowestBreakIteration;
  end;

  TDNParallelLoopResult = class(TDNGenericImport<DNParallelLoopResultClass, DNParallelLoopResult>) end;


implementation


initialization
  InternalTryLoadAssemblyModule('System.Threading.Tasks.Parallel, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.