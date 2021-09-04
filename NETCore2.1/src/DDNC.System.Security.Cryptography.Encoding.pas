//----------------------------------------------------------------------------
//  System.Security.Cryptography.Encoding.dll: System.Security.Cryptography.Encoding, Version=4.1.1.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 2.1
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Security.Cryptography.Encoding
//  Author: ying32
//----------------------------------------------------------------------------

{$IFNDEF DDNCSYSTEMSECURITYCRYPTOGRAPHYENCODING}
unit DDNC.System.Security.Cryptography.Encoding;
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
  DDNC.System.Security.Cryptography.Primitives;

type

{ enums }

  //-------------namespace: System.Security.Cryptography----------------
  [DNTypeName('System.Security.Cryptography.FromBase64TransformMode')]
  DNFromBase64TransformMode = type Integer;
  DNFromBase64TransformModeHelper = record helper for DNFromBase64TransformMode
  public const
    IgnoreWhiteSpaces = 0;
    DoNotIgnoreWhiteSpaces = 1;
  end;


  //-------------namespace: System.Security.Cryptography----------------
  [DNTypeName('System.Security.Cryptography.OidGroup')]
  DNOidGroup = type Integer;
  DNOidGroupHelper = record helper for DNOidGroup
  public const
    All = 0;
    HashAlgorithm = 1;
    EncryptionAlgorithm = 2;
    PublicKeyAlgorithm = 3;
    SignatureAlgorithm = 4;
    Attribute = 5;
    ExtensionOrAttribute = 6;
    EnhancedKeyUsage = 7;
    Policy = 8;
    Template = 9;
    KeyDerivationFunction = 10;
  end;




type


{ declares }

  DNAsnEncodedData = interface; // type: System.Security.Cryptography.AsnEncodedData, namespace: System.Security.Cryptography
  DNAsnEncodedDataCollection = interface; // type: System.Security.Cryptography.AsnEncodedDataCollection, namespace: System.Security.Cryptography
  DNAsnEncodedDataEnumerator = interface; // type: System.Security.Cryptography.AsnEncodedDataEnumerator, namespace: System.Security.Cryptography
  DNFromBase64Transform = interface; // type: System.Security.Cryptography.FromBase64Transform, namespace: System.Security.Cryptography
  DNOid = interface; // type: System.Security.Cryptography.Oid, namespace: System.Security.Cryptography
  DNOidCollection = interface; // type: System.Security.Cryptography.OidCollection, namespace: System.Security.Cryptography
  DNOidEnumerator = interface; // type: System.Security.Cryptography.OidEnumerator, namespace: System.Security.Cryptography
  DNToBase64Transform = interface; // type: System.Security.Cryptography.ToBase64Transform, namespace: System.Security.Cryptography


