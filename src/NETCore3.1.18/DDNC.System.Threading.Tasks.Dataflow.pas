//----------------------------------------------------------------------------
//  System.Threading.Tasks.Dataflow.dll: System.Threading.Tasks.Dataflow, Version=4.6.5.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 3.1.18
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Threading.Tasks.Dataflow
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Threading.Tasks.Dataflow;

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

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  [DNTypeName('System.Threading.Tasks.Dataflow.DataflowMessageStatus')]
  DNDataflowMessageStatus = type Integer;
  DNDataflowMessageStatusHelper = record helper for DNDataflowMessageStatus
  public const
    Accepted = 0;
    Declined = 1;
    Postponed = 2;
    NotAvailable = 3;
    DecliningPermanently = 4;
  end;




type


{ declares }

  DNIDataflowBlock = interface; // type: System.Threading.Tasks.Dataflow.IDataflowBlock, namespace: System.Threading.Tasks.Dataflow
  DNISourceBlock<TOutput> = interface; // type: System.Threading.Tasks.Dataflow.ISourceBlock`1, namespace: System.Threading.Tasks.Dataflow
  DNIReceivableSourceBlock<TOutput> = interface; // type: System.Threading.Tasks.Dataflow.IReceivableSourceBlock`1, namespace: System.Threading.Tasks.Dataflow
  DNITargetBlock<TInput> = interface; // type: System.Threading.Tasks.Dataflow.ITargetBlock`1, namespace: System.Threading.Tasks.Dataflow
  DNIPropagatorBlock<TInput, TOutput> = interface; // type: System.Threading.Tasks.Dataflow.IPropagatorBlock`2, namespace: System.Threading.Tasks.Dataflow
  DNActionBlock<TInput> = interface; // type: System.Threading.Tasks.Dataflow.ActionBlock`1, namespace: System.Threading.Tasks.Dataflow
  DNBatchBlock<T> = interface; // type: System.Threading.Tasks.Dataflow.BatchBlock`1, namespace: System.Threading.Tasks.Dataflow
  DNBatchedJoinBlock<T1, T2> = interface; // type: System.Threading.Tasks.Dataflow.BatchedJoinBlock`2, namespace: System.Threading.Tasks.Dataflow
  DNBatchedJoinBlock<T1, T2, T3> = interface; // type: System.Threading.Tasks.Dataflow.BatchedJoinBlock`3, namespace: System.Threading.Tasks.Dataflow
  DNBroadcastBlock<T> = interface; // type: System.Threading.Tasks.Dataflow.BroadcastBlock`1, namespace: System.Threading.Tasks.Dataflow
  DNBufferBlock<T> = interface; // type: System.Threading.Tasks.Dataflow.BufferBlock`1, namespace: System.Threading.Tasks.Dataflow
  DNDataflowBlock = interface; // type: System.Threading.Tasks.Dataflow.DataflowBlock, namespace: System.Threading.Tasks.Dataflow
  DNDataflowBlockOptions = interface; // type: System.Threading.Tasks.Dataflow.DataflowBlockOptions, namespace: System.Threading.Tasks.Dataflow
  DNExecutionDataflowBlockOptions = interface; // type: System.Threading.Tasks.Dataflow.ExecutionDataflowBlockOptions, namespace: System.Threading.Tasks.Dataflow
  DNGroupingDataflowBlockOptions = interface; // type: System.Threading.Tasks.Dataflow.GroupingDataflowBlockOptions, namespace: System.Threading.Tasks.Dataflow
  DNDataflowLinkOptions = interface; // type: System.Threading.Tasks.Dataflow.DataflowLinkOptions, namespace: System.Threading.Tasks.Dataflow
  DNJoinBlock<T1, T2> = interface; // type: System.Threading.Tasks.Dataflow.JoinBlock`2, namespace: System.Threading.Tasks.Dataflow
  DNJoinBlock<T1, T2, T3> = interface; // type: System.Threading.Tasks.Dataflow.JoinBlock`3, namespace: System.Threading.Tasks.Dataflow
  DNTransformBlock<TInput, TOutput> = interface; // type: System.Threading.Tasks.Dataflow.TransformBlock`2, namespace: System.Threading.Tasks.Dataflow
  DNTransformManyBlock<TInput, TOutput> = interface; // type: System.Threading.Tasks.Dataflow.TransformManyBlock`2, namespace: System.Threading.Tasks.Dataflow
  DNWriteOnceBlock<T> = interface; // type: System.Threading.Tasks.Dataflow.WriteOnceBlock`1, namespace: System.Threading.Tasks.Dataflow
  DNDataflowMessageHeader = interface; // type: System.Threading.Tasks.Dataflow.DataflowMessageHeader, namespace: System.Threading.Tasks.Dataflow


