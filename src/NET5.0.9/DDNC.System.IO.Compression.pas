//----------------------------------------------------------------------------
//  System.IO.Compression.dll: System.IO.Compression, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 5.0.9
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.IO.Compression
//  Author: ying32
//----------------------------------------------------------------------------

{$IFNDEF DDNCSYSTEMIOCOMPRESSION}
unit DDNC.System.IO.Compression;
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

  //-------------namespace: System.IO.Compression----------------
  [DNTypeName('System.IO.Compression.CompressionLevel')]
  DNCompressionLevel = type Integer;
  DNCompressionLevelHelper = record helper for DNCompressionLevel
  public const
    Optimal = 0;
    Fastest = 1;
    NoCompression = 2;
  end;


  //-------------namespace: System.IO.Compression----------------
  [DNTypeName('System.IO.Compression.CompressionMode')]
  DNCompressionMode = type Integer;
  DNCompressionModeHelper = record helper for DNCompressionMode
  public const
    Decompress = 0;
    Compress = 1;
  end;


  //-------------namespace: System.IO.Compression----------------
  [DNTypeName('System.IO.Compression.ZipArchiveMode')]
  DNZipArchiveMode = type Integer;
  DNZipArchiveModeHelper = record helper for DNZipArchiveMode
  public const
    Read = 0;
    Create = 1;
    Update = 2;
  end;




type


{ declares }

  DNZLibException = interface; // type: System.IO.Compression.ZLibException, namespace: System.IO.Compression
  DNZipArchive = interface; // type: System.IO.Compression.ZipArchive, namespace: System.IO.Compression
  DNZipArchiveEntry = interface; // type: System.IO.Compression.ZipArchiveEntry, namespace: System.IO.Compression
  DNDeflateStream = interface; // type: System.IO.Compression.DeflateStream, namespace: System.IO.Compression
  DNGZipStream = interface; // type: System.IO.Compression.GZipStream, namespace: System.IO.Compression


