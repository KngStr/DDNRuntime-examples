//----------------------------------------------------------------------------
//  System.Diagnostics.Process.dll: System.Diagnostics.Process, Version=4.2.1.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 2.1.30
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Diagnostics.Process
//  Author: ying32
//----------------------------------------------------------------------------

{$IFNDEF DDNCSYSTEMDIAGNOSTICSPROCESS}
unit DDNC.System.Diagnostics.Process;
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
  DDNC.System.ComponentModel.Primitives,
  DDNC.System.Collections.NonGeneric,
  DDNC.System.Collections.Specialized,
  DDNC.System.Diagnostics.FileVersionInfo;

type

{ enums }

  //-------------namespace: System.Diagnostics----------------
  [DNTypeName('System.Diagnostics.ProcessPriorityClass')]
  DNProcessPriorityClass = type Integer;
  DNProcessPriorityClassHelper = record helper for DNProcessPriorityClass
  public const
    Normal = 32;
    Idle = 64;
    High = 128;
    RealTime = 256;
    BelowNormal = 16384;
    AboveNormal = 32768;
  end;


  //-------------namespace: System.Diagnostics----------------
  [DNTypeName('System.Diagnostics.ProcessWindowStyle')]
  DNProcessWindowStyle = type Integer;
  DNProcessWindowStyleHelper = record helper for DNProcessWindowStyle
  public const
    Normal = 0;
    Hidden = 1;
    Minimized = 2;
    Maximized = 3;
  end;


  //-------------namespace: System.Diagnostics----------------
  [DNTypeName('System.Diagnostics.ThreadPriorityLevel')]
  DNThreadPriorityLevel = type Integer;
  DNThreadPriorityLevelHelper = record helper for DNThreadPriorityLevel
  public const
    Normal = 0;
    AboveNormal = 1;
    Highest = 2;
    TimeCritical = 15;
    Idle = -15;
    Lowest = -2;
    BelowNormal = -1;
  end;


  //-------------namespace: System.Diagnostics----------------
  [DNTypeName('System.Diagnostics.ThreadState')]
  DNThreadState = type Integer;
  DNThreadStateHelper = record helper for DNThreadState
  public const
    Initialized = 0;
    Ready = 1;
    Running = 2;
    Standby = 3;
    Terminated = 4;
    Wait = 5;
    Transition = 6;
    Unknown = 7;
  end;


  //-------------namespace: System.Diagnostics----------------
  [DNTypeName('System.Diagnostics.ThreadWaitReason')]
  DNThreadWaitReason = type Integer;
  DNThreadWaitReasonHelper = record helper for DNThreadWaitReason
  public const
    Executive = 0;
    FreePage = 1;
    PageIn = 2;
    SystemAllocation = 3;
    ExecutionDelay = 4;
    Suspended = 5;
    UserRequest = 6;
    EventPairHigh = 7;
    EventPairLow = 8;
    LpcReceive = 9;
    LpcReply = 10;
    VirtualMemory = 11;
    PageOut = 12;
    Unknown = 13;
  end;




type


{ declares }

  DNMonitoringDescriptionAttribute = interface; // type: System.Diagnostics.MonitoringDescriptionAttribute, namespace: System.Diagnostics
  DNProcessModuleCollection = interface; // type: System.Diagnostics.ProcessModuleCollection, namespace: System.Diagnostics
  DNProcessThreadCollection = interface; // type: System.Diagnostics.ProcessThreadCollection, namespace: System.Diagnostics
  DNProcessStartInfo = interface; // type: System.Diagnostics.ProcessStartInfo, namespace: System.Diagnostics
  DNDataReceivedEventArgs = interface; // type: System.Diagnostics.DataReceivedEventArgs, namespace: System.Diagnostics
  DNProcess = interface; // type: System.Diagnostics.Process, namespace: System.Diagnostics
  DNProcessModule = interface; // type: System.Diagnostics.ProcessModule, namespace: System.Diagnostics
  DNProcessThread = interface; // type: System.Diagnostics.ProcessThread, namespace: System.Diagnostics
  DNSafeProcessHandle = interface; // type: Microsoft.Win32.SafeHandles.SafeProcessHandle, namespace: Microsoft.Win32.SafeHandles

