//----------------------------------------------------------------------------
//  System.ComponentModel.EventBasedAsync.dll: System.ComponentModel.EventBasedAsync, Version=4.1.1.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 2.1
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.ComponentModel.EventBasedAsync
//  Author: ying32
//----------------------------------------------------------------------------

{$IFNDEF DDNCSYSTEMCOMPONENTMODELEVENTBASEDASYNC}
unit DDNC.System.ComponentModel.EventBasedAsync;
{$ENDIF}

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDNC.System.Private.CoreLib,
  DDNC.System.ComponentModel,
  DDNC.System.ComponentModel.Primitives;

type


{ declares }

  DNAsyncOperation = interface; // type: System.ComponentModel.AsyncOperation, namespace: System.ComponentModel
  DNAsyncOperationManager = interface; // type: System.ComponentModel.AsyncOperationManager, namespace: System.ComponentModel
  DNAsyncCompletedEventArgs = interface; // type: System.ComponentModel.AsyncCompletedEventArgs, namespace: System.ComponentModel
  DNRunWorkerCompletedEventArgs = interface; // type: System.ComponentModel.RunWorkerCompletedEventArgs, namespace: System.ComponentModel
  DNDoWorkEventArgs = interface; // type: System.ComponentModel.DoWorkEventArgs, namespace: System.ComponentModel
  DNProgressChangedEventArgs = interface; // type: System.ComponentModel.ProgressChangedEventArgs, namespace: System.ComponentModel
  DNBackgroundWorker = interface; // type: System.ComponentModel.BackgroundWorker, namespace: System.ComponentModel

{ delegates }

  [DNTypeName('System.ComponentModel.AsyncCompletedEventHandler')]
  DNAsyncCompletedEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNAsyncCompletedEventArgs) of object;

  [DNTypeName('System.ComponentModel.DoWorkEventHandler')]
  DNDoWorkEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNDoWorkEventArgs) of object;

  [DNTypeName('System.ComponentModel.ProgressChangedEventHandler')]
  DNProgressChangedEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNProgressChangedEventArgs) of object;

  [DNTypeName('System.ComponentModel.RunWorkerCompletedEventHandler')]
  DNRunWorkerCompletedEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNRunWorkerCompletedEventArgs) of object;




