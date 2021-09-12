//----------------------------------------------------------------------------
//  System.Security.Cryptography.Primitives.dll: System.Security.Cryptography.Primitives, Version=4.1.1.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 2.1.30
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Security.Cryptography.Primitives
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Security.Cryptography.Primitives;

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

  //-------------namespace: System.Security.Cryptography----------------
  [DNTypeName('System.Security.Cryptography.CipherMode')]
  DNCipherMode = type Integer;
  DNCipherModeHelper = record helper for DNCipherMode
  public const
    CBC = 1;
    ECB = 2;
    OFB = 3;
    CFB = 4;
    CTS = 5;
  end;


  //-------------namespace: System.Security.Cryptography----------------
  [DNTypeName('System.Security.Cryptography.CryptoStreamMode')]
  DNCryptoStreamMode = type Integer;
  DNCryptoStreamModeHelper = record helper for DNCryptoStreamMode
  public const
    Read = 0;
    Write = 1;
  end;


  //-------------namespace: System.Security.Cryptography----------------
  [DNTypeName('System.Security.Cryptography.PaddingMode')]
  DNPaddingMode = type Integer;
  DNPaddingModeHelper = record helper for DNPaddingMode
  public const
    None = 1;
    PKCS7 = 2;
    Zeros = 3;
    ANSIX923 = 4;
    ISO10126 = 5;
  end;




type


{ declares }

  DNICryptoTransform = interface; // type: System.Security.Cryptography.ICryptoTransform, namespace: System.Security.Cryptography
  DNCryptographicUnexpectedOperationException = interface; // type: System.Security.Cryptography.CryptographicUnexpectedOperationException, namespace: System.Security.Cryptography
  DNCryptoStream = interface; // type: System.Security.Cryptography.CryptoStream, namespace: System.Security.Cryptography
  DNAsymmetricAlgorithm = interface; // type: System.Security.Cryptography.AsymmetricAlgorithm, namespace: System.Security.Cryptography
  DNCryptographicOperations = interface; // type: System.Security.Cryptography.CryptographicOperations, namespace: System.Security.Cryptography
  DNHashAlgorithm = interface; // type: System.Security.Cryptography.HashAlgorithm, namespace: System.Security.Cryptography
  DNKeyedHashAlgorithm = interface; // type: System.Security.Cryptography.KeyedHashAlgorithm, namespace: System.Security.Cryptography
  DNHMAC = interface; // type: System.Security.Cryptography.HMAC, namespace: System.Security.Cryptography
  DNKeySizes = interface; // type: System.Security.Cryptography.KeySizes, namespace: System.Security.Cryptography
  DNSymmetricAlgorithm = interface; // type: System.Security.Cryptography.SymmetricAlgorithm, namespace: System.Security.Cryptography
  DNHashAlgorithmName = interface; // type: System.Security.Cryptography.HashAlgorithmName, namespace: System.Security.Cryptography


