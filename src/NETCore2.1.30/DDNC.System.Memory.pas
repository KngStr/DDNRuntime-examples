//----------------------------------------------------------------------------
//  System.Memory.dll: System.Memory, Version=4.1.0.0, Culture=neutral, PublicKeyToken=cc7b13ffcd2ddd51
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 2.1.30
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Memory
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Memory;

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

  //-------------namespace: System.Buffers----------------
  [DNTypeName('System.Buffers.OperationStatus')]
  DNOperationStatus = type Integer;
  DNOperationStatusHelper = record helper for DNOperationStatus
  public const
    Done = 0;
    DestinationTooSmall = 1;
    NeedMoreData = 2;
    InvalidData = 3;
  end;




type


{ declares }

  DNIBufferWriter<T> = interface; // type: System.Buffers.IBufferWriter`1, namespace: System.Buffers
  DNBinaryPrimitives = interface; // type: System.Buffers.Binary.BinaryPrimitives, namespace: System.Buffers.Binary
  DNBuffersExtensions = interface; // type: System.Buffers.BuffersExtensions, namespace: System.Buffers
  DNMemoryPool<T> = interface; // type: System.Buffers.MemoryPool`1, namespace: System.Buffers
  DNReadOnlySequenceSegment<T> = interface; // type: System.Buffers.ReadOnlySequenceSegment`1, namespace: System.Buffers
  DNBase64 = interface; // type: System.Buffers.Text.Base64, namespace: System.Buffers.Text
  DNUtf8Formatter = interface; // type: System.Buffers.Text.Utf8Formatter, namespace: System.Buffers.Text
  DNUtf8Parser = interface; // type: System.Buffers.Text.Utf8Parser, namespace: System.Buffers.Text
  DNSequenceMarshal = interface; // type: System.Runtime.InteropServices.SequenceMarshal, namespace: System.Runtime.InteropServices
  DNReadOnlySequence<T> = interface; // type: System.Buffers.ReadOnlySequence`1, namespace: System.Buffers
  DNReadOnlySequence_Enumerator<T> = interface; // type: System.Buffers.ReadOnlySequence`1+Enumerator, namespace: System.Buffers
  DNStandardFormat = interface; // type: System.Buffers.StandardFormat, namespace: System.Buffers
  DNSequencePosition = interface; // type: System.SequencePosition, namespace: System