{ objects }

  //-------------namespace: System.ComponentModel----------------
  DNAsyncOperationClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{9A3C337A-79F8-5F9D-9FA7-DDCCE6ECF6CB}']
  end;

  [DNTypeName('System.ComponentModel.AsyncOperation')]
  DNAsyncOperation = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{B0B7B3AF-6089-3087-8A60-3462CE6DFE87}']
  { getters & setters } 

    function get_UserSuppliedState: DDNC.System.Private.CoreLib.DNObject;
    function get_SynchronizationContext: DDNC.System.Private.CoreLib.DNSynchronizationContext;

  { methods } 

    procedure Post(d: DDNC.System.Private.CoreLib.DNSendOrPostCallback; arg: DDNC.System.Private.CoreLib.DNObject);
    procedure PostOperationCompleted(d: DDNC.System.Private.CoreLib.DNSendOrPostCallback; arg: DDNC.System.Private.CoreLib.DNObject);
    procedure OperationCompleted;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property UserSuppliedState: DDNC.System.Private.CoreLib.DNObject read get_UserSuppliedState;
    property SynchronizationContext: DDNC.System.Private.CoreLib.DNSynchronizationContext read get_SynchronizationContext;
  end;

  TDNAsyncOperation = class(TDNGenericImport<DNAsyncOperationClass, DNAsyncOperation>) end;

  //-------------namespace: System.ComponentModel----------------
  DNAsyncOperationManagerClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{88229F99-68E5-5954-953F-F31A333AAC77}']
  { static getter & setter } 

    {class} function get_SynchronizationContext: DDNC.System.Private.CoreLib.DNSynchronizationContext;
    {class} procedure set_SynchronizationContext(value: DDNC.System.Private.CoreLib.DNSynchronizationContext);

  { static methods } 

    {class} function CreateOperation(userSuppliedState: DDNC.System.Private.CoreLib.DNObject): DNAsyncOperation;

  { static propertys } 

    {class} property SynchronizationContext: DDNC.System.Private.CoreLib.DNSynchronizationContext read get_SynchronizationContext write set_SynchronizationContext;
  end;

  [DNTypeName('System.ComponentModel.AsyncOperationManager')]
  DNAsyncOperationManager = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{71605287-0E65-3F60-993F-E4AFA0E75FC2}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNAsyncOperationManager = class(TDNGenericImport<DNAsyncOperationManagerClass, DNAsyncOperationManager>) end;

  //-------------namespace: System.ComponentModel----------------
  DNAsyncCompletedEventArgsClass = interface(DDNC.System.Private.CoreLib.DNEventArgsClass)
  ['{79691B80-04C3-5835-91B2-5405994751A4}']
  { constructors } 

    {class} function init(error: DDNC.System.Private.CoreLib.DNException; cancelled: Boolean; userState: DDNC.System.Private.CoreLib.DNObject): DNAsyncCompletedEventArgs;

  end;

  [DNTypeName('System.ComponentModel.AsyncCompletedEventArgs')]
  DNAsyncCompletedEventArgs = interface(DDNC.System.Private.CoreLib.DNEventArgs)
  ['{135D09B1-34E5-31E9-A410-7E1104AD2900}']
  { getters & setters } 

    function get_Cancelled: Boolean;
    function get_Error: DDNC.System.Private.CoreLib.DNException;
    function get_UserState: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Cancelled: Boolean read get_Cancelled;
    property Error: DDNC.System.Private.CoreLib.DNException read get_Error;
    property UserState: DDNC.System.Private.CoreLib.DNObject read get_UserState;
  end;

  TDNAsyncCompletedEventArgs = class(TDNGenericImport<DNAsyncCompletedEventArgsClass, DNAsyncCompletedEventArgs>) end;

  //-------------namespace: System.ComponentModel----------------
  DNRunWorkerCompletedEventArgsClass = interface(DNAsyncCompletedEventArgsClass)
  ['{B32A8556-466F-54D2-82D2-72D80B1DD003}']
  { constructors } 

    {class} function init(result: DDNC.System.Private.CoreLib.DNObject; error: DDNC.System.Private.CoreLib.DNException; cancelled: Boolean): DNRunWorkerCompletedEventArgs;

  end;

  [DNTypeName('System.ComponentModel.RunWorkerCompletedEventArgs')]
  DNRunWorkerCompletedEventArgs = interface(DNAsyncCompletedEventArgs)
  ['{0D84EEFA-28AF-3FED-8E0B-4B0187975818}']
  { getters & setters } 

    function get_Result: DDNC.System.Private.CoreLib.DNObject;
    function get_UserState: DDNC.System.Private.CoreLib.DNObject;
    function get_Cancelled: Boolean;
    function get_Error: DDNC.System.Private.CoreLib.DNException;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Result: DDNC.System.Private.CoreLib.DNObject read get_Result;
    property UserState: DDNC.System.Private.CoreLib.DNObject read get_UserState;
    property Cancelled: Boolean read get_Cancelled;
    property Error: DDNC.System.Private.CoreLib.DNException read get_Error;
  end;

  TDNRunWorkerCompletedEventArgs = class(TDNGenericImport<DNRunWorkerCompletedEventArgsClass, DNRunWorkerCompletedEventArgs>) end;

  //-------------namespace: System.ComponentModel----------------
  DNDoWorkEventArgsClass = interface(DNObjectClass)
  ['{D896969C-2F04-528C-A664-D946559089CA}']
  { constructors } 

    {class} function init(argument: DDNC.System.Private.CoreLib.DNObject): DNDoWorkEventArgs;

  end;

  [DNTypeName('System.ComponentModel.DoWorkEventArgs')]
  DNDoWorkEventArgs = interface(DNObject)
  ['{F7A7DA62-A44F-3625-91B9-563FF754FC86}']
  { getters & setters } 

    function get_Argument: DDNC.System.Private.CoreLib.DNObject;
    function get_Result: DDNC.System.Private.CoreLib.DNObject;
    procedure set_Result(value: DDNC.System.Private.CoreLib.DNObject);
    function get_Cancel: Boolean;
    procedure set_Cancel(value: Boolean);

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Argument: DDNC.System.Private.CoreLib.DNObject read get_Argument;
    property Result: DDNC.System.Private.CoreLib.DNObject read get_Result write set_Result;
    property Cancel: Boolean read get_Cancel write set_Cancel;
  end;

  TDNDoWorkEventArgs = class(TDNGenericImport<DNDoWorkEventArgsClass, DNDoWorkEventArgs>) end;

  //-------------namespace: System.ComponentModel----------------
  DNProgressChangedEventArgsClass = interface(DDNC.System.Private.CoreLib.DNEventArgsClass)
  ['{5C088E33-75C9-5951-81F1-E8C092A11F94}']
  { constructors } 

    {class} function init(progressPercentage: Int32; userState: DDNC.System.Private.CoreLib.DNObject): DNProgressChangedEventArgs;

  end;

  [DNTypeName('System.ComponentModel.ProgressChangedEventArgs')]
  DNProgressChangedEventArgs = interface(DDNC.System.Private.CoreLib.DNEventArgs)
  ['{1F44AF3D-E3C2-3392-8006-ADE37C472C87}']
  { getters & setters } 

    function get_ProgressPercentage: Int32;
    function get_UserState: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property ProgressPercentage: Int32 read get_ProgressPercentage;
    property UserState: DDNC.System.Private.CoreLib.DNObject read get_UserState;
  end;

  TDNProgressChangedEventArgs = class(TDNGenericImport<DNProgressChangedEventArgsClass, DNProgressChangedEventArgs>) end;

  //-------------namespace: System.ComponentModel----------------
  DNBackgroundWorkerClass = interface(DNObjectClass)
  ['{CFA47E17-D037-5F60-ABBB-7B20198C3432}']
  { constructors } 

    {class} function init: DNBackgroundWorker;

  end;

  [DNTypeName('System.ComponentModel.BackgroundWorker')]
  DNBackgroundWorker = interface(DNObject)
  ['{06BA6742-B02C-3426-AF04-8170224DEE2A}']
  { getters & setters } 

    function get_CancellationPending: Boolean;
    function get_IsBusy: Boolean;
    function get_WorkerReportsProgress: Boolean;
    procedure set_WorkerReportsProgress(value: Boolean);
    function get_WorkerSupportsCancellation: Boolean;
    procedure set_WorkerSupportsCancellation(value: Boolean);
    function get_Site: DDNC.System.ComponentModel.Primitives.DNISite;
    procedure set_Site(value: DDNC.System.ComponentModel.Primitives.DNISite);
    function get_Container: DDNC.System.ComponentModel.Primitives.DNIContainer;

  { events } 

    procedure add_DoWork(value: DNDoWorkEventHandler);
    procedure remove_DoWork(value: DNDoWorkEventHandler);
    procedure add_ProgressChanged(value: DNProgressChangedEventHandler);
    procedure remove_ProgressChanged(value: DNProgressChangedEventHandler);
    procedure add_RunWorkerCompleted(value: DNRunWorkerCompletedEventHandler);
    procedure remove_RunWorkerCompleted(value: DNRunWorkerCompletedEventHandler);
    procedure add_Disposed(value: DDNC.System.Private.CoreLib.DNEventHandler);
    procedure remove_Disposed(value: DDNC.System.Private.CoreLib.DNEventHandler);

  { methods } 

    procedure CancelAsync;
    procedure ReportProgress(percentProgress: Int32); overload;
    procedure ReportProgress(percentProgress: Int32; userState: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure RunWorkerAsync; overload;
    procedure RunWorkerAsync(argument: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure Dispose;
    function ToString: string;
    function GetLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function InitializeLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property CancellationPending: Boolean read get_CancellationPending;
    property IsBusy: Boolean read get_IsBusy;
    property WorkerReportsProgress: Boolean read get_WorkerReportsProgress write set_WorkerReportsProgress;
    property WorkerSupportsCancellation: Boolean read get_WorkerSupportsCancellation write set_WorkerSupportsCancellation;
    property Site: DDNC.System.ComponentModel.Primitives.DNISite read get_Site write set_Site;
    property Container: DDNC.System.ComponentModel.Primitives.DNIContainer read get_Container;
  end;

  TDNBackgroundWorker = class(TDNGenericImport<DNBackgroundWorkerClass, DNBackgroundWorker>) end;


implementation


initialization
  LoadAssemblyModule('System.ComponentModel.EventBasedAsync.dll', True);

finalization

end.