{ objects }

  //-------------namespace: System.Security.Cryptography----------------
  [DNTypeName('System.Security.Cryptography.ICryptoTransform')]
  DNICryptoTransform = interface(DDNC.System.Private.CoreLib.DNIDisposable)
  ['{8ABAD867-F515-3CF6-BB62-5F0C88B3BB11}']
  { getters & setters } 

    function get_InputBlockSize: Int32;
    function get_OutputBlockSize: Int32;
    function get_CanTransformMultipleBlocks: Boolean;
    function get_CanReuseTransform: Boolean;

  { methods } 

    function TransformBlock(inputBuffer: TArray<Byte>; inputOffset: Int32; inputCount: Int32; outputBuffer: TArray<Byte>; outputOffset: Int32): Int32;
    function TransformFinalBlock(inputBuffer: TArray<Byte>; inputOffset: Int32; inputCount: Int32): TArray<Byte>;

  { propertys } 

    property InputBlockSize: Int32 read get_InputBlockSize;
    property OutputBlockSize: Int32 read get_OutputBlockSize;
    property CanTransformMultipleBlocks: Boolean read get_CanTransformMultipleBlocks;
    property CanReuseTransform: Boolean read get_CanReuseTransform;
  end;

  //-------------namespace: System.Security.Cryptography----------------
  DNCryptographicUnexpectedOperationExceptionClass = interface(DDNC.System.Private.CoreLib.DNCryptographicExceptionClass)
  ['{614446A5-77DC-5450-93DB-185296656359}']
  { constructors } 

    {class} function init: DNCryptographicUnexpectedOperationException; overload;
    {class} function init(message: string): DNCryptographicUnexpectedOperationException; overload;
    {class} function init(message: string; inner: DDNC.System.Private.CoreLib.DNException): DNCryptographicUnexpectedOperationException; overload;
    {class} function init(format: string; insert: string): DNCryptographicUnexpectedOperationException; overload;

  end;

  [DNTypeName('System.Security.Cryptography.CryptographicUnexpectedOperationException')]
  DNCryptographicUnexpectedOperationException = interface(DDNC.System.Private.CoreLib.DNCryptographicException)
  ['{70E23323-BE4B-3B74-9226-0A19F0243CD0}']
  { getters & setters } 

    function get_Message: string;
    function get_Data: DDNC.System.Private.CoreLib.DNIDictionary;
    function get_InnerException: DDNC.System.Private.CoreLib.DNException;
    function get_TargetSite: DDNC.System.Private.CoreLib.DNMethodBase;
    function get_StackTrace: string;
    function get_HelpLink: string;
    procedure set_HelpLink(value: string);
    function get_Source: string;
    procedure set_Source(value: string);
    function get_HResult: Int32;

  { methods } 

    function GetBaseException: DDNC.System.Private.CoreLib.DNException;
    function ToString: string;
    procedure GetObjectData(info: DDNC.System.Private.CoreLib.DNSerializationInfo; context: DDNC.System.Private.CoreLib.DNStreamingContext);
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Message: string read get_Message;
    property Data: DDNC.System.Private.CoreLib.DNIDictionary read get_Data;
    property InnerException: DDNC.System.Private.CoreLib.DNException read get_InnerException;
    property TargetSite: DDNC.System.Private.CoreLib.DNMethodBase read get_TargetSite;
    property StackTrace: string read get_StackTrace;
    property HelpLink: string read get_HelpLink write set_HelpLink;
    property Source: string read get_Source write set_Source;
    property HResult: Int32 read get_HResult;
  end;

  TDNCryptographicUnexpectedOperationException = class(TDNGenericImport<DNCryptographicUnexpectedOperationExceptionClass, DNCryptographicUnexpectedOperationException>) end;

  //-------------namespace: System.Security.Cryptography----------------
  DNCryptoStreamClass = interface(DDNC.System.Private.CoreLib.DNStreamClass)
  ['{7C104A0C-9FC2-5890-9991-056E59D40043}']
  { constructors } 

    {class} function init(stream: DDNC.System.Private.CoreLib.DNStream; transform: DNICryptoTransform; mode: DNCryptoStreamMode): DNCryptoStream; overload;
    {class} function init(stream: DDNC.System.Private.CoreLib.DNStream; transform: DNICryptoTransform; mode: DNCryptoStreamMode; leaveOpen: Boolean): DNCryptoStream; overload;

  end;

  [DNTypeName('System.Security.Cryptography.CryptoStream')]
  DNCryptoStream = interface(DDNC.System.Private.CoreLib.DNStream)
  ['{607C8F04-6139-3F57-9558-4B3DCF0C69BA}']
  { getters & setters } 

    function get_CanRead: Boolean;
    function get_CanSeek: Boolean;
    function get_CanWrite: Boolean;
    function get_Length: Int64;
    function get_Position: Int64;
    procedure set_Position(value: Int64);
    function get_HasFlushedFinalBlock: Boolean;
    function get_CanTimeout: Boolean;
    function get_ReadTimeout: Int32;
    procedure set_ReadTimeout(value: Int32);
    function get_WriteTimeout: Int32;
    procedure set_WriteTimeout(value: Int32);

  { methods } 

    procedure FlushFinalBlock;
    procedure Flush;
    function FlushAsync(cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNTask; overload;
    function Seek(offset: Int64; origin: DDNC.System.Private.CoreLib.DNSeekOrigin): Int64;
    procedure SetLength(value: Int64);
    function ReadAsync(buffer: TArray<Byte>; offset: Int32; count: Int32; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNTask<Int32>; overload;
    function BeginRead(buffer: TArray<Byte>; offset: Int32; count: Int32; callback: DDNC.System.Private.CoreLib.DNAsyncCallback; state: DDNC.System.Private.CoreLib.DNObject): DDNC.System.Private.CoreLib.DNIAsyncResult;
    function EndRead(asyncResult: DDNC.System.Private.CoreLib.DNIAsyncResult): Int32;
    function ReadByte: Int32;
    procedure WriteByte(value: Byte);
    function Read(buffer: TArray<Byte>; offset: Int32; count: Int32): Int32; overload;
    function WriteAsync(buffer: TArray<Byte>; offset: Int32; count: Int32; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNTask; overload;
    function BeginWrite(buffer: TArray<Byte>; offset: Int32; count: Int32; callback: DDNC.System.Private.CoreLib.DNAsyncCallback; state: DDNC.System.Private.CoreLib.DNObject): DDNC.System.Private.CoreLib.DNIAsyncResult;
    procedure EndWrite(asyncResult: DDNC.System.Private.CoreLib.DNIAsyncResult);
    procedure Write(buffer: TArray<Byte>; offset: Int32; count: Int32); overload;
    procedure Clear;
    function CopyToAsync(destination: DDNC.System.Private.CoreLib.DNStream): DDNC.System.Private.CoreLib.DNTask; overload;
    function CopyToAsync(destination: DDNC.System.Private.CoreLib.DNStream; bufferSize: Int32): DDNC.System.Private.CoreLib.DNTask; overload;
    function CopyToAsync(destination: DDNC.System.Private.CoreLib.DNStream; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNTask; overload;
    function CopyToAsync(destination: DDNC.System.Private.CoreLib.DNStream; bufferSize: Int32; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNTask; overload;
    procedure CopyTo(destination: DDNC.System.Private.CoreLib.DNStream); overload;
    procedure CopyTo(destination: DDNC.System.Private.CoreLib.DNStream; bufferSize: Int32); overload;
    procedure Close;
    procedure Dispose;
    function FlushAsync: DDNC.System.Private.CoreLib.DNTask; overload;
    function ReadAsync(buffer: TArray<Byte>; offset: Int32; count: Int32): DDNC.System.Private.CoreLib.DNTask<Int32>; overload;
    function ReadAsync(buffer: DDNC.System.Private.CoreLib.DNMemory<Byte>; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNValueTask<Int32>; overload;
    function WriteAsync(buffer: TArray<Byte>; offset: Int32; count: Int32): DDNC.System.Private.CoreLib.DNTask; overload;
    function WriteAsync(buffer: DDNC.System.Private.CoreLib.DNReadOnlyMemory<Byte>; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNValueTask; overload;
    function Read(buffer: DDNC.System.Private.CoreLib.DNSpan<Byte>): Int32; overload;
    procedure Write(buffer: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>); overload;
    function GetLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function InitializeLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property CanRead: Boolean read get_CanRead;
    property CanSeek: Boolean read get_CanSeek;
    property CanWrite: Boolean read get_CanWrite;
    property Length: Int64 read get_Length;
    property Position: Int64 read get_Position write set_Position;
    property HasFlushedFinalBlock: Boolean read get_HasFlushedFinalBlock;
    property CanTimeout: Boolean read get_CanTimeout;
    property ReadTimeout: Int32 read get_ReadTimeout write set_ReadTimeout;
    property WriteTimeout: Int32 read get_WriteTimeout write set_WriteTimeout;
  end;

  TDNCryptoStream = class(TDNGenericImport<DNCryptoStreamClass, DNCryptoStream>) end;

  //-------------namespace: System.Security.Cryptography----------------
  DNAsymmetricAlgorithmClass = interface(DNObjectClass)
  ['{463D60D8-AA58-5F2D-91B6-E111157EEA2B}']
  { static methods } 

    {class} function Create: DNAsymmetricAlgorithm; overload;
    {class} function Create(algName: string): DNAsymmetricAlgorithm; overload;

  end;

  [DNTypeName('System.Security.Cryptography.AsymmetricAlgorithm')]
  DNAsymmetricAlgorithm = interface(DDNC.System.Private.CoreLib.DNIDisposable)
  ['{AA405156-05A7-311E-9C2A-FD6498BB69FA}']
  { getters & setters } 

    function get_KeySize: Int32;
    procedure set_KeySize(value: Int32);
    function get_LegalKeySizes: TArray<DNKeySizes>;
    function get_SignatureAlgorithm: string;
    function get_KeyExchangeAlgorithm: string;

  { methods } 

    procedure FromXmlString(xmlString: string);
    function ToXmlString(includePrivateParameters: Boolean): string;
    procedure Clear;
    procedure Dispose;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property KeySize: Int32 read get_KeySize write set_KeySize;
    property LegalKeySizes: TArray<DNKeySizes> read get_LegalKeySizes;
    property SignatureAlgorithm: string read get_SignatureAlgorithm;
    property KeyExchangeAlgorithm: string read get_KeyExchangeAlgorithm;
  end;

  TDNAsymmetricAlgorithm = class(TDNGenericImport<DNAsymmetricAlgorithmClass, DNAsymmetricAlgorithm>) end;

  //-------------namespace: System.Security.Cryptography----------------
  DNCryptographicOperationsClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{2FBA6F01-4797-5883-8E7C-82E2091DC4F0}']
  { static methods } 

    {class} function FixedTimeEquals(left: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; right: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>): Boolean;
    {class} procedure ZeroMemory(buffer: DDNC.System.Private.CoreLib.DNSpan<Byte>);

  end;

  [DNTypeName('System.Security.Cryptography.CryptographicOperations')]
  DNCryptographicOperations = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{F3831CE4-479D-36B0-B64B-46E161856E5D}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNCryptographicOperations = class(TDNGenericImport<DNCryptographicOperationsClass, DNCryptographicOperations>) end;

  //-------------namespace: System.Security.Cryptography----------------
  DNHashAlgorithmClass = interface(DNObjectClass)
  ['{9A091E9C-46CB-5B65-BBD1-618C5D03633D}']
  { static methods } 

    {class} function Create: DNHashAlgorithm; overload;
    {class} function Create(hashName: string): DNHashAlgorithm; overload;

  end;

  [DNTypeName('System.Security.Cryptography.HashAlgorithm')]
  DNHashAlgorithm = interface(DDNC.System.Private.CoreLib.DNIDisposable)
  ['{4D674089-74B3-35BE-97E2-D1CB9C91AA7D}']
  { getters & setters } 

    function get_HashSize: Int32;
    function get_Hash: TArray<Byte>;
    function get_InputBlockSize: Int32;
    function get_OutputBlockSize: Int32;
    function get_CanTransformMultipleBlocks: Boolean;
    function get_CanReuseTransform: Boolean;

  { methods } 

    function ComputeHash(buffer: TArray<Byte>): TArray<Byte>; overload;
    function TryComputeHash(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; out bytesWritten: Int32): Boolean;
    function ComputeHash(buffer: TArray<Byte>; offset: Int32; count: Int32): TArray<Byte>; overload;
    function ComputeHash(inputStream: DDNC.System.Private.CoreLib.DNStream): TArray<Byte>; overload;
    procedure Dispose;
    procedure Clear;
    function TransformBlock(inputBuffer: TArray<Byte>; inputOffset: Int32; inputCount: Int32; outputBuffer: TArray<Byte>; outputOffset: Int32): Int32;
    function TransformFinalBlock(inputBuffer: TArray<Byte>; inputOffset: Int32; inputCount: Int32): TArray<Byte>;
    procedure Initialize;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property HashSize: Int32 read get_HashSize;
    property Hash: TArray<Byte> read get_Hash;
    property InputBlockSize: Int32 read get_InputBlockSize;
    property OutputBlockSize: Int32 read get_OutputBlockSize;
    property CanTransformMultipleBlocks: Boolean read get_CanTransformMultipleBlocks;
    property CanReuseTransform: Boolean read get_CanReuseTransform;
  end;

  TDNHashAlgorithm = class(TDNGenericImport<DNHashAlgorithmClass, DNHashAlgorithm>) end;

  //-------------namespace: System.Security.Cryptography----------------
  DNKeyedHashAlgorithmClass = interface(DNHashAlgorithmClass)
  ['{C3D0EFDB-0F26-57DE-AA04-131B87094FDD}']
  { static methods } 

    {class} function Create: DNKeyedHashAlgorithm; overload;
    {class} function Create(algName: string): DNKeyedHashAlgorithm; overload;

  end;

  [DNTypeName('System.Security.Cryptography.KeyedHashAlgorithm')]
  DNKeyedHashAlgorithm = interface(DNHashAlgorithm)
  ['{73714943-5A5D-3D11-AE1E-94D1AFF31A78}']
  { getters & setters } 

    function get_Key: TArray<Byte>;
    procedure set_Key(value: TArray<Byte>);
    function get_HashSize: Int32;
    function get_Hash: TArray<Byte>;
    function get_InputBlockSize: Int32;
    function get_OutputBlockSize: Int32;
    function get_CanTransformMultipleBlocks: Boolean;
    function get_CanReuseTransform: Boolean;

  { methods } 

    function ComputeHash(buffer: TArray<Byte>): TArray<Byte>; overload;
    function TryComputeHash(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; out bytesWritten: Int32): Boolean;
    function ComputeHash(buffer: TArray<Byte>; offset: Int32; count: Int32): TArray<Byte>; overload;
    function ComputeHash(inputStream: DDNC.System.Private.CoreLib.DNStream): TArray<Byte>; overload;
    procedure Dispose;
    procedure Clear;
    function TransformBlock(inputBuffer: TArray<Byte>; inputOffset: Int32; inputCount: Int32; outputBuffer: TArray<Byte>; outputOffset: Int32): Int32;
    function TransformFinalBlock(inputBuffer: TArray<Byte>; inputOffset: Int32; inputCount: Int32): TArray<Byte>;
    procedure Initialize;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Key: TArray<Byte> read get_Key write set_Key;
    property HashSize: Int32 read get_HashSize;
    property Hash: TArray<Byte> read get_Hash;
    property InputBlockSize: Int32 read get_InputBlockSize;
    property OutputBlockSize: Int32 read get_OutputBlockSize;
    property CanTransformMultipleBlocks: Boolean read get_CanTransformMultipleBlocks;
    property CanReuseTransform: Boolean read get_CanReuseTransform;
  end;

  TDNKeyedHashAlgorithm = class(TDNGenericImport<DNKeyedHashAlgorithmClass, DNKeyedHashAlgorithm>) end;

  //-------------namespace: System.Security.Cryptography----------------
  DNHMACClass = interface(DNKeyedHashAlgorithmClass)
  ['{E8A227A6-13E3-54AA-A67C-4B3D51EC1C8C}']
  { static methods } 

    {class} function Create: DNHMAC; overload;
    {class} function Create(algorithmName: string): DNHMAC; overload;

  end;

  [DNTypeName('System.Security.Cryptography.HMAC')]
  DNHMAC = interface(DNKeyedHashAlgorithm)
  ['{6352B772-958B-346D-AD0B-0A66CD92243E}']
  { getters & setters } 

    function get_HashName: string;
    procedure set_HashName(value: string);
    function get_Key: TArray<Byte>;
    procedure set_Key(value: TArray<Byte>);
    function get_HashSize: Int32;
    function get_Hash: TArray<Byte>;
    function get_InputBlockSize: Int32;
    function get_OutputBlockSize: Int32;
    function get_CanTransformMultipleBlocks: Boolean;
    function get_CanReuseTransform: Boolean;

  { methods } 

    procedure Initialize;
    function ComputeHash(buffer: TArray<Byte>): TArray<Byte>; overload;
    function TryComputeHash(source: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; out bytesWritten: Int32): Boolean;
    function ComputeHash(buffer: TArray<Byte>; offset: Int32; count: Int32): TArray<Byte>; overload;
    function ComputeHash(inputStream: DDNC.System.Private.CoreLib.DNStream): TArray<Byte>; overload;
    procedure Dispose;
    procedure Clear;
    function TransformBlock(inputBuffer: TArray<Byte>; inputOffset: Int32; inputCount: Int32; outputBuffer: TArray<Byte>; outputOffset: Int32): Int32;
    function TransformFinalBlock(inputBuffer: TArray<Byte>; inputOffset: Int32; inputCount: Int32): TArray<Byte>;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property HashName: string read get_HashName write set_HashName;
    property Key: TArray<Byte> read get_Key write set_Key;
    property HashSize: Int32 read get_HashSize;
    property Hash: TArray<Byte> read get_Hash;
    property InputBlockSize: Int32 read get_InputBlockSize;
    property OutputBlockSize: Int32 read get_OutputBlockSize;
    property CanTransformMultipleBlocks: Boolean read get_CanTransformMultipleBlocks;
    property CanReuseTransform: Boolean read get_CanReuseTransform;
  end;

  TDNHMAC = class(TDNGenericImport<DNHMACClass, DNHMAC>) end;

  //-------------namespace: System.Security.Cryptography----------------
  DNKeySizesClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{3A8D9A9E-A8DA-51D4-B49C-0868408DAB2E}']
  { constructors } 

    {class} function init(minSize: Int32; maxSize: Int32; skipSize: Int32): DNKeySizes;

  end;

  [DNTypeName('System.Security.Cryptography.KeySizes')]
  DNKeySizes = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{F0F2A272-E63B-39FD-A7BE-B0E9EAF75AA1}']
  { getters & setters } 

    function get_MinSize: Int32;
    function get_MaxSize: Int32;
    function get_SkipSize: Int32;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property MinSize: Int32 read get_MinSize;
    property MaxSize: Int32 read get_MaxSize;
    property SkipSize: Int32 read get_SkipSize;
  end;

  TDNKeySizes = class(TDNGenericImport<DNKeySizesClass, DNKeySizes>) end;

  //-------------namespace: System.Security.Cryptography----------------
  DNSymmetricAlgorithmClass = interface(DNObjectClass)
  ['{2FF59906-7BCB-583A-9123-312E7980D0CB}']
  { static methods } 

    {class} function Create: DNSymmetricAlgorithm; overload;
    {class} function Create(algName: string): DNSymmetricAlgorithm; overload;

  end;

  [DNTypeName('System.Security.Cryptography.SymmetricAlgorithm')]
  DNSymmetricAlgorithm = interface(DDNC.System.Private.CoreLib.DNIDisposable)
  ['{C263D3AF-4157-37ED-A7C2-6B8239DA8BDB}']
  { getters & setters } 

    function get_FeedbackSize: Int32;
    procedure set_FeedbackSize(value: Int32);
    function get_BlockSize: Int32;
    procedure set_BlockSize(value: Int32);
    function get_IV: TArray<Byte>;
    procedure set_IV(value: TArray<Byte>);
    function get_Key: TArray<Byte>;
    procedure set_Key(value: TArray<Byte>);
    function get_KeySize: Int32;
    procedure set_KeySize(value: Int32);
    function get_LegalBlockSizes: TArray<DNKeySizes>;
    function get_LegalKeySizes: TArray<DNKeySizes>;
    function get_Mode: DNCipherMode;
    procedure set_Mode(value: DNCipherMode);
    function get_Padding: DNPaddingMode;
    procedure set_Padding(value: DNPaddingMode);

  { methods } 

    function CreateDecryptor: DNICryptoTransform; overload;
    function CreateDecryptor(rgbKey: TArray<Byte>; rgbIV: TArray<Byte>): DNICryptoTransform; overload;
    function CreateEncryptor: DNICryptoTransform; overload;
    function CreateEncryptor(rgbKey: TArray<Byte>; rgbIV: TArray<Byte>): DNICryptoTransform; overload;
    procedure Dispose;
    procedure Clear;
    procedure GenerateIV;
    procedure GenerateKey;
    function ValidKeySize(bitLength: Int32): Boolean;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property FeedbackSize: Int32 read get_FeedbackSize write set_FeedbackSize;
    property BlockSize: Int32 read get_BlockSize write set_BlockSize;
    property IV: TArray<Byte> read get_IV write set_IV;
    property Key: TArray<Byte> read get_Key write set_Key;
    property KeySize: Int32 read get_KeySize write set_KeySize;
    property LegalBlockSizes: TArray<DNKeySizes> read get_LegalBlockSizes;
    property LegalKeySizes: TArray<DNKeySizes> read get_LegalKeySizes;
    property Mode: DNCipherMode read get_Mode write set_Mode;
    property Padding: DNPaddingMode read get_Padding write set_Padding;
  end;

  TDNSymmetricAlgorithm = class(TDNGenericImport<DNSymmetricAlgorithmClass, DNSymmetricAlgorithm>) end;

  //-------------namespace: System.Security.Cryptography----------------
  DNHashAlgorithmNameClass = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{98FC0DCB-0CC8-5BEC-A1E1-809169AD17D1}']
  { static getter & setter } 

    {class} function get_MD5: DNHashAlgorithmName;
    {class} function get_SHA1: DNHashAlgorithmName;
    {class} function get_SHA256: DNHashAlgorithmName;
    {class} function get_SHA384: DNHashAlgorithmName;
    {class} function get_SHA512: DNHashAlgorithmName;

  { constructors } 

    {class} function init(name: string): DNHashAlgorithmName;

  { static propertys } 

    {class} property MD5: DNHashAlgorithmName read get_MD5;
    {class} property SHA1: DNHashAlgorithmName read get_SHA1;
    {class} property SHA256: DNHashAlgorithmName read get_SHA256;
    {class} property SHA384: DNHashAlgorithmName read get_SHA384;
    {class} property SHA512: DNHashAlgorithmName read get_SHA512;
  end;

  [DNTypeName('System.Security.Cryptography.HashAlgorithmName')]
  DNHashAlgorithmName = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{7F117651-0F49-36F7-83E8-8B117BC3A1D5}']
  { getters & setters } 

    function get_Name: string;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean; overload;
    function Equals(other: DNHashAlgorithmName): Boolean; overload;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Name: string read get_Name;
  end;

  TDNHashAlgorithmName = class(TDNGenericImport<DNHashAlgorithmNameClass, DNHashAlgorithmName>) end;


implementation


initialization
  LoadAssemblyModule('System.Security.Cryptography.Primitives, Version=4.1.1.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