{ delegates }

  [DNTypeName('System.Diagnostics.DataReceivedEventHandler')]
  DNDataReceivedEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNDataReceivedEventArgs) of object;




{ objects }

  //-------------namespace: System.Diagnostics----------------
  DNMonitoringDescriptionAttributeClass = interface(DNObjectClass)
  ['{0440A7F0-8150-5C00-9499-8004F3E1D46B}']
  { constructors } 

    {class} function init(description: string): DNMonitoringDescriptionAttribute;

  end;

  [DNTypeName('System.Diagnostics.MonitoringDescriptionAttribute')]
  DNMonitoringDescriptionAttribute = interface(DNObject)
  ['{A0CC1525-519E-393C-9B09-39361B9D3089}']
  { getters & setters } 

    function get_Description: string;
    function get_TypeId: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function IsDefaultAttribute: Boolean;
    function Match(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Description: string read get_Description;
    property TypeId: DDNC.System.Private.CoreLib.DNObject read get_TypeId;
  end;

  TDNMonitoringDescriptionAttribute = class(TDNGenericImport<DNMonitoringDescriptionAttributeClass, DNMonitoringDescriptionAttribute>) end;

  //-------------namespace: System.Diagnostics----------------
  DNProcessModuleCollectionClass = interface(DNObjectClass)
  ['{4BFB30B7-26D4-517E-B17D-1A0A73F2F972}']
  { constructors } 

    {class} function init(processModules: TArray<DNProcessModule>): DNProcessModuleCollection;

  end;

  [DNTypeName('System.Diagnostics.ProcessModuleCollection')]
  DNProcessModuleCollection = interface(DNObject)
  ['{D4791850-871C-3312-93AB-4D98F4B216B9}']
  { getters & setters } 

    function get_Item(index: Int32): DNProcessModule;
    function get_Count: Int32;

  { methods } 

    function IndexOf(module: DNProcessModule): Int32;
    function &Contains(module: DNProcessModule): Boolean;
    procedure CopyTo(&array: TArray<DNProcessModule>; index: Int32);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Item[index: Int32]: DNProcessModule read get_Item; default;
    property Count: Int32 read get_Count;
  end;

  TDNProcessModuleCollection = class(TDNGenericImport<DNProcessModuleCollectionClass, DNProcessModuleCollection>) end;

  //-------------namespace: System.Diagnostics----------------
  DNProcessThreadCollectionClass = interface(DNObjectClass)
  ['{2F64140E-B346-5DAC-99FD-EDAA2B819824}']
  { constructors } 

    {class} function init(processThreads: TArray<DNProcessThread>): DNProcessThreadCollection;

  end;

  [DNTypeName('System.Diagnostics.ProcessThreadCollection')]
  DNProcessThreadCollection = interface(DNObject)
  ['{1B170488-A74B-37E3-BC7B-80A36C595B3F}']
  { getters & setters } 

    function get_Item(index: Int32): DNProcessThread;
    function get_Count: Int32;

  { methods } 

    function Add(thread: DNProcessThread): Int32;
    procedure Insert(index: Int32; thread: DNProcessThread);
    function IndexOf(thread: DNProcessThread): Int32;
    function &Contains(thread: DNProcessThread): Boolean;
    procedure Remove(thread: DNProcessThread);
    procedure CopyTo(&array: TArray<DNProcessThread>; index: Int32);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Item[index: Int32]: DNProcessThread read get_Item; default;
    property Count: Int32 read get_Count;
  end;

  TDNProcessThreadCollection = class(TDNGenericImport<DNProcessThreadCollectionClass, DNProcessThreadCollection>) end;

  //-------------namespace: System.Diagnostics----------------
  DNProcessStartInfoClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{02C65E7E-D2F1-5BF3-948D-0E9BB7377551}']
  { constructors } 

    {class} function init: DNProcessStartInfo; overload;
    {class} function init(fileName: string): DNProcessStartInfo; overload;
    {class} function init(fileName: string; arguments: string): DNProcessStartInfo; overload;

  end;

  [DNTypeName('System.Diagnostics.ProcessStartInfo')]
  DNProcessStartInfo = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{E95BDAB2-83F5-3402-9A4E-AC20289C7BB9}']
  { getters & setters } 

    function get_Arguments: string;
    procedure set_Arguments(value: string);
    function get_ArgumentList: DDNC.System.Private.CoreLib.DNCollection<string>;
    function get_CreateNoWindow: Boolean;
    procedure set_CreateNoWindow(value: Boolean);
    function get_EnvironmentVariables: DDNC.System.Collections.Specialized.DNStringDictionary;
    function get_Environment: DDNC.System.Private.CoreLib.DNIDictionary<string, string>;
    function get_RedirectStandardInput: Boolean;
    procedure set_RedirectStandardInput(value: Boolean);
    function get_RedirectStandardOutput: Boolean;
    procedure set_RedirectStandardOutput(value: Boolean);
    function get_RedirectStandardError: Boolean;
    procedure set_RedirectStandardError(value: Boolean);
    function get_StandardInputEncoding: DDNC.System.Private.CoreLib.DNEncoding;
    procedure set_StandardInputEncoding(value: DDNC.System.Private.CoreLib.DNEncoding);
    function get_StandardErrorEncoding: DDNC.System.Private.CoreLib.DNEncoding;
    procedure set_StandardErrorEncoding(value: DDNC.System.Private.CoreLib.DNEncoding);
    function get_StandardOutputEncoding: DDNC.System.Private.CoreLib.DNEncoding;
    procedure set_StandardOutputEncoding(value: DDNC.System.Private.CoreLib.DNEncoding);
    function get_FileName: string;
    procedure set_FileName(value: string);
    function get_WorkingDirectory: string;
    procedure set_WorkingDirectory(value: string);
    function get_ErrorDialog: Boolean;
    procedure set_ErrorDialog(value: Boolean);
    function get_ErrorDialogParentHandle: IntPtr;
    procedure set_ErrorDialogParentHandle(value: IntPtr);
    function get_UserName: string;
    procedure set_UserName(value: string);
    function get_Verb: string;
    procedure set_Verb(value: string);
    function get_WindowStyle: DNProcessWindowStyle;
    procedure set_WindowStyle(value: DNProcessWindowStyle);
    function get_PasswordInClearText: string;
    procedure set_PasswordInClearText(value: string);
    function get_Domain: string;
    procedure set_Domain(value: string);
    function get_LoadUserProfile: Boolean;
    procedure set_LoadUserProfile(value: Boolean);
    function get_Password: DDNC.System.Private.CoreLib.DNSecureString;
    procedure set_Password(value: DDNC.System.Private.CoreLib.DNSecureString);
    function get_Verbs: TArray<string>;
    function get_UseShellExecute: Boolean;
    procedure set_UseShellExecute(value: Boolean);

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Arguments: string read get_Arguments write set_Arguments;
    property ArgumentList: DDNC.System.Private.CoreLib.DNCollection<string> read get_ArgumentList;
    property CreateNoWindow: Boolean read get_CreateNoWindow write set_CreateNoWindow;
    property EnvironmentVariables: DDNC.System.Collections.Specialized.DNStringDictionary read get_EnvironmentVariables;
    property Environment: DDNC.System.Private.CoreLib.DNIDictionary<string, string> read get_Environment;
    property RedirectStandardInput: Boolean read get_RedirectStandardInput write set_RedirectStandardInput;
    property RedirectStandardOutput: Boolean read get_RedirectStandardOutput write set_RedirectStandardOutput;
    property RedirectStandardError: Boolean read get_RedirectStandardError write set_RedirectStandardError;
    property StandardInputEncoding: DDNC.System.Private.CoreLib.DNEncoding read get_StandardInputEncoding write set_StandardInputEncoding;
    property StandardErrorEncoding: DDNC.System.Private.CoreLib.DNEncoding read get_StandardErrorEncoding write set_StandardErrorEncoding;
    property StandardOutputEncoding: DDNC.System.Private.CoreLib.DNEncoding read get_StandardOutputEncoding write set_StandardOutputEncoding;
    property FileName: string read get_FileName write set_FileName;
    property WorkingDirectory: string read get_WorkingDirectory write set_WorkingDirectory;
    property ErrorDialog: Boolean read get_ErrorDialog write set_ErrorDialog;
    property ErrorDialogParentHandle: IntPtr read get_ErrorDialogParentHandle write set_ErrorDialogParentHandle;
    property UserName: string read get_UserName write set_UserName;
    property Verb: string read get_Verb write set_Verb;
    property WindowStyle: DNProcessWindowStyle read get_WindowStyle write set_WindowStyle;
    property PasswordInClearText: string read get_PasswordInClearText write set_PasswordInClearText;
    property Domain: string read get_Domain write set_Domain;
    property LoadUserProfile: Boolean read get_LoadUserProfile write set_LoadUserProfile;
    property Password: DDNC.System.Private.CoreLib.DNSecureString read get_Password write set_Password;
    property Verbs: TArray<string> read get_Verbs;
    property UseShellExecute: Boolean read get_UseShellExecute write set_UseShellExecute;
  end;

  TDNProcessStartInfo = class(TDNGenericImport<DNProcessStartInfoClass, DNProcessStartInfo>) end;

  //-------------namespace: System.Diagnostics----------------
  DNDataReceivedEventArgsClass = interface(DDNC.System.Private.CoreLib.DNEventArgsClass)
  ['{BBE5D143-71BC-5937-9256-AF17B2B7A138}']
  end;

  [DNTypeName('System.Diagnostics.DataReceivedEventArgs')]
  DNDataReceivedEventArgs = interface(DDNC.System.Private.CoreLib.DNEventArgs)
  ['{D3AA494B-6BC7-32D2-9B78-35ED15D9A577}']
  { getters & setters } 

    function get_Data: string;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Data: string read get_Data;
  end;

  TDNDataReceivedEventArgs = class(TDNGenericImport<DNDataReceivedEventArgsClass, DNDataReceivedEventArgs>) end;

  //-------------namespace: System.Diagnostics----------------
  DNProcessClass = interface(DNObjectClass)
  ['{64F6FF01-D8A0-5069-8FFC-B1D388B38A5C}']
  { constructors } 

    {class} function init: DNProcess;

  { static methods } 

    {class} function GetProcessById(processId: Int32; machineName: string): DNProcess; overload;
    {class} function GetProcessById(processId: Int32): DNProcess; overload;
    {class} function GetProcessesByName(processName: string): TArray<DNProcess>; overload;
    {class} function GetProcesses: TArray<DNProcess>; overload;
    {class} function GetProcesses(machineName: string): TArray<DNProcess>; overload;
    {class} function GetCurrentProcess: DNProcess;
    {class} function Start(fileName: string): DNProcess; overload;
    {class} function Start(fileName: string; arguments: string): DNProcess; overload;
    {class} function Start(startInfo: DNProcessStartInfo): DNProcess; overload;
    {class} function GetProcessesByName(processName: string; machineName: string): TArray<DNProcess>; overload;
    {class} function Start(fileName: string; userName: string; password: DDNC.System.Private.CoreLib.DNSecureString; domain: string): DNProcess; overload;
    {class} function Start(fileName: string; arguments: string; userName: string; password: DDNC.System.Private.CoreLib.DNSecureString; domain: string): DNProcess; overload;
    {class} procedure EnterDebugMode;
    {class} procedure LeaveDebugMode;

  end;

  [DNTypeName('System.Diagnostics.Process')]
  DNProcess = interface(DNObject)
  ['{A52953E2-9918-3C5F-808E-4DF7AFEF3384}']
  { getters & setters } 

    function get_SafeHandle: DNSafeProcessHandle;
    function get_Handle: IntPtr;
    function get_BasePriority: Int32;
    function get_ExitCode: Int32;
    function get_HasExited: Boolean;
    function get_StartTime: DDNC.System.Private.CoreLib.DNDateTime;
    function get_ExitTime: DDNC.System.Private.CoreLib.DNDateTime;
    function get_Id: Int32;
    function get_MachineName: string;
    function get_MaxWorkingSet: IntPtr;
    procedure set_MaxWorkingSet(value: IntPtr);
    function get_MinWorkingSet: IntPtr;
    procedure set_MinWorkingSet(value: IntPtr);
    function get_Modules: DNProcessModuleCollection;
    function get_NonpagedSystemMemorySize64: Int64;
    function get_NonpagedSystemMemorySize: Int32;
    function get_PagedMemorySize64: Int64;
    function get_PagedMemorySize: Int32;
    function get_PagedSystemMemorySize64: Int64;
    function get_PagedSystemMemorySize: Int32;
    function get_PeakPagedMemorySize64: Int64;
    function get_PeakPagedMemorySize: Int32;
    function get_PeakWorkingSet64: Int64;
    function get_PeakWorkingSet: Int32;
    function get_PeakVirtualMemorySize64: Int64;
    function get_PeakVirtualMemorySize: Int32;
    function get_PriorityBoostEnabled: Boolean;
    procedure set_PriorityBoostEnabled(value: Boolean);
    function get_PriorityClass: DNProcessPriorityClass;
    procedure set_PriorityClass(value: DNProcessPriorityClass);
    function get_PrivateMemorySize64: Int64;
    function get_PrivateMemorySize: Int32;
    function get_ProcessName: string;
    function get_ProcessorAffinity: IntPtr;
    procedure set_ProcessorAffinity(value: IntPtr);
    function get_SessionId: Int32;
    function get_StartInfo: DNProcessStartInfo;
    procedure set_StartInfo(value: DNProcessStartInfo);
    function get_Threads: DNProcessThreadCollection;
    function get_HandleCount: Int32;
    function get_VirtualMemorySize64: Int64;
    function get_VirtualMemorySize: Int32;
    function get_EnableRaisingEvents: Boolean;
    procedure set_EnableRaisingEvents(value: Boolean);
    function get_StandardInput: DDNC.System.Private.CoreLib.DNStreamWriter;
    function get_StandardOutput: DDNC.System.Private.CoreLib.DNStreamReader;
    function get_StandardError: DDNC.System.Private.CoreLib.DNStreamReader;
    function get_WorkingSet64: Int64;
    function get_WorkingSet: Int32;
    function get_SynchronizingObject: DDNC.System.ComponentModel.Primitives.DNISynchronizeInvoke;
    procedure set_SynchronizingObject(value: DDNC.System.ComponentModel.Primitives.DNISynchronizeInvoke);
    function get_MainModule: DNProcessModule;
    function get_PrivilegedProcessorTime: DDNC.System.Private.CoreLib.DNTimeSpan;
    function get_TotalProcessorTime: DDNC.System.Private.CoreLib.DNTimeSpan;
    function get_UserProcessorTime: DDNC.System.Private.CoreLib.DNTimeSpan;
    function get_MainWindowHandle: IntPtr;
    function get_MainWindowTitle: string;
    function get_Responding: Boolean;
    function get_Site: DDNC.System.ComponentModel.Primitives.DNISite;
    procedure set_Site(value: DDNC.System.ComponentModel.Primitives.DNISite);
    function get_Container: DDNC.System.ComponentModel.Primitives.DNIContainer;

  { events } 

    procedure add_OutputDataReceived(value: DNDataReceivedEventHandler);
    procedure remove_OutputDataReceived(value: DNDataReceivedEventHandler);
    procedure add_ErrorDataReceived(value: DNDataReceivedEventHandler);
    procedure remove_ErrorDataReceived(value: DNDataReceivedEventHandler);
    procedure add_Exited(value: DDNC.System.Private.CoreLib.DNEventHandler);
    procedure remove_Exited(value: DDNC.System.Private.CoreLib.DNEventHandler);
    procedure add_Disposed(value: DDNC.System.Private.CoreLib.DNEventHandler);
    procedure remove_Disposed(value: DDNC.System.Private.CoreLib.DNEventHandler);

  { methods } 

    function CloseMainWindow: Boolean;
    function WaitForInputIdle: Boolean; overload;
    function WaitForInputIdle(milliseconds: Int32): Boolean; overload;
    procedure Close;
    procedure Refresh;
    function Start: Boolean; overload;
    function ToString: string;
    procedure WaitForExit; overload;
    function WaitForExit(milliseconds: Int32): Boolean; overload;
    procedure BeginOutputReadLine;
    procedure BeginErrorReadLine;
    procedure CancelOutputRead;
    procedure CancelErrorRead;
    procedure Kill;
    procedure Dispose;
    function GetLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function InitializeLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property SafeHandle: DNSafeProcessHandle read get_SafeHandle;
    property Handle: IntPtr read get_Handle;
    property BasePriority: Int32 read get_BasePriority;
    property ExitCode: Int32 read get_ExitCode;
    property HasExited: Boolean read get_HasExited;
    property StartTime: DDNC.System.Private.CoreLib.DNDateTime read get_StartTime;
    property ExitTime: DDNC.System.Private.CoreLib.DNDateTime read get_ExitTime;
    property Id: Int32 read get_Id;
    property MachineName: string read get_MachineName;
    property MaxWorkingSet: IntPtr read get_MaxWorkingSet write set_MaxWorkingSet;
    property MinWorkingSet: IntPtr read get_MinWorkingSet write set_MinWorkingSet;
    property Modules: DNProcessModuleCollection read get_Modules;
    property NonpagedSystemMemorySize64: Int64 read get_NonpagedSystemMemorySize64;
    property NonpagedSystemMemorySize: Int32 read get_NonpagedSystemMemorySize;
    property PagedMemorySize64: Int64 read get_PagedMemorySize64;
    property PagedMemorySize: Int32 read get_PagedMemorySize;
    property PagedSystemMemorySize64: Int64 read get_PagedSystemMemorySize64;
    property PagedSystemMemorySize: Int32 read get_PagedSystemMemorySize;
    property PeakPagedMemorySize64: Int64 read get_PeakPagedMemorySize64;
    property PeakPagedMemorySize: Int32 read get_PeakPagedMemorySize;
    property PeakWorkingSet64: Int64 read get_PeakWorkingSet64;
    property PeakWorkingSet: Int32 read get_PeakWorkingSet;
    property PeakVirtualMemorySize64: Int64 read get_PeakVirtualMemorySize64;
    property PeakVirtualMemorySize: Int32 read get_PeakVirtualMemorySize;
    property PriorityBoostEnabled: Boolean read get_PriorityBoostEnabled write set_PriorityBoostEnabled;
    property PriorityClass: DNProcessPriorityClass read get_PriorityClass write set_PriorityClass;
    property PrivateMemorySize64: Int64 read get_PrivateMemorySize64;
    property PrivateMemorySize: Int32 read get_PrivateMemorySize;
    property ProcessName: string read get_ProcessName;
    property ProcessorAffinity: IntPtr read get_ProcessorAffinity write set_ProcessorAffinity;
    property SessionId: Int32 read get_SessionId;
    property StartInfo: DNProcessStartInfo read get_StartInfo write set_StartInfo;
    property Threads: DNProcessThreadCollection read get_Threads;
    property HandleCount: Int32 read get_HandleCount;
    property VirtualMemorySize64: Int64 read get_VirtualMemorySize64;
    property VirtualMemorySize: Int32 read get_VirtualMemorySize;
    property EnableRaisingEvents: Boolean read get_EnableRaisingEvents write set_EnableRaisingEvents;
    property StandardInput: DDNC.System.Private.CoreLib.DNStreamWriter read get_StandardInput;
    property StandardOutput: DDNC.System.Private.CoreLib.DNStreamReader read get_StandardOutput;
    property StandardError: DDNC.System.Private.CoreLib.DNStreamReader read get_StandardError;
    property WorkingSet64: Int64 read get_WorkingSet64;
    property WorkingSet: Int32 read get_WorkingSet;
    property SynchronizingObject: DDNC.System.ComponentModel.Primitives.DNISynchronizeInvoke read get_SynchronizingObject write set_SynchronizingObject;
    property MainModule: DNProcessModule read get_MainModule;
    property PrivilegedProcessorTime: DDNC.System.Private.CoreLib.DNTimeSpan read get_PrivilegedProcessorTime;
    property TotalProcessorTime: DDNC.System.Private.CoreLib.DNTimeSpan read get_TotalProcessorTime;
    property UserProcessorTime: DDNC.System.Private.CoreLib.DNTimeSpan read get_UserProcessorTime;
    property MainWindowHandle: IntPtr read get_MainWindowHandle;
    property MainWindowTitle: string read get_MainWindowTitle;
    property Responding: Boolean read get_Responding;
    property Site: DDNC.System.ComponentModel.Primitives.DNISite read get_Site write set_Site;
    property Container: DDNC.System.ComponentModel.Primitives.DNIContainer read get_Container;
  end;

  TDNProcess = class(TDNGenericImport<DNProcessClass, DNProcess>) end;

  //-------------namespace: System.Diagnostics----------------
  DNProcessModuleClass = interface(DNObjectClass)
  ['{375AEE82-F0DD-5384-875A-DFD7FBDA5B03}']
  end;

  [DNTypeName('System.Diagnostics.ProcessModule')]
  DNProcessModule = interface(DNObject)
  ['{67F51A16-B6AC-3D57-AA8E-C27BD50DC696}']
  { getters & setters } 

    function get_ModuleName: string;
    function get_FileName: string;
    function get_BaseAddress: IntPtr;
    function get_ModuleMemorySize: Int32;
    function get_EntryPointAddress: IntPtr;
    function get_FileVersionInfo: DDNC.System.Diagnostics.FileVersionInfo.DNFileVersionInfo;
    function get_Site: DDNC.System.ComponentModel.Primitives.DNISite;
    procedure set_Site(value: DDNC.System.ComponentModel.Primitives.DNISite);
    function get_Container: DDNC.System.ComponentModel.Primitives.DNIContainer;

  { events } 

    procedure add_Disposed(value: DDNC.System.Private.CoreLib.DNEventHandler);
    procedure remove_Disposed(value: DDNC.System.Private.CoreLib.DNEventHandler);

  { methods } 

    function ToString: string;
    procedure Dispose;
    function GetLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function InitializeLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property ModuleName: string read get_ModuleName;
    property FileName: string read get_FileName;
    property BaseAddress: IntPtr read get_BaseAddress;
    property ModuleMemorySize: Int32 read get_ModuleMemorySize;
    property EntryPointAddress: IntPtr read get_EntryPointAddress;
    property FileVersionInfo: DDNC.System.Diagnostics.FileVersionInfo.DNFileVersionInfo read get_FileVersionInfo;
    property Site: DDNC.System.ComponentModel.Primitives.DNISite read get_Site write set_Site;
    property Container: DDNC.System.ComponentModel.Primitives.DNIContainer read get_Container;
  end;

  TDNProcessModule = class(TDNGenericImport<DNProcessModuleClass, DNProcessModule>) end;

  //-------------namespace: System.Diagnostics----------------
  DNProcessThreadClass = interface(DNObjectClass)
  ['{D414CA56-4506-5E80-A22B-67F8E50E36A3}']
  { static getter & setter } 

    procedure set_IdealProcessor(value: Int32);
    procedure set_ProcessorAffinity(value: IntPtr);

  { static propertys } 

    {class} property IdealProcessor: Int32 write set_IdealProcessor;
    {class} property ProcessorAffinity: IntPtr write set_ProcessorAffinity;
  end;

  [DNTypeName('System.Diagnostics.ProcessThread')]
  DNProcessThread = interface(DNObject)
  ['{8AC4BF10-F32C-3B9B-9E67-F5027986669F}']
  { getters & setters } 

    function get_BasePriority: Int32;
    function get_CurrentPriority: Int32;
    function get_Id: Int32;
    function get_PriorityBoostEnabled: Boolean;
    procedure set_PriorityBoostEnabled(value: Boolean);
    function get_PriorityLevel: DNThreadPriorityLevel;
    procedure set_PriorityLevel(value: DNThreadPriorityLevel);
    function get_StartAddress: IntPtr;
    function get_ThreadState: DNThreadState;
    function get_WaitReason: DNThreadWaitReason;
    procedure set_IdealProcessor(value: Int32);
    procedure set_ProcessorAffinity(value: IntPtr);
    function get_PrivilegedProcessorTime: DDNC.System.Private.CoreLib.DNTimeSpan;
    function get_StartTime: DDNC.System.Private.CoreLib.DNDateTime;
    function get_TotalProcessorTime: DDNC.System.Private.CoreLib.DNTimeSpan;
    function get_UserProcessorTime: DDNC.System.Private.CoreLib.DNTimeSpan;
    function get_Site: DDNC.System.ComponentModel.Primitives.DNISite;
    procedure set_Site(value: DDNC.System.ComponentModel.Primitives.DNISite);
    function get_Container: DDNC.System.ComponentModel.Primitives.DNIContainer;

  { events } 

    procedure add_Disposed(value: DDNC.System.Private.CoreLib.DNEventHandler);
    procedure remove_Disposed(value: DDNC.System.Private.CoreLib.DNEventHandler);

  { methods } 

    procedure ResetIdealProcessor;
    procedure Dispose;
    function ToString: string;
    function GetLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function InitializeLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property BasePriority: Int32 read get_BasePriority;
    property CurrentPriority: Int32 read get_CurrentPriority;
    property Id: Int32 read get_Id;
    property PriorityBoostEnabled: Boolean read get_PriorityBoostEnabled write set_PriorityBoostEnabled;
    property PriorityLevel: DNThreadPriorityLevel read get_PriorityLevel write set_PriorityLevel;
    property StartAddress: IntPtr read get_StartAddress;
    property ThreadState: DNThreadState read get_ThreadState;
    property WaitReason: DNThreadWaitReason read get_WaitReason;
    property IdealProcessor: Int32 write set_IdealProcessor;
    property ProcessorAffinity: IntPtr write set_ProcessorAffinity;
    property PrivilegedProcessorTime: DDNC.System.Private.CoreLib.DNTimeSpan read get_PrivilegedProcessorTime;
    property StartTime: DDNC.System.Private.CoreLib.DNDateTime read get_StartTime;
    property TotalProcessorTime: DDNC.System.Private.CoreLib.DNTimeSpan read get_TotalProcessorTime;
    property UserProcessorTime: DDNC.System.Private.CoreLib.DNTimeSpan read get_UserProcessorTime;
    property Site: DDNC.System.ComponentModel.Primitives.DNISite read get_Site write set_Site;
    property Container: DDNC.System.ComponentModel.Primitives.DNIContainer read get_Container;
  end;

  TDNProcessThread = class(TDNGenericImport<DNProcessThreadClass, DNProcessThread>) end;

  //-------------namespace: Microsoft.Win32.SafeHandles----------------
  DNSafeProcessHandleClass = interface(DDNC.System.Private.CoreLib.DNSafeHandleZeroOrMinusOneIsInvalidClass)
  ['{3F326DAB-9332-52B2-B526-DC665EFF812B}']
  { constructors } 

    {class} function init(existingHandle: IntPtr; ownsHandle: Boolean): DNSafeProcessHandle;

  end;

  [DNTypeName('Microsoft.Win32.SafeHandles.SafeProcessHandle')]
  DNSafeProcessHandle = interface(DDNC.System.Private.CoreLib.DNSafeHandleZeroOrMinusOneIsInvalid)
  ['{5E8CFF5A-33BA-318E-AE3A-9E284AC227B0}']
  { getters & setters } 

    function get_IsInvalid: Boolean;
    function get_IsClosed: Boolean;

  { methods } 

    function DangerousGetHandle: IntPtr;
    procedure Close;
    procedure Dispose;
    procedure SetHandleAsInvalid;
    procedure DangerousAddRef(out success: Boolean);
    procedure DangerousRelease;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property IsInvalid: Boolean read get_IsInvalid;
    property IsClosed: Boolean read get_IsClosed;
  end;

  TDNSafeProcessHandle = class(TDNGenericImport<DNSafeProcessHandleClass, DNSafeProcessHandle>) end;


implementation


initialization
  LoadAssemblyModule('System.Diagnostics.Process.dll', True, 'System.Diagnostics.Process, Version=4.2.1.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
