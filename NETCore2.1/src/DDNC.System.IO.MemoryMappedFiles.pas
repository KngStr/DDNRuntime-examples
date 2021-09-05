//----------------------------------------------------------------------------
//  System.IO.MemoryMappedFiles.dll: System.IO.MemoryMappedFiles, Version=4.1.1.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 2.1
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.IO.MemoryMappedFiles
//  Author: ying32
//----------------------------------------------------------------------------

{$IFNDEF DDNCSYSTEMIOMEMORYMAPPEDFILES}
unit DDNC.System.IO.MemoryMappedFiles;
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
  DDNC.System.Runtime;

type

{ enums }

  //-------------namespace: System.IO.MemoryMappedFiles----------------
  [DNTypeName('System.IO.MemoryMappedFiles.MemoryMappedFileAccess')]
  DNMemoryMappedFileAccess = type Integer;
  DNMemoryMappedFileAccessHelper = record helper for DNMemoryMappedFileAccess
  public const
    ReadWrite = 0;
    Read = 1;
    Write = 2;
    CopyOnWrite = 3;
    ReadExecute = 4;
    ReadWriteExecute = 5;
  end;


  //-------------namespace: System.IO.MemoryMappedFiles----------------
  [DNTypeName('System.IO.MemoryMappedFiles.MemoryMappedFileOptions')]
  DNMemoryMappedFileOptions = type Integer;
  DNMemoryMappedFileOptionsHelper = record helper for DNMemoryMappedFileOptions
  public const
    None = 0;
    DelayAllocatePages = 67108864;
  end;


  //-------------namespace: System.IO.MemoryMappedFiles----------------
  [DNTypeName('System.IO.MemoryMappedFiles.MemoryMappedFileRights')]
  DNMemoryMappedFileRights = type Integer;
  DNMemoryMappedFileRightsHelper = record helper for DNMemoryMappedFileRights
  public const
    CopyOnWrite = 1;
    Write = 2;
    Read = 4;
    ReadWrite = 6;
    Execute = 8;
    ReadExecute = 12;
    ReadWriteExecute = 14;
    Delete = 65536;
    ReadPermissions = 131072;
    ChangePermissions = 262144;
    TakeOwnership = 524288;
    FullControl = 983055;
    AccessSystemSecurity = 16777216;
  end;




type


{ declares }

  DNMemoryMappedFile = interface; // type: System.IO.MemoryMappedFiles.MemoryMappedFile, namespace: System.IO.MemoryMappedFiles
  DNMemoryMappedViewAccessor = interface; // type: System.IO.MemoryMappedFiles.MemoryMappedViewAccessor, namespace: System.IO.MemoryMappedFiles
  DNMemoryMappedViewStream = interface; // type: System.IO.MemoryMappedFiles.MemoryMappedViewStream, namespace: System.IO.MemoryMappedFiles
  DNSafeMemoryMappedFileHandle = interface; // type: Microsoft.Win32.SafeHandles.SafeMemoryMappedFileHandle, namespace: Microsoft.Win32.SafeHandles
  DNSafeMemoryMappedViewHandle = interface; // type: Microsoft.Win32.SafeHandles.SafeMemoryMappedViewHandle, namespace: Microsoft.Win32.SafeHandles


