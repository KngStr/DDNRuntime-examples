//----------------------------------------------------------------------------
//  System.Console.dll: System.Console, Version=4.1.1.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 2.1.30
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Console
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Console;

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

  //-------------namespace: System----------------
  [DNTypeName('System.ConsoleColor')]
  DNConsoleColor = type Integer;
  DNConsoleColorHelper = record helper for DNConsoleColor
  public const
    Black = 0;
    DarkBlue = 1;
    DarkGreen = 2;
    DarkCyan = 3;
    DarkRed = 4;
    DarkMagenta = 5;
    DarkYellow = 6;
    Gray = 7;
    DarkGray = 8;
    Blue = 9;
    Green = 10;
    Cyan = 11;
    Red = 12;
    Magenta = 13;
    Yellow = 14;
    White = 15;
  end;


  //-------------namespace: System----------------
  [DNTypeName('System.ConsoleKey')]
  DNConsoleKey = type Integer;
  DNConsoleKeyHelper = record helper for DNConsoleKey
  public const
    Backspace = 8;
    Tab = 9;
    Clear = 12;
    Enter = 13;
    Pause = 19;
    Escape = 27;
    Spacebar = 32;
    PageUp = 33;
    PageDown = 34;
    End_ = 35;
    Home = 36;
    LeftArrow = 37;
    UpArrow = 38;
    RightArrow = 39;
    DownArrow = 40;
    Select = 41;
    Print = 42;
    Execute = 43;
    PrintScreen = 44;
    Insert = 45;
    Delete = 46;
    Help = 47;
    D0 = 48;
    D1 = 49;
    D2 = 50;
    D3 = 51;
    D4 = 52;
    D5 = 53;
    D6 = 54;
    D7 = 55;
    D8 = 56;
    D9 = 57;
    A = 65;
    B = 66;
    C = 67;
    D = 68;
    E = 69;
    F = 70;
    G = 71;
    H = 72;
    I = 73;
    J = 74;
    K = 75;
    L = 76;
    M = 77;
    N = 78;
    O = 79;
    P = 80;
    Q = 81;
    R = 82;
    S = 83;
    T = 84;
    U = 85;
    V = 86;
    W = 87;
    X = 88;
    Y = 89;
    Z = 90;
    LeftWindows = 91;
    RightWindows = 92;
    Applications = 93;
    Sleep = 95;
    NumPad0 = 96;
    NumPad1 = 97;
    NumPad2 = 98;
    NumPad3 = 99;
    NumPad4 = 100;
    NumPad5 = 101;
    NumPad6 = 102;
    NumPad7 = 103;
    NumPad8 = 104;
    NumPad9 = 105;
    Multiply = 106;
    Add = 107;
    Separator = 108;
    Subtract = 109;
    Decimal = 110;
    Divide = 111;
    F1 = 112;
    F2 = 113;
    F3 = 114;
    F4 = 115;
    F5 = 116;
    F6 = 117;
    F7 = 118;
    F8 = 119;
    F9 = 120;
    F10 = 121;
    F11 = 122;
    F12 = 123;
    F13 = 124;
    F14 = 125;
    F15 = 126;
    F16 = 127;
    F17 = 128;
    F18 = 129;
    F19 = 130;
    F20 = 131;
    F21 = 132;
    F22 = 133;
    F23 = 134;
    F24 = 135;
    BrowserBack = 166;
    BrowserForward = 167;
    BrowserRefresh = 168;
    BrowserStop = 169;
    BrowserSearch = 170;
    BrowserFavorites = 171;
    BrowserHome = 172;
    VolumeMute = 173;
    VolumeDown = 174;
    VolumeUp = 175;
    MediaNext = 176;
    MediaPrevious = 177;
    MediaStop = 178;
    MediaPlay = 179;
    LaunchMail = 180;
    LaunchMediaSelect = 181;
    LaunchApp1 = 182;
    LaunchApp2 = 183;
    Oem1 = 186;
    OemPlus = 187;
    OemComma = 188;
    OemMinus = 189;
    OemPeriod = 190;
    Oem2 = 191;
    Oem3 = 192;
    Oem4 = 219;
    Oem5 = 220;
    Oem6 = 221;
    Oem7 = 222;
    Oem8 = 223;
    Oem102 = 226;
    Process = 229;
    Packet = 231;
    Attention = 246;
    CrSel = 247;
    ExSel = 248;
    EraseEndOfFile = 249;
    Play = 250;
    Zoom = 251;
    NoName = 252;
    Pa1 = 253;
    OemClear = 254;
  end;


  //-------------namespace: System----------------
  [DNTypeName('System.ConsoleModifiers')]
  DNConsoleModifiers = type Integer;
  DNConsoleModifiersHelper = record helper for DNConsoleModifiers
  public const
    Alt = 1;
    Shift = 2;
    Control = 4;
  end;


  //-------------namespace: System----------------
  [DNTypeName('System.ConsoleSpecialKey')]
  DNConsoleSpecialKey = type Integer;
  DNConsoleSpecialKeyHelper = record helper for DNConsoleSpecialKey
  public const
    ControlC = 0;
    ControlBreak = 1;
  end;




