//----------------------------------------------------------------------------
//  System.Collections.Specialized.dll: System.Collections.Specialized, Version=4.1.1.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 2.1.30
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Collections.Specialized
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Collections.Specialized;

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDNC.System.Private.CoreLib,
  DDNC.System.Runtime.Extensions;

type


{ declares }

  DNIOrderedDictionary = interface; // type: System.Collections.Specialized.IOrderedDictionary, namespace: System.Collections.Specialized
  DNHybridDictionary = interface; // type: System.Collections.Specialized.HybridDictionary, namespace: System.Collections.Specialized
  DNListDictionary = interface; // type: System.Collections.Specialized.ListDictionary, namespace: System.Collections.Specialized
  DNListDictionary_DictionaryNode = interface; // type: System.Collections.Specialized.ListDictionary+DictionaryNode, namespace: System.Collections.Specialized
  DNNameObjectCollectionBase = interface; // type: System.Collections.Specialized.NameObjectCollectionBase, namespace: System.Collections.Specialized
  DNNameObjectCollectionBase_KeysCollection = interface; // type: System.Collections.Specialized.NameObjectCollectionBase+KeysCollection, namespace: System.Collections.Specialized
  DNNameValueCollection = interface; // type: System.Collections.Specialized.NameValueCollection, namespace: System.Collections.Specialized
  DNOrderedDictionary = interface; // type: System.Collections.Specialized.OrderedDictionary, namespace: System.Collections.Specialized
  DNStringCollection = interface; // type: System.Collections.Specialized.StringCollection, namespace: System.Collections.Specialized
  DNStringDictionary = interface; // type: System.Collections.Specialized.StringDictionary, namespace: System.Collections.Specialized
  DNStringEnumerator = interface; // type: System.Collections.Specialized.StringEnumerator, namespace: System.Collections.Specialized
  DNBitVector32 = interface; // type: System.Collections.Specialized.BitVector32, namespace: System.Collections.Specialized
  DNBitVector32_Section = interface; // type: System.Collections.Specialized.BitVector32+Section, namespace: System.Collections.Specialized