{ objects }

  //-------------namespace: System.IO.MemoryMappedFiles----------------
  DNMemoryMappedFileClass = interface(DNObjectClass)
  ['{C6DF7C22-1364-5809-83E5-DA4D623C07A4}']
  { static methods } 

    {class} function OpenExisting(mapName: string): DNMemoryMappedFile; overload;
    {class} function OpenExisting(mapName: string; desiredAccessRights: DNMemoryMappedFileRights): DNMemoryMappedFile; overload;
    {class} function OpenExisting(mapName: string; desiredAccessRights: DNMemoryMappedFileRights; inheritability: DDNC.System.Runtime.DNHandleInheritability): DNMemoryMappedFile; overload;
    {class} function CreateFromFile(path: string): DNMemoryMappedFile; overload;
    {class} function CreateFromFile(path: string; mode: DDNC.System.Private.CoreLib.DNFileMode): DNMemoryMappedFile; overload;
    {class} function CreateFromFile(path: string; mode: DDNC.System.Private.CoreLib.DNFileMode; mapName: string): DNMemoryMappedFile; overload;
    {class} function CreateFromFile(path: string; mode: DDNC.System.Private.CoreLib.DNFileMode; mapName: string; capacity: Int64): DNMemoryMappedFile; overload;
    {class} function CreateFromFile(path: string; mode: DDNC.System.Private.CoreLib.DNFileMode; mapName: string; capacity: Int64; access: DNMemoryMappedFileAccess): DNMemoryMappedFile; overload;
    {class} function CreateFromFile(fileStream: DDNC.System.Private.CoreLib.DNFileStream; mapName: string; capacity: Int64; access: DNMemoryMappedFileAccess; inheritability: DDNC.System.Runtime.DNHandleInheritability; leaveOpen: Boolean): DNMemoryMappedFile; overload;
    {class} function CreateNew(mapName: string; capacity: Int64): DNMemoryMappedFile; overload;
    {class} function CreateNew(mapName: string; capacity: Int64; access: DNMemoryMappedFileAccess): DNMemoryMappedFile; overload;
    {class} function CreateNew(mapName: string; capacity: Int64; access: DNMemoryMappedFileAccess; options: DNMemoryMappedFileOptions; inheritability: DDNC.System.Runtime.DNHandleInheritability): DNMemoryMappedFile; overload;
    {class} function CreateOrOpen(mapName: string; capacity: Int64): DNMemoryMappedFile; overload;
    {class} function CreateOrOpen(mapName: string; capacity: Int64; access: DNMemoryMappedFileAccess): DNMemoryMappedFile; overload;
    {class} function CreateOrOpen(mapName: string; capacity: Int64; access: DNMemoryMappedFileAccess; options: DNMemoryMappedFileOptions; inheritability: DDNC.System.Runtime.DNHandleInheritability): DNMemoryMappedFile; overload;

  end;

  [DNTypeName('System.IO.MemoryMappedFiles.MemoryMappedFile')]
  DNMemoryMappedFile = interface(DDNC.System.Private.CoreLib.DNIDisposable)
  ['{8F125943-32E1-34DB-ADF0-EA46210838C9}']
  { getters & setters } 

    function get_SafeMemoryMappedFileHandle: DNSafeMemoryMappedFileHandle;

  { methods } 

    function CreateViewStream: DNMemoryMappedViewStream; overload;
    function CreateViewStream(offset: Int64; size: Int64): DNMemoryMappedViewStream; overload;
    function CreateViewStream(offset: Int64; size: Int64; access: DNMemoryMappedFileAccess): DNMemoryMappedViewStream; overload;
    function CreateViewAccessor: DNMemoryMappedViewAccessor; overload;
    function CreateViewAccessor(offset: Int64; size: Int64): DNMemoryMappedViewAccessor; overload;
    function CreateViewAccessor(offset: Int64; size: Int64; access: DNMemoryMappedFileAccess): DNMemoryMappedViewAccessor; overload;
    procedure Dispose;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property SafeMemoryMappedFileHandle: DNSafeMemoryMappedFileHandle read get_SafeMemoryMappedFileHandle;
  end;

  TDNMemoryMappedFile = class(TDNGenericImport<DNMemoryMappedFileClass, DNMemoryMappedFile>) end;

  //-------------namespace: System.IO.MemoryMappedFiles----------------
  DNMemoryMappedViewAccessorClass = interface(DDNC.System.Private.CoreLib.DNUnmanagedMemoryAccessorClass)
  ['{FB9D910C-D246-58CF-AD7C-98EFA8D4B5E3}']
  end;

  [DNTypeName('System.IO.MemoryMappedFiles.MemoryMappedViewAccessor')]
  DNMemoryMappedViewAccessor = interface(DDNC.System.Private.CoreLib.DNUnmanagedMemoryAccessor)
  ['{67972441-F5D1-3747-AA3D-9CA558B9D12C}']
  { getters & setters } 

    function get_SafeMemoryMappedViewHandle: DNSafeMemoryMappedViewHandle;
    function get_PointerOffset: Int64;
    function get_Capacity: Int64;
    function get_CanRead: Boolean;
    function get_CanWrite: Boolean;

  { methods } 

    procedure Flush;
    procedure Dispose;
    function ReadBoolean(position: Int64): Boolean;
    function ReadByte(position: Int64): Byte;
    function ReadChar(position: Int64): Char;
    function ReadInt16(position: Int64): Int16;
    function ReadInt32(position: Int64): Int32;
    function ReadInt64(position: Int64): Int64;
    function ReadDecimal(position: Int64): DDNC.System.Private.CoreLib.DNDecimal;
    function ReadSingle(position: Int64): Single;
    function ReadDouble(position: Int64): Double;
    function ReadSByte(position: Int64): SByte;
    function ReadUInt16(position: Int64): UInt16;
    function ReadUInt32(position: Int64): UInt32;
    function ReadUInt64(position: Int64): UInt64;
    procedure Write(position: Int64; value: Boolean); overload;
    procedure Write(position: Int64; value: Byte); overload;
    procedure Write(position: Int64; value: Char); overload;
    procedure Write(position: Int64; value: Int16); overload;
    procedure Write(position: Int64; value: Int32); overload;
    procedure Write(position: Int64; value: Int64); overload;
    procedure Write(position: Int64; value: DDNC.System.Private.CoreLib.DNDecimal); overload;
    procedure Write(position: Int64; value: Single); overload;
    procedure Write(position: Int64; value: Double); overload;
    procedure Write(position: Int64; value: SByte); overload;
    procedure Write(position: Int64; value: UInt16); overload;
    procedure Write(position: Int64; value: UInt32); overload;
    procedure Write(position: Int64; value: UInt64); overload;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property SafeMemoryMappedViewHandle: DNSafeMemoryMappedViewHandle read get_SafeMemoryMappedViewHandle;
    property PointerOffset: Int64 read get_PointerOffset;
    property Capacity: Int64 read get_Capacity;
    property CanRead: Boolean read get_CanRead;
    property CanWrite: Boolean read get_CanWrite;
  end;

  TDNMemoryMappedViewAccessor = class(TDNGenericImport<DNMemoryMappedViewAccessorClass, DNMemoryMappedViewAccessor>) end;

  //-------------namespace: System.IO.MemoryMappedFiles----------------
  DNMemoryMappedViewStreamClass = interface(DDNC.System.Private.CoreLib.DNUnmanagedMemoryStreamClass)
  ['{0F8075FE-718D-5BE6-ACC6-7439C76A27D5}']
  end;

  [DNTypeName('System.IO.MemoryMappedFiles.MemoryMappedViewStream')]
  DNMemoryMappedViewStream = interface(DDNC.System.Private.CoreLib.DNUnmanagedMemoryStream)
  ['{2CFA72E6-BC53-3870-A8DE-8B49E8B32C03}']
  { getters & setters } 

    function get_SafeMemoryMappedViewHandle: DNSafeMemoryMappedViewHandle;
    function get_PointerOffset: Int64;
    function get_CanRead: Boolean;
    function get_CanSeek: Boolean;
    function get_CanWrite: Boolean;
    function get_Length: Int64;
    function get_Capacity: Int64;
    function get_Position: Int64;
    procedure set_Position(value: Int64);
    function get_PositionPointer: PByte;
    procedure set_PositionPointer(value: PByte);
    function get_CanTimeout: Boolean;
    function get_ReadTimeout: Int32;
    procedure set_ReadTimeout(value: Int32);
    function get_WriteTimeout: Int32;
    procedure set_WriteTimeout(value: Int32);

  { methods } 

    procedure SetLength(value: Int64);
    procedure Flush;
    function FlushAsync(cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNTask; overload;
    function Read(buffer: TArray<Byte>; offset: Int32; count: Int32): Int32; overload;
    function Read(buffer: DDNC.System.Private.CoreLib.DNSpan<Byte>): Int32; overload;
    function ReadAsync(buffer: TArray<Byte>; offset: Int32; count: Int32; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNTask<Int32>; overload;
    function ReadAsync(buffer: DDNC.System.Private.CoreLib.DNMemory<Byte>; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNValueTask<Int32>; overload;
    function ReadByte: Int32;
    function Seek(offset: Int64; loc: DDNC.System.Private.CoreLib.DNSeekOrigin): Int64;
    procedure Write(buffer: TArray<Byte>; offset: Int32; count: Int32); overload;
    procedure Write(buffer: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>); overload;
    function WriteAsync(buffer: TArray<Byte>; offset: Int32; count: Int32; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNTask; overload;
    function WriteAsync(buffer: DDNC.System.Private.CoreLib.DNReadOnlyMemory<Byte>; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNValueTask; overload;
    procedure WriteByte(value: Byte);
    function CopyToAsync(destination: DDNC.System.Private.CoreLib.DNStream): DDNC.System.Private.CoreLib.DNTask; overload;
    function CopyToAsync(destination: DDNC.System.Private.CoreLib.DNStream; bufferSize: Int32): DDNC.System.Private.CoreLib.DNTask; overload;
    function CopyToAsync(destination: DDNC.System.Private.CoreLib.DNStream; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNTask; overload;
    function CopyToAsync(destination: DDNC.System.Private.CoreLib.DNStream; bufferSize: Int32; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNTask; overload;
    procedure CopyTo(destination: DDNC.System.Private.CoreLib.DNStream); overload;
    procedure CopyTo(destination: DDNC.System.Private.CoreLib.DNStream; bufferSize: Int32); overload;
    procedure Close;
    procedure Dispose;
    function FlushAsync: DDNC.System.Private.CoreLib.DNTask; overload;
    function BeginRead(buffer: TArray<Byte>; offset: Int32; count: Int32; callback: DDNC.System.Private.CoreLib.DNAsyncCallback; state: DDNC.System.Private.CoreLib.DNObject): DDNC.System.Private.CoreLib.DNIAsyncResult;
    function EndRead(asyncResult: DDNC.System.Private.CoreLib.DNIAsyncResult): Int32;
    function ReadAsync(buffer: TArray<Byte>; offset: Int32; count: Int32): DDNC.System.Private.CoreLib.DNTask<Int32>; overload;
    function BeginWrite(buffer: TArray<Byte>; offset: Int32; count: Int32; callback: DDNC.System.Private.CoreLib.DNAsyncCallback; state: DDNC.System.Private.CoreLib.DNObject): DDNC.System.Private.CoreLib.DNIAsyncResult;
    procedure EndWrite(asyncResult: DDNC.System.Private.CoreLib.DNIAsyncResult);
    function WriteAsync(buffer: TArray<Byte>; offset: Int32; count: Int32): DDNC.System.Private.CoreLib.DNTask; overload;
    function GetLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function InitializeLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property SafeMemoryMappedViewHandle: DNSafeMemoryMappedViewHandle read get_SafeMemoryMappedViewHandle;
    property PointerOffset: Int64 read get_PointerOffset;
    property CanRead: Boolean read get_CanRead;
    property CanSeek: Boolean read get_CanSeek;
    property CanWrite: Boolean read get_CanWrite;
    property Length: Int64 read get_Length;
    property Capacity: Int64 read get_Capacity;
    property Position: Int64 read get_Position write set_Position;
    property PositionPointer: PByte read get_PositionPointer write set_PositionPointer;
    property CanTimeout: Boolean read get_CanTimeout;
    property ReadTimeout: Int32 read get_ReadTimeout write set_ReadTimeout;
    property WriteTimeout: Int32 read get_WriteTimeout write set_WriteTimeout;
  end;

  TDNMemoryMappedViewStream = class(TDNGenericImport<DNMemoryMappedViewStreamClass, DNMemoryMappedViewStream>) end;

  //-------------namespace: Microsoft.Win32.SafeHandles----------------
  DNSafeMemoryMappedFileHandleClass = interface(DDNC.System.Private.CoreLib.DNSafeHandleZeroOrMinusOneIsInvalidClass)
  ['{C1CE153A-AF4E-5D64-9562-295ABDCC6B4F}']
  end;

  [DNTypeName('Microsoft.Win32.SafeHandles.SafeMemoryMappedFileHandle')]
  DNSafeMemoryMappedFileHandle = interface(DDNC.System.Private.CoreLib.DNSafeHandleZeroOrMinusOneIsInvalid)
  ['{873F2E50-1B30-3DBA-9B4C-CC2EC013636C}']
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

  TDNSafeMemoryMappedFileHandle = class(TDNGenericImport<DNSafeMemoryMappedFileHandleClass, DNSafeMemoryMappedFileHandle>) end;

  //-------------namespace: Microsoft.Win32.SafeHandles----------------
  DNSafeMemoryMappedViewHandleClass = interface(DDNC.System.Private.CoreLib.DNSafeBufferClass)
  ['{2FCF3FFE-BCAB-58B5-8B41-F93CC658070E}']
  end;

  [DNTypeName('Microsoft.Win32.SafeHandles.SafeMemoryMappedViewHandle')]
  DNSafeMemoryMappedViewHandle = interface(DDNC.System.Private.CoreLib.DNSafeBuffer)
  ['{0011D85D-8A48-3E5B-B102-3921C9628274}']
  { getters & setters } 

    function get_ByteLength: UInt64;
    function get_IsInvalid: Boolean;
    function get_IsClosed: Boolean;

  { methods } 

    procedure Initialize(numBytes: UInt64); overload;
    procedure Initialize(numElements: UInt32; sizeOfEachElement: UInt32); overload;
    procedure AcquirePointer(out pointer: PByte);
    procedure ReleasePointer;
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

    property ByteLength: UInt64 read get_ByteLength;
    property IsInvalid: Boolean read get_IsInvalid;
    property IsClosed: Boolean read get_IsClosed;
  end;

  TDNSafeMemoryMappedViewHandle = class(TDNGenericImport<DNSafeMemoryMappedViewHandleClass, DNSafeMemoryMappedViewHandle>) end;


implementation


initialization
  LoadAssemblyModule('System.IO.MemoryMappedFiles.dll', True);

finalization

end.