type


{ declares }

  DNConsole = interface; // type: System.Console, namespace: System
  DNConsoleCancelEventArgs = interface; // type: System.ConsoleCancelEventArgs, namespace: System
  DNConsoleKeyInfo = interface; // type: System.ConsoleKeyInfo, namespace: System

{ delegates }

  [DNTypeName('System.ConsoleCancelEventHandler')]
  DNConsoleCancelEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNConsoleCancelEventArgs) of object;




{ objects }

  //-------------namespace: System----------------
  DNConsoleClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{1652FA98-C905-555D-8289-D3E16FF07B1E}']
  { static getter & setter } 

    {class} function get_In: DDNC.System.Private.CoreLib.DNTextReader;
    {class} function get_InputEncoding: DDNC.System.Private.CoreLib.DNEncoding;
    {class} procedure set_InputEncoding(value: DDNC.System.Private.CoreLib.DNEncoding);
    {class} function get_OutputEncoding: DDNC.System.Private.CoreLib.DNEncoding;
    {class} procedure set_OutputEncoding(value: DDNC.System.Private.CoreLib.DNEncoding);
    {class} function get_KeyAvailable: Boolean;
    {class} function get_Out: DDNC.System.Private.CoreLib.DNTextWriter;
    {class} function get_Error: DDNC.System.Private.CoreLib.DNTextWriter;
    {class} function get_IsInputRedirected: Boolean;
    {class} function get_IsOutputRedirected: Boolean;
    {class} function get_IsErrorRedirected: Boolean;
    {class} function get_CursorSize: Int32;
    {class} procedure set_CursorSize(value: Int32);
    {class} function get_NumberLock: Boolean;
    {class} function get_CapsLock: Boolean;
    {class} function get_BackgroundColor: DNConsoleColor;
    {class} procedure set_BackgroundColor(value: DNConsoleColor);
    {class} function get_ForegroundColor: DNConsoleColor;
    {class} procedure set_ForegroundColor(value: DNConsoleColor);
    {class} function get_BufferWidth: Int32;
    {class} procedure set_BufferWidth(value: Int32);
    {class} function get_BufferHeight: Int32;
    {class} procedure set_BufferHeight(value: Int32);
    {class} function get_WindowLeft: Int32;
    {class} procedure set_WindowLeft(value: Int32);
    {class} function get_WindowTop: Int32;
    {class} procedure set_WindowTop(value: Int32);
    {class} function get_WindowWidth: Int32;
    {class} procedure set_WindowWidth(value: Int32);
    {class} function get_WindowHeight: Int32;
    {class} procedure set_WindowHeight(value: Int32);
    {class} function get_LargestWindowWidth: Int32;
    {class} function get_LargestWindowHeight: Int32;
    {class} function get_CursorVisible: Boolean;
    {class} procedure set_CursorVisible(value: Boolean);
    {class} function get_CursorLeft: Int32;
    {class} procedure set_CursorLeft(value: Int32);
    {class} function get_CursorTop: Int32;
    {class} procedure set_CursorTop(value: Int32);
    {class} function get_Title: string;
    {class} procedure set_Title(value: string);
    {class} function get_TreatControlCAsInput: Boolean;
    {class} procedure set_TreatControlCAsInput(value: Boolean);

  { static methods } 

    {class} function ReadKey: DNConsoleKeyInfo; overload;
    {class} function ReadKey(intercept: Boolean): DNConsoleKeyInfo; overload;
    {class} procedure ResetColor;
    {class} procedure SetBufferSize(width: Int32; height: Int32);
    {class} procedure SetWindowPosition(left: Int32; top: Int32);
    {class} procedure SetWindowSize(width: Int32; height: Int32);
    {class} procedure Beep; overload;
    {class} procedure Beep(frequency: Int32; duration: Int32); overload;
    {class} procedure MoveBufferArea(sourceLeft: Int32; sourceTop: Int32; sourceWidth: Int32; sourceHeight: Int32; targetLeft: Int32; targetTop: Int32); overload;
    {class} procedure MoveBufferArea(sourceLeft: Int32; sourceTop: Int32; sourceWidth: Int32; sourceHeight: Int32; targetLeft: Int32; targetTop: Int32; sourceChar: Char; sourceForeColor: DNConsoleColor; sourceBackColor: DNConsoleColor); overload;
    {class} procedure Clear;
    {class} procedure SetCursorPosition(left: Int32; top: Int32);
    {class} function OpenStandardInput: DDNC.System.Private.CoreLib.DNStream; overload;
    {class} function OpenStandardInput(bufferSize: Int32): DDNC.System.Private.CoreLib.DNStream; overload;
    {class} function OpenStandardOutput: DDNC.System.Private.CoreLib.DNStream; overload;
    {class} function OpenStandardOutput(bufferSize: Int32): DDNC.System.Private.CoreLib.DNStream; overload;
    {class} function OpenStandardError: DDNC.System.Private.CoreLib.DNStream; overload;
    {class} function OpenStandardError(bufferSize: Int32): DDNC.System.Private.CoreLib.DNStream; overload;
    {class} procedure SetIn(newIn: DDNC.System.Private.CoreLib.DNTextReader);
    {class} procedure SetOut(newOut: DDNC.System.Private.CoreLib.DNTextWriter);
    {class} procedure SetError(newError: DDNC.System.Private.CoreLib.DNTextWriter);
    {class} function Read: Int32;
    {class} function ReadLine: string;
    {class} procedure WriteLine; overload;
    {class} procedure WriteLine(value: Boolean); overload;
    {class} procedure WriteLine(value: Char); overload;
    {class} procedure WriteLine(buffer: TArray<Char>); overload;
    {class} procedure WriteLine(buffer: TArray<Char>; index: Int32; count: Int32); overload;
    {class} procedure WriteLine(value: DDNC.System.Private.CoreLib.DNDecimal); overload;
    {class} procedure WriteLine(value: Double); overload;
    {class} procedure WriteLine(value: Single); overload;
    {class} procedure WriteLine(value: Int32); overload;
    {class} procedure WriteLine(value: UInt32); overload;
    {class} procedure WriteLine(value: Int64); overload;
    {class} procedure WriteLine(value: UInt64); overload;
    {class} procedure WriteLine(value: DDNC.System.Private.CoreLib.DNObject); overload;
    {class} procedure WriteLine(value: string); overload;
    {class} procedure WriteLine(format: string; arg0: DDNC.System.Private.CoreLib.DNObject); overload;
    {class} procedure WriteLine(format: string; arg0: DDNC.System.Private.CoreLib.DNObject; arg1: DDNC.System.Private.CoreLib.DNObject); overload;
    {class} procedure WriteLine(format: string; arg0: DDNC.System.Private.CoreLib.DNObject; arg1: DDNC.System.Private.CoreLib.DNObject; arg2: DDNC.System.Private.CoreLib.DNObject); overload;
    {class} procedure WriteLine(format: string; arg: TArray<DDNC.System.Private.CoreLib.DNObject>); overload;
    {class} procedure Write(format: string; arg0: DDNC.System.Private.CoreLib.DNObject); overload;
    {class} procedure Write(format: string; arg0: DDNC.System.Private.CoreLib.DNObject; arg1: DDNC.System.Private.CoreLib.DNObject); overload;
    {class} procedure Write(format: string; arg0: DDNC.System.Private.CoreLib.DNObject; arg1: DDNC.System.Private.CoreLib.DNObject; arg2: DDNC.System.Private.CoreLib.DNObject); overload;
    {class} procedure Write(format: string; arg: TArray<DDNC.System.Private.CoreLib.DNObject>); overload;
    {class} procedure Write(value: Boolean); overload;
    {class} procedure Write(value: Char); overload;
    {class} procedure Write(buffer: TArray<Char>); overload;
    {class} procedure Write(buffer: TArray<Char>; index: Int32; count: Int32); overload;
    {class} procedure Write(value: Double); overload;
    {class} procedure Write(value: DDNC.System.Private.CoreLib.DNDecimal); overload;
    {class} procedure Write(value: Single); overload;
    {class} procedure Write(value: Int32); overload;
    {class} procedure Write(value: UInt32); overload;
    {class} procedure Write(value: Int64); overload;
    {class} procedure Write(value: UInt64); overload;
    {class} procedure Write(value: DDNC.System.Private.CoreLib.DNObject); overload;
    {class} procedure Write(value: string); overload;

  { static propertys } 

    {class} property &In: DDNC.System.Private.CoreLib.DNTextReader read get_In;
    {class} property InputEncoding: DDNC.System.Private.CoreLib.DNEncoding read get_InputEncoding write set_InputEncoding;
    {class} property OutputEncoding: DDNC.System.Private.CoreLib.DNEncoding read get_OutputEncoding write set_OutputEncoding;
    {class} property KeyAvailable: Boolean read get_KeyAvailable;
    {class} property &Out: DDNC.System.Private.CoreLib.DNTextWriter read get_Out;
    {class} property Error: DDNC.System.Private.CoreLib.DNTextWriter read get_Error;
    {class} property IsInputRedirected: Boolean read get_IsInputRedirected;
    {class} property IsOutputRedirected: Boolean read get_IsOutputRedirected;
    {class} property IsErrorRedirected: Boolean read get_IsErrorRedirected;
    {class} property CursorSize: Int32 read get_CursorSize write set_CursorSize;
    {class} property NumberLock: Boolean read get_NumberLock;
    {class} property CapsLock: Boolean read get_CapsLock;
    {class} property BackgroundColor: DNConsoleColor read get_BackgroundColor write set_BackgroundColor;
    {class} property ForegroundColor: DNConsoleColor read get_ForegroundColor write set_ForegroundColor;
    {class} property BufferWidth: Int32 read get_BufferWidth write set_BufferWidth;
    {class} property BufferHeight: Int32 read get_BufferHeight write set_BufferHeight;
    {class} property WindowLeft: Int32 read get_WindowLeft write set_WindowLeft;
    {class} property WindowTop: Int32 read get_WindowTop write set_WindowTop;
    {class} property WindowWidth: Int32 read get_WindowWidth write set_WindowWidth;
    {class} property WindowHeight: Int32 read get_WindowHeight write set_WindowHeight;
    {class} property LargestWindowWidth: Int32 read get_LargestWindowWidth;
    {class} property LargestWindowHeight: Int32 read get_LargestWindowHeight;
    {class} property CursorVisible: Boolean read get_CursorVisible write set_CursorVisible;
    {class} property CursorLeft: Int32 read get_CursorLeft write set_CursorLeft;
    {class} property CursorTop: Int32 read get_CursorTop write set_CursorTop;
    {class} property Title: string read get_Title write set_Title;
    {class} property TreatControlCAsInput: Boolean read get_TreatControlCAsInput write set_TreatControlCAsInput;
  end;

  [DNTypeName('System.Console')]
  DNConsole = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{9EA88F25-8EEA-3CFC-A42C-462433C63788}']
  { events } 

    {class} procedure add_CancelKeyPress(value: DNConsoleCancelEventHandler);
    {class} procedure remove_CancelKeyPress(value: DNConsoleCancelEventHandler);

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNConsole = class(TDNGenericImport<DNConsoleClass, DNConsole>) end;

  //-------------namespace: System----------------
  DNConsoleCancelEventArgsClass = interface(DDNC.System.Private.CoreLib.DNEventArgsClass)
  ['{87FDB0B5-90F8-5DC1-83FA-13334A6C2A38}']
  end;

  [DNTypeName('System.ConsoleCancelEventArgs')]
  DNConsoleCancelEventArgs = interface(DDNC.System.Private.CoreLib.DNEventArgs)
  ['{371AC62E-6273-3373-9101-D374F32DE561}']
  { getters & setters } 

    function get_Cancel: Boolean;
    procedure set_Cancel(value: Boolean);
    function get_SpecialKey: DNConsoleSpecialKey;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Cancel: Boolean read get_Cancel write set_Cancel;
    property SpecialKey: DNConsoleSpecialKey read get_SpecialKey;
  end;

  TDNConsoleCancelEventArgs = class(TDNGenericImport<DNConsoleCancelEventArgsClass, DNConsoleCancelEventArgs>) end;

  //-------------namespace: System----------------
  DNConsoleKeyInfoClass = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{C5056D00-0112-53ED-BE3B-0B9A7574984F}']
  { constructors } 

    {class} function init(keyChar: Char; key: DNConsoleKey; shift: Boolean; alt: Boolean; control: Boolean): DNConsoleKeyInfo;

  end;

  [DNTypeName('System.ConsoleKeyInfo')]
  DNConsoleKeyInfo = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{3BF744B5-B491-3A63-84B6-3358CB39111B}']
  { getters & setters } 

    function get_KeyChar: Char;
    function get_Key: DNConsoleKey;
    function get_Modifiers: DNConsoleModifiers;

  { methods } 

    function Equals(value: DDNC.System.Private.CoreLib.DNObject): Boolean; overload;
    function Equals(obj: DNConsoleKeyInfo): Boolean; overload;
    function GetHashCode: Int32;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property KeyChar: Char read get_KeyChar;
    property Key: DNConsoleKey read get_Key;
    property Modifiers: DNConsoleModifiers read get_Modifiers;
  end;

  TDNConsoleKeyInfo = class(TDNGenericImport<DNConsoleKeyInfoClass, DNConsoleKeyInfo>) end;


implementation


initialization
  InternalTryLoadAssemblyModule('System.Console, Version=4.1.1.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