{ objects }

  //-------------namespace: System.IO.Compression----------------
  DNZLibExceptionClass = interface(DDNC.System.Private.CoreLib.DNIOExceptionClass)
  ['{EFC31177-2522-5F99-A44B-C394A17D30FA}']
  { constructors } 

    {class} function init(message: string; zlibErrorContext: string; zlibErrorCode: Int32; zlibErrorMessage: string): DNZLibException; overload;
    {class} function init: DNZLibException; overload;
    {class} function init(message: string; innerException: DDNC.System.Private.CoreLib.DNException): DNZLibException; overload;

  end;

  [DNTypeName('System.IO.Compression.ZLibException')]
  DNZLibException = interface(DDNC.System.Private.CoreLib.DNIOException)
  ['{9CD3B4F4-B8D1-31C3-BBA5-310FB1373626}']
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

  TDNZLibException = class(TDNGenericImport<DNZLibExceptionClass, DNZLibException>) end;

  //-------------namespace: System.IO.Compression----------------
  DNZipArchiveClass = interface(DNObjectClass)
  ['{E480270C-C2BE-5970-A1EE-EC69716C811D}']
  { constructors } 

    {class} function init(stream: DDNC.System.Private.CoreLib.DNStream): DNZipArchive; overload;
    {class} function init(stream: DDNC.System.Private.CoreLib.DNStream; mode: DNZipArchiveMode): DNZipArchive; overload;
    {class} function init(stream: DDNC.System.Private.CoreLib.DNStream; mode: DNZipArchiveMode; leaveOpen: Boolean): DNZipArchive; overload;
    {class} function init(stream: DDNC.System.Private.CoreLib.DNStream; mode: DNZipArchiveMode; leaveOpen: Boolean; entryNameEncoding: DDNC.System.Private.CoreLib.DNEncoding): DNZipArchive; overload;

  end;

  [DNTypeName('System.IO.Compression.ZipArchive')]
  DNZipArchive = interface(DDNC.System.Private.CoreLib.DNIDisposable)
  ['{70FD3ECC-2F0F-3B91-B088-D2CD9CAB0715}']
  { getters & setters } 

    function get_Entries: DDNC.System.Private.CoreLib.DNReadOnlyCollection<DNZipArchiveEntry>;
    function get_Mode: DNZipArchiveMode;

  { methods } 

    function CreateEntry(entryName: string): DNZipArchiveEntry; overload;
    function CreateEntry(entryName: string; compressionLevel: DNCompressionLevel): DNZipArchiveEntry; overload;
    procedure Dispose;
    function GetEntry(entryName: string): DNZipArchiveEntry;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Entries: DDNC.System.Private.CoreLib.DNReadOnlyCollection<DNZipArchiveEntry> read get_Entries;
    property Mode: DNZipArchiveMode read get_Mode;
  end;

  TDNZipArchive = class(TDNGenericImport<DNZipArchiveClass, DNZipArchive>) end;

  //-------------namespace: System.IO.Compression----------------
  DNZipArchiveEntryClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{75D2E521-326F-5E8A-8B07-F249BF9E8581}']
  end;

  [DNTypeName('System.IO.Compression.ZipArchiveEntry')]
  DNZipArchiveEntry = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{0BBD8B8C-EBDF-372D-985E-4341EFAA9C1D}']
  { getters & setters } 

    function get_Archive: DNZipArchive;
    function get_Crc32: UInt32;
    function get_CompressedLength: Int64;
    function get_ExternalAttributes: Int32;
    procedure set_ExternalAttributes(value: Int32);
    function get_FullName: string;
    function get_LastWriteTime: DDNC.System.Private.CoreLib.DNDateTimeOffset;
    procedure set_LastWriteTime(value: DDNC.System.Private.CoreLib.DNDateTimeOffset);
    function get_Length: Int64;
    function get_Name: string;

  { methods } 

    procedure Delete;
    function Open: DDNC.System.Private.CoreLib.DNStream;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Archive: DNZipArchive read get_Archive;
    property Crc32: UInt32 read get_Crc32;
    property CompressedLength: Int64 read get_CompressedLength;
    property ExternalAttributes: Int32 read get_ExternalAttributes write set_ExternalAttributes;
    property FullName: string read get_FullName;
    property LastWriteTime: DDNC.System.Private.CoreLib.DNDateTimeOffset read get_LastWriteTime write set_LastWriteTime;
    property Length: Int64 read get_Length;
    property Name: string read get_Name;
  end;

  TDNZipArchiveEntry = class(TDNGenericImport<DNZipArchiveEntryClass, DNZipArchiveEntry>) end;

  //-------------namespace: System.IO.Compression----------------
  DNDeflateStreamClass = interface(DDNC.System.Private.CoreLib.DNStreamClass)
  ['{5A9A8473-1E0D-5D98-8D62-D93CAEA1769C}']
  { constructors } 

    {class} function init(stream: DDNC.System.Private.CoreLib.DNStream; mode: DNCompressionMode): DNDeflateStream; overload;
    {class} function init(stream: DDNC.System.Private.CoreLib.DNStream; mode: DNCompressionMode; leaveOpen: Boolean): DNDeflateStream; overload;
    {class} function init(stream: DDNC.System.Private.CoreLib.DNStream; compressionLevel: DNCompressionLevel): DNDeflateStream; overload;
    {class} function init(stream: DDNC.System.Private.CoreLib.DNStream; compressionLevel: DNCompressionLevel; leaveOpen: Boolean): DNDeflateStream; overload;

  end;

  [DNTypeName('System.IO.Compression.DeflateStream')]
  DNDeflateStream = interface(DDNC.System.Private.CoreLib.DNStream)
  ['{A41EC4D8-D87E-35F1-B059-4F57BAEC36CA}']
  { getters & setters } 

    function get_BaseStream: DDNC.System.Private.CoreLib.DNStream;
    function get_CanRead: Boolean;
    function get_CanWrite: Boolean;
    function get_CanSeek: Boolean;
    function get_Length: Int64;
    function get_Position: Int64;
    procedure set_Position(value: Int64);
    function get_CanTimeout: Boolean;
    function get_ReadTimeout: Int32;
    procedure set_ReadTimeout(value: Int32);
    function get_WriteTimeout: Int32;
    procedure set_WriteTimeout(value: Int32);

  { methods } 

    procedure Flush;
    function FlushAsync(cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNTask; overload;
    function Seek(offset: Int64; origin: DDNC.System.Private.CoreLib.DNSeekOrigin): Int64;
    procedure SetLength(value: Int64);
    function ReadByte: Int32;
    function Read(&array: TArray<Byte>; offset: Int32; count: Int32): Int32; overload;
    function Read(buffer: DDNC.System.Private.CoreLib.DNSpan<Byte>): Int32; overload;
    function BeginRead(buffer: TArray<Byte>; offset: Int32; count: Int32; asyncCallback: DDNC.System.Private.CoreLib.DNAsyncCallback; asyncState: DDNC.System.Private.CoreLib.DNObject): DDNC.System.Private.CoreLib.DNIAsyncResult;
    function EndRead(asyncResult: DDNC.System.Private.CoreLib.DNIAsyncResult): Int32;
    function ReadAsync(&array: TArray<Byte>; offset: Int32; count: Int32; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNTask<Int32>; overload;
    function ReadAsync(buffer: DDNC.System.Private.CoreLib.DNMemory<Byte>; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNValueTask<Int32>; overload;
    procedure Write(&array: TArray<Byte>; offset: Int32; count: Int32); overload;
    procedure Write(buffer: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>); overload;
    function DisposeAsync: DDNC.System.Private.CoreLib.DNValueTask;
    function BeginWrite(&array: TArray<Byte>; offset: Int32; count: Int32; asyncCallback: DDNC.System.Private.CoreLib.DNAsyncCallback; asyncState: DDNC.System.Private.CoreLib.DNObject): DDNC.System.Private.CoreLib.DNIAsyncResult;
    procedure EndWrite(asyncResult: DDNC.System.Private.CoreLib.DNIAsyncResult);
    function WriteAsync(&array: TArray<Byte>; offset: Int32; count: Int32; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNTask; overload;
    function WriteAsync(buffer: DDNC.System.Private.CoreLib.DNReadOnlyMemory<Byte>; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNValueTask; overload;
    procedure CopyTo(destination: DDNC.System.Private.CoreLib.DNStream; bufferSize: Int32); overload;
    function CopyToAsync(destination: DDNC.System.Private.CoreLib.DNStream; bufferSize: Int32; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNTask; overload;
    function CopyToAsync(destination: DDNC.System.Private.CoreLib.DNStream): DDNC.System.Private.CoreLib.DNTask; overload;
    function CopyToAsync(destination: DDNC.System.Private.CoreLib.DNStream; bufferSize: Int32): DDNC.System.Private.CoreLib.DNTask; overload;
    function CopyToAsync(destination: DDNC.System.Private.CoreLib.DNStream; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNTask; overload;
    procedure CopyTo(destination: DDNC.System.Private.CoreLib.DNStream); overload;
    procedure Close;
    procedure Dispose;
    function FlushAsync: DDNC.System.Private.CoreLib.DNTask; overload;
    function ReadAsync(buffer: TArray<Byte>; offset: Int32; count: Int32): DDNC.System.Private.CoreLib.DNTask<Int32>; overload;
    function WriteAsync(buffer: TArray<Byte>; offset: Int32; count: Int32): DDNC.System.Private.CoreLib.DNTask; overload;
    procedure WriteByte(value: Byte);
    function GetLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function InitializeLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property BaseStream: DDNC.System.Private.CoreLib.DNStream read get_BaseStream;
    property CanRead: Boolean read get_CanRead;
    property CanWrite: Boolean read get_CanWrite;
    property CanSeek: Boolean read get_CanSeek;
    property Length: Int64 read get_Length;
    property Position: Int64 read get_Position write set_Position;
    property CanTimeout: Boolean read get_CanTimeout;
    property ReadTimeout: Int32 read get_ReadTimeout write set_ReadTimeout;
    property WriteTimeout: Int32 read get_WriteTimeout write set_WriteTimeout;
  end;

  TDNDeflateStream = class(TDNGenericImport<DNDeflateStreamClass, DNDeflateStream>) end;

  //-------------namespace: System.IO.Compression----------------
  DNGZipStreamClass = interface(DDNC.System.Private.CoreLib.DNStreamClass)
  ['{C6417FEF-8945-57C4-B95A-BE1994CAF82F}']
  { constructors } 

    {class} function init(stream: DDNC.System.Private.CoreLib.DNStream; mode: DNCompressionMode): DNGZipStream; overload;
    {class} function init(stream: DDNC.System.Private.CoreLib.DNStream; mode: DNCompressionMode; leaveOpen: Boolean): DNGZipStream; overload;
    {class} function init(stream: DDNC.System.Private.CoreLib.DNStream; compressionLevel: DNCompressionLevel): DNGZipStream; overload;
    {class} function init(stream: DDNC.System.Private.CoreLib.DNStream; compressionLevel: DNCompressionLevel; leaveOpen: Boolean): DNGZipStream; overload;

  end;

  [DNTypeName('System.IO.Compression.GZipStream')]
  DNGZipStream = interface(DDNC.System.Private.CoreLib.DNStream)
  ['{23A5C8D8-DE66-3CA7-BA17-EC6EC5C7E84A}']
  { getters & setters } 

    function get_CanRead: Boolean;
    function get_CanWrite: Boolean;
    function get_CanSeek: Boolean;
    function get_Length: Int64;
    function get_Position: Int64;
    procedure set_Position(value: Int64);
    function get_BaseStream: DDNC.System.Private.CoreLib.DNStream;
    function get_CanTimeout: Boolean;
    function get_ReadTimeout: Int32;
    procedure set_ReadTimeout(value: Int32);
    function get_WriteTimeout: Int32;
    procedure set_WriteTimeout(value: Int32);

  { methods } 

    procedure Flush;
    function Seek(offset: Int64; origin: DDNC.System.Private.CoreLib.DNSeekOrigin): Int64;
    procedure SetLength(value: Int64);
    function ReadByte: Int32;
    function BeginRead(&array: TArray<Byte>; offset: Int32; count: Int32; asyncCallback: DDNC.System.Private.CoreLib.DNAsyncCallback; asyncState: DDNC.System.Private.CoreLib.DNObject): DDNC.System.Private.CoreLib.DNIAsyncResult;
    function EndRead(asyncResult: DDNC.System.Private.CoreLib.DNIAsyncResult): Int32;
    function Read(&array: TArray<Byte>; offset: Int32; count: Int32): Int32; overload;
    function Read(buffer: DDNC.System.Private.CoreLib.DNSpan<Byte>): Int32; overload;
    function BeginWrite(&array: TArray<Byte>; offset: Int32; count: Int32; asyncCallback: DDNC.System.Private.CoreLib.DNAsyncCallback; asyncState: DDNC.System.Private.CoreLib.DNObject): DDNC.System.Private.CoreLib.DNIAsyncResult;
    procedure EndWrite(asyncResult: DDNC.System.Private.CoreLib.DNIAsyncResult);
    procedure Write(&array: TArray<Byte>; offset: Int32; count: Int32); overload;
    procedure Write(buffer: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>); overload;
    procedure CopyTo(destination: DDNC.System.Private.CoreLib.DNStream; bufferSize: Int32); overload;
    function DisposeAsync: DDNC.System.Private.CoreLib.DNValueTask;
    function ReadAsync(&array: TArray<Byte>; offset: Int32; count: Int32; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNTask<Int32>; overload;
    function ReadAsync(buffer: DDNC.System.Private.CoreLib.DNMemory<Byte>; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNValueTask<Int32>; overload;
    function WriteAsync(&array: TArray<Byte>; offset: Int32; count: Int32; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNTask; overload;
    function WriteAsync(buffer: DDNC.System.Private.CoreLib.DNReadOnlyMemory<Byte>; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNValueTask; overload;
    function FlushAsync(cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNTask; overload;
    function CopyToAsync(destination: DDNC.System.Private.CoreLib.DNStream; bufferSize: Int32; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNTask; overload;
    function CopyToAsync(destination: DDNC.System.Private.CoreLib.DNStream): DDNC.System.Private.CoreLib.DNTask; overload;
    function CopyToAsync(destination: DDNC.System.Private.CoreLib.DNStream; bufferSize: Int32): DDNC.System.Private.CoreLib.DNTask; overload;
    function CopyToAsync(destination: DDNC.System.Private.CoreLib.DNStream; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNTask; overload;
    procedure CopyTo(destination: DDNC.System.Private.CoreLib.DNStream); overload;
    procedure Close;
    procedure Dispose;
    function FlushAsync: DDNC.System.Private.CoreLib.DNTask; overload;
    function ReadAsync(buffer: TArray<Byte>; offset: Int32; count: Int32): DDNC.System.Private.CoreLib.DNTask<Int32>; overload;
    function WriteAsync(buffer: TArray<Byte>; offset: Int32; count: Int32): DDNC.System.Private.CoreLib.DNTask; overload;
    procedure WriteByte(value: Byte);
    function GetLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function InitializeLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property CanRead: Boolean read get_CanRead;
    property CanWrite: Boolean read get_CanWrite;
    property CanSeek: Boolean read get_CanSeek;
    property Length: Int64 read get_Length;
    property Position: Int64 read get_Position write set_Position;
    property BaseStream: DDNC.System.Private.CoreLib.DNStream read get_BaseStream;
    property CanTimeout: Boolean read get_CanTimeout;
    property ReadTimeout: Int32 read get_ReadTimeout write set_ReadTimeout;
    property WriteTimeout: Int32 read get_WriteTimeout write set_WriteTimeout;
  end;

  TDNGZipStream = class(TDNGenericImport<DNGZipStreamClass, DNGZipStream>) end;


implementation


initialization
  LoadAssemblyModule('System.IO.Compression.dll', True, 'System.IO.Compression, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089');

finalization

end.