{ objects }

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  [DNTypeName('System.Threading.Tasks.Dataflow.IDataflowBlock')]
  DNIDataflowBlock = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{E1BD6CA2-CA92-3066-ABAF-1A792727FC4A}']
  { getters & setters } 

    function get_Completion: DDNC.System.Private.CoreLib.DNTask;

  { methods } 

    procedure Complete;
    procedure Fault(exception: DDNC.System.Private.CoreLib.DNException);

  { propertys } 

    property Completion: DDNC.System.Private.CoreLib.DNTask read get_Completion;
  end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  [DNTypeName('System.Threading.Tasks.Dataflow.ISourceBlock`1')]
  DNISourceBlock<TOutput> = interface(DNIDataflowBlock)
  ['{E986232A-4388-39DF-AC79-96B754E76439}']
  { methods } 

    function LinkTo(target: DNITargetBlock<TOutput>; linkOptions: DNDataflowLinkOptions): DDNC.System.Private.CoreLib.DNIDisposable;
    function ConsumeMessage(messageHeader: DNDataflowMessageHeader; target: DNITargetBlock<TOutput>; out messageConsumed: Boolean): TOutput;
    function ReserveMessage(messageHeader: DNDataflowMessageHeader; target: DNITargetBlock<TOutput>): Boolean;
    procedure ReleaseReservation(messageHeader: DNDataflowMessageHeader; target: DNITargetBlock<TOutput>);

  end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  [DNTypeName('System.Threading.Tasks.Dataflow.IReceivableSourceBlock`1')]
  DNIReceivableSourceBlock<TOutput> = interface(DNISourceBlock<TOutput>)
  ['{0EA62736-976E-31E6-9472-159ADF33C413}']
  { methods } 

    function TryReceive(filter: DDNC.System.Private.CoreLib.DNPredicate<TOutput>; out item: TOutput): Boolean;
    function TryReceiveAll(out items: DDNC.System.Private.CoreLib.DNIList<TOutput>): Boolean;

  end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  [DNTypeName('System.Threading.Tasks.Dataflow.ITargetBlock`1')]
  DNITargetBlock<TInput> = interface(DNIDataflowBlock)
  ['{E4E18FDC-AEF4-309D-A150-4B9E171DCF79}']
  { methods } 

    function OfferMessage(messageHeader: DNDataflowMessageHeader; messageValue: TInput; source: DNISourceBlock<TInput>; consumeToAccept: Boolean): DNDataflowMessageStatus;

  end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  [DNTypeName('System.Threading.Tasks.Dataflow.IPropagatorBlock`2')]
  DNIPropagatorBlock<TInput, TOutput> = interface(DNITargetBlock<TInput>)
  ['{78EBD1AF-0468-358A-B2E7-FD79469B946B}']
  end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNActionBlockClass<TInput> = interface(DNObjectClass)
  ['{8EB111A8-3C02-5D4E-A15A-B650A0BB4673}']
  { constructors } 

    {class} function init(action: DDNC.System.Private.CoreLib.DNAction<TInput>): DNActionBlock<TInput>; overload;
    {class} function init(action: DDNC.System.Private.CoreLib.DNAction<TInput>; dataflowBlockOptions: DNExecutionDataflowBlockOptions): DNActionBlock<TInput>; overload;
    {class} function init(action: DDNC.System.Private.CoreLib.DNFunc<TInput, DDNC.System.Private.CoreLib.DNTask>): DNActionBlock<TInput>; overload;
    {class} function init(action: DDNC.System.Private.CoreLib.DNFunc<TInput, DDNC.System.Private.CoreLib.DNTask>; dataflowBlockOptions: DNExecutionDataflowBlockOptions): DNActionBlock<TInput>; overload;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.ActionBlock`1')]
  DNActionBlock<TInput> = interface(DNITargetBlock<TInput>)
  ['{18B685EE-A9C1-3B4F-A7E1-66C961451EA8}']
  { getters & setters } 

    function get_Completion: DDNC.System.Private.CoreLib.DNTask;
    function get_InputCount: Int32;

  { methods } 

    procedure Complete;
    function Post(item: TInput): Boolean;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Completion: DDNC.System.Private.CoreLib.DNTask read get_Completion;
    property InputCount: Int32 read get_InputCount;
  end;

  TDNActionBlock<TInput> = class(TDNGenericImport<DNActionBlockClass<TInput>, DNActionBlock<TInput>>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNBatchBlockClass<T> = interface(DNObjectClass)
  ['{87E14BD0-268F-5418-B436-EAD4487EC05D}']
  { constructors } 

    {class} function init(batchSize: Int32): DNBatchBlock<T>; overload;
    {class} function init(batchSize: Int32; dataflowBlockOptions: DNGroupingDataflowBlockOptions): DNBatchBlock<T>; overload;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.BatchBlock`1')]
  DNBatchBlock<T> = interface(DNIPropagatorBlock<T, TArray<T>>)
  ['{A2DA873F-383F-33E1-92BD-724AF4E8A3ED}']
  { getters & setters } 

    function get_OutputCount: Int32;
    function get_Completion: DDNC.System.Private.CoreLib.DNTask;
    function get_BatchSize: Int32;

  { methods } 

    procedure Complete;
    procedure TriggerBatch;
    function LinkTo(target: DNITargetBlock<TArray<T>>; linkOptions: DNDataflowLinkOptions): DDNC.System.Private.CoreLib.DNIDisposable;
    function TryReceive(filter: DDNC.System.Private.CoreLib.DNPredicate<TArray<T>>; out item: TArray<T>): Boolean;
    function TryReceiveAll(out items: DDNC.System.Private.CoreLib.DNIList<TArray<T>>): Boolean;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property OutputCount: Int32 read get_OutputCount;
    property Completion: DDNC.System.Private.CoreLib.DNTask read get_Completion;
    property BatchSize: Int32 read get_BatchSize;
  end;

  TDNBatchBlock<T> = class(TDNGenericImport<DNBatchBlockClass<T>, DNBatchBlock<T>>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNBatchedJoinBlockClass<T1, T2> = interface(DNObjectClass)
  ['{20120E97-8913-5033-8B14-BAF55AE4BB43}']
  { constructors } 

    {class} function init(batchSize: Int32): DNBatchedJoinBlock<T1, T2>; overload;
    {class} function init(batchSize: Int32; dataflowBlockOptions: DNGroupingDataflowBlockOptions): DNBatchedJoinBlock<T1, T2>; overload;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.BatchedJoinBlock`2')]
  DNBatchedJoinBlock<T1, T2> = interface(DNIReceivableSourceBlock<DDNC.System.Private.CoreLib.DNTuple<DDNC.System.Private.CoreLib.DNIList<T1>, DDNC.System.Private.CoreLib.DNIList<T2>>>)
  ['{A60A0346-AF46-3131-BC5E-89F8F393D6E0}']
  { getters & setters } 

    function get_BatchSize: Int32;
    function get_Target1: DNITargetBlock<T1>;
    function get_Target2: DNITargetBlock<T2>;
    function get_OutputCount: Int32;
    function get_Completion: DDNC.System.Private.CoreLib.DNTask;

  { methods } 

    function LinkTo(target: DNITargetBlock<DDNC.System.Private.CoreLib.DNTuple<DDNC.System.Private.CoreLib.DNIList<T1>, DDNC.System.Private.CoreLib.DNIList<T2>>>; linkOptions: DNDataflowLinkOptions): DDNC.System.Private.CoreLib.DNIDisposable;
    function TryReceive(filter: DDNC.System.Private.CoreLib.DNPredicate<DDNC.System.Private.CoreLib.DNTuple<DDNC.System.Private.CoreLib.DNIList<T1>, DDNC.System.Private.CoreLib.DNIList<T2>>>; out item: DDNC.System.Private.CoreLib.DNTuple<DDNC.System.Private.CoreLib.DNIList<T1>, DDNC.System.Private.CoreLib.DNIList<T2>>): Boolean;
    function TryReceiveAll(out items: DDNC.System.Private.CoreLib.DNIList<DDNC.System.Private.CoreLib.DNTuple<DDNC.System.Private.CoreLib.DNIList<T1>, DDNC.System.Private.CoreLib.DNIList<T2>>>): Boolean;
    procedure Complete;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property BatchSize: Int32 read get_BatchSize;
    property Target1: DNITargetBlock<T1> read get_Target1;
    property Target2: DNITargetBlock<T2> read get_Target2;
    property OutputCount: Int32 read get_OutputCount;
    property Completion: DDNC.System.Private.CoreLib.DNTask read get_Completion;
  end;

  TDNBatchedJoinBlock<T1, T2> = class(TDNGenericImport<DNBatchedJoinBlockClass<T1, T2>, DNBatchedJoinBlock<T1, T2>>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNBatchedJoinBlockClass<T1, T2, T3> = interface(DNObjectClass)
  ['{B513DA90-0F16-5738-8ED8-25DDA9A8B408}']
  { constructors } 

    {class} function init(batchSize: Int32): DNBatchedJoinBlock<T1, T2, T3>; overload;
    {class} function init(batchSize: Int32; dataflowBlockOptions: DNGroupingDataflowBlockOptions): DNBatchedJoinBlock<T1, T2, T3>; overload;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.BatchedJoinBlock`3')]
  DNBatchedJoinBlock<T1, T2, T3> = interface(DNIReceivableSourceBlock<DDNC.System.Private.CoreLib.DNTuple<DDNC.System.Private.CoreLib.DNIList<T1>, DDNC.System.Private.CoreLib.DNIList<T2>, DDNC.System.Private.CoreLib.DNIList<T3>>>)
  ['{7EB094BE-0876-309E-B5F8-223C80828BF8}']
  { getters & setters } 

    function get_BatchSize: Int32;
    function get_Target1: DNITargetBlock<T1>;
    function get_Target2: DNITargetBlock<T2>;
    function get_Target3: DNITargetBlock<T3>;
    function get_OutputCount: Int32;
    function get_Completion: DDNC.System.Private.CoreLib.DNTask;

  { methods } 

    function LinkTo(target: DNITargetBlock<DDNC.System.Private.CoreLib.DNTuple<DDNC.System.Private.CoreLib.DNIList<T1>, DDNC.System.Private.CoreLib.DNIList<T2>, DDNC.System.Private.CoreLib.DNIList<T3>>>; linkOptions: DNDataflowLinkOptions): DDNC.System.Private.CoreLib.DNIDisposable;
    function TryReceive(filter: DDNC.System.Private.CoreLib.DNPredicate<DDNC.System.Private.CoreLib.DNTuple<DDNC.System.Private.CoreLib.DNIList<T1>, DDNC.System.Private.CoreLib.DNIList<T2>, DDNC.System.Private.CoreLib.DNIList<T3>>>; out item: DDNC.System.Private.CoreLib.DNTuple<DDNC.System.Private.CoreLib.DNIList<T1>, DDNC.System.Private.CoreLib.DNIList<T2>, DDNC.System.Private.CoreLib.DNIList<T3>>): Boolean;
    function TryReceiveAll(out items: DDNC.System.Private.CoreLib.DNIList<DDNC.System.Private.CoreLib.DNTuple<DDNC.System.Private.CoreLib.DNIList<T1>, DDNC.System.Private.CoreLib.DNIList<T2>, DDNC.System.Private.CoreLib.DNIList<T3>>>): Boolean;
    procedure Complete;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property BatchSize: Int32 read get_BatchSize;
    property Target1: DNITargetBlock<T1> read get_Target1;
    property Target2: DNITargetBlock<T2> read get_Target2;
    property Target3: DNITargetBlock<T3> read get_Target3;
    property OutputCount: Int32 read get_OutputCount;
    property Completion: DDNC.System.Private.CoreLib.DNTask read get_Completion;
  end;

  TDNBatchedJoinBlock<T1, T2, T3> = class(TDNGenericImport<DNBatchedJoinBlockClass<T1, T2, T3>, DNBatchedJoinBlock<T1, T2, T3>>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNBroadcastBlockClass<T> = interface(DNObjectClass)
  ['{61F83A05-56C6-5E9B-B12D-E0D9C8938826}']
  { constructors } 

    {class} function init(cloningFunction: DDNC.System.Private.CoreLib.DNFunc<T, T>): DNBroadcastBlock<T>; overload;
    {class} function init(cloningFunction: DDNC.System.Private.CoreLib.DNFunc<T, T>; dataflowBlockOptions: DNDataflowBlockOptions): DNBroadcastBlock<T>; overload;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.BroadcastBlock`1')]
  DNBroadcastBlock<T> = interface(DNIPropagatorBlock<T, T>)
  ['{0FA66FF7-F402-353B-B763-7B5F418BD0AC}']
  { getters & setters } 

    function get_Completion: DDNC.System.Private.CoreLib.DNTask;

  { methods } 

    procedure Complete;
    function LinkTo(target: DNITargetBlock<T>; linkOptions: DNDataflowLinkOptions): DDNC.System.Private.CoreLib.DNIDisposable;
    function TryReceive(filter: DDNC.System.Private.CoreLib.DNPredicate<T>; out item: T): Boolean;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Completion: DDNC.System.Private.CoreLib.DNTask read get_Completion;
  end;

  TDNBroadcastBlock<T> = class(TDNGenericImport<DNBroadcastBlockClass<T>, DNBroadcastBlock<T>>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNBufferBlockClass<T> = interface(DNObjectClass)
  ['{45FB7B1B-C71F-5AD9-9CC9-54F93F7B41ED}']
  { constructors } 

    {class} function init: DNBufferBlock<T>; overload;
    {class} function init(dataflowBlockOptions: DNDataflowBlockOptions): DNBufferBlock<T>; overload;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.BufferBlock`1')]
  DNBufferBlock<T> = interface(DNIPropagatorBlock<T, T>)
  ['{D013CCCC-A505-346E-8FB7-FF52F17E592B}']
  { getters & setters } 

    function get_Count: Int32;
    function get_Completion: DDNC.System.Private.CoreLib.DNTask;

  { methods } 

    procedure Complete;
    function LinkTo(target: DNITargetBlock<T>; linkOptions: DNDataflowLinkOptions): DDNC.System.Private.CoreLib.DNIDisposable;
    function TryReceive(filter: DDNC.System.Private.CoreLib.DNPredicate<T>; out item: T): Boolean;
    function TryReceiveAll(out items: DDNC.System.Private.CoreLib.DNIList<T>): Boolean;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Count: Int32 read get_Count;
    property Completion: DDNC.System.Private.CoreLib.DNTask read get_Completion;
  end;

  TDNBufferBlock<T> = class(TDNGenericImport<DNBufferBlockClass<T>, DNBufferBlock<T>>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNDataflowBlockClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{4A5EBE53-6E81-5D66-B6E0-5544D353606C}']
  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.DataflowBlock')]
  DNDataflowBlock = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{A952D58B-2B8E-37D8-B1A0-8F7FC1473753}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNDataflowBlock = class(TDNGenericImport<DNDataflowBlockClass, DNDataflowBlock>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNDataflowBlockOptionsClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{4F273968-F6F2-5C86-888A-3F779492CC6D}']
  { constructors } 

    {class} function init: DNDataflowBlockOptions;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.DataflowBlockOptions')]
  DNDataflowBlockOptions = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{ADFEEC97-6C2E-3992-8825-D49CB9028DEA}']
  { getters & setters } 

    function get_TaskScheduler: DDNC.System.Private.CoreLib.DNTaskScheduler;
    procedure set_TaskScheduler(value: DDNC.System.Private.CoreLib.DNTaskScheduler);
    function get_CancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken;
    procedure set_CancellationToken(value: DDNC.System.Private.CoreLib.DNCancellationToken);
    function get_MaxMessagesPerTask: Int32;
    procedure set_MaxMessagesPerTask(value: Int32);
    function get_BoundedCapacity: Int32;
    procedure set_BoundedCapacity(value: Int32);
    function get_NameFormat: string;
    procedure set_NameFormat(value: string);
    function get_EnsureOrdered: Boolean;
    procedure set_EnsureOrdered(value: Boolean);

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property TaskScheduler: DDNC.System.Private.CoreLib.DNTaskScheduler read get_TaskScheduler write set_TaskScheduler;
    property CancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken read get_CancellationToken write set_CancellationToken;
    property MaxMessagesPerTask: Int32 read get_MaxMessagesPerTask write set_MaxMessagesPerTask;
    property BoundedCapacity: Int32 read get_BoundedCapacity write set_BoundedCapacity;
    property NameFormat: string read get_NameFormat write set_NameFormat;
    property EnsureOrdered: Boolean read get_EnsureOrdered write set_EnsureOrdered;
  end;

  TDNDataflowBlockOptions = class(TDNGenericImport<DNDataflowBlockOptionsClass, DNDataflowBlockOptions>)
  public const
   Unbounded = -1;
  end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNExecutionDataflowBlockOptionsClass = interface(DNDataflowBlockOptionsClass)
  ['{5376F07D-3102-5094-A166-1D8EADF97EC4}']
  { constructors } 

    {class} function init: DNExecutionDataflowBlockOptions;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.ExecutionDataflowBlockOptions')]
  DNExecutionDataflowBlockOptions = interface(DNDataflowBlockOptions)
  ['{9CC0526E-AD96-33B2-B075-4396F81AB26B}']
  { getters & setters } 

    function get_MaxDegreeOfParallelism: Int32;
    procedure set_MaxDegreeOfParallelism(value: Int32);
    function get_SingleProducerConstrained: Boolean;
    procedure set_SingleProducerConstrained(value: Boolean);
    function get_TaskScheduler: DDNC.System.Private.CoreLib.DNTaskScheduler;
    procedure set_TaskScheduler(value: DDNC.System.Private.CoreLib.DNTaskScheduler);
    function get_CancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken;
    procedure set_CancellationToken(value: DDNC.System.Private.CoreLib.DNCancellationToken);
    function get_MaxMessagesPerTask: Int32;
    procedure set_MaxMessagesPerTask(value: Int32);
    function get_BoundedCapacity: Int32;
    procedure set_BoundedCapacity(value: Int32);
    function get_NameFormat: string;
    procedure set_NameFormat(value: string);
    function get_EnsureOrdered: Boolean;
    procedure set_EnsureOrdered(value: Boolean);

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property MaxDegreeOfParallelism: Int32 read get_MaxDegreeOfParallelism write set_MaxDegreeOfParallelism;
    property SingleProducerConstrained: Boolean read get_SingleProducerConstrained write set_SingleProducerConstrained;
    property TaskScheduler: DDNC.System.Private.CoreLib.DNTaskScheduler read get_TaskScheduler write set_TaskScheduler;
    property CancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken read get_CancellationToken write set_CancellationToken;
    property MaxMessagesPerTask: Int32 read get_MaxMessagesPerTask write set_MaxMessagesPerTask;
    property BoundedCapacity: Int32 read get_BoundedCapacity write set_BoundedCapacity;
    property NameFormat: string read get_NameFormat write set_NameFormat;
    property EnsureOrdered: Boolean read get_EnsureOrdered write set_EnsureOrdered;
  end;

  TDNExecutionDataflowBlockOptions = class(TDNGenericImport<DNExecutionDataflowBlockOptionsClass, DNExecutionDataflowBlockOptions>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNGroupingDataflowBlockOptionsClass = interface(DNDataflowBlockOptionsClass)
  ['{D07712AE-508E-5B24-A400-FD9E21B0C2D4}']
  { constructors } 

    {class} function init: DNGroupingDataflowBlockOptions;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.GroupingDataflowBlockOptions')]
  DNGroupingDataflowBlockOptions = interface(DNDataflowBlockOptions)
  ['{52684704-A7E2-3722-B463-FEFB6B1C76CF}']
  { getters & setters } 

    function get_Greedy: Boolean;
    procedure set_Greedy(value: Boolean);
    function get_MaxNumberOfGroups: Int64;
    procedure set_MaxNumberOfGroups(value: Int64);
    function get_TaskScheduler: DDNC.System.Private.CoreLib.DNTaskScheduler;
    procedure set_TaskScheduler(value: DDNC.System.Private.CoreLib.DNTaskScheduler);
    function get_CancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken;
    procedure set_CancellationToken(value: DDNC.System.Private.CoreLib.DNCancellationToken);
    function get_MaxMessagesPerTask: Int32;
    procedure set_MaxMessagesPerTask(value: Int32);
    function get_BoundedCapacity: Int32;
    procedure set_BoundedCapacity(value: Int32);
    function get_NameFormat: string;
    procedure set_NameFormat(value: string);
    function get_EnsureOrdered: Boolean;
    procedure set_EnsureOrdered(value: Boolean);

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Greedy: Boolean read get_Greedy write set_Greedy;
    property MaxNumberOfGroups: Int64 read get_MaxNumberOfGroups write set_MaxNumberOfGroups;
    property TaskScheduler: DDNC.System.Private.CoreLib.DNTaskScheduler read get_TaskScheduler write set_TaskScheduler;
    property CancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken read get_CancellationToken write set_CancellationToken;
    property MaxMessagesPerTask: Int32 read get_MaxMessagesPerTask write set_MaxMessagesPerTask;
    property BoundedCapacity: Int32 read get_BoundedCapacity write set_BoundedCapacity;
    property NameFormat: string read get_NameFormat write set_NameFormat;
    property EnsureOrdered: Boolean read get_EnsureOrdered write set_EnsureOrdered;
  end;

  TDNGroupingDataflowBlockOptions = class(TDNGenericImport<DNGroupingDataflowBlockOptionsClass, DNGroupingDataflowBlockOptions>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNDataflowLinkOptionsClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{A96FF0EC-D71D-523E-A19F-0182713B7181}']
  { constructors } 

    {class} function init: DNDataflowLinkOptions;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.DataflowLinkOptions')]
  DNDataflowLinkOptions = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{01532D0A-F02D-309D-BA91-CDDF024B4848}']
  { getters & setters } 

    function get_PropagateCompletion: Boolean;
    procedure set_PropagateCompletion(value: Boolean);
    function get_MaxMessages: Int32;
    procedure set_MaxMessages(value: Int32);
    function get_Append: Boolean;
    procedure set_Append(value: Boolean);

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property PropagateCompletion: Boolean read get_PropagateCompletion write set_PropagateCompletion;
    property MaxMessages: Int32 read get_MaxMessages write set_MaxMessages;
    property Append: Boolean read get_Append write set_Append;
  end;

  TDNDataflowLinkOptions = class(TDNGenericImport<DNDataflowLinkOptionsClass, DNDataflowLinkOptions>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNJoinBlockClass<T1, T2> = interface(DNObjectClass)
  ['{08392E5D-1D1C-5020-826B-B41F92A75B4F}']
  { constructors } 

    {class} function init: DNJoinBlock<T1, T2>; overload;
    {class} function init(dataflowBlockOptions: DNGroupingDataflowBlockOptions): DNJoinBlock<T1, T2>; overload;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.JoinBlock`2')]
  DNJoinBlock<T1, T2> = interface(DNIReceivableSourceBlock<DDNC.System.Private.CoreLib.DNTuple<T1, T2>>)
  ['{E64DEC62-B3C5-39B5-AAAF-7FC589ECB71F}']
  { getters & setters } 

    function get_OutputCount: Int32;
    function get_Completion: DDNC.System.Private.CoreLib.DNTask;
    function get_Target1: DNITargetBlock<T1>;
    function get_Target2: DNITargetBlock<T2>;

  { methods } 

    function LinkTo(target: DNITargetBlock<DDNC.System.Private.CoreLib.DNTuple<T1, T2>>; linkOptions: DNDataflowLinkOptions): DDNC.System.Private.CoreLib.DNIDisposable;
    function TryReceive(filter: DDNC.System.Private.CoreLib.DNPredicate<DDNC.System.Private.CoreLib.DNTuple<T1, T2>>; out item: DDNC.System.Private.CoreLib.DNTuple<T1, T2>): Boolean;
    function TryReceiveAll(out items: DDNC.System.Private.CoreLib.DNIList<DDNC.System.Private.CoreLib.DNTuple<T1, T2>>): Boolean;
    procedure Complete;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property OutputCount: Int32 read get_OutputCount;
    property Completion: DDNC.System.Private.CoreLib.DNTask read get_Completion;
    property Target1: DNITargetBlock<T1> read get_Target1;
    property Target2: DNITargetBlock<T2> read get_Target2;
  end;

  TDNJoinBlock<T1, T2> = class(TDNGenericImport<DNJoinBlockClass<T1, T2>, DNJoinBlock<T1, T2>>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNJoinBlockClass<T1, T2, T3> = interface(DNObjectClass)
  ['{50103334-B8E1-5894-A431-CEDA15297564}']
  { constructors } 

    {class} function init: DNJoinBlock<T1, T2, T3>; overload;
    {class} function init(dataflowBlockOptions: DNGroupingDataflowBlockOptions): DNJoinBlock<T1, T2, T3>; overload;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.JoinBlock`3')]
  DNJoinBlock<T1, T2, T3> = interface(DNIReceivableSourceBlock<DDNC.System.Private.CoreLib.DNTuple<T1, T2, T3>>)
  ['{48448A10-F46B-3DDE-AB63-D805C99BBC3F}']
  { getters & setters } 

    function get_OutputCount: Int32;
    function get_Completion: DDNC.System.Private.CoreLib.DNTask;
    function get_Target1: DNITargetBlock<T1>;
    function get_Target2: DNITargetBlock<T2>;
    function get_Target3: DNITargetBlock<T3>;

  { methods } 

    function LinkTo(target: DNITargetBlock<DDNC.System.Private.CoreLib.DNTuple<T1, T2, T3>>; linkOptions: DNDataflowLinkOptions): DDNC.System.Private.CoreLib.DNIDisposable;
    function TryReceive(filter: DDNC.System.Private.CoreLib.DNPredicate<DDNC.System.Private.CoreLib.DNTuple<T1, T2, T3>>; out item: DDNC.System.Private.CoreLib.DNTuple<T1, T2, T3>): Boolean;
    function TryReceiveAll(out items: DDNC.System.Private.CoreLib.DNIList<DDNC.System.Private.CoreLib.DNTuple<T1, T2, T3>>): Boolean;
    procedure Complete;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property OutputCount: Int32 read get_OutputCount;
    property Completion: DDNC.System.Private.CoreLib.DNTask read get_Completion;
    property Target1: DNITargetBlock<T1> read get_Target1;
    property Target2: DNITargetBlock<T2> read get_Target2;
    property Target3: DNITargetBlock<T3> read get_Target3;
  end;

  TDNJoinBlock<T1, T2, T3> = class(TDNGenericImport<DNJoinBlockClass<T1, T2, T3>, DNJoinBlock<T1, T2, T3>>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNTransformBlockClass<TInput, TOutput> = interface(DNObjectClass)
  ['{3D5F69DF-DE88-561A-B0A4-4676FD244F65}']
  { constructors } 

    {class} function init(transform: DDNC.System.Private.CoreLib.DNFunc<TInput, TOutput>): DNTransformBlock<TInput, TOutput>; overload;
    {class} function init(transform: DDNC.System.Private.CoreLib.DNFunc<TInput, TOutput>; dataflowBlockOptions: DNExecutionDataflowBlockOptions): DNTransformBlock<TInput, TOutput>; overload;
    {class} function init(transform: DDNC.System.Private.CoreLib.DNFunc<TInput, DDNC.System.Private.CoreLib.DNTask<TOutput>>): DNTransformBlock<TInput, TOutput>; overload;
    {class} function init(transform: DDNC.System.Private.CoreLib.DNFunc<TInput, DDNC.System.Private.CoreLib.DNTask<TOutput>>; dataflowBlockOptions: DNExecutionDataflowBlockOptions): DNTransformBlock<TInput, TOutput>; overload;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.TransformBlock`2')]
  DNTransformBlock<TInput, TOutput> = interface(DNIPropagatorBlock<TInput, TOutput>)
  ['{6BD29FC0-8E1D-396B-91D2-6E040CAF9791}']
  { getters & setters } 

    function get_Completion: DDNC.System.Private.CoreLib.DNTask;
    function get_InputCount: Int32;
    function get_OutputCount: Int32;

  { methods } 

    procedure Complete;
    function LinkTo(target: DNITargetBlock<TOutput>; linkOptions: DNDataflowLinkOptions): DDNC.System.Private.CoreLib.DNIDisposable;
    function TryReceive(filter: DDNC.System.Private.CoreLib.DNPredicate<TOutput>; out item: TOutput): Boolean;
    function TryReceiveAll(out items: DDNC.System.Private.CoreLib.DNIList<TOutput>): Boolean;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Completion: DDNC.System.Private.CoreLib.DNTask read get_Completion;
    property InputCount: Int32 read get_InputCount;
    property OutputCount: Int32 read get_OutputCount;
  end;

  TDNTransformBlock<TInput, TOutput> = class(TDNGenericImport<DNTransformBlockClass<TInput, TOutput>, DNTransformBlock<TInput, TOutput>>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNTransformManyBlockClass<TInput, TOutput> = interface(DNObjectClass)
  ['{9E3797BA-4B08-5251-BB96-D97108FB9E3F}']
  { constructors } 

    {class} function init(transform: DDNC.System.Private.CoreLib.DNFunc<TInput, DDNC.System.Private.CoreLib.DNIEnumerable<TOutput>>): DNTransformManyBlock<TInput, TOutput>; overload;
    {class} function init(transform: DDNC.System.Private.CoreLib.DNFunc<TInput, DDNC.System.Private.CoreLib.DNIEnumerable<TOutput>>; dataflowBlockOptions: DNExecutionDataflowBlockOptions): DNTransformManyBlock<TInput, TOutput>; overload;
    {class} function init(transform: DDNC.System.Private.CoreLib.DNFunc<TInput, DDNC.System.Private.CoreLib.DNTask<DDNC.System.Private.CoreLib.DNIEnumerable<TOutput>>>): DNTransformManyBlock<TInput, TOutput>; overload;
    {class} function init(transform: DDNC.System.Private.CoreLib.DNFunc<TInput, DDNC.System.Private.CoreLib.DNTask<DDNC.System.Private.CoreLib.DNIEnumerable<TOutput>>>; dataflowBlockOptions: DNExecutionDataflowBlockOptions): DNTransformManyBlock<TInput, TOutput>; overload;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.TransformManyBlock`2')]
  DNTransformManyBlock<TInput, TOutput> = interface(DNIPropagatorBlock<TInput, TOutput>)
  ['{107D76A3-2EAB-337A-B2E3-9CB0706F66CA}']
  { getters & setters } 

    function get_Completion: DDNC.System.Private.CoreLib.DNTask;
    function get_InputCount: Int32;
    function get_OutputCount: Int32;

  { methods } 

    procedure Complete;
    function LinkTo(target: DNITargetBlock<TOutput>; linkOptions: DNDataflowLinkOptions): DDNC.System.Private.CoreLib.DNIDisposable;
    function TryReceive(filter: DDNC.System.Private.CoreLib.DNPredicate<TOutput>; out item: TOutput): Boolean;
    function TryReceiveAll(out items: DDNC.System.Private.CoreLib.DNIList<TOutput>): Boolean;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Completion: DDNC.System.Private.CoreLib.DNTask read get_Completion;
    property InputCount: Int32 read get_InputCount;
    property OutputCount: Int32 read get_OutputCount;
  end;

  TDNTransformManyBlock<TInput, TOutput> = class(TDNGenericImport<DNTransformManyBlockClass<TInput, TOutput>, DNTransformManyBlock<TInput, TOutput>>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNWriteOnceBlockClass<T> = interface(DNObjectClass)
  ['{DEEF385D-AF87-5E5F-82DB-92E9CE6D9C0E}']
  { constructors } 

    {class} function init(cloningFunction: DDNC.System.Private.CoreLib.DNFunc<T, T>): DNWriteOnceBlock<T>; overload;
    {class} function init(cloningFunction: DDNC.System.Private.CoreLib.DNFunc<T, T>; dataflowBlockOptions: DNDataflowBlockOptions): DNWriteOnceBlock<T>; overload;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.WriteOnceBlock`1')]
  DNWriteOnceBlock<T> = interface(DNIPropagatorBlock<T, T>)
  ['{16F2AD1C-A673-3A62-9DBE-389AC849A135}']
  { getters & setters } 

    function get_Completion: DDNC.System.Private.CoreLib.DNTask;

  { methods } 

    procedure Complete;
    function TryReceive(filter: DDNC.System.Private.CoreLib.DNPredicate<T>; out item: T): Boolean;
    function LinkTo(target: DNITargetBlock<T>; linkOptions: DNDataflowLinkOptions): DDNC.System.Private.CoreLib.DNIDisposable;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Completion: DDNC.System.Private.CoreLib.DNTask read get_Completion;
  end;

  TDNWriteOnceBlock<T> = class(TDNGenericImport<DNWriteOnceBlockClass<T>, DNWriteOnceBlock<T>>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNDataflowMessageHeaderClass = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{03634EA7-2EAF-55B1-8859-F666B5F33548}']
  { constructors } 

    {class} function init(id: Int64): DNDataflowMessageHeader;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.DataflowMessageHeader')]
  DNDataflowMessageHeader = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{9D529113-DA5F-3F1F-A7E0-E397AF6A62BE}']
  { getters & setters } 

    function get_IsValid: Boolean;
    function get_Id: Int64;

  { methods } 

    function Equals(other: DNDataflowMessageHeader): Boolean; overload;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean; overload;
    function GetHashCode: Int32;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property IsValid: Boolean read get_IsValid;
    property Id: Int64 read get_Id;
  end;

  TDNDataflowMessageHeader = class(TDNGenericImport<DNDataflowMessageHeaderClass, DNDataflowMessageHeader>) end;


implementation


initialization
  LoadAssemblyModule('System.Threading.Tasks.Dataflow, Version=4.6.5.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
