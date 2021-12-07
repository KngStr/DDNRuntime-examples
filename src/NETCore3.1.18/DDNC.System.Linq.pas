//----------------------------------------------------------------------------
//  System.Linq.dll: System.Linq, Version=4.2.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 3.1.18
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Linq
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Linq;

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

  DNIGrouping<TKey, TElement> = interface; // type: System.Linq.IGrouping`2, namespace: System.Linq
  DNILookup<TKey, TElement> = interface; // type: System.Linq.ILookup`2, namespace: System.Linq
  DNIOrderedEnumerable<TElement> = interface; // type: System.Linq.IOrderedEnumerable`1, namespace: System.Linq
  DNEnumerable = interface; // type: System.Linq.Enumerable, namespace: System.Linq
  DNGrouping<TKey, TElement> = interface; // type: System.Linq.Grouping`2, namespace: System.Linq
  DNLookup<TKey, TElement> = interface; // type: System.Linq.Lookup`2, namespace: System.Linq


{ objects }

  //-------------namespace: System.Linq----------------
  [DNTypeName('System.Linq.IGrouping`2')]
  DNIGrouping<TKey, TElement> = interface(DDNC.System.Private.CoreLib.DNIEnumerable<TElement>)
  ['{9CCECD6C-7922-345E-A182-6626F99CC460}']
  { getters & setters } 

    function get_Key: TKey;

  { propertys } 

    property Key: TKey read get_Key;
  end;

  //-------------namespace: System.Linq----------------
  [DNTypeName('System.Linq.ILookup`2')]
  DNILookup<TKey, TElement> = interface(DDNC.System.Private.CoreLib.DNIEnumerable<DNIGrouping<TKey, TElement>>)
  ['{6B51090C-E837-3318-A840-0B5D95886587}']
  { getters & setters } 

    function get_Count: Int32;
    function get_Item(key: TKey): DDNC.System.Private.CoreLib.DNIEnumerable<TElement>;

  { methods } 

    function &Contains(key: TKey): Boolean;

  { propertys } 

    property Count: Int32 read get_Count;
    property Item[key: TKey]: DDNC.System.Private.CoreLib.DNIEnumerable<TElement> read get_Item; default;
  end;

  //-------------namespace: System.Linq----------------
  [DNTypeName('System.Linq.IOrderedEnumerable`1')]
  DNIOrderedEnumerable<TElement> = interface(DDNC.System.Private.CoreLib.DNIEnumerable<TElement>)
  ['{6EEB1E7D-F438-329E-BD25-428DAB0608A7}']
  end;

  //-------------namespace: System.Linq----------------
  DNEnumerableClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{53AAF380-D942-50D6-89F2-117B4B132233}']
  { static methods } 

    {class} function Sum(source: DDNC.System.Private.CoreLib.DNIEnumerable<Int32>): Int32; overload;
    {class} function Sum(source: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNNullable<Int32>>): DDNC.System.Private.CoreLib.DNNullable<Int32>; overload;
    {class} function Sum(source: DDNC.System.Private.CoreLib.DNIEnumerable<Int64>): Int64; overload;
    {class} function Sum(source: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNNullable<Int64>>): DDNC.System.Private.CoreLib.DNNullable<Int64>; overload;
    {class} function Sum(source: DDNC.System.Private.CoreLib.DNIEnumerable<Single>): Single; overload;
    {class} function Sum(source: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNNullable<Single>>): DDNC.System.Private.CoreLib.DNNullable<Single>; overload;
    {class} function Sum(source: DDNC.System.Private.CoreLib.DNIEnumerable<Double>): Double; overload;
    {class} function Sum(source: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNNullable<Double>>): DDNC.System.Private.CoreLib.DNNullable<Double>; overload;
    {class} function Sum(source: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNDecimal>): DDNC.System.Private.CoreLib.DNDecimal; overload;
    {class} function Sum(source: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNNullable<DDNC.System.Private.CoreLib.DNDecimal>>): DDNC.System.Private.CoreLib.DNNullable<DDNC.System.Private.CoreLib.DNDecimal>; overload;
    {class} function Min(source: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNNullable<Int64>>): DDNC.System.Private.CoreLib.DNNullable<Int64>; overload;
    {class} function Min(source: DDNC.System.Private.CoreLib.DNIEnumerable<Single>): Single; overload;
    {class} function Min(source: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNNullable<Single>>): DDNC.System.Private.CoreLib.DNNullable<Single>; overload;
    {class} function Min(source: DDNC.System.Private.CoreLib.DNIEnumerable<Double>): Double; overload;
    {class} function Min(source: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNNullable<Double>>): DDNC.System.Private.CoreLib.DNNullable<Double>; overload;
    {class} function Min(source: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNDecimal>): DDNC.System.Private.CoreLib.DNDecimal; overload;
    {class} function Min(source: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNNullable<DDNC.System.Private.CoreLib.DNDecimal>>): DDNC.System.Private.CoreLib.DNNullable<DDNC.System.Private.CoreLib.DNDecimal>; overload;
    {class} function Range(start: Int32; count: Int32): DDNC.System.Private.CoreLib.DNIEnumerable<Int32>;
    {class} function Max(source: DDNC.System.Private.CoreLib.DNIEnumerable<Int32>): Int32; overload;
    {class} function Max(source: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNNullable<Int32>>): DDNC.System.Private.CoreLib.DNNullable<Int32>; overload;
    {class} function Max(source: DDNC.System.Private.CoreLib.DNIEnumerable<Int64>): Int64; overload;
    {class} function Max(source: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNNullable<Int64>>): DDNC.System.Private.CoreLib.DNNullable<Int64>; overload;
    {class} function Max(source: DDNC.System.Private.CoreLib.DNIEnumerable<Double>): Double; overload;
    {class} function Max(source: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNNullable<Double>>): DDNC.System.Private.CoreLib.DNNullable<Double>; overload;
    {class} function Max(source: DDNC.System.Private.CoreLib.DNIEnumerable<Single>): Single; overload;
    {class} function Max(source: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNNullable<Single>>): DDNC.System.Private.CoreLib.DNNullable<Single>; overload;
    {class} function Max(source: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNDecimal>): DDNC.System.Private.CoreLib.DNDecimal; overload;
    {class} function Max(source: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNNullable<DDNC.System.Private.CoreLib.DNDecimal>>): DDNC.System.Private.CoreLib.DNNullable<DDNC.System.Private.CoreLib.DNDecimal>; overload;
    {class} function Min(source: DDNC.System.Private.CoreLib.DNIEnumerable<Int32>): Int32; overload;
    {class} function Min(source: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNNullable<Int32>>): DDNC.System.Private.CoreLib.DNNullable<Int32>; overload;
    {class} function Min(source: DDNC.System.Private.CoreLib.DNIEnumerable<Int64>): Int64; overload;
    {class} function Average(source: DDNC.System.Private.CoreLib.DNIEnumerable<Int32>): Double; overload;
    {class} function Average(source: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNNullable<Int32>>): DDNC.System.Private.CoreLib.DNNullable<Double>; overload;
    {class} function Average(source: DDNC.System.Private.CoreLib.DNIEnumerable<Int64>): Double; overload;
    {class} function Average(source: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNNullable<Int64>>): DDNC.System.Private.CoreLib.DNNullable<Double>; overload;
    {class} function Average(source: DDNC.System.Private.CoreLib.DNIEnumerable<Single>): Single; overload;
    {class} function Average(source: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNNullable<Single>>): DDNC.System.Private.CoreLib.DNNullable<Single>; overload;
    {class} function Average(source: DDNC.System.Private.CoreLib.DNIEnumerable<Double>): Double; overload;
    {class} function Average(source: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNNullable<Double>>): DDNC.System.Private.CoreLib.DNNullable<Double>; overload;
    {class} function Average(source: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNDecimal>): DDNC.System.Private.CoreLib.DNDecimal; overload;
    {class} function Average(source: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNNullable<DDNC.System.Private.CoreLib.DNDecimal>>): DDNC.System.Private.CoreLib.DNNullable<DDNC.System.Private.CoreLib.DNDecimal>; overload;

  end;

  [DNTypeName('System.Linq.Enumerable')]
  DNEnumerable = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{040C21D9-55A1-3CA4-B5E6-C492D4B4B75C}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNEnumerable = class(TDNGenericImport<DNEnumerableClass, DNEnumerable>) end;

  //-------------namespace: System.Linq----------------
  DNGroupingClass<TKey, TElement> = interface(DNObjectClass)
  ['{D83A2250-2DD8-57FF-B6D0-9686AE927586}']
  end;

  [DNTypeName('System.Linq.Grouping`2')]
  DNGrouping<TKey, TElement> = interface(DNIGrouping<TKey, TElement>)
  ['{E23A35DA-1DE6-3E0D-AC77-29B7EED83215}']
  { getters & setters } 

    function get_Key: TKey;

  { methods } 

    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator<TElement>;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Key: TKey read get_Key;
  end;

  TDNGrouping<TKey, TElement> = class(TDNGenericImport<DNGroupingClass<TKey, TElement>, DNGrouping<TKey, TElement>>) end;

  //-------------namespace: System.Linq----------------
  DNLookupClass<TKey, TElement> = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{AD06C941-891E-5FB5-B0BA-7B5178D1E639}']
  end;

  [DNTypeName('System.Linq.Lookup`2')]
  DNLookup<TKey, TElement> = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{9884DF19-C1BB-35DC-BDB2-3693D4627E4E}']
  { getters & setters } 

    function get_Count: Int32;

  { methods } 

    function &Contains(key: TKey): Boolean;
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator<DNIGrouping<TKey, TElement>>;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Count: Int32 read get_Count;
  end;

  TDNLookup<TKey, TElement> = class(TDNGenericImport<DNLookupClass<TKey, TElement>, DNLookup<TKey, TElement>>) end;


implementation


initialization
  InternalTryLoadAssemblyModule('System.Linq, Version=4.2.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