{ objects }

  //-------------namespace: System.Buffers----------------
  [DNTypeName('System.Buffers.IBufferWriter`1')]
  DNIBufferWriter<T> = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{89472571-765F-32B2-945C-CEF8AE50EF89}']
  { methods } 

    procedure Advance(count: Int32);
    function GetMemory(sizeHint: Int32): DDNC.System.Private.CoreLib.DNMemory<T>;
    function GetSpan(sizeHint: Int32): DDNC.System.Private.CoreLib.DNSpan<T>;

  end;

  //-------------namespace: System.Buffers.Binary----------------
  DNBinaryPrimitivesClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{7D46DF60-C8FF-5575-BBB2-A60F7082B0B9}']
  { static methods } 

    {class} function ReverseEndianness(value: SByte): SByte; overload;
    {class} function ReverseEndianness(value: Int16): Int16; overload;
    {class} function ReverseEndianness(value: Int32): Int32; overload;
    {class} function ReverseEndianness(value: Int64): Int64; overload;
    {class} function ReverseEndianness(value: Byte): Byte; overload;
    {class} function ReverseEndianness(value: UInt16): UInt16; overload;
    {class} function ReverseEndianness(value: UInt32): UInt32; overload;
    {class} function ReverseEndianness(value: UInt64): UInt64; overload;
    {class} function ReadInt16BigEndian(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>): Int16;
    {class} function ReadInt32BigEndian(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>): Int32;
    {class} function ReadInt64BigEndian(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>): Int64;
    {class} function ReadUInt16BigEndian(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>): UInt16;
    {class} function ReadUInt32BigEndian(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>): UInt32;
    {class} function ReadUInt64BigEndian(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>): UInt64;
    {class} function TryReadInt16BigEndian(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: Int16): Boolean;
    {class} function TryReadInt32BigEndian(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: Int32): Boolean;
    {class} function TryReadInt64BigEndian(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: Int64): Boolean;
    {class} function TryReadUInt16BigEndian(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: UInt16): Boolean;
    {class} function TryReadUInt32BigEndian(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: UInt32): Boolean;
    {class} function TryReadUInt64BigEndian(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: UInt64): Boolean;
    {class} function ReadInt16LittleEndian(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>): Int16;
    {class} function ReadInt32LittleEndian(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>): Int32;
    {class} function ReadInt64LittleEndian(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>): Int64;
    {class} function ReadUInt16LittleEndian(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>): UInt16;
    {class} function ReadUInt32LittleEndian(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>): UInt32;
    {class} function ReadUInt64LittleEndian(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>): UInt64;
    {class} function TryReadInt16LittleEndian(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: Int16): Boolean;
    {class} function TryReadInt32LittleEndian(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: Int32): Boolean;
    {class} function TryReadInt64LittleEndian(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: Int64): Boolean;
    {class} function TryReadUInt16LittleEndian(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: UInt16): Boolean;
    {class} function TryReadUInt32LittleEndian(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: UInt32): Boolean;
    {class} function TryReadUInt64LittleEndian(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: UInt64): Boolean;
    {class} procedure WriteInt16BigEndian(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; value: Int16);
    {class} procedure WriteInt32BigEndian(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; value: Int32);
    {class} procedure WriteInt64BigEndian(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; value: Int64);
    {class} procedure WriteUInt16BigEndian(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; value: UInt16);
    {class} procedure WriteUInt32BigEndian(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; value: UInt32);
    {class} procedure WriteUInt64BigEndian(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; value: UInt64);
    {class} function TryWriteInt16BigEndian(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; value: Int16): Boolean;
    {class} function TryWriteInt32BigEndian(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; value: Int32): Boolean;
    {class} function TryWriteInt64BigEndian(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; value: Int64): Boolean;
    {class} function TryWriteUInt16BigEndian(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; value: UInt16): Boolean;
    {class} function TryWriteUInt32BigEndian(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; value: UInt32): Boolean;
    {class} function TryWriteUInt64BigEndian(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; value: UInt64): Boolean;
    {class} procedure WriteInt16LittleEndian(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; value: Int16);
    {class} procedure WriteInt32LittleEndian(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; value: Int32);
    {class} procedure WriteInt64LittleEndian(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; value: Int64);
    {class} procedure WriteUInt16LittleEndian(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; value: UInt16);
    {class} procedure WriteUInt32LittleEndian(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; value: UInt32);
    {class} procedure WriteUInt64LittleEndian(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; value: UInt64);
    {class} function TryWriteInt16LittleEndian(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; value: Int16): Boolean;
    {class} function TryWriteInt32LittleEndian(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; value: Int32): Boolean;
    {class} function TryWriteInt64LittleEndian(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; value: Int64): Boolean;
    {class} function TryWriteUInt16LittleEndian(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; value: UInt16): Boolean;
    {class} function TryWriteUInt32LittleEndian(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; value: UInt32): Boolean;
    {class} function TryWriteUInt64LittleEndian(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; value: UInt64): Boolean;

  end;

  [DNTypeName('System.Buffers.Binary.BinaryPrimitives')]
  DNBinaryPrimitives = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{D3DA83FC-AEFB-3D75-B19D-05E32D134D38}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNBinaryPrimitives = class(TDNGenericImport<DNBinaryPrimitivesClass, DNBinaryPrimitives>) end;

  //-------------namespace: System.Buffers----------------
  DNBuffersExtensionsClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{2E13FB7C-BB69-5690-B7F6-FE0001BAE82D}']
  end;

  [DNTypeName('System.Buffers.BuffersExtensions')]
  DNBuffersExtensions = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{3C217B5E-1CC2-3D87-8086-1EC8F08987B2}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNBuffersExtensions = class(TDNGenericImport<DNBuffersExtensionsClass, DNBuffersExtensions>) end;

  //-------------namespace: System.Buffers----------------
  DNMemoryPoolClass<T> = interface(DNObjectClass)
  ['{DE9A98B9-0673-5474-B492-A9EE6FF7438E}']
  { static getter & setter } 

    {class} function get_Shared: DNMemoryPool<T>;

  { static propertys } 

    {class} property Shared: DNMemoryPool<T> read get_Shared;
  end;

  [DNTypeName('System.Buffers.MemoryPool`1')]
  DNMemoryPool<T> = interface(DDNC.System.Private.CoreLib.DNIDisposable)
  ['{34DBD9C6-3122-3795-9929-3928115992E4}']
  { getters & setters } 

    function get_MaxBufferSize: Int32;

  { methods } 

    function Rent(minBufferSize: Int32): DDNC.System.Private.CoreLib.DNIMemoryOwner<T>;
    procedure Dispose;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property MaxBufferSize: Int32 read get_MaxBufferSize;
  end;

  TDNMemoryPool<T> = class(TDNGenericImport<DNMemoryPoolClass<T>, DNMemoryPool<T>>) end;

  //-------------namespace: System.Buffers----------------
  DNReadOnlySequenceSegmentClass<T> = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{133AAB4A-BE43-535A-9415-41537FEA4EA7}']
  end;

  [DNTypeName('System.Buffers.ReadOnlySequenceSegment`1')]
  DNReadOnlySequenceSegment<T> = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{01B18262-9DCF-318C-82DA-C07EF24125C4}']
  { getters & setters } 

    function get_Memory: DDNC.System.Private.CoreLib.DNReadOnlyMemory<T>;
    function get_Next: DNReadOnlySequenceSegment<T>;
    function get_RunningIndex: Int64;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Memory: DDNC.System.Private.CoreLib.DNReadOnlyMemory<T> read get_Memory;
    property Next: DNReadOnlySequenceSegment<T> read get_Next;
    property RunningIndex: Int64 read get_RunningIndex;
  end;

  TDNReadOnlySequenceSegment<T> = class(TDNGenericImport<DNReadOnlySequenceSegmentClass<T>, DNReadOnlySequenceSegment<T>>) end;

  //-------------namespace: System.Buffers.Text----------------
  DNBase64Class = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{02F9DB13-5150-5053-AF5B-39306CD2C3A0}']
  { static methods } 

    {class} function DecodeFromUtf8(utf8: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; bytes: DDNC.System.Private.CoreLib.DNSpan<Byte>; out bytesConsumed: Int32; out bytesWritten: Int32; isFinalBlock: Boolean): DNOperationStatus;
    {class} function GetMaxDecodedFromUtf8Length(length: Int32): Int32;
    {class} function DecodeFromUtf8InPlace(buffer: DDNC.System.Private.CoreLib.DNSpan<Byte>; out bytesWritten: Int32): DNOperationStatus;
    {class} function EncodeToUtf8(bytes: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; utf8: DDNC.System.Private.CoreLib.DNSpan<Byte>; out bytesConsumed: Int32; out bytesWritten: Int32; isFinalBlock: Boolean): DNOperationStatus;
    {class} function GetMaxEncodedToUtf8Length(length: Int32): Int32;
    {class} function EncodeToUtf8InPlace(buffer: DDNC.System.Private.CoreLib.DNSpan<Byte>; dataLength: Int32; out bytesWritten: Int32): DNOperationStatus;

  end;

  [DNTypeName('System.Buffers.Text.Base64')]
  DNBase64 = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{EB8183F9-D2B9-34AA-8BC4-084BB36E2E6E}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNBase64 = class(TDNGenericImport<DNBase64Class, DNBase64>) end;

  //-------------namespace: System.Buffers.Text----------------
  DNUtf8FormatterClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{CF82E5C9-F4EB-52F0-9928-13ED05AA78AB}']
  { static methods } 

    {class} function TryFormat(value: Boolean; destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; out bytesWritten: Int32; format: DNStandardFormat): Boolean; overload;
    {class} function TryFormat(value: DDNC.System.Private.CoreLib.DNDateTimeOffset; destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; out bytesWritten: Int32; format: DNStandardFormat): Boolean; overload;
    {class} function TryFormat(value: DDNC.System.Private.CoreLib.DNDateTime; destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; out bytesWritten: Int32; format: DNStandardFormat): Boolean; overload;
    {class} function TryFormat(value: DDNC.System.Private.CoreLib.DNDecimal; destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; out bytesWritten: Int32; format: DNStandardFormat): Boolean; overload;
    {class} function TryFormat(value: Double; destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; out bytesWritten: Int32; format: DNStandardFormat): Boolean; overload;
    {class} function TryFormat(value: Single; destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; out bytesWritten: Int32; format: DNStandardFormat): Boolean; overload;
    {class} function TryFormat(value: DDNC.System.Private.CoreLib.DNGuid; destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; out bytesWritten: Int32; format: DNStandardFormat): Boolean; overload;
    {class} function TryFormat(value: Byte; destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; out bytesWritten: Int32; format: DNStandardFormat): Boolean; overload;
    {class} function TryFormat(value: SByte; destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; out bytesWritten: Int32; format: DNStandardFormat): Boolean; overload;
    {class} function TryFormat(value: UInt16; destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; out bytesWritten: Int32; format: DNStandardFormat): Boolean; overload;
    {class} function TryFormat(value: Int16; destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; out bytesWritten: Int32; format: DNStandardFormat): Boolean; overload;
    {class} function TryFormat(value: UInt32; destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; out bytesWritten: Int32; format: DNStandardFormat): Boolean; overload;
    {class} function TryFormat(value: Int32; destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; out bytesWritten: Int32; format: DNStandardFormat): Boolean; overload;
    {class} function TryFormat(value: UInt64; destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; out bytesWritten: Int32; format: DNStandardFormat): Boolean; overload;
    {class} function TryFormat(value: Int64; destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; out bytesWritten: Int32; format: DNStandardFormat): Boolean; overload;
    {class} function TryFormat(value: DDNC.System.Private.CoreLib.DNTimeSpan; destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; out bytesWritten: Int32; format: DNStandardFormat): Boolean; overload;

  end;

  [DNTypeName('System.Buffers.Text.Utf8Formatter')]
  DNUtf8Formatter = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{F25CAB1C-3213-3778-92F1-7B6CA1C7C5FC}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNUtf8Formatter = class(TDNGenericImport<DNUtf8FormatterClass, DNUtf8Formatter>) end;

  //-------------namespace: System.Buffers.Text----------------
  DNUtf8ParserClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{3D1E393E-BD5B-57B0-9B4E-05299317D19D}']
  { static methods } 

    {class} function TryParse(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: Boolean; out bytesConsumed: Int32; standardFormat: Char): Boolean; overload;
    {class} function TryParse(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: DDNC.System.Private.CoreLib.DNDateTime; out bytesConsumed: Int32; standardFormat: Char): Boolean; overload;
    {class} function TryParse(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: DDNC.System.Private.CoreLib.DNDateTimeOffset; out bytesConsumed: Int32; standardFormat: Char): Boolean; overload;
    {class} function TryParse(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: DDNC.System.Private.CoreLib.DNDecimal; out bytesConsumed: Int32; standardFormat: Char): Boolean; overload;
    {class} function TryParse(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: Single; out bytesConsumed: Int32; standardFormat: Char): Boolean; overload;
    {class} function TryParse(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: Double; out bytesConsumed: Int32; standardFormat: Char): Boolean; overload;
    {class} function TryParse(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: DDNC.System.Private.CoreLib.DNGuid; out bytesConsumed: Int32; standardFormat: Char): Boolean; overload;
    {class} function TryParse(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: SByte; out bytesConsumed: Int32; standardFormat: Char): Boolean; overload;
    {class} function TryParse(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: Int16; out bytesConsumed: Int32; standardFormat: Char): Boolean; overload;
    {class} function TryParse(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: Int32; out bytesConsumed: Int32; standardFormat: Char): Boolean; overload;
    {class} function TryParse(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: Int64; out bytesConsumed: Int32; standardFormat: Char): Boolean; overload;
    {class} function TryParse(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: Byte; out bytesConsumed: Int32; standardFormat: Char): Boolean; overload;
    {class} function TryParse(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: UInt16; out bytesConsumed: Int32; standardFormat: Char): Boolean; overload;
    {class} function TryParse(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: UInt32; out bytesConsumed: Int32; standardFormat: Char): Boolean; overload;
    {class} function TryParse(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: UInt64; out bytesConsumed: Int32; standardFormat: Char): Boolean; overload;
    {class} function TryParse(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; out value: DDNC.System.Private.CoreLib.DNTimeSpan; out bytesConsumed: Int32; standardFormat: Char): Boolean; overload;

  end;

  [DNTypeName('System.Buffers.Text.Utf8Parser')]
  DNUtf8Parser = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{E9CD9680-67A3-3894-8A63-D95963034923}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNUtf8Parser = class(TDNGenericImport<DNUtf8ParserClass, DNUtf8Parser>) end;

  //-------------namespace: System.Runtime.InteropServices----------------
  DNSequenceMarshalClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{83202231-82A0-556E-BD50-E387EDB826E0}']
  end;

  [DNTypeName('System.Runtime.InteropServices.SequenceMarshal')]
  DNSequenceMarshal = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{CFF057BE-00B8-303A-9C0D-CED1465A54AD}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNSequenceMarshal = class(TDNGenericImport<DNSequenceMarshalClass, DNSequenceMarshal>) end;

  //-------------namespace: System.Buffers----------------
  DNReadOnlySequenceClass<T> = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{24DFEA2A-9D51-5C56-B84C-F00D7F8B408D}']
  { constructors } 

    {class} function init(startSegment: DNReadOnlySequenceSegment<T>; startIndex: Int32; endSegment: DNReadOnlySequenceSegment<T>; endIndex: Int32): DNReadOnlySequence<T>; overload;
    {class} function init(&array: TArray<T>): DNReadOnlySequence<T>; overload;
    {class} function init(&array: TArray<T>; start: Int32; length: Int32): DNReadOnlySequence<T>; overload;
    {class} function init(memory: DDNC.System.Private.CoreLib.DNReadOnlyMemory<T>): DNReadOnlySequence<T>; overload;

  { static fields getter & setter } 

   function __fakeFieldGet_Empty: DNReadOnlySequence<T>;

  { static fields } 

    {class} property Empty: DNReadOnlySequence<T> read __fakeFieldGet_Empty;

  end;

  [DNTypeName('System.Buffers.ReadOnlySequence`1')]
  DNReadOnlySequence<T> = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{85DCDFCC-8858-341E-BF83-AE80FFED6B24}']
  { getters & setters } 

    function get_Length: Int64;
    function get_IsEmpty: Boolean;
    function get_IsSingleSegment: Boolean;
    function get_First: DDNC.System.Private.CoreLib.DNReadOnlyMemory<T>;
    function get_Start: DNSequencePosition;
    function get_End: DNSequencePosition;

  { methods } 

    function Slice(start: Int64; length: Int64): DNReadOnlySequence<T>; overload;
    function Slice(start: Int64; &end: DNSequencePosition): DNReadOnlySequence<T>; overload;
    function Slice(start: DNSequencePosition; length: Int64): DNReadOnlySequence<T>; overload;
    function Slice(start: Int32; length: Int32): DNReadOnlySequence<T>; overload;
    function Slice(start: Int32; &end: DNSequencePosition): DNReadOnlySequence<T>; overload;
    function Slice(start: DNSequencePosition; length: Int32): DNReadOnlySequence<T>; overload;
    function Slice(start: DNSequencePosition; &end: DNSequencePosition): DNReadOnlySequence<T>; overload;
    function Slice(start: DNSequencePosition): DNReadOnlySequence<T>; overload;
    function Slice(start: Int64): DNReadOnlySequence<T>; overload;
    function ToString: string;
    function GetEnumerator: DNReadOnlySequence_Enumerator<T>;
    function GetPosition(offset: Int64): DNSequencePosition; overload;
    function GetPosition(offset: Int64; origin: DNSequencePosition): DNSequencePosition; overload;
    function TryGet(out position: DNSequencePosition; out memory: DDNC.System.Private.CoreLib.DNReadOnlyMemory<T>; advance: Boolean): Boolean;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Length: Int64 read get_Length;
    property IsEmpty: Boolean read get_IsEmpty;
    property IsSingleSegment: Boolean read get_IsSingleSegment;
    property First: DDNC.System.Private.CoreLib.DNReadOnlyMemory<T> read get_First;
    property Start: DNSequencePosition read get_Start;
    property &End: DNSequencePosition read get_End;
  end;

  TDNReadOnlySequence<T> = class(TDNGenericImport<DNReadOnlySequenceClass<T>, DNReadOnlySequence<T>>) end;

  //-------------namespace: System.Buffers----------------
  DNReadOnlySequence_EnumeratorClass<T> = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{8F4487F1-EDC3-5502-84FF-C14FA7F5C87C}']
  { constructors } 

    {class} function init(out sequence: DNReadOnlySequence<T>): DNReadOnlySequence_Enumerator<T>;

  end;

  [DNTypeName('System.Buffers.ReadOnlySequence`1+Enumerator')]
  DNReadOnlySequence_Enumerator<T> = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{C2EF19D7-C5CC-3ED5-ABF3-1E820BD013FD}']
  { getters & setters } 

    function get_Current: DDNC.System.Private.CoreLib.DNReadOnlyMemory<T>;

  { methods } 

    function MoveNext: Boolean;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Current: DDNC.System.Private.CoreLib.DNReadOnlyMemory<T> read get_Current;
  end;

  TDNReadOnlySequence_Enumerator<T> = class(TDNGenericImport<DNReadOnlySequence_EnumeratorClass<T>, DNReadOnlySequence_Enumerator<T>>) end;

  //-------------namespace: System.Buffers----------------
  DNStandardFormatClass = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{F3E3A35E-B46D-5EDF-A5AF-94A7B7DD4709}']
  { constructors } 

    {class} function init(symbol: Char; precision: Byte): DNStandardFormat;

  { static methods } 

    {class} function Parse(format: DDNC.System.Private.CoreLib.DNReadOnlySpan<Char>): DNStandardFormat; overload;
    {class} function Parse(format: string): DNStandardFormat; overload;

  end;

  [DNTypeName('System.Buffers.StandardFormat')]
  DNStandardFormat = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{1CC44671-32DC-3B22-A90D-7D4AA9504321}']
  { getters & setters } 

    function get_Symbol: Char;
    function get_Precision: Byte;
    function get_HasPrecision: Boolean;
    function get_IsDefault: Boolean;

  { methods } 

    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean; overload;
    function GetHashCode: Int32;
    function Equals(other: DNStandardFormat): Boolean; overload;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Symbol: Char read get_Symbol;
    property Precision: Byte read get_Precision;
    property HasPrecision: Boolean read get_HasPrecision;
    property IsDefault: Boolean read get_IsDefault;
  end;

  TDNStandardFormat = class(TDNGenericImport<DNStandardFormatClass, DNStandardFormat>)
  public const
   NoPrecision = 255;
   MaxPrecision = 99;
  end;

  //-------------namespace: System----------------
  DNSequencePositionClass = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{9426E1A3-60BF-577C-A1F7-145C60AE8C38}']
  { constructors } 

    {class} function init(&object: DDNC.System.Private.CoreLib.DNObject; integer: Int32): DNSequencePosition;

  end;

  [DNTypeName('System.SequencePosition')]
  DNSequencePosition = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{FEF2F4DA-AE5F-388D-9518-A52C1DCED66B}']
  { methods } 

    function GetObject: DDNC.System.Private.CoreLib.DNObject;
    function GetInteger: Int32;
    function Equals(other: DNSequencePosition): Boolean; overload;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean; overload;
    function GetHashCode: Int32;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNSequencePosition = class(TDNGenericImport<DNSequencePositionClass, DNSequencePosition>) end;


implementation


initialization
  LoadAssemblyModule('System.Memory, Version=4.1.0.0, Culture=neutral, PublicKeyToken=cc7b13ffcd2ddd51');

finalization

end.
