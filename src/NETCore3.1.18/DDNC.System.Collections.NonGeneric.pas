//----------------------------------------------------------------------------
//  System.Collections.NonGeneric.dll: System.Collections.NonGeneric, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 3.1.18
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Collections.NonGeneric
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Collections.NonGeneric;

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


{ declares }

  DNCaseInsensitiveComparer = interface; // type: System.Collections.CaseInsensitiveComparer, namespace: System.Collections
  DNCaseInsensitiveHashCodeProvider = interface; // type: System.Collections.CaseInsensitiveHashCodeProvider, namespace: System.Collections
  DNCollectionBase = interface; // type: System.Collections.CollectionBase, namespace: System.Collections
  DNDictionaryBase = interface; // type: System.Collections.DictionaryBase, namespace: System.Collections
  DNQueue = interface; // type: System.Collections.Queue, namespace: System.Collections
  DNReadOnlyCollectionBase = interface; // type: System.Collections.ReadOnlyCollectionBase, namespace: System.Collections
  DNSortedList = interface; // type: System.Collections.SortedList, namespace: System.Collections
  DNCollectionsUtil = interface; // type: System.Collections.Specialized.CollectionsUtil, namespace: System.Collections.Specialized
  DNStack = interface; // type: System.Collections.Stack, namespace: System.Collections