{ objects }

  //-------------namespace: System.Collections.Specialized----------------
  [DNTypeName('System.Collections.Specialized.IOrderedDictionary')]
  DNIOrderedDictionary = interface(DDNC.System.Private.CoreLib.DNIDictionary)
  ['{0D2C82B1-3F52-34F4-AFE6-D1016005CDF3}']
  { getters & setters } 

    function get_Item(index: Int32): DDNC.System.Private.CoreLib.DNObject;
    procedure set_Item(index: Int32; value: DDNC.System.Private.CoreLib.DNObject);

  { methods } 

    function GetEnumerator: DDNC.System.Private.CoreLib.DNIDictionaryEnumerator;
    procedure Insert(index: Int32; key: DDNC.System.Private.CoreLib.DNObject; value: DDNC.System.Private.CoreLib.DNObject);
    procedure RemoveAt(index: Int32);

  { propertys } 

    property Item[index: Int32]: DDNC.System.Private.CoreLib.DNObject read get_Item write set_Item; default;
  end;

  //-------------namespace: System.Collections.Specialized----------------
  DNHybridDictionaryClass = interface(DNObjectClass)
  ['{EB13A957-785A-52C8-AADE-725B1F33F9DC}']
  { constructors } 

    {class} function init: DNHybridDictionary; overload;
    {class} function init(initialSize: Int32): DNHybridDictionary; overload;
    {class} function init(caseInsensitive: Boolean): DNHybridDictionary; overload;
    {class} function init(initialSize: Int32; caseInsensitive: Boolean): DNHybridDictionary; overload;

  end;

  [DNTypeName('System.Collections.Specialized.HybridDictionary')]
  DNHybridDictionary = interface(DDNC.System.Private.CoreLib.DNIDictionary)
  ['{FC091ABE-462C-3065-866A-ACC52C93F7DF}']
  { getters & setters } 

    function get_Count: Int32;
    function get_Keys: DDNC.System.Private.CoreLib.DNICollection;
    function get_IsReadOnly: Boolean;
    function get_IsFixedSize: Boolean;
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDNC.System.Private.CoreLib.DNObject;
    function get_Values: DDNC.System.Private.CoreLib.DNICollection;

  { methods } 

    function &Contains(key: DDNC.System.Private.CoreLib.DNObject): Boolean;
    procedure CopyTo(&array: DDNC.System.Private.CoreLib.DNArray; index: Int32);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIDictionaryEnumerator;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Count: Int32 read get_Count;
    property Keys: DDNC.System.Private.CoreLib.DNICollection read get_Keys;
    property IsReadOnly: Boolean read get_IsReadOnly;
    property IsFixedSize: Boolean read get_IsFixedSize;
    property IsSynchronized: Boolean read get_IsSynchronized;
    property SyncRoot: DDNC.System.Private.CoreLib.DNObject read get_SyncRoot;
    property Values: DDNC.System.Private.CoreLib.DNICollection read get_Values;
  end;

  TDNHybridDictionary = class(TDNGenericImport<DNHybridDictionaryClass, DNHybridDictionary>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNListDictionaryClass = interface(DNObjectClass)
  ['{ADDDF3E2-2ED0-5ED3-AD89-A78C79B6AFB2}']
  { constructors } 

    {class} function init: DNListDictionary; overload;
    {class} function init(comparer: DDNC.System.Private.CoreLib.DNIComparer): DNListDictionary; overload;

  end;

  [DNTypeName('System.Collections.Specialized.ListDictionary')]
  DNListDictionary = interface(DDNC.System.Private.CoreLib.DNIDictionary)
  ['{9C7E53B0-96A0-3EF9-BE6B-6126A7065479}']
  { getters & setters } 

    function get_Count: Int32;
    function get_Keys: DDNC.System.Private.CoreLib.DNICollection;
    function get_IsReadOnly: Boolean;
    function get_IsFixedSize: Boolean;
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDNC.System.Private.CoreLib.DNObject;
    function get_Values: DDNC.System.Private.CoreLib.DNICollection;

  { methods } 

    function &Contains(key: DDNC.System.Private.CoreLib.DNObject): Boolean;
    procedure CopyTo(&array: DDNC.System.Private.CoreLib.DNArray; index: Int32);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIDictionaryEnumerator;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Count: Int32 read get_Count;
    property Keys: DDNC.System.Private.CoreLib.DNICollection read get_Keys;
    property IsReadOnly: Boolean read get_IsReadOnly;
    property IsFixedSize: Boolean read get_IsFixedSize;
    property IsSynchronized: Boolean read get_IsSynchronized;
    property SyncRoot: DDNC.System.Private.CoreLib.DNObject read get_SyncRoot;
    property Values: DDNC.System.Private.CoreLib.DNICollection read get_Values;
  end;

  TDNListDictionary = class(TDNGenericImport<DNListDictionaryClass, DNListDictionary>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNListDictionary_DictionaryNodeClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{A5FA4803-BFF9-583B-B11E-DE9B7FB4AFBC}']
  { constructors } 

    {class} function init: DNListDictionary_DictionaryNode;

  end;

  [DNTypeName('System.Collections.Specialized.ListDictionary+DictionaryNode')]
  DNListDictionary_DictionaryNode = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{E522F3F2-42FF-3C4E-B1C8-67DAD80DD816}']
  { fields getter & setter } 

   function __fakeFieldGet_key: DDNC.System.Private.CoreLib.DNObject;
   procedure __fakeFieldSet_key(value: DDNC.System.Private.CoreLib.DNObject);
   function __fakeFieldGet_value: DDNC.System.Private.CoreLib.DNObject;
   procedure __fakeFieldSet_value(value: DDNC.System.Private.CoreLib.DNObject);
   function __fakeFieldGet_next: DNListDictionary_DictionaryNode;
   procedure __fakeFieldSet_next(value: DNListDictionary_DictionaryNode);

  { fields } 

   property key: DDNC.System.Private.CoreLib.DNObject read __fakeFieldGet_key write __fakeFieldSet_key;
   property value: DDNC.System.Private.CoreLib.DNObject read __fakeFieldGet_value write __fakeFieldSet_value;
   property next: DNListDictionary_DictionaryNode read __fakeFieldGet_next write __fakeFieldSet_next;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNListDictionary_DictionaryNode = class(TDNGenericImport<DNListDictionary_DictionaryNodeClass, DNListDictionary_DictionaryNode>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNNameObjectCollectionBaseClass = interface(DNObjectClass)
  ['{4503262C-8334-5A8B-AE6A-9CBFB717D219}']
  end;

  [DNTypeName('System.Collections.Specialized.NameObjectCollectionBase')]
  DNNameObjectCollectionBase = interface(DDNC.System.Private.CoreLib.DNICollection)
  ['{BEB08A74-DCBF-3E0F-98E5-D4567F9FB76F}']
  { getters & setters } 

    function get_Count: Int32;
    function get_Keys: DNNameObjectCollectionBase_KeysCollection;

  { methods } 

    procedure GetObjectData(info: DDNC.System.Private.CoreLib.DNSerializationInfo; context: DDNC.System.Private.CoreLib.DNStreamingContext);
    procedure OnDeserialization(sender: DDNC.System.Private.CoreLib.DNObject);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Count: Int32 read get_Count;
    property Keys: DNNameObjectCollectionBase_KeysCollection read get_Keys;
  end;

  TDNNameObjectCollectionBase = class(TDNGenericImport<DNNameObjectCollectionBaseClass, DNNameObjectCollectionBase>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNNameObjectCollectionBase_KeysCollectionClass = interface(DNObjectClass)
  ['{688F7E90-22D1-534A-8162-3849E776104D}']
  end;

  [DNTypeName('System.Collections.Specialized.NameObjectCollectionBase+KeysCollection')]
  DNNameObjectCollectionBase_KeysCollection = interface(DDNC.System.Private.CoreLib.DNICollection)
  ['{D3ADDDBA-D96F-3C54-9F4E-1373BC4764C4}']
  { getters & setters } 

    function get_Item(index: Int32): string;
    function get_Count: Int32;

  { methods } 

    function Get(index: Int32): string;
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Item[index: Int32]: string read get_Item; default;
    property Count: Int32 read get_Count;
  end;

  TDNNameObjectCollectionBase_KeysCollection = class(TDNGenericImport<DNNameObjectCollectionBase_KeysCollectionClass, DNNameObjectCollectionBase_KeysCollection>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNNameValueCollectionClass = interface(DNNameObjectCollectionBaseClass)
  ['{C0A3C491-08D3-51B4-A13A-793295CD677A}']
  { constructors } 

    {class} function init: DNNameValueCollection; overload;
    {class} function init(col: DNNameValueCollection): DNNameValueCollection; overload;
    {class} function init(hashProvider: DDNC.System.Runtime.Extensions.DNIHashCodeProvider; comparer: DDNC.System.Private.CoreLib.DNIComparer): DNNameValueCollection; overload;
    {class} function init(capacity: Int32): DNNameValueCollection; overload;
    {class} function init(equalityComparer: DDNC.System.Private.CoreLib.DNIEqualityComparer): DNNameValueCollection; overload;
    {class} function init(capacity: Int32; equalityComparer: DDNC.System.Private.CoreLib.DNIEqualityComparer): DNNameValueCollection; overload;
    {class} function init(capacity: Int32; col: DNNameValueCollection): DNNameValueCollection; overload;
    {class} function init(capacity: Int32; hashProvider: DDNC.System.Runtime.Extensions.DNIHashCodeProvider; comparer: DDNC.System.Private.CoreLib.DNIComparer): DNNameValueCollection; overload;

  end;

  [DNTypeName('System.Collections.Specialized.NameValueCollection')]
  DNNameValueCollection = interface(DNNameObjectCollectionBase)
  ['{16896D6D-F1CF-3076-9D41-815C429EC199}']
  { getters & setters } 

    function get_Item(name: string): string; overload;
    procedure set_Item(name: string; value: string);
    function get_Item(index: Int32): string; overload;
    function get_AllKeys: TArray<string>;
    function get_Count: Int32;
    function get_Keys: DNNameObjectCollectionBase_KeysCollection;

  { methods } 

    procedure Add(c: DNNameValueCollection); overload;
    procedure Clear;
    procedure CopyTo(dest: DDNC.System.Private.CoreLib.DNArray; index: Int32);
    function HasKeys: Boolean;
    procedure Add(name: string; value: string); overload;
    function Get(name: string): string; overload;
    function GetValues(name: string): TArray<string>; overload;
    procedure &Set(name: string; value: string);
    procedure Remove(name: string);
    function Get(index: Int32): string; overload;
    function GetValues(index: Int32): TArray<string>; overload;
    function GetKey(index: Int32): string;
    procedure GetObjectData(info: DDNC.System.Private.CoreLib.DNSerializationInfo; context: DDNC.System.Private.CoreLib.DNStreamingContext);
    procedure OnDeserialization(sender: DDNC.System.Private.CoreLib.DNObject);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Item[name: string]: string read get_Item write set_Item; default;
    property Item[index: Int32]: string read get_Item; default;
    property AllKeys: TArray<string> read get_AllKeys;
    property Count: Int32 read get_Count;
    property Keys: DNNameObjectCollectionBase_KeysCollection read get_Keys;
  end;

  TDNNameValueCollection = class(TDNGenericImport<DNNameValueCollectionClass, DNNameValueCollection>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNOrderedDictionaryClass = interface(DNObjectClass)
  ['{DF0FAEB7-C289-56E9-95F6-9EDD0AA68D7A}']
  { constructors } 

    {class} function init: DNOrderedDictionary; overload;
    {class} function init(capacity: Int32): DNOrderedDictionary; overload;
    {class} function init(comparer: DDNC.System.Private.CoreLib.DNIEqualityComparer): DNOrderedDictionary; overload;
    {class} function init(capacity: Int32; comparer: DDNC.System.Private.CoreLib.DNIEqualityComparer): DNOrderedDictionary; overload;

  end;

  [DNTypeName('System.Collections.Specialized.OrderedDictionary')]
  DNOrderedDictionary = interface(DNIOrderedDictionary)
  ['{56D7DF02-B95D-3C73-B766-7FD862C66B08}']
  { getters & setters } 

    function get_Count: Int32;
    function get_IsReadOnly: Boolean;
    function get_Keys: DDNC.System.Private.CoreLib.DNICollection;
    function get_Values: DDNC.System.Private.CoreLib.DNICollection;

  { methods } 

    function AsReadOnly: DNOrderedDictionary;
    function &Contains(key: DDNC.System.Private.CoreLib.DNObject): Boolean;
    procedure CopyTo(&array: DDNC.System.Private.CoreLib.DNArray; index: Int32);
    procedure Insert(index: Int32; key: DDNC.System.Private.CoreLib.DNObject; value: DDNC.System.Private.CoreLib.DNObject);
    procedure RemoveAt(index: Int32);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIDictionaryEnumerator;
    procedure GetObjectData(info: DDNC.System.Private.CoreLib.DNSerializationInfo; context: DDNC.System.Private.CoreLib.DNStreamingContext);
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Count: Int32 read get_Count;
    property IsReadOnly: Boolean read get_IsReadOnly;
    property Keys: DDNC.System.Private.CoreLib.DNICollection read get_Keys;
    property Values: DDNC.System.Private.CoreLib.DNICollection read get_Values;
  end;

  TDNOrderedDictionary = class(TDNGenericImport<DNOrderedDictionaryClass, DNOrderedDictionary>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNStringCollectionClass = interface(DNObjectClass)
  ['{5A2F71A4-7AF1-5E52-98A9-954CA3BF8C7E}']
  { constructors } 

    {class} function init: DNStringCollection;

  end;

  [DNTypeName('System.Collections.Specialized.StringCollection')]
  DNStringCollection = interface(DDNC.System.Private.CoreLib.DNIList)
  ['{87BF86EC-ECF7-3F81-B046-654E2EF211C2}']
  { getters & setters } 

    function get_Item(index: Int32): string;
    procedure set_Item(index: Int32; value: string);
    function get_Count: Int32;
    function get_IsReadOnly: Boolean;
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function Add(value: string): Int32;
    procedure AddRange(value: TArray<string>);
    function &Contains(value: string): Boolean;
    procedure CopyTo(&array: TArray<string>; index: Int32);
    function GetEnumerator: DNStringEnumerator;
    function IndexOf(value: string): Int32;
    procedure Insert(index: Int32; value: string);
    procedure Remove(value: string);
    procedure RemoveAt(index: Int32);
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Item[index: Int32]: string read get_Item write set_Item; default;
    property Count: Int32 read get_Count;
    property IsReadOnly: Boolean read get_IsReadOnly;
    property IsSynchronized: Boolean read get_IsSynchronized;
    property SyncRoot: DDNC.System.Private.CoreLib.DNObject read get_SyncRoot;
  end;

  TDNStringCollection = class(TDNGenericImport<DNStringCollectionClass, DNStringCollection>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNStringDictionaryClass = interface(DNObjectClass)
  ['{9F2A8D2D-37B3-5414-84E2-A4CD796C586E}']
  { constructors } 

    {class} function init: DNStringDictionary;

  end;

  [DNTypeName('System.Collections.Specialized.StringDictionary')]
  DNStringDictionary = interface(DDNC.System.Private.CoreLib.DNIEnumerable)
  ['{6D05E837-6AFC-3D50-AA60-369D4F2DB115}']
  { getters & setters } 

    function get_Count: Int32;
    function get_IsSynchronized: Boolean;
    function get_Item(key: string): string;
    procedure set_Item(key: string; value: string);
    function get_Keys: DDNC.System.Private.CoreLib.DNICollection;
    function get_SyncRoot: DDNC.System.Private.CoreLib.DNObject;
    function get_Values: DDNC.System.Private.CoreLib.DNICollection;

  { methods } 

    procedure Add(key: string; value: string);
    procedure Clear;
    function ContainsKey(key: string): Boolean;
    function ContainsValue(value: string): Boolean;
    procedure CopyTo(&array: DDNC.System.Private.CoreLib.DNArray; index: Int32);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator;
    procedure Remove(key: string);
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Count: Int32 read get_Count;
    property IsSynchronized: Boolean read get_IsSynchronized;
    property Item[key: string]: string read get_Item write set_Item; default;
    property Keys: DDNC.System.Private.CoreLib.DNICollection read get_Keys;
    property SyncRoot: DDNC.System.Private.CoreLib.DNObject read get_SyncRoot;
    property Values: DDNC.System.Private.CoreLib.DNICollection read get_Values;
  end;

  TDNStringDictionary = class(TDNGenericImport<DNStringDictionaryClass, DNStringDictionary>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNStringEnumeratorClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{5DA1D7B5-7678-588A-B2B5-94F3CF461AE3}']
  end;

  [DNTypeName('System.Collections.Specialized.StringEnumerator')]
  DNStringEnumerator = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{BDA221F6-5FD4-322B-B43B-7D1954139B76}']
  { getters & setters } 

    function get_Current: string;

  { methods } 

    function MoveNext: Boolean;
    procedure Reset;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Current: string read get_Current;
  end;

  TDNStringEnumerator = class(TDNGenericImport<DNStringEnumeratorClass, DNStringEnumerator>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNBitVector32Class = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{E8C260F7-8488-551D-A5F0-ABFB194E38F4}']
  { constructors } 

    {class} function init(data: Int32): DNBitVector32; overload;
    {class} function init(value: DNBitVector32): DNBitVector32; overload;

  { static methods } 

    {class} function CreateMask: Int32; overload;
    {class} function CreateMask(previous: Int32): Int32; overload;
    {class} function CreateSection(maxValue: Int16): DNBitVector32_Section; overload;
    {class} function CreateSection(maxValue: Int16; previous: DNBitVector32_Section): DNBitVector32_Section; overload;
    {class} function ToString(value: DNBitVector32): string; overload;

  end;

  [DNTypeName('System.Collections.Specialized.BitVector32')]
  DNBitVector32 = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{0156D2E1-A4A8-348D-8AE3-4BC0F5CE585A}']
  { getters & setters } 

    function get_Item(bit: Int32): Boolean; overload;
    procedure set_Item(bit: Int32; value: Boolean); overload;
    function get_Item(section: DNBitVector32_Section): Int32; overload;
    procedure set_Item(section: DNBitVector32_Section; value: Int32); overload;
    function get_Data: Int32;

  { methods } 

    function Equals(o: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function ToString: string; overload;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Item[bit: Int32]: Boolean read get_Item write set_Item; default;
    property Item[section: DNBitVector32_Section]: Int32 read get_Item write set_Item; default;
    property Data: Int32 read get_Data;
  end;

  TDNBitVector32 = class(TDNGenericImport<DNBitVector32Class, DNBitVector32>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNBitVector32_SectionClass = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{C13B9B4A-1854-53EA-85BA-7FCCC531FF14}']
  { static methods } 

    {class} function ToString(value: DNBitVector32_Section): string; overload;

  end;

  [DNTypeName('System.Collections.Specialized.BitVector32+Section')]
  DNBitVector32_Section = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{09242106-626B-3C1A-95BB-ADDEE38C75FA}']
  { getters & setters } 

    function get_Mask: Int16;
    function get_Offset: Int16;

  { methods } 

    function Equals(o: DDNC.System.Private.CoreLib.DNObject): Boolean; overload;
    function Equals(obj: DNBitVector32_Section): Boolean; overload;
    function GetHashCode: Int32;
    function ToString: string; overload;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Mask: Int16 read get_Mask;
    property Offset: Int16 read get_Offset;
  end;

  TDNBitVector32_Section = class(TDNGenericImport<DNBitVector32_SectionClass, DNBitVector32_Section>) end;


implementation


initialization
  LoadAssemblyModule('System.Collections.Specialized, Version=4.1.1.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