{ objects }

  //-------------namespace: System.Security.Cryptography----------------
  DNAsnEncodedDataClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{CFB1F3BF-5F35-54D4-AF9B-BE77F7D77CC5}']
  { constructors } 

    {class} function init(rawData: TArray<Byte>): DNAsnEncodedData; overload;
    {class} function init(asnEncodedData: DNAsnEncodedData): DNAsnEncodedData; overload;
    {class} function init(oid: DNOid; rawData: TArray<Byte>): DNAsnEncodedData; overload;
    {class} function init(oid: string; rawData: TArray<Byte>): DNAsnEncodedData; overload;

  end;

  [DNTypeName('System.Security.Cryptography.AsnEncodedData')]
  DNAsnEncodedData = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{EE0FCA22-B6A0-3074-B4B7-F9E1CA39A387}']
  { getters & setters } 

    function get_Oid: DNOid;
    procedure set_Oid(value: DNOid);
    function get_RawData: TArray<Byte>;
    procedure set_RawData(value: TArray<Byte>);

  { methods } 

    procedure CopyFrom(asnEncodedData: DNAsnEncodedData);
    function Format(multiLine: Boolean): string;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Oid: DNOid read get_Oid write set_Oid;
    property RawData: TArray<Byte> read get_RawData write set_RawData;
  end;

  TDNAsnEncodedData = class(TDNGenericImport<DNAsnEncodedDataClass, DNAsnEncodedData>) end;

  //-------------namespace: System.Security.Cryptography----------------
  DNAsnEncodedDataCollectionClass = interface(DNObjectClass)
  ['{297434A8-7CCF-577D-BAF3-43AD43627F30}']
  { constructors } 

    {class} function init: DNAsnEncodedDataCollection; overload;
    {class} function init(asnEncodedData: DNAsnEncodedData): DNAsnEncodedDataCollection; overload;

  end;

  [DNTypeName('System.Security.Cryptography.AsnEncodedDataCollection')]
  DNAsnEncodedDataCollection = interface(DDNC.System.Private.CoreLib.DNICollection)
  ['{898339E3-6161-3CE3-B9F1-49FF5AB8A13A}']
  { getters & setters } 

    function get_Item(index: Int32): DNAsnEncodedData;
    function get_Count: Int32;
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function Add(asnEncodedData: DNAsnEncodedData): Int32;
    procedure Remove(asnEncodedData: DNAsnEncodedData);
    function GetEnumerator: DNAsnEncodedDataEnumerator;
    procedure CopyTo(&array: TArray<DNAsnEncodedData>; index: Int32);
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Item[index: Int32]: DNAsnEncodedData read get_Item; default;
    property Count: Int32 read get_Count;
    property IsSynchronized: Boolean read get_IsSynchronized;
    property SyncRoot: DDNC.System.Private.CoreLib.DNObject read get_SyncRoot;
  end;

  TDNAsnEncodedDataCollection = class(TDNGenericImport<DNAsnEncodedDataCollectionClass, DNAsnEncodedDataCollection>) end;

  //-------------namespace: System.Security.Cryptography----------------
  DNAsnEncodedDataEnumeratorClass = interface(DNObjectClass)
  ['{D2E92621-39ED-5356-9598-1E882102BF39}']
  end;

  [DNTypeName('System.Security.Cryptography.AsnEncodedDataEnumerator')]
  DNAsnEncodedDataEnumerator = interface(DDNC.System.Private.CoreLib.DNIEnumerator)
  ['{27560D0C-1D33-3ED9-BDF7-6081360FE525}']
  { getters & setters } 

    function get_Current: DNAsnEncodedData;

  { methods } 

    function MoveNext: Boolean;
    procedure Reset;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Current: DNAsnEncodedData read get_Current;
  end;

  TDNAsnEncodedDataEnumerator = class(TDNGenericImport<DNAsnEncodedDataEnumeratorClass, DNAsnEncodedDataEnumerator>) end;

  //-------------namespace: System.Security.Cryptography----------------
  DNFromBase64TransformClass = interface(DNObjectClass)
  ['{8F8CF7F7-080E-5BB8-A7B5-F3217AD671E6}']
  { constructors } 

    {class} function init: DNFromBase64Transform; overload;
    {class} function init(whitespaces: DNFromBase64TransformMode): DNFromBase64Transform; overload;

  end;

  [DNTypeName('System.Security.Cryptography.FromBase64Transform')]
  DNFromBase64Transform = interface(DDNC.System.Security.Cryptography.Primitives.DNICryptoTransform)
  ['{DAB9F78C-99A1-3CE3-B291-323AB91B9540}']
  { getters & setters } 

    function get_InputBlockSize: Int32;
    function get_OutputBlockSize: Int32;
    function get_CanTransformMultipleBlocks: Boolean;
    function get_CanReuseTransform: Boolean;

  { methods } 

    function TransformBlock(inputBuffer: TArray<Byte>; inputOffset: Int32; inputCount: Int32; outputBuffer: TArray<Byte>; outputOffset: Int32): Int32;
    function TransformFinalBlock(inputBuffer: TArray<Byte>; inputOffset: Int32; inputCount: Int32): TArray<Byte>;
    procedure Dispose;
    procedure Clear;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property InputBlockSize: Int32 read get_InputBlockSize;
    property OutputBlockSize: Int32 read get_OutputBlockSize;
    property CanTransformMultipleBlocks: Boolean read get_CanTransformMultipleBlocks;
    property CanReuseTransform: Boolean read get_CanReuseTransform;
  end;

  TDNFromBase64Transform = class(TDNGenericImport<DNFromBase64TransformClass, DNFromBase64Transform>) end;

  //-------------namespace: System.Security.Cryptography----------------
  DNOidClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{5263D76B-6559-5AF5-993F-4DA25A5D85D6}']
  { constructors } 

    {class} function init: DNOid; overload;
    {class} function init(oid: string): DNOid; overload;
    {class} function init(value: string; friendlyName: string): DNOid; overload;
    {class} function init(oid: DNOid): DNOid; overload;

  { static methods } 

    {class} function FromFriendlyName(friendlyName: string; group: DNOidGroup): DNOid;
    {class} function FromOidValue(oidValue: string; group: DNOidGroup): DNOid;

  end;

  [DNTypeName('System.Security.Cryptography.Oid')]
  DNOid = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{B4AFB306-30A0-356A-8F7B-B6F2861BD5AE}']
  { getters & setters } 

    function get_Value: string;
    procedure set_Value(value: string);
    function get_FriendlyName: string;
    procedure set_FriendlyName(value: string);

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Value: string read get_Value write set_Value;
    property FriendlyName: string read get_FriendlyName write set_FriendlyName;
  end;

  TDNOid = class(TDNGenericImport<DNOidClass, DNOid>) end;

  //-------------namespace: System.Security.Cryptography----------------
  DNOidCollectionClass = interface(DNObjectClass)
  ['{4F19319C-25AD-58FE-8CB5-3BCAE642B19C}']
  { constructors } 

    {class} function init: DNOidCollection;

  end;

  [DNTypeName('System.Security.Cryptography.OidCollection')]
  DNOidCollection = interface(DDNC.System.Private.CoreLib.DNICollection)
  ['{7460E787-0846-33F1-B8E4-B97A11FEA6CC}']
  { getters & setters } 

    function get_Item(index: Int32): DNOid; overload;
    function get_Item(oid: string): DNOid; overload;
    function get_Count: Int32;
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function Add(oid: DNOid): Int32;
    function GetEnumerator: DNOidEnumerator;
    procedure CopyTo(&array: TArray<DNOid>; index: Int32);
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Item[index: Int32]: DNOid read get_Item; default;
    property Item[oid: string]: DNOid read get_Item; default;
    property Count: Int32 read get_Count;
    property IsSynchronized: Boolean read get_IsSynchronized;
    property SyncRoot: DDNC.System.Private.CoreLib.DNObject read get_SyncRoot;
  end;

  TDNOidCollection = class(TDNGenericImport<DNOidCollectionClass, DNOidCollection>) end;

  //-------------namespace: System.Security.Cryptography----------------
  DNOidEnumeratorClass = interface(DNObjectClass)
  ['{4453F21B-EB90-5264-BA67-2B2D7CF021FD}']
  end;

  [DNTypeName('System.Security.Cryptography.OidEnumerator')]
  DNOidEnumerator = interface(DDNC.System.Private.CoreLib.DNIEnumerator)
  ['{6426A6C0-0140-3713-8FE3-A961883759B3}']
  { getters & setters } 

    function get_Current: DNOid;

  { methods } 

    function MoveNext: Boolean;
    procedure Reset;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Current: DNOid read get_Current;
  end;

  TDNOidEnumerator = class(TDNGenericImport<DNOidEnumeratorClass, DNOidEnumerator>) end;

  //-------------namespace: System.Security.Cryptography----------------
  DNToBase64TransformClass = interface(DNObjectClass)
  ['{BE31FC20-4982-539A-81F9-A86C2A9F6612}']
  { constructors } 

    {class} function init: DNToBase64Transform;

  end;

  [DNTypeName('System.Security.Cryptography.ToBase64Transform')]
  DNToBase64Transform = interface(DDNC.System.Security.Cryptography.Primitives.DNICryptoTransform)
  ['{22339D03-A07F-3FFB-976D-66745DFDD445}']
  { getters & setters } 

    function get_InputBlockSize: Int32;
    function get_OutputBlockSize: Int32;
    function get_CanTransformMultipleBlocks: Boolean;
    function get_CanReuseTransform: Boolean;

  { methods } 

    function TransformBlock(inputBuffer: TArray<Byte>; inputOffset: Int32; inputCount: Int32; outputBuffer: TArray<Byte>; outputOffset: Int32): Int32;
    function TransformFinalBlock(inputBuffer: TArray<Byte>; inputOffset: Int32; inputCount: Int32): TArray<Byte>;
    procedure Dispose;
    procedure Clear;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property InputBlockSize: Int32 read get_InputBlockSize;
    property OutputBlockSize: Int32 read get_OutputBlockSize;
    property CanTransformMultipleBlocks: Boolean read get_CanTransformMultipleBlocks;
    property CanReuseTransform: Boolean read get_CanReuseTransform;
  end;

  TDNToBase64Transform = class(TDNGenericImport<DNToBase64TransformClass, DNToBase64Transform>) end;


implementation


initialization
  LoadAssemblyModule('System.Security.Cryptography.Encoding.dll', True);

finalization

end.