{ objects }

  //-------------namespace: System.Collections----------------
  DNCaseInsensitiveComparerClass = interface(DNObjectClass)
  ['{F504CB4B-CD8C-52ED-A48F-61F66B80034B}']
  { static getter & setter } 

    {class} function get_Default: DNCaseInsensitiveComparer;
    {class} function get_DefaultInvariant: DNCaseInsensitiveComparer;

  { constructors } 

    {class} function init: DNCaseInsensitiveComparer; overload;
    {class} function init(culture: DDNC.System.Private.CoreLib.DNCultureInfo): DNCaseInsensitiveComparer; overload;

  { static propertys } 

    {class} property &Default: DNCaseInsensitiveComparer read get_Default;
    {class} property DefaultInvariant: DNCaseInsensitiveComparer read get_DefaultInvariant;
  end;

  [DNTypeName('System.Collections.CaseInsensitiveComparer')]
  DNCaseInsensitiveComparer = interface(DDNC.System.Private.CoreLib.DNIComparer)
  ['{277A4843-C874-358C-AFE5-01DCEE2F8B5B}']
  { methods } 

    function Compare(a: DDNC.System.Private.CoreLib.DNObject; b: DDNC.System.Private.CoreLib.DNObject): Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNCaseInsensitiveComparer = class(TDNGenericImport<DNCaseInsensitiveComparerClass, DNCaseInsensitiveComparer>) end;

  //-------------namespace: System.Collections----------------
  DNCaseInsensitiveHashCodeProviderClass = interface(DNObjectClass)
  ['{92EA7BC9-94CE-56E9-AF2F-A158ED844A80}']
  { static getter & setter } 

    {class} function get_Default: DNCaseInsensitiveHashCodeProvider;
    {class} function get_DefaultInvariant: DNCaseInsensitiveHashCodeProvider;

  { constructors } 

    {class} function init: DNCaseInsensitiveHashCodeProvider; overload;
    {class} function init(culture: DDNC.System.Private.CoreLib.DNCultureInfo): DNCaseInsensitiveHashCodeProvider; overload;

  { static propertys } 

    {class} property &Default: DNCaseInsensitiveHashCodeProvider read get_Default;
    {class} property DefaultInvariant: DNCaseInsensitiveHashCodeProvider read get_DefaultInvariant;
  end;

  [DNTypeName('System.Collections.CaseInsensitiveHashCodeProvider')]
  DNCaseInsensitiveHashCodeProvider = interface(DDNC.System.Private.CoreLib.DNIHashCodeProvider)
  ['{E2842A47-C6B5-338A-8703-CD3B3A414CAA}']
  { methods } 

    function GetHashCode(obj: DDNC.System.Private.CoreLib.DNObject): Int32; overload;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32; overload;

  end;

  TDNCaseInsensitiveHashCodeProvider = class(TDNGenericImport<DNCaseInsensitiveHashCodeProviderClass, DNCaseInsensitiveHashCodeProvider>) end;

  //-------------namespace: System.Collections----------------
  DNCollectionBaseClass = interface(DNObjectClass)
  ['{9B4240CA-F668-5CE9-AD52-F5BD2488DB72}']
  end;

  [DNTypeName('System.Collections.CollectionBase')]
  DNCollectionBase = interface(DDNC.System.Private.CoreLib.DNIList)
  ['{69953F7D-7901-3FE8-8D14-747D764AD7D0}']
  { getters & setters } 

    function get_Capacity: Int32;
    procedure set_Capacity(value: Int32);
    function get_Count: Int32;

  { methods } 

    procedure RemoveAt(index: Int32);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Capacity: Int32 read get_Capacity write set_Capacity;
    property Count: Int32 read get_Count;
  end;

  TDNCollectionBase = class(TDNGenericImport<DNCollectionBaseClass, DNCollectionBase>) end;

  //-------------namespace: System.Collections----------------
  DNDictionaryBaseClass = interface(DNObjectClass)
  ['{A91D7E69-A2C5-5DCD-B788-79D447002C2E}']
  end;

  [DNTypeName('System.Collections.DictionaryBase')]
  DNDictionaryBase = interface(DDNC.System.Private.CoreLib.DNIDictionary)
  ['{E2CC1AC5-2739-3CA6-B8E3-E8768D8057CC}']
  { getters & setters } 

    function get_Count: Int32;

  { methods } 

    procedure CopyTo(&array: DDNC.System.Private.CoreLib.DNArray; index: Int32);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIDictionaryEnumerator;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Count: Int32 read get_Count;
  end;

  TDNDictionaryBase = class(TDNGenericImport<DNDictionaryBaseClass, DNDictionaryBase>) end;

  //-------------namespace: System.Collections----------------
  DNQueueClass = interface(DNObjectClass)
  ['{E05C7603-6A9F-533B-9804-2393421D4135}']
  { constructors } 

    {class} function init: DNQueue; overload;
    {class} function init(capacity: Int32): DNQueue; overload;
    {class} function init(capacity: Int32; growFactor: Single): DNQueue; overload;
    {class} function init(col: DDNC.System.Private.CoreLib.DNICollection): DNQueue; overload;

  { static methods } 

    {class} function Synchronized(queue: DNQueue): DNQueue;

  end;

  [DNTypeName('System.Collections.Queue')]
  DNQueue = interface(DDNC.System.Private.CoreLib.DNICollection)
  ['{4D6345C0-B681-3C03-93FD-B386598E980B}']
  { getters & setters } 

    function get_Count: Int32;
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function Clone: DDNC.System.Private.CoreLib.DNObject;
    procedure Clear;
    procedure CopyTo(&array: DDNC.System.Private.CoreLib.DNArray; index: Int32);
    procedure Enqueue(obj: DDNC.System.Private.CoreLib.DNObject);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator;
    function Dequeue: DDNC.System.Private.CoreLib.DNObject;
    function Peek: DDNC.System.Private.CoreLib.DNObject;
    function &Contains(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function ToArray: TArray<DDNC.System.Private.CoreLib.DNObject>;
    procedure TrimToSize;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Count: Int32 read get_Count;
    property IsSynchronized: Boolean read get_IsSynchronized;
    property SyncRoot: DDNC.System.Private.CoreLib.DNObject read get_SyncRoot;
  end;

  TDNQueue = class(TDNGenericImport<DNQueueClass, DNQueue>) end;

  //-------------namespace: System.Collections----------------
  DNReadOnlyCollectionBaseClass = interface(DNObjectClass)
  ['{DBD3E985-6335-5B52-99BB-4C6BF48808B9}']
  end;

  [DNTypeName('System.Collections.ReadOnlyCollectionBase')]
  DNReadOnlyCollectionBase = interface(DDNC.System.Private.CoreLib.DNICollection)
  ['{E119AE53-0F37-302B-A8D1-7391F868F708}']
  { getters & setters } 

    function get_Count: Int32;

  { methods } 

    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Count: Int32 read get_Count;
  end;

  TDNReadOnlyCollectionBase = class(TDNGenericImport<DNReadOnlyCollectionBaseClass, DNReadOnlyCollectionBase>) end;

  //-------------namespace: System.Collections----------------
  DNSortedListClass = interface(DNObjectClass)
  ['{4F8A5931-A49A-5CEB-BF07-62EEE743C607}']
  { constructors } 

    {class} function init: DNSortedList; overload;
    {class} function init(initialCapacity: Int32): DNSortedList; overload;
    {class} function init(comparer: DDNC.System.Private.CoreLib.DNIComparer): DNSortedList; overload;
    {class} function init(comparer: DDNC.System.Private.CoreLib.DNIComparer; capacity: Int32): DNSortedList; overload;
    {class} function init(d: DDNC.System.Private.CoreLib.DNIDictionary): DNSortedList; overload;
    {class} function init(d: DDNC.System.Private.CoreLib.DNIDictionary; comparer: DDNC.System.Private.CoreLib.DNIComparer): DNSortedList; overload;

  { static methods } 

    {class} function Synchronized(list: DNSortedList): DNSortedList;

  end;

  [DNTypeName('System.Collections.SortedList')]
  DNSortedList = interface(DDNC.System.Private.CoreLib.DNIDictionary)
  ['{E4188E95-66A1-3072-B7F0-D1EC1FF753F7}']
  { getters & setters } 

    function get_Capacity: Int32;
    procedure set_Capacity(value: Int32);
    function get_Count: Int32;
    function get_Keys: DDNC.System.Private.CoreLib.DNICollection;
    function get_Values: DDNC.System.Private.CoreLib.DNICollection;
    function get_IsReadOnly: Boolean;
    function get_IsFixedSize: Boolean;
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDNC.System.Private.CoreLib.DNObject;
    function get_Item(key: DDNC.System.Private.CoreLib.DNObject): DDNC.System.Private.CoreLib.DNObject;
    procedure set_Item(key: DDNC.System.Private.CoreLib.DNObject; value: DDNC.System.Private.CoreLib.DNObject);

  { methods } 

    procedure Add(key: DDNC.System.Private.CoreLib.DNObject; value: DDNC.System.Private.CoreLib.DNObject);
    procedure Clear;
    function Clone: DDNC.System.Private.CoreLib.DNObject;
    function &Contains(key: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function ContainsKey(key: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function ContainsValue(value: DDNC.System.Private.CoreLib.DNObject): Boolean;
    procedure CopyTo(&array: DDNC.System.Private.CoreLib.DNArray; arrayIndex: Int32);
    function GetByIndex(index: Int32): DDNC.System.Private.CoreLib.DNObject;
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIDictionaryEnumerator;
    function GetKey(index: Int32): DDNC.System.Private.CoreLib.DNObject;
    function GetKeyList: DDNC.System.Private.CoreLib.DNIList;
    function GetValueList: DDNC.System.Private.CoreLib.DNIList;
    function IndexOfKey(key: DDNC.System.Private.CoreLib.DNObject): Int32;
    function IndexOfValue(value: DDNC.System.Private.CoreLib.DNObject): Int32;
    procedure RemoveAt(index: Int32);
    procedure Remove(key: DDNC.System.Private.CoreLib.DNObject);
    procedure SetByIndex(index: Int32; value: DDNC.System.Private.CoreLib.DNObject);
    procedure TrimToSize;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Capacity: Int32 read get_Capacity write set_Capacity;
    property Count: Int32 read get_Count;
    property Keys: DDNC.System.Private.CoreLib.DNICollection read get_Keys;
    property Values: DDNC.System.Private.CoreLib.DNICollection read get_Values;
    property IsReadOnly: Boolean read get_IsReadOnly;
    property IsFixedSize: Boolean read get_IsFixedSize;
    property IsSynchronized: Boolean read get_IsSynchronized;
    property SyncRoot: DDNC.System.Private.CoreLib.DNObject read get_SyncRoot;
    property Item[key: DDNC.System.Private.CoreLib.DNObject]: DDNC.System.Private.CoreLib.DNObject read get_Item write set_Item; default;
  end;

  TDNSortedList = class(TDNGenericImport<DNSortedListClass, DNSortedList>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNCollectionsUtilClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{4CB89564-CF4D-53DE-827F-35CECE802B6A}']
  { constructors } 

    {class} function init: DNCollectionsUtil;

  { static methods } 

    {class} function CreateCaseInsensitiveHashtable: DDNC.System.Private.CoreLib.DNHashtable; overload;
    {class} function CreateCaseInsensitiveHashtable(capacity: Int32): DDNC.System.Private.CoreLib.DNHashtable; overload;
    {class} function CreateCaseInsensitiveHashtable(d: DDNC.System.Private.CoreLib.DNIDictionary): DDNC.System.Private.CoreLib.DNHashtable; overload;
    {class} function CreateCaseInsensitiveSortedList: DNSortedList;

  end;

  [DNTypeName('System.Collections.Specialized.CollectionsUtil')]
  DNCollectionsUtil = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{9F07E128-B10F-34A0-87DD-982ABBD4039C}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNCollectionsUtil = class(TDNGenericImport<DNCollectionsUtilClass, DNCollectionsUtil>) end;

  //-------------namespace: System.Collections----------------
  DNStackClass = interface(DNObjectClass)
  ['{EFBE3D15-0F75-5083-83A6-9DCFB6209268}']
  { constructors } 

    {class} function init: DNStack; overload;
    {class} function init(initialCapacity: Int32): DNStack; overload;
    {class} function init(col: DDNC.System.Private.CoreLib.DNICollection): DNStack; overload;

  { static methods } 

    {class} function Synchronized(stack: DNStack): DNStack;

  end;

  [DNTypeName('System.Collections.Stack')]
  DNStack = interface(DDNC.System.Private.CoreLib.DNICollection)
  ['{09C63A8A-748F-3E10-91A3-08B218B6A8E9}']
  { getters & setters } 

    function get_Count: Int32;
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    procedure Clear;
    function Clone: DDNC.System.Private.CoreLib.DNObject;
    function &Contains(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    procedure CopyTo(&array: DDNC.System.Private.CoreLib.DNArray; index: Int32);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator;
    function Peek: DDNC.System.Private.CoreLib.DNObject;
    function Pop: DDNC.System.Private.CoreLib.DNObject;
    procedure Push(obj: DDNC.System.Private.CoreLib.DNObject);
    function ToArray: TArray<DDNC.System.Private.CoreLib.DNObject>;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Count: Int32 read get_Count;
    property IsSynchronized: Boolean read get_IsSynchronized;
    property SyncRoot: DDNC.System.Private.CoreLib.DNObject read get_SyncRoot;
  end;

  TDNStack = class(TDNGenericImport<DNStackClass, DNStack>) end;


implementation


initialization
  InternalTryLoadAssemblyModule('System.Collections.NonGeneric, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.